import subprocess
import os
from code.utils.unsatUtil import *


def typenameConversion(type):
    if str(type) == "Int":
        return "int"
    if str(type) == "Bool":
        return "bool"
    if str(type) == "Real":
        return "float"

def getHarness(solver, funs):
    s = """
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
"""
    s+= "extern \"C\"{\n"
    for name in funs:
        # s+= "extern "
        args = ""
        out = ""
        for i in range(funs[name].arity()):
            # print(f"Argument {i + 1} type:", funs[name].domain(i))
            args+=typenameConversion(funs[name].domain(i))+","
        out = typenameConversion(funs[name].range())
        # print("out ", out)
        s+= out + " " + name + f"({args[:-1]});\n"
    s+= "}\n"
    s+= solver.mainFun
#     s+= """
# int main(int argc, char *argv[]) {
#     if (argc != """
#     s+= str(funDecl.arity()+1 )
#     s+= """) {
#         printf("Usage: %s <a> <b>\\n", argv[0]);
#         return 1;
#     }
# """
#     args = ""
#     printstmt = "printf(\"%d\", " + funName + "("
#     for i in range(funDecl.arity()):
#         args += f"int arg{i+1} = atoi(argv[{i+1}]);\n"
#         printstmt += f"arg{i+1},"
#     printstmt = printstmt[:-1] + "));\n return 0;\n }"
#     s += args + printstmt
    return s

#     s+="""
#     int arg1 = atoi(argv[1]);
#     int arg2 = atoi(argv[2]);
#     printf("Result: %d\n", add(a, b));
#     return 0;
# }
#     """

def getCBInputOutput(solver, args, cbFunctions, objectFile):
    mainFun = solver.harnessForModelCheck()
    m = solver.model()
    input_tuple = []
    for d in solver.vars:
        if args.verbose:
            print(f"{d} = {m[d]}")
        input_tuple.append(m[d])
    if args.verbose:
        print("fun in getCBInputOutput", cbFunctions)
    harnessFun = solver.harnessForOutput(cbFunctions)
    # print(harnessFun)
    createDirectory("oracleTemp")
    with open("oracleTemp/oracle.cpp", "w+") as f:
        f.write(harnessFun)

    # compilation = subprocess.run(["g++", "-c", "oracle.c"], capture_output=True, text=True)
    # if compilation.returncode != 0:
    #     print("Compilation failed:")
    #     print(compilation.stderr)
    #     exit()
    #     return False
    # # print(objectFile)
    compile_cmd = ["g++",  "oracleTemp/oracle.cpp", "-o", "oracleTemp/program", objectFile]
    compilation = subprocess.run(compile_cmd, capture_output=True, text=True)
    if compilation.returncode != 0:
        print("Compilation failed:")
        print(compilation.stderr)
        exit()
        return False
    else:
        if args.verbose:
            print("Compilation successful.")

        # Step 2: Run the compiled program with arguments
        run_cmd = ["oracleTemp/program"]
        process = subprocess.Popen(
            ["oracleTemp/program"],          # Or use ["input_program.exe"] on Windows
            stdin=subprocess.PIPE,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True                     # Ensures input/output is in text mode (Python 3.6+)
        )
        input_data = ""
        for value in input_tuple:
            input_data += str(value)+ " "
        stdout, stderr = process.communicate(input=input_data)
        print(stderr)
        out = {}
        out[cbFunctions] = stdout
        # print(stdout, type(stdout))
        # input_tuple.append(int(stdout))
        return stdout

def modelCheck(solver, args, cbFunctions, objectFile, failedFunctions):
    # for name in cbFunctions:
    mainFun = solver.harnessForModelCheck()
    m = solver.model()
    input_tuple = []
    for d in solver.vars:
        if args.verbose:
            print(f"{d} = {m[d]}")
        input_tuple.append(m[d])
    # exit()
    # interp = m[cbFunctions[name]]
    # print("Function interpretation:")
    # input_tuple = None
    # output = None
    # # print("input_tuple:", interp)
    # for entry in interp.as_list()[:-1]:  # all defined mappings
    #     print(entry)
    #     input_tuple = entry[:-1]         # input args
    #     output = entry[-1]               # output
    #     print(f"  {input_tuple} -> {output}")
    # print(input_tuple)
    # print(m)
    # exit()
    harnessFun = getHarness(solver, cbFunctions)
    # print(harnessFun)
    createDirectory("oracleTemp")
    with open("oracleTemp/harness.cpp", "w+") as f:
        f.write(harnessFun)

    # compilation = subprocess.run(["g++", "-c", "harness.cpp", "-o", "harness.o"], capture_output=True, text=True)
    # if compilation.returncode != 0:
    #     print("Compilation failed: g++ -c harness.cpp")
    #     print(compilation.stderr)
    #     exit()
    #     return False
    # # print(objectFile)
    compile_cmd = ["g++",  "oracleTemp/harness.cpp", "-o", "oracleTemp/program", objectFile]
    compilation = subprocess.run(compile_cmd, capture_output=True, text=True)
    if compilation.returncode != 0:
        print("Compilation failed: g++ harness.cpp objectFile -o program")
        print(compilation.stderr)
        exit()
        return False
    else:
        if args.verbose:
            print("Compilation successful.")

        # Step 2: Run the compiled program with arguments
        run_cmd = ["oracleTemp/program"]
        process = subprocess.Popen(
            ["oracleTemp/program"],          # Or use ["input_program.exe"] on Windows
            stdin=subprocess.PIPE,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True                     # Ensures input/output is in text mode (Python 3.6+)
        )
        input_data = ""
        for value in input_tuple:
            input_data += str(value)+ " "
        stdout, stderr = process.communicate(input=input_data)
        if args.verbose:
            print(stdout)
            print(stderr)
        # print(input_tuple)
        # for value in input_tuple:
        #     run_cmd.append(str(value))
        # print(run_cmd)
        # execution = subprocess.run(run_cmd, capture_output=True, text=True)
        # print("Output from the executable:")
        # print(str(execution.stdout), str(output))
        # if str(execution.stdout) == str(output):
        #     return True
        # else:
        #     failedFunctions.append(name)
        #     return False
