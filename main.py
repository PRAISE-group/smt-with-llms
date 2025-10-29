import sys
import time
import uuid
import json
import threading
from time import sleep

from rich.console import Console
from code.lemma.lemmaDict import LemmaDict
from code.models import AlgoVerdict
from code.utils.commandline import commandLineArgs
from code.lemma.actions import generate_lemmas_background
from code.models import Function, Lemmas, LemmaStatus
from code.solver.smtai import *
from code.satmodule.test.smttoc import *


if __name__ == "__main__":
    console = Console()
    lemmaDict = LemmaDict()
    session_id = str(uuid.uuid4())
    functionsList: List[Function] = []
    running_llm_threads: list[threading.Thread] = []

    console.log(f"Conversation Thread Id: {session_id}")

    with open(commandLineArgs.inputFile, "r") as f:
        data = json.load(f)

    # FIXME: can we do better here
    commandLineArgs.sharedLib = data["object_file"]

    for key, value in data["functions"].items():
        ftc = Function(
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

        functionsList.append(
            ftc
        )

    # Run a background thread for generating lemmas.
    stop_event = threading.Event()
    conversationThread = threading.Thread(
        target=generate_lemmas_background,
        args=(
            functionsList,
            "bitvector",
            commandLineArgs.minLemma,
            commandLineArgs.maxLemma,
            lemmaDict,
            session_id,
            stop_event,
        ),
        daemon=True,
    )
    
    conversationThread.start()
    
    # @Pankaj, @Gourav. Wait for initial lemmas to come.
    with console.status(f"[bold green]Conversation Thread Id: {session_id}", spinner="moon") as status:
        while True:
            time.sleep(2)
            status.update(
                status="[bold red]Waiting for initial lemmas...",
                spinner="bouncingBall",
                spinner_style="green",
            )
            if len(lemmaDict.items()) > 1:
                break

    if commandLineArgs.stop:
        stop_event.set()
        conversationThread.join()
        sys.exit(0)

    # @Pankaj, @Gourav. Write the main driver here or abstract it out into a function.
    # TODO: lemmaDict is a singleton, thread-safe dictionary of Lemmas.
    # TODO: functionsList is a list of function with all initial information for the function.
    # TODO: commandLineArgs is a class dictonary of all the attributes presented via the command line.
    # TODO: Think how you use lemmaDict and functionsList to drive the complete algorithm.
    # You can add lemmas, but you cannot delete lemmas.

    solverai = smtAI()
    solverai.readSMTfile(data["smt_file"])
    solverai.initialize(commandLineArgs, data)
    resultVerdict = AlgoVerdict.UNKNOWN
    executiontime = {"z3": 0, "fuzzer": 0}

    while not (resultVerdict == AlgoVerdict.SAT or resultVerdict == AlgoVerdict.UNSAT):
        # Sync_Solve() -> generate_lemmas_background already running
        # No need to call Sync_Solve()

        # This is a call that Solver/SAT module checks.
        # TODO: @Gourav, What all will this function return.
        # self.iteration +=1
        try:
            resultVerdict = solverai.run(
                commandLineArgs, data, lemmaDict, functionsList, executiontime
            )
        except Exception as e:
            console.log("Error on execution:", str(e))
            break

        if resultVerdict == AlgoVerdict.UNSAT:
            with open("out2.txt", "w") as f:
                f.write("UNSAT")
            console.log("Program UNSAT")

        if resultVerdict == AlgoVerdict.SAT:
            console.log("Program SAT")
            with open("out2.txt", "w") as f:
                f.write("SAT")

    console.log("Z3 Execution time", executiontime["z3"])
    console.log("fuzzer Execution time", executiontime["fuzzer"])
    console.log(
        "Total Execution time except LLM", executiontime["z3"] + executiontime["fuzzer"]
    )

    # Stop the LLM running thread.
    stop_event.set()
    conversationThread.join()

    # Exit from the process.
    sys.exit(0)