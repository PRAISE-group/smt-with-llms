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

commandLineArgs = parser.parse_args()