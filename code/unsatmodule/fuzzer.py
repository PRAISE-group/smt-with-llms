import os
import code.utils.unsatUtil as pu
from py_console import console
from code.models import LemmaStatus
from code.solver.modelCheck import typenameConversion, get_vars
import z3

# TODO: make is an object for parallel computing of the getVerdict


def createHeader(funs):
    head = '''
#include <stdio.h>
#include <assert.h>
#include <math.h>
#include <stdint.h>
#include <stdlib.h>
#include <unistd.h>
#include <limits.h>
#include <fstream>

__AFL_FUZZ_INIT();

#pragma clang optimize off
#pragma GCC optimize("O0")

'''

    proto = "\nextern \"C\"{\n"
    for name in funs:
        args = ""
        out = ""
        for i in range(funs[name].arity()):
            args += typenameConversion(funs[name].domain(i))+","
        out = typenameConversion(funs[name].range())
        proto += f"\t{out}  {name}({args[:-1]});\n"

    aux_fn = """
    bool Or(uint64_t a, uint64_t b){
        return a || b;
    }

    bool And(uint64_t a, uint64_t b){
        return a && b;
    }
"""
    proto += aux_fn
    proto += "}\n\n"

    return head + proto



def createRest(filepath, lemma, varMap, id, lemma_vars, jsonData):
    # print("createRest")
    def get_offset(var):
            # print(domain, type(domain))
        if isinstance(var, z3.z3.ArithSortRef) or isinstance(var, z3.z3.ArithRef):
            return 4
        elif isinstance(var, z3.z3.BoolSortRef):
            raise "BOOL should not come here :p"
        elif isinstance(var, z3.z3.BitVecSortRef) or isinstance(var, z3.z3.BitVecRef):
            size = var.size()
            if size <= 8:
                return 1
            elif size <= 16:
                return 2
            elif size <= 32:
                return 4
            elif size <= 64:
                return 8
            else:
                raise f"/* unsupported bit-width {size} */ unsigned long long"
        else:
            raise f"/* unknown type {var} */"

    content = '''int main(void) {
    __AFL_INIT();
    uint8_t *buff = (uint8_t *)__AFL_FUZZ_TESTCASE_BUF;\n\n'''
    varlist = []
    print("lemma:", lemma, type(lemma))
    for i in varMap:
        name_i = str(i).replace("!","_")
        varlist.append(name_i)
        type_i = typenameConversion(i)
        offset = get_offset(i)
        content += f"    {type_i} {name_i} = *(({type_i} *)buff);\n"
        content += f"    buff += {offset};\n\n"

    for i in lemma_vars:
        name_i = str(i).replace("!","_")
        if name_i not in varlist:
            varlist.append(name_i)
            type_i = typenameConversion(i)
            offset = get_offset(i)
            # content += f"    uint16_t {str(i)} = *((uint16_t *)buff);\n"
            content += f"    {type_i} {name_i} = *(({type_i} *)buff);\n"
            content += f"    buff += {offset};\n\n"
            
    if "limit" in jsonData:
        lLimit=jsonData["limit"][0]
        ULimit=jsonData["limit"][1]
        for name_i in varlist:
            content+= f"if ({name_i} < {lLimit} || {name_i} > {ULimit}) return 0;\n\n"

    tcount = 1
    for l in lemma:
        content += f"{tcount*4*' '}if({str(l).replace('Not', '!')})\n"
        tcount += 1

    content += f"{(tcount-1) * 4 *' '}{{\n"
    content += f"{tcount*4*' '}std::ofstream resultFile(\"{filepath}lemma_check_cex_{str(id)}.txt\");\n"

    for i in varMap:
        content += f"{tcount*4*' '}resultFile << \"{str(i)}: \" << {str(i)} << std::endl;\n"


    content += f"{tcount*4*' '}resultFile.close();\n"
    content += f"{tcount*4*' '}assert(0);\n"
    content += f"{(tcount-1) * 4 *' '}}}\n"
    content += "\n} // end of main\n"
    # print(content)
    return content


def createFuzzFile(id, lemma, varMap, funcMap, lemma_vars, jsonData):
    # print("createFuzzFile")
    pwd = os.getcwd()
    fuzzd = pwd + "/fuzz_temp/"
    pu.createDirectory(fuzzd)
    with open(f"{fuzzd}lemma_check_{id}.cc", "w") as ffuzz:
        ffuzz.write(createHeader(funcMap))
        rest = createRest(fuzzd, lemma, varMap, id, lemma_vars, jsonData)
        ffuzz.write(rest)
        ffuzz.flush()
    return fuzzd, f"lemma_check_{id}.cc"

def fuzzIt(path, file, argObj, id):
    """
        This function fuzz the lemma and returns VALID if fuzzer timeouts
        or returns INVALID with counterexample
    """

    # compile first
    objFile = file.replace(".cc", ".out")
    compileCommand = [f"afl-c++ {path + file} -o {path + objFile} {argObj.sharedLib}"]
    print(compileCommand)
    pu.execute_command(compileCommand, child_name="aflcompile", need_live_output=False, shell=True, crash=True)

    # now fuzzzzzzzz
    seedDir = path + "seed/"
    fuzzOutDir = path + "fuzzOut/"

    # creating seed input for fuzzing
    if not os.path.exists(seedDir):
        pu.createDirectory(seedDir)
        os.system(f"head -c 255 < /dev/urandom > {seedDir}/in01.txt && head -c 255 < /dev/zero > {seedDir}/in02.txt")

    if not os.path.exists(fuzzOutDir):
        pu.createDirectory(fuzzOutDir)

    fuzzTimeout = argObj.fuzztime

    aflEnv = f"AFL_BENCH_UNTIL_CRASH=1 AFL_SKIP_CPUFREQ=1 AFL_I_DONT_CARE_ABOUT_MISSING_CRASHES=1 AFL_NO_UI=1 AFL_QUIET=1"

    console.info(f"Fuzzing started")
    fuzzCommand = [f"{aflEnv} afl-fuzz -i {seedDir} -o {fuzzOutDir} -V {str(fuzzTimeout)} {path + objFile} > /dev/null"]

    """
    # FIXME: somehow using folllowing environment giving afl-fuzz not found error
    env = {'AFL_BENCH_UNTIL_CRASH': '1',
           'AFL_SKIP_CPUFREQ': '1',
           'AFL_I_DONT_CARE_ABOUT_MISSING_CRASHES' : '1',
           "AFL_NO_UI" : '1',
           "AFL_QUIET":"1"}
    """

    print(fuzzCommand)
    pu.execute_command(fuzzCommand, child_name="Fuzzzzing", need_live_output=True, shell=True, timeout=fuzzTimeout)

    resultFile = f"{path}lemma_check_cex_{str(id)}.txt"
    if not os.path.exists(resultFile):
        return LemmaStatus.VALID, {}
    else:
        cex = {}
        with open(resultFile, 'r') as file:
            for line in file:
                if ':' in line:
                    key, value = line.strip().split(':', 1)
                    cex[key.strip()] = int(value.strip())
        return LemmaStatus.INVALID, cex




def getVerdict(id, lemma, varMap, funcMap, argObj, lemma_vars, jsonData):
    path, file = createFuzzFile(id, lemma, varMap, funcMap, lemma_vars, jsonData)
    verdict, cex = fuzzIt(path, file, argObj, id) # this shared variable is from argument regarding the shared object
    return verdict, cex

if __name__ == "__main__":
    createFuzzFile([],{"a":1, "b":2})
