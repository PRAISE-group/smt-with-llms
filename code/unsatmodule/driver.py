import unsatmodule.cnf as cnf
import unsatmodule.fuzzer as fuzz
import utils.process_util as pu
import z3

def check_unsat(lemmas,  # for now considering a map of id to string of lemma in smtlib format.
                                        # In future having z3 object will be best
                args              # command line arguments, just in case
                ):


    pu.initLogger()

    # get constraints for each fuzz instance/lemma    
    fuzz_cons = {} # planning to use this for parallelising fuzzer call
    for id, lemma in lemmas.items():
        fuzzPhi, varMap, funcMap = cnf.parse_smtlib_expr(lemma)
        notFuzzPhi = cnf.getCNF(z3.Not(fuzzPhi))
        fuzz_cons[id] = notFuzzPhi
        verdict, cex = fuzz.getVerdict(id, fuzz_cons[id], varMap, funcMap, args)
        if verdict == "Verified":
            print(f"This lemma got verified: {lemma}")
        elif verdict == "CexFound":
            print(f"Cex found: {cex}")


    # call fuzzer to 


class Arguments:
    sharedObj = ""

if __name__ == "__main__":
    lemmas = {1:"(= (+ (+ x y) z) (+ x (+ y z)))", 2:"(= (+ (+ x y) z) (- x (+ y x)))"}
    args = Arguments()
    check_unsat(lemmas, args)
