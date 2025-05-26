import json
import threading
from time import sleep
from rich.console import Console

from code.lemma.context import LemmaDict
from code.models import AlgoVerdict
from code.utils.commandline import commandLineArgs
from code.lemma.actions import generate_lemmas_background
from code.models import Function, Lemmas, LemmaStatus
from code.solver.smtai import *
from code.satmodule.test.smttoc import *

console = Console()

def solverVerdict(a, b, c):
    pass

def checkSat(a, b, c):
    pass

def checkUnsat(a, b, c):
    pass

if __name__ == '__main__':
    lemmaDict = LemmaDict()
    functionsList: List[Function] = []
    running_llm_threads: list[threading.Thread] = []

    with open(commandLineArgs.inputFile, "r") as f:
        data = json.load(f)

    # FIXME: can we do better here
    commandLineArgs.sharedLib = data["object_file"]

    for key, value in data['functions'].items():
        functionsList.append(
            Function(
                id=key,
                name=key,
                description=value.get('desc', "No description available."),
                userLemmas=[
                    Lemmas(
                        id=f"{key}_gen0_l{index}",
                        status=LemmaStatus.UNKNOWN,
                        associatedFunction=key,
                        smtFormat=lemmaInfo,
                        generation=0,
                    ) for index, lemmaInfo in enumerate(value.get('userLemmas', []), 1)
                ],
                inputs=[str(c) for c in value.get('tests', [])],
                object_file=commandLineArgs.sharedLib,
                smt_file = value.get('smt_file', None)
            )
        )

    # Run a background thread for generating lemmas.
    # One for each function.
    for f in functionsList:
        t = threading.Thread(
            target=generate_lemmas_background,
            args=(f, "SMTLIB", commandLineArgs.minLemma, commandLineArgs.maxLemma, lemmaDict),
            daemon=True
        )
        t.start()
        running_llm_threads.append(t)

    console.log("[bold red]Main Thread is running.")

    # @Pankaj, @Gourav. Write the main driver here or abstract it out into a function.
    # TODO: lemmaDict is a singleton, thread-safe dictionary of Lemmas.
    # TODO: functionsList is a list of function with all initial information for the function.
    # TODO: commandLineArgs is a class dictonary of all the attributes presented via the command line.
    # TODO: Think how you use lemmaDict and functionsList to drive the complete algorithm.
    # You can add lemmas, but you cannot delete lemmas.

    resultVerdict = AlgoVerdict.UNKNOWN
    solverai = smtAI()
    solverai.readSMTfile(data["smt_file"])
    solverai.initialize(commandLineArgs, data)

    while not resultVerdict == AlgoVerdict.SAT or resultVerdict == AlgoVerdict.UNSAT:
        # Sync_Solve() -> generate_lemmas_background already running
        # No need to call Sync_Solve()

        # This is a call that Solver/SAT module checks.
        # TODO: @Gourav, What all will this function return.
        # self.iteration +=1
        resultVerdict = solverai.run(commandLineArgs, data, lemmaDict, functionsList)
        # resultVerdict = solverVerdict(lemmaDict, functionsList, commandLineArgs)

        # if (resultVerdict == AlgoVerdict.SAT):
        #     # Check SAT call, I think Gourav calls this.
        #     # TODO: @Gourav, What all will this function return.
        #     resultVerdict = checkSat(lemmaDict, functionsList, commandLineArgs)
        # else:
        #     # Check UNSAT call, Pankaj will call this.
        #     resultVerdict = checkUnsat(lemmaDict, functionsList, commandLineArgs)

    for t in running_llm_threads:
        t.join()
