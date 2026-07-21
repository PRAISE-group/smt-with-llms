#!/bin/bash

# trap "echo '[worker] Cleaning up...'; kill -9 0" EXIT
# $1: json file path
# $2: smt file path
# $3: log_file
file1="./out1.txt"
file2="./out2.txt"

# Clear old outputs
> "$file1"
> "$file2"

check_files() {
    if [[ $(<"$file1") == "SAT" ]]; then
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

model="--model gpt-oss:20b --use156"
echo "Running: uv run main.py -i $1 -t 1 -v $model -l 0" > "$3" 2>&1
# for i in {1..3}; do
    if ! check_files; then
        # echo "not sat checking for unsat"
        echo "Current time: $(date)"
        echo " " >> $3
        echo "Starting script iteration" >> $3
        echo " " >> $3
        setsid timeout 10m uv run main.py -i "$1" -t 1 -v $model -l 0 >> "$3" 2>&1 &
        pid2=$!
        exit_code=$?
        if ! wait "$pid2"; then
            # exit_code=$?
            echo "Warning: uv process exited unexpectedly (iteration $i)" 
        fi
        echo "finished iteration $i"
        kill_tree "$pid2"
        kill_tree "$pid2"
        sleep 0
        # wait $pid2
    fi 
    wait
    rm -rf fuzz_temp/*
    # break
# done
echo "Exit code: $exit_code"
sleep 1
wait
