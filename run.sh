#!/bin/bash

# Check if input file was given
if [ $# -ne 1 ]; then
  echo "Usage: $0 <file_with_json_paths>"
  exit 1
fi

input_file="$1"

# Loop through each line in the input file
while IFS= read -r json_path || [[ -n "$json_path" ]]; do
  # Skip empty lines
  [[ -z "$json_path" ]] && continue

  # Construct and run the command
  echo "\n\n"
  echo "Running: uv run main.py -i \"$json_path\" -t 1 -v --model llama3:latest"
  timeout 30s uv run main.py -i "$json_path" -t 1 --model llama3:latest
  echo "Finished"
done < "$input_file"
