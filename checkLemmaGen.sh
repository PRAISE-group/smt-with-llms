# Test 1
uv run main.py -i benchmarks/BV-benchamrks/2018-goel-hwbench/2018-goel-hwbench.json -t 1 -v --model gpt-oss:20b --stop --use156

# Test 2
uv run main.py -i benchmarks/BV-benchamrks/bvisalpha-16/test000030.json -t 1 -v --model gpt-oss:20b --stop --use156

# Test 3
uv run main.py -i benchmarks/BV-benchamrks/2018-goel-hwbench/2018-goel-hwbench.json -t 1 -v --usebedrock --model openai.gpt-oss-120b-1:0 --stop

# Test 4
uv run main.py -i benchmarks/BV-benchamrks/bvisalpha-16/test000030.json -t 1 -v --usebedrock --model openai.gpt-oss-120b-1:0 --stop

# Test 5
uv run main.py -i benchmarks/BV-benchamrks/2018-goel-hwbench/2018-goel-hwbench.json -t 1 -v --usebedrock --model us.meta.llama4-maverick-17b-instruct-v1:0 --stop

# Test 6
uv run main.py -i benchmarks/BV-benchamrks/bvisalpha-16/test000030.json -t 1 -v --usebedrock --model us.meta.llama4-maverick-17b-instruct-v1:0 --stop

# Test 7
uv run main.py -i benchmarks/BV-benchamrks/2018-goel-hwbench/2018-goel-hwbench.json -t 1 -v --usebedrock --model us.anthropic.claude-sonnet-4-20250514-v1:0 --stop

# Test 8
uv run main.py -i benchmarks/BV-benchamrks/bvisalpha-16/test000030.json -t 1 -v --usebedrock --model us.anthropic.claude-sonnet-4-20250514-v1:0 --stop