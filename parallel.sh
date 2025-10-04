#!/bin/bash

# $1: json file path
# $2: smt file path
# $3: log_file
file1="/home/out1.txt"
file2="/home/out2.txt"

# Clear old outputs
> "$file1"
> "$file2"

# Run program1 in its own process group
oraxbench=$2
oraxbench="${oraxbench#/home/benchmarks}"      # remove prefix
oraxbench="/home/oraxBenchmarks$oraxbench"
cd /root/Orax/scripts/
setsid ./run_new_experiment.sh "$file1" "$oraxbench" &
pid1=$!

# Run program2 in its own process group with timeout
cd /home/
#setsid timeout 10m uv run main.py -i "$1" -t 1 -v --model gpt-oss:20b --use156 >> "$3" 2>&1 &
setsid timeout 10m uv run main.py -i "$1" -t 1 -v --usebedrock --model openai.gpt-oss-120b-1:0 >> "$3" 2>&1 &
pid2=$!

echo "Started program1 (PID=$pid1) and program2 (PID=$pid2)..."

# Function to check if either file has SAT/UNSAT
check_files() {
    if grep -qE "SAT" "$file1"; then
        return 0
    fi
    if grep -qE "UNSAT" "$file2"; then
        return 0
    fi
    return 1
}

# Poll the files until one contains SAT/UNSAT or timeout occurs
while true; do
    if check_files; then
        echo "Detected SAT/UNSAT in one of the files."
        # Kill both process groups
        kill -TERM -"$pid1" 2>/dev/null
        kill -TERM -"$pid2" 2>/dev/null
        sleep 5
        kill -TERM -"$pid1" 2>/dev/null
        kill -TERM -"$pid2" 2>/dev/null
        # Wait for them and all their children
        wait $pid1 2>/dev/null
        wait $pid2 2>/dev/null
        break
    fi

    if ! kill -0 "$pid1" 2>/dev/null && ! kill -0 "$pid2" 2>/dev/null; then
        echo "Both processes finished without SAT/UNSAT."
        break
    fi
    sleep 1
done

sleep 3
# Post-processing only after both programs and all their children have stopped
echo "Both programs stopped."
echo "Orax stat" >> "$3"
cat /root/Orax/scripts/out1.csv >> "$3"
