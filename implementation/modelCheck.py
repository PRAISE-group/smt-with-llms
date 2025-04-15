import subprocess
import os

def typenameConversion(type):
    if str(type) == "Int":
        return "int"
    if str(type) == "Bool":
        return "bool"
    if str(type) == "Real":
        return "float"

def getHarness(funName, funDecl):
    s = """
#include <stdio.h>
#include <stdlib.h>

extern """
    args = ""
    out = ""
    for i in range(funDecl.arity()):
        print(f"Argument {i + 1} type:", funDecl.domain(i))
        args+=typenameConversion(funDecl.domain(i))+","
    out = typenameConversion(funDecl.range())
    print("out ", out)
    s+= out + " " + funName + f"({args[:-1]});\n"
    s+= """
int main(int argc, char *argv[]) {
    if (argc != """
    s+= str(funDecl.arity()+1 )
    s+= """) {
        printf("Usage: %s <a> <b>\\n", argv[0]);
        return 1;
    }
"""
    args = ""
    printstmt = "printf(\"%d\", " + funName + "("
    for i in range(funDecl.arity()):
        args += f"int arg{i+1} = atoi(argv[{i+1}]);\n"
        printstmt += f"arg{i+1},"
    printstmt = printstmt[:-1] + "));\n return 0;\n }"
    s += args + printstmt
    return s

#     s+="""
#     int arg1 = atoi(argv[1]);
#     int arg2 = atoi(argv[2]);
#     printf("Result: %d\n", add(a, b));
#     return 0;
# }
#     """

def modelCheck(solver, args, cbFunctions, objectFile, failedFunctions):
    for name in cbFunctions:
        m = solver.model()
        interp = m[cbFunctions[name]]
        print("Function interpretation:")
        input_tuple = None
        output = None
        for entry in interp.as_list()[:-1]:  # all defined mappings
            print(entry)
            input_tuple = entry[:-1]         # input args
            output = entry[-1]               # output
            print(f"  {input_tuple} -> {output}")
        harnessFun = getHarness(name, cbFunctions[name])
        print(harnessFun)
        with open("harness.c", "w") as f:
            f.write(harnessFun)

        compilation = subprocess.run(["gcc", "-c", "harness.c"], capture_output=True, text=True)
        if compilation.returncode != 0:
            print("Compilation failed:")
            print(compilation.stderr)
            exit()
            return False
        print(objectFile)
        compile_cmd = ["gcc", objectFile,  "harness.o", "-o", "program"]
        compilation = subprocess.run(compile_cmd, capture_output=True, text=True)
        if compilation.returncode != 0:
            print("Compilation failed:")
            print(compilation.stderr)
            exit()
            return False
        else:
            print("Compilation successful.")

            # Step 2: Run the compiled program with arguments
            run_cmd = ["./program"]
            for value in input_tuple:
                run_cmd.append(str(value))
            execution = subprocess.run(run_cmd, capture_output=True, text=True)
            print("Output from the executable:")
            print(str(execution.stdout), str(output))
            if str(execution.stdout) == str(output):
                return True
            else:
                failedFunctions.append(name)
                return False
