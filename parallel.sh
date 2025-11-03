#!/bin/bash

# trap "echo '[worker] Cleaning up...'; kill -9 0" EXIT
# $1: json file path
# $2: smt file path
# $3: log_file
file1="/home/out1.txt"
file2="/home/out2.txt"

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

# Run program1 in its own process group
# oraxbench=$2
# oraxbench="${oraxbench#/home/benchmarks}"      # remove prefix
# oraxbench="/home/oraxBenchmarks$oraxbench"
# cd /root/Orax/scripts/
# setsid ./run_new_experiment.sh "$file1" "$oraxbench" &
# pid1=$!

# while kill -0 $pid1 2>/dev/null; do
#     if check_files; then
#         echo "Detected SAT/UNSAT in one of the files."
#         # Kill both process groups
#         kill_tree "$pid1"
#         break
#     fi

#     if ! kill -0 "$pid1" 2>/dev/null; then
#         echo "Our tool processes finished without SAT/UNSAT."
#         break
#     fi
#     sleep 1
# done

# echo "Orax done"
# Run program2 in its own process group with timeout
cd /home/
# Done
model="--model gpt-oss:20b --use156"
# model="--usebedrock --model meta.llama4-maverick-17b-instruct-v1:0"
# model="--usebedrock --model qwen.qwen3-coder-30b-a3b-v1:0"
# model="--usebedrock --model qwen.qwen3-32b-v1:0"
# model="--usebedrock --model us.anthropic.claude-sonnet-4-20250514-v1:0"
# # model="--model llama3:latest"
# model="--usebedrock --model openai.gpt-oss-120b-1:0"
for i in {1..5}; do
    if ! check_files; then
        # echo "not sat checking for unsat"
        echo "Current time: $(date)"
        start_time=$(date +%s)
        echo "Running: uv run main.py -i $1 -t 1 -v $model" > "$3" 2>&1
        setsid timeout 5m uv run main.py -i "$1" -t 1 $model >> "$3" 2>&1 &
        pid2=$!
        exit_code=$?
        if ! wait "$pid2"; then
            # exit_code=$?
            echo "Warning: uv process exited unexpectedly (iteration $i)" 
        fi
        echo "finished iteration $i"
        end_time=$(date +%s)
        runtime=$((end_time - start_time))
        kill_tree "$pid2"
        kill_tree "$pid2"
        if [ $runtime -ge 300 ]; then
            echo "time taken more than 300 seconds"
            break
        fi
        if [ $exit_code -eq 124 ]; then
            echo "Process timed out after 10 minutes on iteration $i"
            break
        fi
        sleep 30
        # wait $pid2
    fi 
    wait
    # break
done
# if ! check_files; then
#     # echo "not sat checking for unsat"
#     echo "Running: uv run main.py -i $1 -t 1 -v $model" > "$3" 2>&1
#     setsid timeout 3m uv run main.py -i "$1" -t 1 -v $model >> "$3" 2>&1 &
#     pid2=$!
#     wait $pid2
#     exit_code=$?
# fi 
# if ! check_files; then
#     # echo "not sat checking for unsat"
#     echo "Running: uv run main.py -i $1 -t 1 -v $model" > "$3" 2>&1
#     setsid timeout 3m uv run main.py -i "$1" -t 1 -v $model >> "$3" 2>&1 &
#     pid2=$!
#     wait $pid2
#     exit_code=$?
# fi 

echo "Exit code: $exit_code"
sleep 1
# Post-processing only after both programs and all their children have stopped
# echo "Both programs stopped."
# echo "Orax stat" >> "$3"
# cat /root/Orax/scripts/out1.csv >> "$3"
# cat "$file1"
# cat "$file2"
echo " "
echo " "
wait
