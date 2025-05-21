from z3 import *
from code.solver.modelCheck import *
from code.lemma.actions import *

class smtAI(object):
    """docstring for smtAI.
    uses LLM generated lemmas to find satisfying assignments
    in the case when smt encoding of a function is not available
    or it is too complicated for smt solver to solve.
    """

    def __init__(self):
        super(smtAI, self).__init__()
        self.s = Solver()
        self.formulas = None
        self.vars = None
        self.mainFun = None
        self.lemmasData = {} # key is the label to lemmas
        self.labelsUsed = 0
        self.unsatCores = {} # key is the iteration number starts from 1
        self.iteration = 0
        self.lemmasUsed = {} # key is the iteration number starts from 1

    def readSMTfile(self, inputfilepath):
        print(inputfilepath)
        f = parse_smt2_file(inputfilepath)
        self.formulas = f
        return f

    def readSMTstring(self, s, declarations):
        print(s)
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

    def z3_to_c(self, expr):
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
        elif is_const(expr):
            return str(expr)
        elif is_int_value(expr) or is_rational_value(expr):
            return str(expr.as_long())
        else:
            return str(expr)  # fallback

    def harnessForModelCheck(self):
        formulas = self.formulas
        vars = set()
        vardecl = ""
        ifconds = ""
        for f in formulas:
            # print("formula:", f)
            ifconds += "if (" + self.z3_to_c(f) + ")\n"
            self.collect_vars(f, vars)
        self.vars = vars
        # print("vars", vars)
        ifconds+= "assert(0);"
        # print("vars:")
        a = ""
        b = ""
        for var in vars:
            if str(var.sort())=="Int":
                # print("int", var.decl().name(), ";")
                a+= "%d "
                b+= ", &" + str(var.decl().name())
                vardecl += "int "+ str(var.decl().name())+ ";\n"
        prog = "void main(){" + "\n"
        prog+= vardecl + "\n"
        prog+= f"scanf(\"{a}\" {b});" + "\n"
        prog+= ifconds + "\n"
        prog+="}"
        self.mainFun = prog
        return prog

    def run(self, args, bench):
            # print(bench["smt_file"])
        formulas = self.formulas
        vars = set()
        for f in formulas:
            # print("formula:", f, vars)
            # ifconds += "if (" + self.z3_to_c(f) + ")\n"
            self.collect_vars(f, vars)
        self.vars = vars
        # print("vars", vars)
        self.iteration +=1
        # lemmaStrings = genLemma(args)
        lemmaStrings = ["(assert (forall ((x Int) (y Int)) (not (= (foo1_cb x y) (foo1_cb y x)))))"]
        if args.verbose:
            print("\nSMT file formulas",formulas)
        functions = {}
        for f in formulas:
            functions.update(self.collect_functions(f,functions))
            # print(f, functions)
        # Show results
        # print("\nFunction symbols found in SMT2:")
        cbFunctions = {}
        for name, decl in functions.items():
            # domain_sorts = [str(decl.domain(i)) for i in range(decl.arity())]
            # # if decl.arity() == 0: # z3 declares all constants as zero arity functions too
            # #     continue
            # print(f"  {name} : ({', '.join(domain_sorts)}) -> {decl.range()} ")
            if name.endswith("_cb"):
                cbFunctions[name] = decl
        # s.add(f_func(3, 4) > 0)
        if args.verbose:
            print("\nclose boxed functions", cbFunctions)
        self.add(formulas)
        self.push()
        for name in cbFunctions:
            for initLemma in bench["functions"][name]["userLemmas"]:
                if args.verbose:
                    print("initLemma", initLemma)
                initialLemmasFormula = self.readSMTstring(initLemma, cbFunctions)
                if args.verbose:
                    print("string lemma", initialLemmasFormula, cbFunctions)
                label = Bool(f'L{self.labelsUsed}')
                self.s.assert_and_track(initialLemmasFormula[0],label)
                self.lemmasData[label] = initialLemmasFormula[0]
                self.labelsUsed += 1
                if self.iteration not in self.lemmasUsed:
                    self.lemmasUsed[self.iteration] = [label]
                else:
                    self.lemmasUsed[self.iteration].append(label)
                # self.add(initialLemmasFormula)
            self.push()
        # self.push()
        # for sanityChecks in bench["sanity_checks"]:
        #     initialLemmasFormula = self.readSMTfile(sanityChecks)
        #     self.add(initialLemmasFormula)
        # self.push()
        # print("testing 1")
        for lemmaString in lemmaStrings:
            lemmaFormula = self.readSMTstring(lemmaString, cbFunctions)
            if args.verbose:
                print("lemmaString", lemmaString, cbFunctions)
            label = Bool(f'L{self.labelsUsed}')
            self.s.assert_and_track(lemmaFormula[0],label)
            self.labelsUsed += 1
            self.lemmasData[label] = lemmaFormula[0]
            if self.iteration not in self.lemmasUsed:
                self.lemmasUsed[self.iteration] = [label]
            else:
                self.lemmasUsed[self.iteration].append(label)
            # self.add(lemmaFormula)
        # print("testing 3")
        iterations = args.iterations
        # while iterations > 0:
        # iterations -= 1
        failedLemmas = []
        result = self.check()
        if result == sat:
            # print("testing 2")
            if modelCheck(self,args, cbFunctions, bench["object_file"], failedLemmas):
                print("satisfiable")
                print(self.model())
                print("Done")
                print("="*50)
                print("\n"*4)
                return
            else:
                # self.pop()
                print("Need new lemma") # TODO: Sumit
                return
        elif result == unsat:
            unsatCore = self.s.unsat_core()
            self.unsatCores[self.iteration] = unsatCore
            print("UnsatCore:", unsatCore)  # TODO: Pankaj
            for core in unsatCore:
                print(core, self.lemmasData[core])
            print(self.vars)
            print(self.lemmasUsed)
            return
        else:
            print("UNKNOWN")
            return


    def __del__(self):
        print("MyClass object is being destroyed")
