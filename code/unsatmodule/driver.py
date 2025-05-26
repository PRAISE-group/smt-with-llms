import code.unsatmodule.fuzzer as fuzz
import code.utils.unsatUtil as pu
import code.utils.z3utils as zu
import z3
from py_console import console
from code.models import LemmaStatus


def checkUnsat(lemmaList,  # list of lemma ids appeared in unsat core
                lemmaMap,   # Map from id to lemma appeared in unsat core as z3 object
                lemmasDict, # Main lemma dictionary containing all the meta-data
                argsObj,    # command line arguments, just in case
                varMap,     # str->z3Object for each variable
                funcMap     # map for function as varMap
                ):

    """
    print("lemma list: ", lemmaList)
    print("lemma map: ", lemmaMap)
    print("varmap: ", varMap)
    print("funcmap: ", funcMap)
    """

    pu.initLogger()

    # get constraints for each fuzz instance/lemma
    fuzz_cons = {} # planning to use this for parallelising fuzzer call

    #for id, lemma in lemmas.items():
    for id in lemmaList:
        lemma = lemmaMap[id]
        # first check if quantifier is present
        if zu.containsQuantifier(lemma):
            phi = zu.removeQuantifier(z3.Not(lemma))

        else:
            phi = zu.getCNF(z3.Not(lemma))

        fuzz_cons[id] = phi

        console.info(f"Invoking fuzzer for lemma: {lemma}")
        pu.LOG(f"Invoking fuzzer for lemma: {lemma}")

        verdict, cex = fuzz.getVerdict(id, fuzz_cons[id], varMap, funcMap, argsObj)

        if verdict == LemmaStatus.VALID:
            console.success(f"Lemma verified: {lemma}")
            pu.LOG(f"Lemma verified: {lemma}")

            lemmasDict[id].setValid()

        elif verdict == LemmaStatus.INVALID:
            console.error(f"Cex found: {cex}")
            pu.LOG(f"Cex found: {cex}")

            lemmasDict[id].setInvalid(cex)
            lemmasDict.setRefinementCall(True)
