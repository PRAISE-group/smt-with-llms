from z3 import *
from code.solver.modelCheck import *
from code.lemma.actions import *
from code.unsatmodule.driver import *
from code.models import exampleSet, ExampleSet
from code.models import AlgoVerdict
from py_console import console
import time

class smtAI(object):
    """docstring for smtAI.
    uses LLM generated lemmas to find satisfying assignments
    in the case when smt encoding of a function is not available
    or it is too complicated for smt solver to solve.
    """

    def __init__(self):
        super(smtAI, self).__init__()
        # set_param("timeout", 600000) # timeout for z3
        self.s = Solver()
        self.formulas = None
        self.vars = None
        self.mainFun = None
        self.lemmasData = {} # key is the label to lemmas
        self.labelsUsed = 0
        self.unsatCores = {} # key is the iteration number starts from 1
        self.iteration = 0
        self.lemmasUsed = {} # key is the iteration number starts from 1
        self.cbFunctions = None # Map of close box functions z3 object
        self.inputoutputassertions = [] # input output constraints obtained from modelcheck inconsistency
        self.prevlemma = {}

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
            elif decl.kind() == Z3_OP_UNINTERPRETED and name not in seen :
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
            if decl.arity() == 0:   # z3 declares all constants as zero arity functions too
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
        return "#b" + format(twos_complement, f'0{width}b')

    def z3_to_c(self, expr):
        # print("expr",expr)
        if expr.decl().kind() == Z3_OP_IMPLIES:
                a, b = expr.children()
                return f"(!({self.z3_to_c(a)}) || ({self.z3_to_c(b)}))"
        elif is_and(expr):
            return ' && '.join(f'({self.z3_to_c(c)})' for c in expr.children())
        elif is_or(expr):
            return ' || '.join(f'({self.z3_to_c(c)})' for c in expr.children())
        elif is_not(expr):
            return f'!({self.z3_to_c(expr.arg(0))})'
        elif is_eq(expr):
            return f'({self.z3_to_c(expr.arg(0))} == {self.z3_to_c(expr.arg(1))})'
        elif is_le(expr):
            return f'({self.z3_to_c(expr.arg(0))} <= {self.z3_to_c(expr.arg(1))})'
        elif is_lt(expr):
            return f'({self.z3_to_c(expr.arg(0))} < {self.z3_to_c(expr.arg(1))})'
        elif is_ge(expr):
            return f'({self.z3_to_c(expr.arg(0))} >= {self.z3_to_c(expr.arg(1))})'
        elif is_gt(expr):
            return f'({self.z3_to_c(expr.arg(0))} > {self.z3_to_c(expr.arg(1))})'
        elif expr.decl().name() == 'bvugt':
            return f'({self.z3_to_c(expr.arg(0))}) > ({self.z3_to_c(expr.arg(1))})'
        elif expr.decl().name() == 'bvuge':
            return f'({self.z3_to_c(expr.arg(0))}) >= ({self.z3_to_c(expr.arg(1))})'
        elif expr.decl().name() == 'bvult':
            return f'({self.z3_to_c(expr.arg(0))}) < ({self.z3_to_c(expr.arg(1))})'
        elif expr.decl().name() == 'bvule':
            return f'({self.z3_to_c(expr.arg(0))}) <= ({self.z3_to_c(expr.arg(1))})'
        elif expr.decl().name() == 'bvmul':
            return ' * '.join(f'({self.z3_to_c(c)})' for c in expr.children())
            # return f'({self.z3_to_c(expr.arg(0))}) * ({self.z3_to_c(expr.arg(1))})'
        elif expr.decl().name() == 'bvadd':
            return ' + '.join(f'({self.z3_to_c(c)})' for c in expr.children())
        elif expr.decl().name() == 'bvurem':
            return f'({self.z3_to_c(expr.arg(0))}) % ({self.z3_to_c(expr.arg(1))})'
        elif expr.decl().kind() == Z3_OP_ITE:
            cond, then_expr, else_expr = expr.children()
            return f'(({self.z3_to_c(cond)}) ? ({self.z3_to_c(then_expr)}) : ({self.z3_to_c(else_expr)}))'
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
            return ' && '.join(f'({self.getFunctions(c, funs)})' for c in expr.children())
        elif is_or(expr) or expr.decl().kind() == Z3_OP_BOR:
            return ' || '.join(f'({self.getFunctions(c, funs)})' for c in expr.children())
        elif is_not(expr) or expr.decl().kind() == Z3_OP_BNOT:
            return f'!({self.getFunctions(expr.arg(0), funs)})'
        elif is_eq(expr):
            return f'({self.getFunctions(expr.arg(0), funs)} == {self.getFunctions(expr.arg(1), funs)})'
        elif is_le(expr):
            return f'({self.getFunctions(expr.arg(0), funs)} <= {self.getFunctions(expr.arg(1), funs)})'
        elif is_lt(expr):
            return f'({self.getFunctions(expr.arg(0), funs)} < {self.getFunctions(expr.arg(1), funs)})'
        elif is_ge(expr):
            return f'({self.getFunctions(expr.arg(0), funs)} >= {self.getFunctions(expr.arg(1), funs)})'
        elif is_gt(expr):
            return f'({self.getFunctions(expr.arg(0), funs)} > {self.getFunctions(expr.arg(1), funs)})'
        elif expr.decl().name() == 'bvugt':
            return f'({self.getFunctions(expr.arg(0), funs)}) > ({self.getFunctions(expr.arg(1), funs)})'
        elif expr.decl().name() == 'bvuge':
            return f'({self.getFunctions(expr.arg(0), funs)}) >= ({self.getFunctions(expr.arg(1), funs)})'
        elif expr.decl().name() == 'bvult':
            return f'({self.getFunctions(expr.arg(0), funs)}) < ({self.getFunctions(expr.arg(1), funs)})'
        elif expr.decl().name() == 'bvule':
            return f'({self.getFunctions(expr.arg(0), funs)}) <= ({self.getFunctions(expr.arg(1), funs)})'
        elif expr.decl().name() == 'bvmul':
            return ' * '.join(f'({self.getFunctions(c, funs)})' for c in expr.children())
            # return f'({self.getFunctions(expr.arg(0), funs)}) * ({self.getFunctions(expr.arg(1), funs)})'
        elif expr.decl().name() == 'bvadd':
            return ' + '.join(f'({self.getFunctions(c, funs)})' for c in expr.children())
        elif expr.decl().name() == 'bvurem':
            return f'({self.getFunctions(expr.arg(0), funs)}) % ({self.getFunctions(expr.arg(1), funs)})'
        elif expr.decl().kind() == Z3_OP_ITE:
            cond, then_expr, else_expr = expr.children()
            return f'(({self.getFunctions(cond, funs)}) ? ({self.getFunctions(then_expr, funs)}) : ({self.getFunctions(else_expr, funs)}))'
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
        inputOutput = [] # maps functions to input outputs
        for f in funs:
            # print(f)
            funName = str(f)
            index = str(funName).find("(")
            if index != -1:
                funName = str(funName)[:index]
            temp = {}
            out = getCBInputOutput(self,args, f, bench["object_file"]).split(" ")
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
        s+= "extern \"C\"{\n"
        for name in self.cbFunctions:
            # s+= "extern "
            args = ""
            out = ""
            for i in range(self.cbFunctions[name].arity()):
                # print(f"Argument {i + 1} type:", funs[name].domain(i))
                args+=typenameConversion(self.cbFunctions[name].domain(i))+","
            out = typenameConversion(self.cbFunctions[name].range())
            # print("out ", out)
            s+= out + " " + name + f"({args[:-1]});\n"
        s+= "}\n"
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
        ifconds+= "assert(0);"
        # print("vars:")
        a = ""
        b = ""
        for var in vars:
            if str(var.sort())=="Int" or is_bv(var):
                # print("int", var.decl().name(), ";")
                a+= "%d "
                b+= ", &" + str(var.decl().name())
                vardecl += "int "+ str(var.decl().name())+ ";\n"
        s += "int main(){" + "\n"
        s+= vardecl + "\n"
        s+= f"scanf(\"{a[:-1]}\" {b});" + "\n"
        a = ""
        b = ""
        for i in range(f.num_args()):
            arg = f.arg(i)
            a += "%d "
            b+= f", ({arg})"
        s += f"printf(\"{a}%d\"{b}, {f}); \n"
        s+="}"
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
        ifconds+= "assert(0);"
        # print("vars:")
        a = ""
        b = ""
        for var in vars:
            if str(var.sort())=="Int" or is_bool(var):
                # print("int", var.decl().name(), ";")
                a+= "%d "
                b+= ", &" + str(var.decl().name())
                vardecl += "int "+ str(var.decl().name())+ ";\n"
            elif is_bv(var):
                width = var.sort().size()  # extract bit width
                if width == 8:
                    ctype = "uint8_t"
                    fmt   = "%hhu"
                elif width == 16:
                    ctype = "uint16_t"
                    fmt   = "%hu"
                elif width == 32:
                    ctype = "uint32_t"
                    fmt   = "%u"
                elif width == 64:
                    ctype = "uint64_t"
                    fmt   = "%llu"
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
        prog+= vardecl + "\n"
        prog+= f"scanf(\"{a[:-1]}\" {b});" + "\n"
        prog+= ifconds + "\n"
        prog+="}"
        self.mainFun = prog
        return prog

    def initialize(self, args, bench):
        formulas = self.formulas
        functions = {}
        vars = set()
        for f in formulas:
            functions.update(self.collect_functions(f,functions))
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
            print("\nSMT file formulas",formulas)
        self.push()
        if args.verbose:
            print("pushed")
        self.cbFunctions = cbFunctions
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

        self.iteration +=1
        console.info(f"starting iteration {self.iteration}")
        self.push()
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
                console.info(v,v.sort())
        for lemmaKey, lemmaString in lemmaStrings.items():  # add lemmas from sumit
            # if "assert" not in lemmaString:
            #     print("no assert in lemma")
            #     lemmasDict.removeLemma(lemmaKey)
            #     return
            try:
                lemmaFormula = self.readSMTstring(lemmaString, self.cbFunctions)
                if "Extract" in lemmaString:
                    lemmasDict.removeLemma(lemmaKey)
                    # lemmasDict[str(id)].setInvalid("lemma should not use Extract or concat")
                    lemmasDict.setIncrementalCall(True)
                    continue
            except Exception as e:
                if args.verbose:
                    print("incorrect lemma syntax error", str(e))
                lemmasDict.removeLemma(lemmaKey)
                # lemmasDict[str(id)].setInvalid(str(e))
                lemmasDict.setIncrementalCall(True)
                # exit()
                continue
            if len(lemmaFormula)==0:
                if args.verbose:
                    print("lemmaFormula is empty")
                continue
            # if args.verbose:
            #     print("lemmaString", lemmaString, self.cbFunctions)
            label = Bool(lemmaKey)
            # if args.verbose:
            #     print(label, str(label))
            self.s.assert_and_track(lemmaFormula[0],label)
            bound_vars = set()
            # self.collectBoundVars(lemmaFormula[0], bound_vars)
            # print(self.vars, bound_vars)
            # exit()
            # self.labelsUsed += 1
            self.lemmasData[label] = lemmaFormula[0]
            if self.iteration not in self.lemmasUsed:
                self.lemmasUsed[self.iteration] = [label]
            else:
                self.lemmasUsed[self.iteration].append(label)
            # self.add(lemmaFormula)
        # print("testing 3")
        # iterations = args.iterations
        # while iterations > 0:
        # iterations -= 1
        failedLemmas = []
        print("\n\n\n\nLemmas used",self.lemmasUsed)
        if self.iteration in self.lemmasUsed:
            for lem in self.lemmasUsed[self.iteration]:
                print(lem, lemmaStrings[str(lem)])
        else:
            print(f"No lemmas found for iteration {self.iteration}")
        console.info("Calling Z3 check()")
        createDirectory("oracleTemp")
        with open("oracleTemp/assertions", "w+") as f:
            f.write(str(self.s.assertions()))
        result = self.check()
        end = time.time()
        executiontime["z3"]+=end-start
        if result == sat:
            # print(result)
            # lemmasDict.setIncrementalCall(True)
            # print("sat model",str(self.model()))
            # self.pop()
            # return AlgoVerdict.UNKNOWN
            createDirectory("oracleTemp")
            with open("oracleTemp/model", "w+") as f:
                f.write(str(self.s.assertions()))
                f.write(str(self.model()))
            # print("testing 2")
            console.info("received a model, calling modelCheck() to check is model is consistent")
            if modelCheck(self,args, self.cbFunctions, bench["object_file"], failedLemmas):
                print("satisfiable")
                print(self.model())
                print("Done")
                print("="*50)
                print("\n"*4)
                # exit()
                return AlgoVerdict.SAT
            else:
                self.pop()
                console.info("received a model, not consistent so give feedback to LLM")
                lemmasDict.setIncrementalCall(True)
                inconsistency = self.getOutputForCBFunctions(args, bench)
                if args.verbose:
                    print(inconsistency)
                for val in inconsistency:
                    tmpassert = "(assert "
                    for k in val:
                        for decl in self.model().decls():
                            # print("Function:", decl.name())
                            if decl.name() == k:
                                tmpassert += "(= ("+k + " "
                                index = 0
                                for inp in val[k][:-1]:
                                    domain = decl.domain(index)
                                    if is_bv_sort(domain):
                                        tmpassert += str(self.to_smtlib_bv_bin(inp, domain.size())) + " "
                                        # print(BitVecVal(inp, domain.size()))
                                    elif domain == IntSort():
                                        tmpassert += str(inp) + " "
                                    else:
                                        print("Unknown type, line 477 smt.py")
                                        exit()
                                    index += 1
                                # print(tmpassert)
                                if is_bv_sort(decl.range()):
                                    tmpassert += ") " + str(self.to_smtlib_bv_bin(val[k][-1], decl.range().size())) + "))"
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
            executiontime["z3"]+= end-start
            if len(unsatCore)==0:
                return AlgoVerdict.UNSAT
            start = time.time()
            console.info("calling checkUnsat")
            res = checkUnsat(unsatCore, self.lemmasData, lemmasDict, args, varmap, self.cbFunctions)
            if args.verbose:
                print("result: ",res)
                for core in unsatCore:
                    print("lemma status after pankaj call",lemmasDict[str(core)])
            self.pop()
            end = time.time()
            executiontime["fuzzer"]+= end-start
            print("Execution time", executiontime)
            return res
        else:
            if args.verbose:
                print("UNKNOWN")
            self.pop()
            return AlgoVerdict.UNKNOWN


    def __del__(self):
        print("MyClass object is being destroyed")
