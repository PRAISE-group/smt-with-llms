import json
import threading
from time import sleep
from rich.console import Console

from code.lemma.context import LemmaDict
from code.utils.commandline import commandLineArgs
from code.solver.smtai import *
from code.lemma.actions import *
from code.models import Function, Lemmas, LemmaStatus
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

def generate_lemmas_background(
        func: Function,
        formatting: str,
        minLimit: int,
        maxLimit: int,
        lemmaDict: LemmaDict,
):
    console.log(f"[bold blue]Lemma Generation for: {func.name}")

    # Add existing userLemmas since we need them.
    for lemmas in func.userLemmas:
        lemmaDict[lemmas.id] = lemmas

    # This is a system prompt.
    initPrompt()
    generation = 0

    while True:
        # Keep track of generation
        generation += 1
        # We are now going to make a call to LLMs to generate more lemmas
        # for the function {func.name}
        console.log(f"[bold blue]Generating more lemmas for: {func.name}, "
                    f"T.Length: {len(lemmaDict)}, Generation: {generation}")

        # We probably got new lemmas.
        res = generateLemmas(func, formatting, minLimit, maxLimit, generation)
        for lms in res:
            lemmaDict[lms.id] = lms

        # Rest and start again.
        sleep(4)

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

    # generate_lemmas_background(func, "SMTLIB", 1, 8, lemmaDict)
    console.log("[bold red]Main Thread is running.")

    # @pankaj, @Gourav. Write the main driver here or abstract it out
    # into a function.
    # TODO: lemmaDict is a singleton, thread-safe dictionary of Lemmas.





    for t in running_llm_threads:
        t.join()
