import argparse
from smtai import *

def main():
    # Create the parser
    parser = argparse.ArgumentParser(description="A script that accepts arguments.")

    # Add arguments
    parser.add_argument(
        '-i', '--inputFile',
        type=str,
        help='relative path to json file containing information about the benchmarks',
        required=True
    )
    parser.add_argument(
        '-bench', '--benchName',
        type=str,
        default = "None",
        help='name of the benchmark file'
    )
    parser.add_argument(
        '-t', '--iterations',
        type=int,
        help='number of iterations made to LLM',
        required=True
    )
    # parser.add_argument(
    #     '-a', '--age',
    #     type=int,
    #     help='Your age',
    #     required=True
    # )
    parser.add_argument(
        '-v', '--verbose',
        action='store_true',
        help='Enable verbose output'
    )

    # Parse the arguments
    args = parser.parse_args()
    assert args.iterations >0
    # Accessing the arguments
    print(f"Input file: {args.inputFile}")

    if args.verbose:
        print("Verbose mode is enabled.")


    with open(args.inputFile, "r") as f:
        data = json.load(f)
    for bench in data['benchmarks']:
        # print(bench)
        if not args.benchName == "None":
            if not bench["smt_file"].endswith(args.benchName):
                continue
        solverai = smtAI()
        solverai.run(args, bench)
        del solverai
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
