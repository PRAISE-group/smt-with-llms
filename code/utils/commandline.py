import argparse

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
    default="None",
    help='name of the benchmark file'
)
parser.add_argument(
    '-t', '--iterations',
    type=int,
    help='number of iterations made to LLM',
    required=True
)

parser.add_argument(
    '-v', '--verbose',
    action='store_true',
    help='Enable verbose output'
)

parser.add_argument(
    '-V', '--fuzztime',
    type=int,
    help='Specify Fuzzer timeout in seconds. (Default 20s)',
    required=False,
    default=20
)

parser.add_argument(
    '-Z', '--z3time',
    type=int,
    help='Specify Z3 timeout in seconds. (Default 20s)',
    required=False,
    default=20
)

parser.add_argument(
    '-S', '--sharedLib',
    type=str,
    help='Link to the shared library. (Default "None")',
    required=False,
    default=None
)

parser.add_argument(
    '-a', '--minLemma',
    type=int,
    help='Minimum number of lemmas to ask LLM for at a time. (Default 1)',
    required=False,
    default=1
)

parser.add_argument(
    '-b', '--maxLemma',
    type=int,
    help='Maximum number of lemmas to ask LLM for at a time (Default 5)',
    required=False,
    default=5
)

commandLineArgs = parser.parse_args()