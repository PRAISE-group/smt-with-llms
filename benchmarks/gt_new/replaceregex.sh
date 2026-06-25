#!/bin/bash

for file in *.smt2; do
    # skip if no files exist
    [ -e "$file" ] || continue

    echo "[+] Processing $file"

    # in-place replace @ → _
    sed -i 's/@/_/g' "$file"

done

echo "[+] Done."
