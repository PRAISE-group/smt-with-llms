from z3 import *
from modelCheck import *
from genLemma import *
import json

class smtAI(object):
    """docstring for smtAI.
    uses LLM generated lemmas to find satisfying assignments in the case when smt encoding of a function is not available or it is too complicated for smt solver to solve.
    """

    def __init__(self):
        super(smtAI, self).__init__()
        self.s = Solver()

    def readSMTfile(self, inputfilepath):
        print(inputfilepath)
        f = parse_smt2_file(inputfilepath)
        return f

    def readSMTstring(self, inputfilepath, declarations):
        f = parse_smt2_string(inputfilepath, decls=declarations)
        return f

    def collect_functions(self, expr, seen=None):
        if seen is None:
            seen = {}
        if is_app(expr):
            decl = expr.decl()
            name = str(decl.name())
            # Filter out built-in operators like +, *, etc.
            if decl.arity() == 0:   # z3 declares all constants as zero arity functions too
                return seen
            if decl.kind() == Z3_OP_UNINTERPRETED and name not in seen:
                seen[name] = decl
        for child in expr.children():
            self.collect_functions(child, seen)
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

    def run(self, args, bench):
            # print(bench["smt_file"])
        formulas = self.readSMTfile(bench["smt_file"])
        lemmaStrings = genLemma(args)
        if args.verbose:
            print(formulas)
        functions = {}
        for f in formulas:
            functions.update(self.collect_functions(f,functions))
        # Show results
        print("Function symbols found in SMT2:")
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
            print("close boxed functions", cbFunctions)
        self.add(formulas)
        self.push()
        for name in cbFunctions:
            for initLemma in bench["cb"][name]["userLemmas"]:
                initialLemmasFormula = self.readSMTstring(initLemma, cbFunctions)
                self.add(initialLemmasFormula)
            self.push()
        # self.push()
        # for sanityChecks in bench["sanity_checks"]:
        #     initialLemmasFormula = self.readSMTfile(sanityChecks)
        #     self.add(initialLemmasFormula)
        # self.push()
        # print("testing 1")
        for lemmaString in lemmaStrings:
            lemmaFormula = self.readSMTstring(lemmaString, cbFunctions)
            self.add(lemmaFormula)
        # print("testing 3")
        iterations = args.iterations
        while iterations > 0:
            iterations -= 1
            failedLemmas = []
            if self.check() == sat:
                # print("testing 2")
                if modelCheck(self,args, cbFunctions, bench["object_file"], failedLemmas):
                    print("satisfiable")
                    print(self.model())
                    print("Done")
                    print("="*50)
                    print("\n"*4)
                    break
                else:
                    # self.pop()
                    print("Need new lemma") # TODO: Sumit
                    break
            else:
                print("No solution")  # TODO: Pankaj
                break


    def __del__(self):
        print("MyClass object is being destroyed")
