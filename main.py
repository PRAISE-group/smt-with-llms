import json

from code.utils.commandline import args
from code.solver.smtai import *
from code.lemma.actions import *
from code.models import Function, Lemmas, LemmaStatus
from code.satmodule.test.smttoc import *


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

def main():
    initPrompt()

    # TODO: Here we need to read the function input
    # TODO: Create a Function Object.
    func = Function(
        id="foo_cb",
        name="foo_cb",
        description="Verifies that foo_cb always returns positive output for integer inputs.",
        userLemmas=[
            Lemmas(
                id="foo_cb_l1",
                status=LemmaStatus.UNKNOWN,
                associatedFunction="foo_cb",
                smtFormat="(assert (forall ((x Int) (y Int)) (= (foo1_cb x y) (foo1_cb y x))))"
            )
        ],
        inputs=['1,3', '7,9']
    )
    res = generateLemmas(func, "SMTLIB", 1, 7)
    print(res)

if __name__ == '__main__':
    main()
