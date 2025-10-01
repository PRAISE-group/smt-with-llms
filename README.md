# SMT Sat/Unsat with LLMs

## Setup

- Install `uv` package manager: [uv](https://docs.astral.sh/uv/getting-started/installation/)

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
uv sync --force-reinstall
uv python install 3.12 3.13
```

Create a `.env` file in the root folder of the repository and fill up these variable with appropriate values.

```aiignore
BASE_URL=..............................
CHAT_OPENAI_API_KEY=...................
AWS_BEARER_TOKEN_BEDROCK=..............
```

## Options Available

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

## Running different models

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

### Models from AWS Bedrock platform

Please set the following in the `.env` file. Example shows some bedrock models to try.

- AWS_BEARER_TOKEN_BEDROCK
- AWS_REGION

```bash
# Model openai.gpt-oss-120b-1:0
❯ uv run main.py -i benchmarks/BV-benchamrks/bvisalpha-16/test000030.json -t 1 -v --usebedrock --model openai.gpt-oss-120b-1:0 --stop

# Model meta.llama4-maverick-17b-instruct-v1:0
❯ uv run main.py -i benchmarks/BV-benchamrks/bvisalpha-16/test000030.json -t 1 -v --usebedrock --model meta.llama4-maverick-17b-instruct-v1:0 --stop

# Errors.
botocore.errorfactory.ValidationException: An error occurred (ValidationException) when calling the Converse operation:
Invocation of model ID meta.llama4-maverick-17b-instruct-v1:0 with on-demand throughput isn’t supported.
Retry your request with the ID or ARN of an inference profile that contains this model.

# Model us.meta.llama4-maverick-17b-instruct-v1:0 (No errors now)
❯ uv run main.py -i benchmarks/BV-benchamrks/bvisalpha-16/test000030.json -t 1 -v --usebedrock --model us.meta.llama4-maverick-17b-instruct-v1:0 --stop

# Model openai.gpt-oss-120b-1:0
❯ uv run main.py -i benchmarks/BV-benchamrks/bvisalpha-16/test000030.json -t 1 -v --usebedrock --model openai.gpt-oss-120b-1:0 --stop

# Model qwen.qwen3-coder-30b-a3b-v1:0
❯ uv run main.py -i benchmarks/BV-benchamrks/bvisalpha-16/test000030.json -t 1 -v --usebedrock --model qwen.qwen3-coder-30b-a3b-v1:0 --stop

# Model qwen.qwen3-32b-v1:0
❯ uv run main.py -i benchmarks/BV-benchamrks/bvisalpha-16/test000030.json -t 1 -v --usebedrock --model qwen.qwen3-32b-v1:0 --stop

# Model anthropic.claude-sonnet-4-20250514-v1:0
❯ uv run main.py -i benchmarks/BV-benchamrks/bvisalpha-16/test000030.json -t 1 -v --usebedrock --model us.anthropic.claude-sonnet-4-20250514-v1:0 --stop
❯ uv run main.py -i benchmarks/BV-benchamrks/2018-goel-hwbench/2018-goel-hwbench.json -t 1 -v --usebedrock --model us.anthropic.claude-sonnet-4-20250514-v1:0 --stop
```

## Running Ubuntu Docker

```powershell
docker buildx build -t dev1-clang-llvm:25.10 -f .\windows.dockerfile .

docker run -d --name dev1-clang-llvm --restart unless-stopped `
  -p 8080:8080 -p 8081:80 -p 443:443 -p 2025:22 -p 5056:56 -p 8082:8081 -p 3000:3000 -p 2000:2000 -p 5000:5000 `
  --hostname=5b3f3926b12d `
  --env FULLNAME=dev1-clang-llvm `
  --env PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin" `
  --volume "C:\Users\lahir\Documents:/docs" `
  --volume "C:\Users\lahir\Documents\workdir:/workdir" `
  --volume "C:\Users\lahir\Downloads:/downloads" `
  --volume dev1-perstatnce:/persist `
  --network=bridge `
  --label "org.opencontainers.image.ref.name=ubuntu" `
  --label "org.opencontainers.image.version=25.10" `
  dev1-clang-llvm:25.10
```
