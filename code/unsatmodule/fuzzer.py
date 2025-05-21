import os
import utils.unsat_util as pu
from py_console import console
from models import LemmaStatus

# TODO: make is an object for parallel computing of the getVerdict


def createHeader():
    return '''
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

def createRest(filepath, lemma, varMap, id):
    content = '''int main(void) {
    __AFL_INIT();
    uint8_t *buff = (uint8_t *)__AFL_FUZZ_TESTCASE_BUF;\n\n'''
    
    for i, z3i in varMap.items():
        content += f"    uint16_t {i} = *((uint16_t *)buff);\n"
        content += f"    buff += 2;\n\n"

    tcount = 1
    for l in lemma:
        content += f"{tcount*4*' '}if({str(l).replace('Not', '!')})\n"
        tcount += 1
    
    content += f"{(tcount-1) * 4 *' '}{{\n"
    content += f"{tcount*4*' '}std::ofstream resultFile(\"{filepath}lemma_check_cex_{str(id)}.txt\");\n"#%(filepath, str(id))

    for i, z3i in varMap.items():
        content += f"{tcount*4*' '}resultFile << \"{i}: \" << {i} << std::endl;\n"


    content += f"{tcount*4*' '}resultFile.close();\n"
    content += f"{tcount*4*' '}assert(0);\n"
    content += f"{(tcount-1) * 4 *' '}}}\n"
    content += "\n} // end of main\n"
    return content 


def createFuzzFile(id, lemma, varMap, funcMap):
    pwd = os.getcwd()
    fuzzd = pwd + "/fuzz_temp/"
    pu.createDirectory(fuzzd)
    with open(f"{fuzzd}lemma_check_{id}.cc", "w") as ffuzz:
        ffuzz.write(createHeader())
        rest = createRest(fuzzd, lemma, varMap, id)
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
    pu.execute_command(compileCommand, child_name="aflcompile", need_live_output=False, shell=True)

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

    console.info(f"Fuzzing started")
    fuzzCommand = [f"AFL_BENCH_UNTIL_CRASH=1 afl-fuzz -i {seedDir} -o {fuzzOutDir} -V {str(fuzzTimeout)} {path + objFile} > /dev/null"]
    
    """
    # FIXME: somehow using folllowing environment giving afl-fuzz not found error
    env = {'AFL_BENCH_UNTIL_CRASH': '1', 
           'AFL_SKIP_CPUFREQ': '1', 
           'AFL_I_DONT_CARE_ABOUT_MISSING_CRASHES' : '1', 
           "AFL_NO_UI" : '1',
           "AFL_QUIET":"1"}
    """


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




def getVerdict(id, lemma, varMap, funcMap, argObj):
    path, file = createFuzzFile(id, lemma, varMap, funcMap)
    verdict, cex = fuzzIt(path, file, argObj, id) # this shared variable is from argument regarding the shared object
    return verdict, cex

if __name__ == "__main__":
    createFuzzFile([],{"a":1, "b":2})