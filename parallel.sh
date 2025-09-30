#!/bin/bash

# Files where programs will write results
file1="out1.txt"
file2="out2.txt"

# Clear old outputs
> "$file1"
> "$file2"

# Run both programs in background
./program1 > "$file1" &
pid1=$!

./program2 > "$file2" &
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
        kill $pid1 2>/dev/null
        kill $pid2 2>/dev/null
        wait $pid1 2>/dev/null
        wait $pid2 2>/dev/null
        break
    fi
    sleep 1
done

echo "Both programs stopped."

