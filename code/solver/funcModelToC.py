from z3 import *

def z3_value_to_c(val):
    if is_int_value(val):
        return str(val.as_long())
    elif is_rational_value(val):
        return str(val)
    elif is_true(val):
        return "1"
    elif is_false(val):
        return "0"
    else:
        return str(val)

# def expr_to_c(expr):
#     """Recursively convert a Z3 expression into a C expression."""
    
#     # print(expr.sexpr())
#     # Integer constant
#     if z3.is_int_value(expr):
#         return str(expr.as_long())

#     # Boolean constant
#     if z3.is_true(expr):
#         return "1"
#     if z3.is_false(expr):
#         return "0"

#     # Variable / uninterpreted constant
#     if z3.is_const(expr) and expr.num_args() == 0:
#         return str(expr)

#     # ITE
#     if z3.is_app_of(expr, z3.Z3_OP_ITE):
#         cond = expr_to_c(expr.arg(0))
#         t = expr_to_c(expr.arg(1))
#         e = expr_to_c(expr.arg(2))
#         return f"(({cond}) ? ({t}) : ({e}))"

#     # Binary operators
#     op_map = {
#         z3.Z3_OP_EQ: "==",
#         z3.Z3_OP_ADD: "+",
#         z3.Z3_OP_SUB: "-",
#         z3.Z3_OP_MUL: "*",
#         z3.Z3_OP_DIV: "/",
#         z3.Z3_OP_IDIV: "/",
#         z3.Z3_OP_MOD: "%",
#         z3.Z3_OP_LT: "<",
#         z3.Z3_OP_LE: "<=",
#         z3.Z3_OP_GT: ">",
#         z3.Z3_OP_GE: ">=",
#         z3.Z3_OP_AND: "&&",
#         z3.Z3_OP_OR: "||",
#     }

#     decl_kind = expr.decl().kind()

#     if decl_kind in op_map:
#         op = op_map[decl_kind]
#         args = [expr_to_c(a) for a in expr.children()]
#         return "(" + f" {op} ".join(args) + ")"

#     # Unary minus
#     if decl_kind == z3.Z3_OP_UMINUS:
#         return f"(-{expr_to_c(expr.arg(0))})"

#     # NOT
#     if decl_kind == z3.Z3_OP_NOT:
#         return f"!({expr_to_c(expr.arg(0))})"

#     # Function application
#     if expr.num_args() > 0:
#         args = ", ".join(expr_to_c(a) for a in expr.children())
#         return f"{expr.decl().name()}({args})"

#     raise NotImplementedError(f"Unsupported expression: {expr}")

# def print_function_as_c(decl, interp):
#     name = decl.name()
#     arity = decl.arity()

#     args = [f"x{i}" for i in range(arity)]

#     ret_type = "int"
#     params = ", ".join(f"int {a}" for a in args)

#     code = []
#     code.append(f"{ret_type} {name}({params}) {{")

#     for i in range(interp.num_entries()):
#         entry = interp.entry(i)

#         conds = [
#             f"{args[j]} == {expr_to_c(entry.arg_value(j))}"
#             for j in range(entry.num_args())
#         ]

#         cond = " && ".join(conds)
#         value = expr_to_c(entry.value())

#         code.append(f"    if ({cond})")
#         code.append(f"        return {value};")

#     code.append(f"    return {expr_to_c(interp.else_value())};")
#     code.append("}")

#     retcode = "\n".join(code)
#     # if "?" in retcode:
#     #     print(retcode)
#     #     print(decl)
#     #     print(interp)
#     return retcode

def print_function_as_c(decl, interp):
    fun = ""
    name = decl.name()
    arity = decl.arity()

    # Generate argument names
    args = [f"x{i}" for i in range(arity)]

    # print(f"/* Interpretation of {name} */")

    ret_type = "int"  # adjust as needed
    params = ", ".join(f"int {a}" for a in args)

    fun+=f"{ret_type} {name}({params}) {{\n"

    # Emit nested ifs for explicit entries
    for i in range(interp.num_entries()):
        entry = interp.entry(i)

        conds = []
        for j in range(entry.num_args()):
            conds.append(
                f"{args[j]} == {z3_value_to_c(entry.arg_value(j))}"
            )

        cond = " && ".join(conds)

        fun+=f"    if ({cond})\n"
        fun+=f"        return {z3_value_to_c(entry.value())};\n"

    fun+=f"    return {z3_value_to_c(interp.else_value())};\n"
    fun+="}\n"
    # print()
    return fun


def print_model_as_c(model):
    functions = ""
    for decl in model.decls():
        val = model[decl]
        if decl.name().endswith("_cb"):
            continue
        if isinstance(val, FuncInterp):
            f = print_function_as_c(decl, val)
            # if "?" in f:
            #     print("=====")
            #     print(f)
            #     print(decl)
            #     print(val)
            functions+= f
        else:
            # print(f"/* Constant */")
            functions+=f"int {decl.name()} = {z3_value_to_c(val)};\n"
            # print(f"int {decl.name()} = {z3_value_to_c(val)};")
            # print()
            
    return functions

