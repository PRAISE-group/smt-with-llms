#!/bin/bash

# Check if input file was given
if [ $# -ne 1 ]; then
  echo "Usage: $0 <file_with_unsat_json_paths>"
  exit 1
fi

input_file="$1"
i=1  # initialize counter

# Loop through each line in the input file
while IFS= read -r json_path || [[ -n "$json_path" ]]; do
  # Skip empty lines
  [[ -z "$json_path" ]] && continue

  filename=$(basename "$json_path")
  echo "benchmark: $filename"
  log_file="logFilesAllNoGamma/${i}_${filename}"  # prepend counter to filename
  
  rm -rf fuzz_temp/*
  # uv run main.py -i "$json_path" -t 1 -v --model gpt-oss:20b --use156>> "$log_file" 2>&1
  smt2_file="${json_path%.json}.smt2"
  # echo "$smt2_file"
  setsid ./parallelNoGamma.sh "$json_path" "$smt2_file" "$log_file" &
  pid1=$!
  wait $pid1
  sleep 2
  rm -rf fuzz_temp/*
  echo "$filename Done"
  echo " "
  echo " "


  ((i++))  # increment counter
  wait
done < "$input_file"
