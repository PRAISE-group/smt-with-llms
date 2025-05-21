import unsatmodule.cnf as cnf
import unsatmodule.fuzzer as fuzz
import utils.unsat_util as pu
import z3
from py_console import console
from models import LemmaStatus


def check_unsat(lemmaList,  # list of lemma ids appeared in unsat core
                lemmaMap,   # Map from id to lemma appeared in unsat core as z3 object
                lemmasDict, # Main lemma dictionary containing all the meta-data
                args        # command line arguments, just in case
                ):


    pu.initLogger()

    # get constraints for each fuzz instance/lemma    
    fuzz_cons = {} # planning to use this for parallelising fuzzer call

    #for id, lemma in lemmas.items():
    for id in lemmaList:
        lemma = lemmaMap[id]
        fuzzPhi, varMap, funcMap = cnf.parse_smtlib_expr(lemma)
        notFuzzPhi = cnf.getCNF(z3.Not(fuzzPhi))
        fuzz_cons[id] = notFuzzPhi
        console.info(f"Invoking fuzzer for lemma: {lemma}")
        LOG(f"Invoking fuzzer for lemma: {lemma}")
        verdict, cex = fuzz.getVerdict(id, fuzz_cons[id], varMap, funcMap, args)
        if verdict == LemmaStatus.VALID:
            console.success(f"This lemma got verified: {lemma}")
            pu.LOG(f"This lemma got verified: {lemma}")
            lemmasDict[id].setValid()
        elif verdict == LemmaStatus.INVALID:
            console.error(f"Cex found: {cex}")
            LOG(f"Cex found: {cex}")
            lemmasDict[id].setInvalid(cex)
            lemmasDict.setRefinementCall(True)





if __name__ == "__main__":
    class Arguments:
        sharedObj = ""
    lemmas = {1:"(= (+ (+ x y) z) (+ x (+ y z)))", 2:"(= (+ (+ x y) z) (- x (+ y x)))"}
    args = Arguments()
    check_unsat(lemmas, args)
