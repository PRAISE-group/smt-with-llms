from z3 import *
from code.solver.modelCheck import *
from code.lemma.actions import *
from code.unsatmodule.driver import *
from code.models import exampleSet, ExampleSet
from code.models import AlgoVerdict
from py_console import console
import time
def quantifier_info(q: QuantifierRef):
    """
    Given a Z3 QuantifierRef object, returns:
      - body_str: the body of the quantifier as a string (with original variable names)
      - function_calls: list of function calls as strings (e.g., 'f(x)', 'g(y)')
      - variables: list of variable names bound by the quantifier
    """
    if not isinstance(q, QuantifierRef):
        raise TypeError("Expected a QuantifierRef object")

    # --- Step 1: Reconstruct body with original variable names ---
    num_vars = q.num_vars()
    var_names = [q.var_name(i) for i in reversed(range(num_vars))]
    var_sorts = [q.var_sort(i) for i in reversed(range(num_vars))]

    # Create symbolic vars with same names & sorts
    vars_named = [Const(name, sort) for name, sort in zip(var_names, var_sorts)]

    # Substitute Bound(i) -> var
    body_named = substitute_vars(q.body(), *vars_named)

    # --- Step 2: Collect function applications ---
    def collect_func_apps(expr):
        apps = []
        if is_app(expr):
            decl = expr.decl()
            # Skip pure variables and constants
            if decl.arity() > 0 and decl.kind() == Z3_OP_UNINTERPRETED:
                # Represent function call as "f(x, y)"
                args_str = " ".join(a.sexpr() for a in expr.children())
                apps.append(f"({decl.name()} {args_str})")
            for c in expr.children():
                apps.extend(collect_func_apps(c))
        return apps

    function_calls = sorted(set(collect_func_apps(body_named)))

    def smt2_sort_str(sort):
        if sort.kind() == Z3_INT_SORT:
            return "Int"
        elif sort.kind() == Z3_BOOL_SORT:
            return "Bool"
        elif sort.kind() == Z3_REAL_SORT:
            return "Real"
        elif sort.kind() == Z3_BV_SORT:
            return f"(_ BitVec {sort.size()})"
        else:
            return str(sort)

    variables_smt2 = [f"({name} {smt2_sort_str(sort)})" for name, sort in zip(var_names, var_sorts)]

    # --- Step 3: Return results ---
    return {
        "body_str": body_named.sexpr(),
        "function_calls": function_calls,
        "variables": variables_smt2,
    }

class smtAI(object):
    """docstring for smtAI.
    uses LLM generated lemmas to find satisfying assignments
    in the case when smt encoding of a function is not available
    or it is too complicated for smt solver to solve.
    """

    def __init__(self):
        super(smtAI, self).__init__()
        # set_param("timeout", 60000) # timeout for z3
        self.s = Solver()
        # set_param('smt.logic', 'QF_BV')
        self.s.set("unsat_core", True)
        self.formulas = None
        self.vars = None
        self.mainFun = None
        self.lemmasData = {}  # key is the label to lemmas
        self.labelsUsed = 0
        self.unsatCores = {}  # key is the iteration number starts from 1
        self.iteration = 0
        self.lemmasUsed = {}  # key is the iteration number starts from 1
        self.cbFunctions = None  # Map of close box functions z3 object
        self.inputoutputassertions = (
            []
        )  # input output constraints obtained from modelcheck inconsistency
        self.prevlemma = {}
        self.addedOnce = False  # if llm generated lemmas has been added at least once.
        self.smtFile=""

    def readSMTfile(self, inputfilepath):
        # if args.verbose:
        #     print(inputfilepath)
        f = parse_smt2_file(inputfilepath)
        self.formulas = f
        return f

    def readSMTstring(self, s, declarations):
        # if args.verbose:
        #     print(s)
        f = parse_smt2_string(s, decls=declarations)
        return f

    def collect_vars(self, expr, seen=None):
        if seen is None:
            seen = set()
        if is_const(expr) and expr.decl().kind() == Z3_OP_UNINTERPRETED:
            seen.add(expr)
        for child in expr.children():
            self.collect_vars(child, seen)
        return seen

    def collectBoundVars(self, e, bound_vars=None):
        # print(e)
        if is_quantifier(e):
            for i in range(e.num_vars()):
                name = e.var_name(i)
                sort = e.var_sort(i)
                bound_vars.add(name)
            # Recurse into the quantifier body
            self.collectBoundVars(e.body(), bound_vars)
        elif is_app(e):
            if e.num_args() > 0:
                for arg in e.children():
                    self.collectBoundVars(arg, bound_vars)

    def collect_functions(self, expr, seen=None):
        # print(expr, seen)
        if seen is None:
            seen = {}
        if is_app(expr):
            decl = expr.decl()
            name = str(decl.name())
            # Filter out built-in operators like +, *, etc.
            # if decl.arity() == 0:   # z3 declares all constants as zero arity functions too
            #     return seen
            # print(is_const(expr), is_func_decl(expr))
            if is_const(expr):
                return seen
            elif decl.kind() == Z3_OP_UNINTERPRETED and name not in seen:
                seen[name] = decl
            else:
                # print("This type of expression is not handled", expr)
                pass
                # exit()
            # if decl.kind() == Z3_OP_UNINTERPRETED and name not in seen:
            #     seen[name] = decl
        for child in expr.children():
            self.collect_functions(child, seen)
        return seen

    def collect_all_functions(self, expr, seen=None):
        # print(expr)
        if seen is None:
            seen = {}
        if is_app(expr):
            decl = expr.decl()
            name = str(decl.name())
            # Filter out built-in operators like +, *, etc.
            if (
                decl.arity() == 0
            ):  # z3 declares all constants as zero arity functions too
                return seen
            if decl.kind() == Z3_OP_UNINTERPRETED:
                return seen
            elif name not in seen:
                seen[name] = decl
        for child in expr.children():
            self.collect_all_functions(child, seen)
        return seen

    def add(self, formulas):
        self.s.add(formulas)

    def model(self):
        return self.s.model()

    def check(self):
        return self.s.check()

    def push(self):
        return self.s.push()

    def pop(self):
        return self.s.pop()

    def to_smtlib_bv_bin(self, value, width):
        # return "#b" + format(value, f'0{width}b')
        mask = (1 << width) - 1
        twos_complement = value & mask
        return "#b" + format(twos_complement, f"0{width}b")

    def z3_to_c(self, expr):
        # print("expr",expr)
        if expr.decl().kind() == Z3_OP_IMPLIES:
            a, b = expr.children()
            return f"(!({self.z3_to_c(a)}) || ({self.z3_to_c(b)}))"
        elif is_and(expr):
            return " && ".join(f"({self.z3_to_c(c)})" for c in expr.children())
        elif is_or(expr):
            return " || ".join(f"({self.z3_to_c(c)})" for c in expr.children())
        elif is_not(expr):
            return f"!({self.z3_to_c(expr.arg(0))})"
        elif is_eq(expr):
            return f"({self.z3_to_c(expr.arg(0))} == {self.z3_to_c(expr.arg(1))})"
        elif is_le(expr):
            return f"({self.z3_to_c(expr.arg(0))} <= {self.z3_to_c(expr.arg(1))})"
        elif is_lt(expr):
            return f"({self.z3_to_c(expr.arg(0))} < {self.z3_to_c(expr.arg(1))})"
        elif is_ge(expr):
            return f"({self.z3_to_c(expr.arg(0))} >= {self.z3_to_c(expr.arg(1))})"
        elif is_gt(expr):
            return f"({self.z3_to_c(expr.arg(0))} > {self.z3_to_c(expr.arg(1))})"
        elif expr.decl().name() == "bvugt":
            return f"({self.z3_to_c(expr.arg(0))}) > ({self.z3_to_c(expr.arg(1))})"
        elif expr.decl().name() == "bvuge":
            return f"({self.z3_to_c(expr.arg(0))}) >= ({self.z3_to_c(expr.arg(1))})"
        elif expr.decl().name() == "bvult":
            return f"({self.z3_to_c(expr.arg(0))}) < ({self.z3_to_c(expr.arg(1))})"
        elif expr.decl().name() == "bvule":
            return f"({self.z3_to_c(expr.arg(0))}) <= ({self.z3_to_c(expr.arg(1))})"
        elif expr.decl().name() == "bvmul":
            return " * ".join(f"({self.z3_to_c(c)})" for c in expr.children())
            # return f'({self.z3_to_c(expr.arg(0))}) * ({self.z3_to_c(expr.arg(1))})'
        elif expr.decl().name() == "bvudiv":
            return f"({self.z3_to_c(expr.arg(0))}) / ({self.z3_to_c(expr.arg(1))})"
        elif expr.decl().name() == "bvadd":
            return " + ".join(f"({self.z3_to_c(c)})" for c in expr.children())
        elif expr.decl().name() == "bvurem":
            return f"({self.z3_to_c(expr.arg(0))}) % ({self.z3_to_c(expr.arg(1))})"
        
        elif expr.decl().name() == 'bvshl':
            # Logical left shift
            return f'({z3_to_c(expr.arg(0))} << {z3_to_c(expr.arg(1))})'
        elif expr.decl().name() == 'bvlshr':
            # Logical right shift (zero-fill)
            return f'((unsigned){z3_to_c(expr.arg(0))} >> {z3_to_c(expr.arg(1))})'
        elif expr.decl().name() == 'bvashr':
            # Arithmetic right shift (sign-extend)
            return f'((int){z3_to_c(expr.arg(0))} >> {z3_to_c(expr.arg(1))})'
        
        elif expr.decl().kind() == Z3_OP_ITE:
            cond, then_expr, else_expr = expr.children()
            return f"(({self.z3_to_c(cond)}) ? ({self.z3_to_c(then_expr)}) : ({self.z3_to_c(else_expr)}))"
        elif is_false(expr):
            return "0"
        elif is_true(expr):
            return "1"
        elif is_const(expr):
            return str(expr)
        elif is_int_value(expr) or is_rational_value(expr):
            return str(expr.as_long())
        else:
            # if is_app(expr) and expr.decl().kind() == Z3_OP_UNINTERPRETED:
            #     print("Fallback ",expr)
            return str(expr)  # fallback

    def getFunctions(self, expr, funs):
        # print(expr,expr.decl().kind(),Z3_OP_UNINTERPRETED, is_and(expr), Z3_OP_BAND)
        if expr.decl().kind() == Z3_OP_IMPLIES:
            a, b = expr.children()
            return f"{self.getFunctions(a, funs)}) || ({self.getFunctions(b, funs)}))"
        elif is_and(expr) or expr.decl().kind() == Z3_OP_BAND:
            return " && ".join(
                f"({self.getFunctions(c, funs)})" for c in expr.children()
            )
        elif is_or(expr) or expr.decl().kind() == Z3_OP_BOR:
            return " || ".join(
                f"({self.getFunctions(c, funs)})" for c in expr.children()
            )
        elif is_not(expr) or expr.decl().kind() == Z3_OP_BNOT:
            return f"!({self.getFunctions(expr.arg(0), funs)})"
        elif is_eq(expr):
            return f"({self.getFunctions(expr.arg(0), funs)} == {self.getFunctions(expr.arg(1), funs)})"
        elif is_le(expr):
            return f"({self.getFunctions(expr.arg(0), funs)} <= {self.getFunctions(expr.arg(1), funs)})"
        elif is_lt(expr):
            return f"({self.getFunctions(expr.arg(0), funs)} < {self.getFunctions(expr.arg(1), funs)})"
        elif is_ge(expr):
            return f"({self.getFunctions(expr.arg(0), funs)} >= {self.getFunctions(expr.arg(1), funs)})"
        elif is_gt(expr):
            return f"({self.getFunctions(expr.arg(0), funs)} > {self.getFunctions(expr.arg(1), funs)})"
        elif expr.decl().name() == "bvugt":
            return f"({self.getFunctions(expr.arg(0), funs)}) > ({self.getFunctions(expr.arg(1), funs)})"
        elif expr.decl().name() == "bvuge":
            return f"({self.getFunctions(expr.arg(0), funs)}) >= ({self.getFunctions(expr.arg(1), funs)})"
        elif expr.decl().name() == "bvult":
            return f"({self.getFunctions(expr.arg(0), funs)}) < ({self.getFunctions(expr.arg(1), funs)})"
        elif expr.decl().name() == "bvule":
            return f"({self.getFunctions(expr.arg(0), funs)}) <= ({self.getFunctions(expr.arg(1), funs)})"
        elif expr.decl().name() == "bvmul":
            return " * ".join(
                f"({self.getFunctions(c, funs)})" for c in expr.children()
            )
            # return f'({self.getFunctions(expr.arg(0), funs)}) * ({self.getFunctions(expr.arg(1), funs)})'
        elif expr.decl().name() == "bvudiv":
            return f"({self.getFunctions(expr.arg(0), funs)}) / ({self.getFunctions(expr.arg(1), funs)})"
        elif expr.decl().name() == "bvadd":
            return " + ".join(
                f"({self.getFunctions(c, funs)})" for c in expr.children()
            )
        elif expr.decl().name() == "bvurem":
            return f"({self.getFunctions(expr.arg(0), funs)}) % ({self.getFunctions(expr.arg(1), funs)})"
        
        elif expr.decl().name() == 'bvshl':
            # Logical left shift
            return f'({self.getFunctions(expr.arg(0), funs)} << {self.getFunctions(expr.arg(1), funs)})'
        elif expr.decl().name() == 'bvlshr':
            # Logical right shift (zero-fill)
            return f'((unsigned){self.getFunctions(expr.arg(0), funs)} >> {self.getFunctions(expr.arg(1), funs)})'
        elif expr.decl().name() == 'bvashr':
            # Arithmetic right shift (sign-extend)
            return f'((int){self.getFunctions(expr.arg(0), funs)} >> {self.getFunctions(expr.arg(1), funs)})'
        
        elif expr.decl().kind() == Z3_OP_ITE:
            cond, then_expr, else_expr = expr.children()
            return f"(({self.getFunctions(cond, funs)}) ? ({self.getFunctions(then_expr, funs)}) : ({self.getFunctions(else_expr, funs)}))"
        elif is_false(expr):
            return "0"
        elif is_true(expr):
            return "1"
        elif is_const(expr):
            return str(expr)
        elif is_int_value(expr) or is_rational_value(expr):
            return str(expr.as_long())
        else:
            if is_app(expr) and expr.decl().kind() == Z3_OP_UNINTERPRETED:
                #     print("Fallback ",expr)
                if expr not in funs:
                    funs.append(expr)
            return str(expr)  # fallback

    def getOutputForCBFunctions(self, args, bench):
        funs = []
        for f in self.formulas:
            self.getFunctions(f, funs)
        # print("funs:", funs)
        # print("self.formulas:", self.formulas)
        inputOutput = []  # maps functions to input outputs
        for f in funs:
            # print(f)
            funName = str(f)
            index = str(funName).find("(")
            if index != -1:
                funName = str(funName)[:index]
            temp = {}
            out = getCBInputOutput(self, args, f, bench["object_file"]).split(" ")
            outlist = []
            # print(temp[f], len(temp[f].split(" ")))
            if args.verbose:
                print("Printing output of getCBInputOutput()")
            for i in range(len(out)):
                if args.verbose:
                    print(i, out[i])
                outlist.append(int(out[i]))
            # exit()
            temp[funName] = outlist
            inputOutput.append(temp)
        return inputOutput

    def harnessForOutput(self, f):
        s = """
    #include <stdio.h>
    #include <stdlib.h>
    #include <inttypes.h>
    #include <assert.h>
    """
        s += 'extern "C"{\n'
        for name in self.cbFunctions:
            # s+= "extern "
            args = ""
            out = ""
            for i in range(self.cbFunctions[name].arity()):
                # print(f"Argument {i + 1} type:", funs[name].domain(i))
                args += typenameConversion(self.cbFunctions[name].domain(i)) + ","
            out = typenameConversion(self.cbFunctions[name].range())
            # print("out ", out)
            s += out + " " + name + f"({args[:-1]});\n"
        s += "}\n"
        formulas = self.formulas
        vars = self.vars
        vardecl = ""
        ifconds = ""
        for formula in formulas:
            # print("formula:", f)
            ifconds += "if (" + self.z3_to_c(formula) + ")\n"
            # self.collect_vars(f, vars)
        # self.vars = vars
        # print("vars", vars)
        ifconds += "assert(0);"
        # print("vars:")
        a = ""
        b = ""
        for var in vars:
            if str(var.sort()) == "Int" or is_bv(var):
                # print("int", var.decl().name(), ";")
                a += "%d "
                b += ", &" + str(var.decl().name())
                vardecl += "int " + str(var.decl().name()) + ";\n"
        s += "int main(){" + "\n"
        s += vardecl + "\n"
        s += f'scanf("{a[:-1]}" {b});' + "\n"
        a = ""
        b = ""
        for i in range(f.num_args()):
            arg = f.arg(i)
            a += "%d "
            b += f", ({arg})"
        s += f'printf("{a}%d"{b}, {f}); \n'
        s += "}"
        # if args.verbose:
        #     print(f)
        #     print(s)
        return s

    def harnessForModelCheck(self):
        formulas = self.formulas
        vars = self.vars
        vardecl = ""
        ifconds = ""
        for f in formulas:
            # print("formula:", f)
            ifconds += "if (" + self.z3_to_c(f) + ")\n"
            # self.collect_vars(f, vars)
        # self.vars = vars
        # print("vars", vars)
        ifconds += "assert(0);"
        # print("vars:")
        a = ""
        b = ""
        for var in vars:
            if str(var.sort()) == "Int" or is_bool(var):
                # print("int", var.decl().name(), ";")
                a += "%d "
                b += ", &" + str(var.decl().name())
                vardecl += "int " + str(var.decl().name()) + ";\n"
            elif is_bv(var):
                width = var.sort().size()  # extract bit width
                if width == 8:
                    ctype = "uint8_t"
                    fmt = "%hhu"
                elif width == 16:
                    ctype = "uint16_t"
                    fmt = "%hu"
                elif width == 32:
                    ctype = "uint32_t"
                    fmt = "%u"
                elif width == 64:
                    ctype = "uint64_t"
                    fmt = "%llu"
                else:
                    print("Unknown bitvector size", var)
                    exit()

                a += fmt + " "
                b += ", &" + str(var.decl().name())
                vardecl += ctype + " " + str(var.decl().name()) + ";\n"
            else:
                print("Unexpected input type encountered", var)
                exit()

        prog = "int main(){" + "\n"
        prog += vardecl + "\n"
        prog += f'scanf("{a[:-1]}" {b});' + "\n"
        prog += ifconds + "\n"
        prog += "}"
        self.mainFun = prog
        return prog

    def initialize(self, args, bench):
        formulas = self.formulas
        functions = {}
        vars = set()
        for f in formulas:
            functions.update(self.collect_functions(f, functions))
            self.collect_vars(f, vars)
            # print(f, functions)
        self.vars = vars
        # Show results
        # print("\nFunction symbols found in SMT2:")
        cbFunctions = {}
        for name, decl in functions.items():
            if name.endswith("_cb"):
                cbFunctions[name] = decl
        # s.add(f_func(3, 4) > 0)
        if args.verbose:
            print("\nclose boxed functions", cbFunctions)
        self.add(formulas)
        if args.verbose:
            print("\nSMT file formulas", formulas)
        self.push()
        if args.verbose:
            print("pushed")
        self.cbFunctions = cbFunctions
        self.smtFile = self.s.to_smt2()[:-12]
        # print(self.smtFile)
        # exit()
        # if args.verbose:
        #     print(self.cbFunctions)
        # exit()
        # for name in cbFunctions: # add user provided lemmas from json
        #     for initLemma in bench["functions"][name]["userLemmas"]:
        #         # if args.verbose:
        #         #     print("initLemma", initLemma)
        #         initialLemmasFormula = self.readSMTstring(initLemma, cbFunctions)
        #         # if args.verbose:
        #         #     print("string lemma", initialLemmasFormula, cbFunctions)
        #         label = Bool(f'U{self.labelsUsed}')
        #         self.s.assert_and_track(initialLemmasFormula[0],label)
        #         self.lemmasData[label] = initialLemmasFormula[0]
        #         self.labelsUsed += 1
        #         if self.iteration not in self.lemmasUsed:
        #             self.lemmasUsed[self.iteration] = [label]
        #         else:
        #             self.lemmasUsed[self.iteration].append(label)
        #         # self.add(initialLemmasFormula)
        #     self.push()
        # if args.verbose:
        #     print("pushed")

    def run(self, args, bench, lemmasDict, functionsList, executiontime):
        # input("Enter an input to continue")
        smtFileLemmas = ""
        self.iteration += 1
        console.info(f"starting iteration {self.iteration}")
        self.push()
        if not args.addGamma == 0:
            if len(self.inputoutputassertions) > 20:
                self.inputoutputassertions = self.inputoutputassertions[-20:]
            for v in self.inputoutputassertions:
                if args.verbose:
                    print(v)
                try:
                    assertion = self.readSMTstring(v, self.cbFunctions)
                except Exception as e:
                    print(e)
                    print("assertion failed:", v)
                    exit()
                self.add(assertion)
        # lemmaStrings = genLemma(args)
        # lemmaStrings = {"L10": "(assert (forall ((varx Int) (vary Int)) (= (foo1_cb varx vary) (foo1_cb vary varx))))", "L11": "(assert (forall ((x Int) (y Int)) (not (= (foo1_cb x y) (foo1_cb y x)))))"} # get from sumit as a list of assertions
        console.info("Getting lemmas from LLM")
        while True:
            lemmaStrings = lemmasDict.getLemmasforSolver()
            break
            if lemmaStrings == self.prevlemma:
                time.sleep(3)
                continue
            break
        self.prevlemma = lemmaStrings
        start = time.time()
        # print("sumit ", lemmaStrings)
        if args.verbose:
            print("lemmas from sumit:", lemmaStrings)
        # exit()
        console.info("Pasrsing lemmas using Z3 api")
        if args.verbose:
            console.info("functions:", self.cbFunctions)
        for v in self.vars:
            if args.verbose:
                console.info(v, v.sort())
        if not args.addLemma == 0:
            for lemmaKey, lemmaString in lemmaStrings.items():  # add lemmas from sumit
                # if "assert" not in lemmaString:
                #     print("no assert in lemma")
                #     lemmasDict.removeLemma(lemmaKey)
                #     return
                try:
                    # print(lemmaString, 1)
                    lemmaFormula = self.readSMTstring(lemmaString, self.cbFunctions)
                    info = quantifier_info(lemmaFormula[0])
                    # print(info)
                    variables = ""
                    for val in info["variables"]:
                        variables+= val +" "
                    variables = variables[:-1]
                    pattern = ""
                    for val in info["function_calls"]:
                        pattern += f":pattern ({val}) "
                    # "(assert (forall ((z (_ BitVec 16))) (=> (distinct z (_ bv0 16)) (bvult (builtin_ctz_cb z) (_ bv16 16)))))"
                    query=f"(assert (forall ({variables}) (! {info["body_str"]} {pattern} ) ))"
                    # print(query)
                    # print(6)
                    lemmaFormula = self.readSMTstring(query, self.cbFunctions)
                    # new_forall = ForAll(bound_names, body, patterns=[cbFunctions[funt] (bound_names)])
                    # print(new_forall)
                    # lemmaFormula = [newQuery]
                    # for ind in range(lemmaFormula[0].num_vars()):
                    #     funtvars += f"{lemmaFormula[0].var_name(ind)} "
                    # lemmaString = lemmaString[:-2] + f":pattern (({funt} {funtvars}))))"
                    # print(lemmaString)
                    # lemmaFormula = self.readSMTstring(lemmaString, self.cbFunctions)

                    # print(lemmaFormula.sexpr())
                    # print(2)
                    # lemmaFormula = [rebuild_with_patterns(lemmaFormula[0], lambda v: f(v))]
                    # lemmaFormula = [rebuild_with_cb_patterns(lemmaFormula[0], self.cbFunctions)]
                    # print(3)
                    # if "Extract" in lemmaString:
                    #     lemmasDict.removeLemma(lemmaKey)
                        # lemmasDict[str(id)].setInvalid("lemma should not use Extract or concat")
                        # lemmasDict.setIncrementalCall(True)
                        # continue
                except Exception as e:
                    if args.verbose:
                        print("incorrect lemma syntax error", str(e))
                    # lemmasDict.removeLemma(lemmaKey)
                    # lemmasDict[str(id)].setInvalid(str(e))
                    # lemmasDict.setIncrementalCall(True)
                    # exit()
                    continue
                if len(lemmaString) == 0:
                    if args.verbose:
                        print("lemmaString is empty")
                    continue
                # if args.verbose:
                #     print("lemmaString", lemmaString, self.cbFunctions)
                label1 = Bool(lemmaKey)
                # if args.verbose:
                #     print(label, str(label))
                self.s.assert_and_track(lemmaFormula[0], label1)
                smtFileLemmas += f"(assert {lemmaFormula[0].sexpr()})\n"
                # self.s.add(lemmaFormula[0], label=label1)
                self.addedOnce = True
                bound_vars = set()
                # self.collectBoundVars(lemmaFormula[0], bound_vars)
                # print(self.vars, bound_vars)
                # exit()
                # self.labelsUsed += 1
                self.lemmasData[label1] = lemmaFormula[0]
                if self.iteration not in self.lemmasUsed:
                    self.lemmasUsed[self.iteration] = [label1]
                else:
                    self.lemmasUsed[self.iteration].append(label1)
                # self.add(lemmaFormula)
                # print(lemmaFormula)
        # exit()
        # print("testing 3")
        # iterations = args.iterations
        # while iterations > 0:
        # iterations -= 1
        failedLemmas = []
        print("\n\n\n\nLemmas used", self.lemmasUsed)
        if self.iteration in self.lemmasUsed:
            for lem in self.lemmasUsed[self.iteration]:
                print(lem, lemmaStrings[str(lem)])
        else:
            print(f"No lemmas found for iteration {self.iteration}")
        console.info("Calling Z3 check()")
        createDirectory("oracleTemp")
        with open("oracleTemp/assertions", "w+") as f:
            f.write(str(self.s.assertions()))
        # write_solver_to_smt2(self.s,"constraints.smt2")
        with open("constraints.smt2", "w") as f:
            # f.write(self.s.to_smt2())
            # f.write("(set-option :produce-unsat-cores true)\n")
            f.write(self.smtFile)
            f.write(smtFileLemmas)
            f.write("(check-sat)\n")
            # f.write("(get-unsat-core)\n")
        z3_cmd = ["z3", "constraints.smt2"]
        resultz3 = subprocess.run(z3_cmd, capture_output=True, text=True)
        print("z3 result",resultz3.stdout.strip())
        if resultz3.stdout.strip() == "unsat":
            start = time.time()
            console.info("Getting unsatcore for outside z3",resultz3.stdout)
            unsatCore = self.lemmasUsed[self.iteration]
            self.unsatCores[self.iteration] = unsatCore
            if args.verbose:
                print("UnsatCore:", unsatCore)  # TODO: Pankaj
            varmap = set()
            for key in self.vars:
                varmap.add(str(key))
            if args.verbose:
                print(varmap)
            for core in unsatCore:
                if args.verbose:
                    print(core, self.lemmasData[core])
                self.collectBoundVars(self.lemmasData[core], varmap)
            # print(self.vars)
            # print(self.lemmasUsed)
            # print(varmap)
            # exit()
            end = time.time()
            executiontime["z3"] += end - start
            if len(unsatCore) == 0:
                return AlgoVerdict.UNSAT
            start = time.time()
            console.info("calling checkUnsat")
            res = checkUnsat(
                unsatCore,
                self.lemmasData,
                lemmasDict,
                args,
                varmap,
                self.cbFunctions,
                bench,  #: Iterable[Dict]
            )
            if args.verbose:
                print("result: ", res)
                for core in unsatCore:
                    print("lemma status after pankaj call", lemmasDict[str(core)])
            self.pop()
            end = time.time()
            executiontime["fuzzer"] += end - start
            print("Execution time", executiontime)
            return res
        # exit()
        result = self.check()
        print(result)
        end = time.time()
        executiontime["z3"] += end - start
        if result == sat:
            # print(result)
            # lemmasDict.setIncrementalCall(True)
            # print("sat model",str(self.model()))
            # self.pop()
            # return AlgoVerdict.UNKNOWN
            createDirectory("oracleTemp")
            # with open("oracleTemp/model", "w+") as f:
            #     f.write(str(self.s.assertions()))
            #     f.write(str(self.model()))
            # print("testing 2")
            console.info(
                "received a model, calling modelCheck() to check is model is consistent"
            )
            if modelCheck(
                self, args, self.cbFunctions, bench["object_file"], failedLemmas
            ):
                print("satisfiable")
                print(self.model())
                print("Done")
                print("=" * 50)
                print("\n" * 4)
                # exit()
                return AlgoVerdict.SAT
            else:
                self.pop()
                console.info("received a model, not consistent so give feedback to LLM")
                # lemmasDict.setIncrementalCall(True)
                if not LemmaDict.checkIfRefinementCall:
                    lemmaDict.setRefinementCall(True)
                inconsistency = self.getOutputForCBFunctions(args, bench)
                if args.verbose:
                    print(inconsistency)
                for val in inconsistency:
                    tmpassert = "(assert "
                    for k in val:
                        for decl in self.model().decls():
                            # print("Function:", decl.name())
                            if decl.name() == k:
                                tmpassert += "(= (" + k + " "
                                index = 0
                                for inp in val[k][:-1]:
                                    domain = decl.domain(index)
                                    if is_bv_sort(domain):
                                        tmpassert += (
                                            str(
                                                self.to_smtlib_bv_bin(
                                                    inp, domain.size()
                                                )
                                            )
                                            + " "
                                        )
                                        # print(BitVecVal(inp, domain.size()))
                                    elif domain == IntSort():
                                        tmpassert += str(inp) + " "
                                    else:
                                        print("Unknown type, line 477 smt.py")
                                        exit()
                                    index += 1
                                # print(tmpassert)
                                if is_bv_sort(decl.range()):
                                    tmpassert += (
                                        ") "
                                        + str(
                                            self.to_smtlib_bv_bin(
                                                val[k][-1], decl.range().size()
                                            )
                                        )
                                        + "))"
                                    )
                                else:
                                    tmpassert += ") " + str(val[k][-1]) + "))"
                    # print(tmpassert)
                    if tmpassert not in self.inputoutputassertions:
                        self.inputoutputassertions.append(tmpassert)
                # print("Need new lemma", inconsistency) # TODO: Sumit
                exampleSet.createExampleFromDict(inconsistency)
                # exit()
                return AlgoVerdict.UNKNOWN
        elif result == unsat:
            start = time.time()
            console.info("Getting unsatcore")
            unsatCore = self.s.unsat_core()
            self.unsatCores[self.iteration] = unsatCore
            if args.verbose:
                print("UnsatCore:", unsatCore)  # TODO: Pankaj
            varmap = set()
            for key in self.vars:
                varmap.add(str(key))
            if args.verbose:
                print(varmap)
            for core in unsatCore:
                if args.verbose:
                    print(core, self.lemmasData[core])
                self.collectBoundVars(self.lemmasData[core], varmap)
            # print(self.vars)
            # print(self.lemmasUsed)
            # print(varmap)
            # exit()
            end = time.time()
            executiontime["z3"] += end - start
            if len(unsatCore) == 0:
                return AlgoVerdict.UNSAT
            start = time.time()
            console.info("calling checkUnsat")
            res = checkUnsat(
                unsatCore,
                self.lemmasData,
                lemmasDict,
                args,
                varmap,
                self.cbFunctions,
                bench,  #: Iterable[Dict]
            )
            if args.verbose:
                print("result: ", res)
                for core in unsatCore:
                    print("lemma status after pankaj call", lemmasDict[str(core)])
            self.pop()
            end = time.time()
            executiontime["fuzzer"] += end - start
            print("Execution time", executiontime)
            return res
        else:
            if args.verbose:
                print("UNKNOWN")
            self.pop()
            return AlgoVerdict.UNKNOWN

    def __del__(self):
        print("MyClass object is being destroyed")
