# SMT Sat/Unsat with LLMs

## Setup

- Install `uv` package manager: [uv](https://docs.astral.sh/uv/getting-started/installation/)

```bash
$ curl -LsSf https://astral.sh/uv/install.sh | sh
$ uv sync --force-reinstall
$ uv python install 3.12 3.13
```
Create a `.env` file in the root folder of the repository and fill up these variable with appropriate values.

```aiignore
BASE_URL=..............................
CHAT_OPENAI_API_KEY=...................
AWS_BEARER_TOKEN_BEDROCK=..............
```
## Options Available.

```aiignore
❯ uv run main.py --help
usage: main.py [-h] -i INPUTFILE [-bench BENCHNAME] -t ITERATIONS [-v] [-C] [-W] -M MODEL [-V FUZZTIME] [-Z Z3TIME] [-S SHAREDLIB] [-a MINLEMMA] [-b MAXLEMMA]

A script that accepts arguments.

options:
  -h, --help            show this help message and exit
  -i, --inputFile INPUTFILE
                        relative path to json file containing information about the benchmarks
  -bench, --benchName BENCHNAME
                        name of the benchmark file
  -t, --iterations ITERATIONS
                        number of iterations made to LLM
  -v, --verbose         Enable verbose output
  -C, --usegpt          Use ChatGPT models.
  -W, --stop            Stop running the framework.
  -M, --model MODEL     Specify model name to use.
  -V, --fuzztime FUZZTIME
                        Specify Fuzzer timeout in seconds. (Default 20s)
  -Z, --z3time Z3TIME   Specify Z3 timeout in seconds. (Default 20s)
  -S, --sharedLib SHAREDLIB
                        Link to the shared library. (Default "None")
  -a, --minLemma MINLEMMA
                        Minimum number of lemmas to ask LLM for at a time. (Default 1)
  -b, --maxLemma MAXLEMMA
                        Maximum number of lemmas to ask LLM for at a time (Default 5)
```

## Running different models. 

Remove the `--stop` flag if you want the full framework to run. Use the `--stop` flag just to see the first LLM response and stop.

### Models from Ollama (Local)

```bash
# Model llama3:latest
❯ uv run main.py -i benchmarks/BV-benchamrks/bvisalpha-16/test000030.json -t 1 -v --model llama3:latest --stop;
❯ uv run main.py -i benchmarks/BV-benchamrks/2018-goel-hwbench/2018-goel-hwbench.json -t 1 -v --model llama3:latest --stop;

# Model gpt-oss:20b
❯ uv run main.py -i benchmarks/BV-benchamrks/bvisalpha-16/test000030.json -t 1 -v --model gpt-oss:20b --stop;
```

### Models from ChatGPT (OpenAI API) 

Refer to model names from below. The names used in the command may change.

- [Models from ChatGPT OpenAI](https://platform.openai.com/docs/models)

```bash
# Model gpt-5-nano-2025-08-07
❯ uv run main.py -i benchmarks/BV-benchamrks/bvisalpha-16/test000030.json -t 1 -v --usegpt --model gpt-5-nano-2025-08-07 --stop;

# Model gpt-5-2025-08-07
❯ uv run main.py -i benchmarks/BV-benchamrks/bvisalpha-16/test000030.json -t 1 -v --usegpt --model gpt-5-2025-08-07 --stop;

# Model gpt-5-mini-2025-08-07
❯ uv run main.py -i benchmarks/BV-benchamrks/bvisalpha-16/test000030.json -t 1 -v --usegpt --model gpt-5-mini-2025-08-07 --stop;
```