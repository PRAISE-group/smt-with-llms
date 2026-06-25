#!/bin/bash

SRC="Ackermann01-2.smt2_6.json"

# check source exists
if [ ! -f "$SRC" ]; then
    echo "[!] Source file not found: $SRC"
    exit 1
fi

for file in *.json; do
    # skip source file itself
    if [ "$file" == "$SRC" ]; then
        continue
    fi

    echo "[+] Overwriting $file with content of $SRC"
    cp "$SRC" "$file"
done

echo "[+] Done."
