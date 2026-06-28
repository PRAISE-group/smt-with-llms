#!/bin/bash

TARGET="/gt_new/"

for file in *.json; do
    [ -e "$file" ] || continue

    # derive smt2 name from json filename
    smt_name="/gt_new_1/"

    echo "[+] Processing $file -> replacing with $smt_name"

    # in-place replacement (GNU sed)
    sed -i "s|$TARGET|$smt_name|g" "$file"

done

echo "[+] Done."
