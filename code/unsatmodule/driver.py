import code.unsatmodule.fuzzer as fuzz
import code.utils.unsatUtil as pu
import code.utils.z3utils as zu
import z3
from py_console import console
from code.models import LemmaStatus, AlgoVerdict



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
    print("lemma dict: ", lemmasDict)
    print("varmap: ", varMap)
    print("funcmap: ", funcMap)
    """

    assert(len(lemmaList) > 0, "Empty unsat core")

    pu.initLogger()

    # get constraints for each fuzz instance/lemma
    fuzz_cons = {} # planning to use this for parallelising fuzzer call

    someInvalid = False

    varMap = {} # TODO: fix this

    #for id, lemma in lemmas.items():
    for id in lemmaList:
        lemma = lemmaMap[id]
        # first check if quantifier is present
        notnot = z3.Not(lemma)
        tempVars = z3.z3util.get_vars(notnot)
        for var in tempVars:
            varMap[str(var)] = var
        lemma_vars = None
        if zu.containsQuantifier(lemma):
            phi, lemma_vars = zu.removeQuantifier(notnot)

        else:
            phi = zu.getCNF(notnot)
            lemma_vars = get_vars(phi)

        fuzz_cons[id] = phi

        console.info(f"Invoking fuzzer for lemma: {lemma}")
        pu.LOG(f"Invoking fuzzer for lemma: {lemma}")

        verdict, cex = fuzz.getVerdict(id, fuzz_cons[id], varMap, funcMap, argsObj, lemma_vars)

        if verdict == LemmaStatus.VALID:
            console.success(f"Lemma verified: {lemma}")
            pu.LOG(f"Lemma verified: {lemma}")
            lemmasDict[str(id)].setValid()

        elif verdict == LemmaStatus.INVALID:
            console.error(f"Cex found: {cex}")
            pu.LOG(f"Cex found: {cex}")
            lemmasDict[str(id)].setInvalid(cex)
            someInvalid = True

    if someInvalid == True:
        lemmasDict.setRefinementCall(True)
        return AlgoVerdict.UNKNOWN
    else:
        return AlgoVerdict.UNSAT
