#!/bin/bash

TARGET="Ackermann01-2.smt2_6.smt2"

for file in *.json; do
    [ -e "$file" ] || continue

    # derive smt2 name from json filename
    smt_name="${file%.json}.smt2"

    echo "[+] Processing $file -> replacing with $smt_name"

    # in-place replacement (GNU sed)
    sed -i "s|$TARGET|$smt_name|g" "$file"

done

echo "[+] Done."
