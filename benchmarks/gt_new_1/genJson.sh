#!/bin/bash

shopt -s nullglob

for f in *.smt2; do
    json="${f%.smt2}.json"

    echo "{}" > "$json"

    echo "Created $json"
done
