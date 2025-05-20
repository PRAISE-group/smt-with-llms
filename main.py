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
    initPrompt()
    generation = 0
    while True:
        generation += 1
        console.log(f"[bold blue]Generating more lemmas for: {func.name}, Length: {len(lemmaDict)}, Generation: {generation}")
        res = generateLemmas(func, formatting, minLimit, maxLimit, generation)
        for lms in res:
            lemmaDict[lms.id] = lms
        sleep(4)

if __name__ == '__main__':
    with open(commandLineArgs.inputFile, "r") as f:
        data = json.load(f)

    # TODO: Here we need to read the function input
    # TODO: @Gourav, is format for add_3_5.json fixed?
    # Use "data" here.
    func = Function(
        id="foo_cb",
        name="foo_cb",
        description="Verifies that foo_cb always returns positive output for integer inputs.",
        userLemmas=[
            Lemmas(
                id="foo_cb_l1",
                status=LemmaStatus.UNKNOWN,
                associatedFunction="foo_cb",
                smtFormat="(assert (forall ((x Int) (y Int)) (= (foo1_cb x y) (foo1_cb y x))))",
                generation=0
            )
        ],
        inputs=['1,3','7,9']
    )

    lemmaDict = LemmaDict()

    # Run a background thread for generating lemmas.
    lemma_gen_thread = threading.Thread(
        target=generate_lemmas_background,
        args=(func, "SMTLIB", 1, 8, lemmaDict),
        daemon=True
    )

    lemma_gen_thread.start()

    # generate_lemmas_background(func, "SMTLIB", 1, 8, lemmaDict)
    console.log("[bold red]Main Thread is running.")

    # @pankaj, @Gourav. Write the main driver here or abstract it out
    # into a function.
    # TODO: lemmaDict is a singleton, thread-safe dictionary of Lemmas.





    lemma_gen_thread.join()
