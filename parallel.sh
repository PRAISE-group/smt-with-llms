#!/bin/bash

# trap "echo '[worker] Cleaning up...'; kill -9 0" EXIT
# $1: json file path
# $2: smt file path
# $3: log_file
file1="./out1.txt"
file2="./out2.txt"
mkdir -p logFilesAll

# Clear old outputs
> "$file1"
> "$file2"

check_files() {
    # if [[ $(<"$file1") == "SAT" ]]; then
    #     return 0
    # fi
    if grep -qE "SAT" "$file2"; then
        return 0
    fi
    if grep -qE "UNSAT" "$file2"; then
        return 0
    fi
    return 1
}


kill_tree() {
    local pid=$1
    if [ -z "$pid" ] || ! kill -0 "$pid" 2>/dev/null; then
        return
    fi

    # Kill children first
    for child in $(pgrep -P "$pid"); do
        kill_tree "$child"
    done

    # Kill the process group (if it exists)
    kill -TERM -"$pid" 2>/dev/null
    sleep 1
    kill -KILL -"$pid" 2>/dev/null
}

# model="--model gpt-oss:20b --use156"
# model="--usebedrock --model us.meta.llama4-maverick-17b-instruct-v1:0"
# model="--usebedrock --model qwen.qwen3-coder-30b-a3b-v1:0"
# model="--usebedrock --model us.anthropic.claude-opus-4-6-v1"
# # model="--model llama3:latest"
model="--usebedrock --model openai.gpt-oss-120b-1:0"
# model="--usegpt --model gpt-5.6-sol"

echo "Running: uv run main.py -i $1 -t 1 -v $model" > "$3" 2>&1
for i in {1..3}; do
    if ! check_files; then
        echo "Current time: $(date)"
        echo " " >> $3
        echo "Starting script iteration" >> $3
        echo " " >> $3
        start_time=$(date +%s)
        setsid timeout 10m uv run main.py -i "$1" -t 1 -v $model >> "$3" 2>&1 &
        pid2=$!
        exit_code=$?
        if ! wait "$pid2"; then
            echo "uv process exited (iteration $i)" 
        fi
        echo "finished iteration $i"
        end_time=$(date +%s)
        runtime=$((end_time - start_time))
        kill_tree "$pid2"
        kill_tree "$pid2"
        sleep 5
    fi 
    wait
    rm -rf fuzz_temp/*
done

echo "Exit code: $exit_code"
sleep 1

wait
