import sys
import time
import json
import threading
from time import sleep
from code.utils.printers import console

from code.lemma.context import LemmaDict
from code.models import AlgoVerdict
from code.utils.commandline import commandLineArgs
from code.lemma.actions import generate_lemmas_background
from code.models import Function, Lemmas, LemmaStatus
from code.solver.smtai import *
from code.satmodule.test.smttoc import *


if __name__ == "__main__":
    lemmaDict = LemmaDict()
    functionsList: List[Function] = []
    running_llm_threads: list[threading.Thread] = []

    with open(commandLineArgs.inputFile, "r") as f:
        data = json.load(f)

    # FIXME: can we do better here
    commandLineArgs.sharedLib = data["object_file"]

    for key, value in data["functions"].items():
        functionsList.append(
            Function(
                id=key,
                name=key,
                description=value.get("desc", "No description available."),
                userLemmas=[
                    Lemmas(
                        id=f"{key}_gen0_l{index}",
                        status=LemmaStatus.UNKNOWN,
                        associatedFunction=key,
                        smtFormat=lemmaInfo,
                        generation=0,
                    )
                    for index, lemmaInfo in enumerate(value.get("userLemmas", []), 1)
                ],
                inputs=[str(c) for c in value.get("tests", [])],
                object_file=commandLineArgs.sharedLib,
                smtDecl=data["functions"][key]["smtDecl"],
                smt_file=data["smt_file"],
            )
        )

    # Run a background thread for generating lemmas.
    # One for each function.
    stop_event = threading.Event()
    for f in functionsList:
        t = threading.Thread(
            target=generate_lemmas_background,
            args=(
                f,
                "SMTLIB",
                commandLineArgs.minLemma,
                commandLineArgs.maxLemma,
                lemmaDict,
                stop_event,
            ),
            daemon=True,
        )
        t.start()
        running_llm_threads.append(t)

    if commandLineArgs.stop:
        time.sleep(10)
        stop_event.set()
        for t in running_llm_threads:
            t.join()
        sys.exit(0)

    # @Pankaj, @Gourav. Write the main driver here or abstract it out into a function.
    # TODO: lemmaDict is a singleton, thread-safe dictionary of Lemmas.
    # TODO: functionsList is a list of function with all initial information for the function.
    # TODO: commandLineArgs is a class dictonary of all the attributes presented via the command line.
    # TODO: Think how you use lemmaDict and functionsList to drive the complete algorithm.
    # You can add lemmas, but you cannot delete lemmas.


    if commandLineArgs.usebedrock:
        time.sleep(10)

    if commandLineArgs.usegpt:
        time.sleep(10)

    resultVerdict = AlgoVerdict.UNKNOWN
    solverai = smtAI()
    solverai.readSMTfile(data["smt_file"])
    solverai.initialize(commandLineArgs, data)
    executiontime = {"z3": 0, "fuzzer": 0}

    while not (resultVerdict == AlgoVerdict.SAT or resultVerdict == AlgoVerdict.UNSAT):
        # Sync_Solve() -> generate_lemmas_background already running
        # No need to call Sync_Solve()

        # This is a call that Solver/SAT module checks.
        # TODO: @Gourav, What all will this function return.
        # self.iteration +=1
        try:
            resultVerdict = solverai.run(commandLineArgs, data, lemmaDict, functionsList, executiontime)
        except Exception as e:
            print("Error on execution:", str(e))
            break
        if resultVerdict == AlgoVerdict.UNSAT:
            with open("/home/out2.txt", "w") as f:
                f.write("UNSAT")
            print("Program UNSAT")
        if resultVerdict == AlgoVerdict.SAT:
            print("Program SAT")
            with open("/home/out2.txt", "w") as f:
                f.write("SAT")
        # resultVerdict = solverVerdict(lemmaDict, functionsList, commandLineArgs)
        #     # Check SAT call, I think Gourav calls this.
        #     # TODO: @Gourav, What all will this function return.
        #     resultVerdict = checkSat(lemmaDict, functionsList, commandLineArgs)
        # else:
        #     # Check UNSAT call, Pankaj will call this.
        #     resultVerdict = checkUnsat(lemmaDict, functionsList, commandLineArgs)
    print("Z3 Execution time", executiontime["z3"])
    print("fuzzer Execution time", executiontime["fuzzer"])
    print("Total Execution time except LLM", executiontime["z3"] + executiontime["fuzzer"])

    exit()
    stop_event.set()
    for t in running_llm_threads:
        t.join()

    # TODO: Sumit Check.
    # Stop LLM responses here after exiting the while loop
    console.log("[bold red]All threads exit stage.")
    sys.exit(0)