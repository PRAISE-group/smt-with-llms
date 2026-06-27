#!/usr/bin/env bash
set -euo pipefail

script_dir=$(cd "$(dirname "$0")" && pwd)
klee_include_dir="${KLEE_INCLUDE_DIR:-/home/sumiqlnx/klee_experiments/klee/include}"
klee_bin="${KLEE_BIN:-/home/sumiqlnx/klee_experiments/klee_build/bin/klee}"

clang -std=gnu2x -Wall -Wextra -pedantic -O0 \
    "$script_dir/popcount_ballot_tally.c" \
    -o "$script_dir/popcount_ballot_tally"

"$script_dir/popcount_ballot_tally"

clang -std=gnu2x -I "$klee_include_dir" -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone \
    "$script_dir/popcount_ballot_tally_klee.c" \
    -o "$script_dir/popcount_ballot_tally_klee.bc"

rm -rf "$script_dir/klee-out"
"$klee_bin" --write-smt2s --write-kqueries --write-paths \
    --output-dir="$script_dir/klee-out" \
    "$script_dir/popcount_ballot_tally_klee.bc"
