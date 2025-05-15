from code.solver.smtai import *

def z3_to_c(expr):
    if is_and(expr):
        return ' && '.join(f'({z3_to_c(c)})' for c in expr.children())
    elif is_or(expr):
        return ' || '.join(f'({z3_to_c(c)})' for c in expr.children())
    elif is_not(expr):
        return f'!({z3_to_c(expr.arg(0))})'
    elif is_eq(expr):
        return f'({z3_to_c(expr.arg(0))} == {z3_to_c(expr.arg(1))})'
    elif is_le(expr):
        return f'({z3_to_c(expr.arg(0))} <= {z3_to_c(expr.arg(1))})'
    elif is_lt(expr):
        return f'({z3_to_c(expr.arg(0))} < {z3_to_c(expr.arg(1))})'
    elif is_ge(expr):
        return f'({z3_to_c(expr.arg(0))} >= {z3_to_c(expr.arg(1))})'
    elif is_gt(expr):
        return f'({z3_to_c(expr.arg(0))} > {z3_to_c(expr.arg(1))})'
    elif is_const(expr):
        return str(expr)
    elif is_int_value(expr) or is_rational_value(expr):
        return str(expr.as_long())
    else:
        return str(expr)  # fallback

def test(args, bench):
    solverai = smtAI()
    functions = {}
    formulas = solverai.readSMTfile(bench["smt_file"])
    vars = set()
    vardecl = ""
    ifconds = ""
    for f in formulas:
        print("formula:", f)
        ifconds += "if " + z3_to_c(f) + "\n"
        solverai.collect_vars(f, vars)
    ifconds+= "assert(0);"
    print("vars:")
    for var in vars:
        if str(var.sort())=="Int":
            print("int", var.decl().name(), ";")
            vardecl += "int "+ str(var.decl().name())+ ";\n"
    print("void main(){")
    print(vardecl)
    print(ifconds)
    print("}")
        # print(var.sort(), var.decl().name(),";")
        # functions.update(solverai.collect_all_functions(f,functions))
    # Show results
    # print("Function symbols found in SMT2:")
    # cbFunctions = {}
    # for name, decl in functions.items():
    #     print(name, decl)
