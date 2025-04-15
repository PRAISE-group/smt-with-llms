from z3 import *
from modelCheck import *
from genLemma import *

class smtAI(object):
    """docstring for smtAI.
    uses LLM generated lemmas to find satisfying assignments in the case when smt encoding of a function is not available or it is too complicated for smt solver to solve.
    """

    def __init__(self):
        super(smtAI, self).__init__()
        self.s = Solver()

    def readSMTfile(self, inputfilepath):
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

    def run(self, args):
        formulas = self.readSMTfile(args.inputFile)
        lemmaString = genLemma(args)
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
        lemmaFormula = self.readSMTstring(lemmaString, cbFunctions)
        self.add(formulas)
        self.add(lemmaFormula)
        while args.iterations > 0:
            args.iterations -= 1
            if self.check() == sat:
                if modelCheck(self,args, cbFunctions):
                    print("satisfiable")
                    print(self.model())
                    break
                else:
                    print("Need new lemma") # TODO: Sumit
                    break
            else:
                print("No solution")  # TODO: Pankaj
                break
