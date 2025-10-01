#!/bin/bash

#  $1: json file path
#  $2: smt file path
#  $3: log_file
# Files where programs will write results
file1="/home/out1.txt"
file2="/home/out2.txt"

# Clear old outputs
> "$file1"
> "$file2"

# Run both programs in background
cd /root/Orax/scripts/
setsid ./run_new_experiment.sh "$file1" "$2" &
pid1=$!

cd /home/
setsid bash -c "timeout 3m uv run main.py -i \"$1\" -t 1 -v --model gpt-oss:20b --use156>> \"$3\" 2>&1  &"
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

# Poll the files until one contains SAT/UNSAT
while true; do
    if check_files; then
        echo "Detected SAT/UNSAT in one of the files."
        kill -TERM -"$pid1" 2>/dev/null
        kill -TERM -"$pid2" 2>/dev/null
        wait $pid1 2>/dev/null
        wait $pid2 2>/dev/null
        break
    fi
    sleep 1
done

echo "Both programs stopped."

echo "Orax stat" >> $3
cat /root/Orax/scripts/out1.csv >> $3

# echo "Our stat" >> $3
# cat /home/out2.txt >> $3

