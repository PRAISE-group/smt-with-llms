import json

from code.utils.commandline import args
from code.solver.smtai import *
from code.satmodule.test.smttoc import *


def main():
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
    main()
