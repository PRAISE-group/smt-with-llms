import json
import threading
from time import sleep
from rich.console import Console

from code.lemma.context import LemmaDict
from code.utils.commandline import commandLineArgs
from code.lemma.actions import generate_lemmas_background
from code.models import Function, Lemmas, LemmaStatus

from code.solver.smtai import *
from code.satmodule.test.smttoc import *

console = Console()

def smt_with_lemmas():
    # Parse the arguments
    assert args.iterations > 0
    # Accessing the arguments
    print(f"Input file: {args.inputFile}")

    if not args.inputFile.endswith(".smt2"):
        print("input file is not in smt format")

    if args.verbose:
        print("Verbose mode is enabled.")

    data = None
    with open(args.inputFile[:-4]+"json", "r") as f:
        data = json.load(f)
    # test(args, data)
    # exit()
    solverai = smtAI()
    solverai.readSMTfile(data["smt_file"])
    # print(solverai.harnessForModelCheck())
    # exit()
    solverai.run(args, data)
    return

    # x = Int('x')
    # y = Int('y')
    #
    # s.add(x + y == 10)
    # s.add(x > 0, y > 0)
    #
    # if s.check() == sat:
    #     print("satisfiable")
    #     print(s.model())
    # else:
    #     print("No solution")

if __name__ == '__main__':
    with open(commandLineArgs.inputFile, "r") as f:
        data = json.load(f)

    functionsList: List[Function] = []
    running_llm_threads: list[threading.Thread] = []

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
                        generation=0
                    ) for index, lemmaInfo in enumerate(value.get('userLemmas', []), 1)
                ],
                inputs=[str(c) for c in value.get('tests', [])],
                object_file = value.get('object_file', None),
                smt_file = value.get('smt_file', None)
            )
        )

    lemmaDict = LemmaDict()

    # Run a background thread for generating lemmas.
    # One for each function.
    for f in functionsList:
        t = threading.Thread(
            target=generate_lemmas_background,
            args=(f, "SMTLIB", 1, 8, lemmaDict),
            daemon=True
        )
        t.start()
        running_llm_threads.append(t)

    console.log("[bold red]Main Thread is running.")

    # @Pankaj, @Gourav. Write the main driver here or abstract it out into a function.
    # TODO: lemmaDict is a singleton, thread-safe dictionary of Lemmas.
    # TODO: functionsList is a list of function with all intial information for the function.
    # TODO: Think how you use lemmaDict and functionsList to drive the complete algorithm.
    # You can add lemmas, but you cannot delete lemmas.





    for t in running_llm_threads:
        t.join()