import argparse
from smtai import *

def main():
    # Create the parser
    parser = argparse.ArgumentParser(description="A script that accepts arguments.")

    # Add arguments
    parser.add_argument(
        '-i', '--inputFile',
        type=str,
        help='relative path to benchmark under study',
        required=True
    )
    parser.add_argument(
        '-e', '--executable',
        type=str,
        help='relative path to close boxed executable',
        required=True
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

    solverai = smtAI()
    # s = solverai.s
    solverai.run(args)

    return

    x = Int('x')
    y = Int('y')

    s.add(x + y == 10)
    s.add(x > 0, y > 0)

    if s.check() == sat:
        print("satisfiable")
        print(s.model())
    else:
        print("No solution")

if __name__ == '__main__':
    main()
