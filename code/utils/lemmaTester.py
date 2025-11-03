from code.solver.modelCheck import get_vars
from z3 import *
import z3utils  as zu
import z3
import subprocess
from typing import List

def get_vars2(expr):
    """Return a set of Z3 variables (constants) in expr."""
    vars_found = set()
    def visit(e):
        if z3.is_const(e) and e.decl().kind() == z3.Z3_OP_UNINTERPRETED:
            vars_found.add(e)
        for child in e.children():
            visit(child)
    visit(expr)
    return vars_found

def get_functions(expr):
    funcs = set()
    def collect(e):
        if is_app(e):
            funcs.add(e.decl())
            for child in e.children():
                collect(child)
        elif is_quantifier(e):
            collect(e.body())
    collect(expr)
    return funcs


def typenameConversion(domain):
    # print(domain, type(domain))
    if isinstance(domain, z3.z3.ArithSortRef):
        return "int"
    elif isinstance(domain, z3.z3.BoolSortRef):
        return "bool"
    elif isinstance(domain, z3.z3.BitVecSortRef) or isinstance(domain, z3.z3.BitVecRef):
        size = domain.size()
        if size <= 8:
            return "uint8_t"
        elif size <= 16:
            return "uint16_t"
        elif size <= 32:
            return "uint32_t"
        elif size <= 64:
            return "uint64_t"
        else:
            print(f"/* unsupported bit-width {size} */ unsigned long long")
            exit()
    else:
        print(f"/* unknown type {domain} */")
        exit()


def get_C_code(phi, varMap, lemma_vars, all_func):

    c_code = """ 
#include <stdio.h>
#include <assert.h>
#include <math.h>
#include <stdint.h>
#include <stdlib.h>
#include <unistd.h>
#include <limits.h>
#include <fstream>
extern \"C\"{\n
    """
    for fdecl in all_func:
        if "_cb" in fdecl.name():
            args = ""
            out = ""
            for i in range(fdecl.arity()):
                args += typenameConversion(fdecl.domain(i)) + ','
            out = typenameConversion(fdecl.range())
            c_code += f"{' '*4}{out} {fdecl.name()}({args[:-1]});\n"

    
    c_code += "}\n\n"
    
    c_code += """int main(void) {\n"""

    var_list = []
    for i in varMap:
        name_i = str(i).replace("!","_")
        var_list.append(name_i)
        c_code += f"{' '*4}{typenameConversion(i)} {name_i};\n"
        c_code += f"{' '*4}std::cin << {name_i};\n"

    for i in lemma_vars:
        name_i = str(i).replace("!","_")
        if name_i in var_list:
            continue
        var_list.append(name_i)
        c_code += f"{' '*4}{typenameConversion(i)} {name_i};\n"
        c_code += f"{' '*4}std::cin << {name_i};\n"
    
    tabc = 1
    for l in phi:
        c_code += f"{tabc*4*' '}if({str(l).replace('Not', '!')})\n"
        tabc += 1
    
    c_code += f"{(tabc-1) * 4 *' '}{{\n"
    c_code += f"{tabc * 4 * ' '} return -1;\n"
    c_code += f"{(tabc-1) * 4 *' '}}}\n"
    c_code += "    return 0;\n}// main end\n"

    return c_code



def smtlib_to_c(smtlib_str):
    expr = parse_smt2_string(smtlib_str)
    if not expr:
        return "// No assertions found in SMT-LIB input."
    expr = expr[0]


    all_func = get_functions(expr)
    # --- Extract forall variables and bit-widths safely ---
    varMap = {}

    notnot = z3.Not(expr)
    tempVars = z3.z3util.get_vars(notnot)
    for var in tempVars:
        varMap[str(var)] = var
    lemma_vars = None
    if zu.containsQuantifier(expr):
        phi, lemma_vars = zu.removeQuantifier(notnot)

    else:
        phi = zu.getCNF(notnot)
        lemma_vars = get_vars2(phi)



    c_code = get_C_code(phi, varMap, lemma_vars, all_func)
    return c_code

def run_c_file(lemma: str, input_values: List[str], path_to_obj_file: str) -> int:
    # Generate the C code.
    CCode = smtlib_to_c(lemma)

    # Write the C code to a temporary file
    with open("temp_lemma.c", "w") as f:
        f.write(CCode)
    
    # Compile the C code
    compile_process = subprocess.run(["g++", "temp_lemma.c", f"{path_to_obj_file}", "-o", "temp_lemma"], capture_output=True)
    if compile_process.returncode != 0:
        print("Compilation failed:", compile_process.stderr.decode())
        return -1
    
    # Prepare input string
    input_str = "\n".join(input_values) + "\n"
    
    # Run the compiled program
    run_process = subprocess.run(["./temp_lemma"], input=input_str.encode(), capture_output=True)
    if run_process.returncode != 0:
        print("Execution failed:", run_process.stderr.decode())
        return -1
    
    return run_process.returncode


# === Example usage ===
if __name__ == "__main__":
    decl = "(declare-fun foo_cb ((_ BitVec 32)) (_ BitVec 32))"
    input_f = """
    (assert (forall ((z (_ BitVec 32))) (=> (bvugt z (_ bv0 32)) (= (foo_cb z) (_ bv0 32)))))
    """
    json_str = """
{
  "smt_file": "./benchmarks/BV-benchamrks-unsat/1/absx.smt2",
  "object_file": "./benchmarks/BV-benchamrks-unsat/1/absx.o",
  "functions": {
    "foo_cb": {
      "smtDecl": "(declare-fun foo_cb ((_ BitVec 32)) (_ BitVec 32))",
      "desc": "if input is greater than zero (unsigned comparison), then absx_cb(z) equals zero else returns the input",
      "tests": [[1], [-7]],
      "userLemmas": [""],
      "gptChat": [ "(assert (forall ((z (_ BitVec 32)))  (=> (bvugt z (_ bv0 32))      (= (foo_cb z) (_ bv0 32)))))",
      "(assert (forall ((z (_ BitVec 32)))  (=> (not (bvugt z (_ bv0 32)))      (= (foo_cb z) z))))",
      "(assert (= (foo_cb (_ bv0 32)) (_ bv0 32)))",
      "(assert (forall ((z (_ BitVec 32)))  (= (foo_cb (foo_cb z)) (foo_cb z))))",
      "(assert (forall ((z (_ BitVec 32)))  (or (= (foo_cb z) (_ bv0 32))      (= (foo_cb z) z))))",
      "(assert (forall ((z (_ BitVec 32)))  (=> (not (bvugt z (_ bv0 32)))      (= (bvugt (foo_cb z) (_ bv0 32)) false))))"
      ],
      "extern": "int absx_cb(int val);"
    }
  }
}"""

    import json 
    json_obj = json.loads(json_str)
    decl = ""
    for fname, details in json_obj["functions"].items():
        decl += details["smtDecl"] + '\n'
    
    smt_input = decl + input_f
    print(smtlib_to_c(smt_input))
