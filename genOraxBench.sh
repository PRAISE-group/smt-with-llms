#!/bin/bash

# Description: Replace "declare-fun" with "declare-cbf" in all .smt2 files
# only if the line contains "_cb". Operates recursively in the current directory.

# Find all .smt2 files recursively
find "$1" -type f -name "*.smt2" | while read -r file; do
    # Replace only lines containing "_cb"
    sed -i '/_cb/s/declare-fun/declare-cbf/g' "$file"
done

echo "Replacement done in all .smt2 files containing '_cb'."
