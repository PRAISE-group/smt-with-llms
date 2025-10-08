#!/bin/bash

# Check if input file was given
if [ $# -ne 1 ]; then
  echo "Usage: $0 <file_with_json_paths>"
  exit 1
fi

input_file="$1"
i=1  # initialize counter

# Loop through each line in the input file
while IFS= read -r json_path || [[ -n "$json_path" ]]; do
  # Skip empty lines
  [[ -z "$json_path" ]] && continue
  
  rm -rf fuzz_temp/*
  rm -rf oracleTemp/*

  filename=$(basename "$json_path")
  log_file="logFilesAll/${i}_${filename}"  # prepend counter to filename
  # setsid timeout 10m uv run main.py -i "$1" -t 1 -v --model llama3:latest >> "$3" 2>&1 &
# setsid timeout 10m uv run main.py -i "$1" -t 1 -v --usebedrock --model meta.llama4-maverick-17b-instruct-v1:0 >> "$3" 2>&1 &
# setsid timeout 10m uv run main.py -i "$1" -t 1 -v --usebedrock --model qwen.qwen3-coder-30b-a3b-v1:0 >> "$3" 2>&1 &
# setsid timeout 10m uv run main.py -i "$1" -t 1 -v --usebedrock --model qwen.qwen3-32b-v1:0 >> "$3" 2>&1 &
# setsid timeout 10m uv run main.py -i "$1" -t 1 -v --usebedrock --model us.anthropic.claude-sonnet-4-20250514-v1:0 >> "$3" 2>&1 &
# setsid timeout 10m uv run main.py -i "$1" -t 1 -v --model llama3:latest >> "$3" 2>&1 &
# setsid timeout 10m uv run main.py -i "$1" -t 1 -v --model llama3:latest >> "$3" 2>&1 &
# setsid timeout 10m uv run main.py -i "$1" -t 1 --usebedrock --model openai.gpt-oss-120b-1:0 >> "$3" 2>&1 &
  model="--model gpt-oss:20b --use156"
  echo "Running: uv run main.py -i \"$json_path\" -t 1 -v $model" > "$log_file" 2>&1
  timeout 3m uv run main.py -i "$json_path" -t 1 -v $model >> "$log_file" 2>&1
  rm -rf fuzz_temp/*
  rm -rf oracleTemp/*

  ((i++))  # increment counter
  sleep 5
done < "$input_file"