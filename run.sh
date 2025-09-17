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

  filename=$(basename "$json_path")
  log_file="logFiles/${i}_${filename}"  # prepend counter to filename

  echo "Running: uv run main.py -i \"$json_path\" -t 1 -v --model gpt-5-mini --usegpt" > "$log_file" 2>&1
  timeout 5m uv run main.py -i "$json_path" -t 1 --model gpt-5-mini --usegpt >> "$log_file" 2>&1
  rm -rf fuzz_temp/*

  ((i++))  # increment counter
done < "$input_file"
