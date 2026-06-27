# SMT Function Call KLEE Cases

This folder contains three C testcases and their KLEE outputs.

It now also contains scalar closed-box UF benchmarks under
`instrument-klee-scalar/`.

## Layout

- `testcases/loop_branch_foo/`
- `testcases/nested_calls_printf/`
- `testcases/function_pointer_loop/`
- `outputs/loop_branch_foo/klee-out/`
- `outputs/nested_calls_printf/klee-out/`
- `outputs/function_pointer_loop/klee-out/`

Each testcase folder contains the `.c` source and compiled `.bc` bitcode.
Each output folder contains the KLEE run output, including `smt-func.log`,
`.ktest`, `.smt2`, `.kquery`, and `.path` files.

## Commands Used

Compile:

```sh
clang -I /home/sumiqlnx/klee_experiments/klee/include -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone testcases/loop_branch_foo/loop_branch_foo.c -o testcases/loop_branch_foo/loop_branch_foo.bc
clang -I /home/sumiqlnx/klee_experiments/klee/include -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone testcases/nested_calls_printf/nested_calls_printf.c -o testcases/nested_calls_printf/nested_calls_printf.bc
clang -I /home/sumiqlnx/klee_experiments/klee/include -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone testcases/function_pointer_loop/function_pointer_loop.c -o testcases/function_pointer_loop/function_pointer_loop.bc
```

Run:

```sh
/home/sumiqlnx/klee_experiments/klee_build/bin/klee --write-smt2s --write-kqueries --write-paths --output-dir=outputs/loop_branch_foo/klee-out testcases/loop_branch_foo/loop_branch_foo.bc
/home/sumiqlnx/klee_experiments/klee_build/bin/klee --write-smt2s --write-kqueries --write-paths --output-dir=outputs/nested_calls_printf/klee-out testcases/nested_calls_printf/nested_calls_printf.bc
/home/sumiqlnx/klee_experiments/klee_build/bin/klee --write-smt2s --write-kqueries --write-paths --output-dir=outputs/function_pointer_loop/klee-out testcases/function_pointer_loop/function_pointer_loop.bc
```

## Run Summary

- `loop_branch_foo`: 12 completed paths, 12 tests.
- `nested_calls_printf`: 56 completed paths, 56 tests.
- `function_pointer_loop`: 8 completed paths, 8 tests.

All three clean runs completed with 0 partially completed paths.

## Scalar Closed-Box Benchmarks

The new scalar closed-box examples live in:

```text
instrument-klee-scalar/
```

Use the new KLEE option to select scalar functions that should be emitted as SMT
uninterpreted functions:

```sh
--smt-closed-box-functions=foo,loop_box,ubox
```

The implementation is generic and scalar-only. It does not contain benchmark
specific function names. Pointer, array, struct, void-return, and non-integer
functions are not treated as closed-box candidates.

See:

```text
instrument-klee-scalar/README.md
```

for compile/run commands and generated-output details.

# Scalar Closed-Box KLEE Benchmarks

This directory contains closed-box function examples for KLEE, starting with
scalar-only cases and a fixed byte-buffer case derived from the
`decimal_absval_add_one()` benchmark.

The KLEE change is generic and opt-in:

```sh
--smt-closed-box-functions=foo,bar
```

Closed-box treatment now covers two cases:

1. direct or resolved indirect calls with byte-aligned integer scalar
   arguments and a byte-aligned integer scalar return
2. calls with a single resolved writable pointer argument to a fixed-size byte
   object, where KLEE flattens the pointed object into byte inputs and byte
   outputs, and models a pointer return as an offset into that same object

Other pointer, array, struct, void-return, and unsupported mixed cases still
fall back to normal KLEE execution.

## How It Works

For a call such as:

```c
int a = foo(c, g, h);
```

KLEE skips the `foo` body, creates scalar symbolic marker values for the call
arguments and return value, and emits SMT2 like:

```smt2
(declare-fun |foo| ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))
(assert (= closed_box_foo_0_ret
           (|foo| closed_box_foo_0_arg0
                  closed_box_foo_0_arg1
                  closed_box_foo_0_arg2)))
```

For the byte-buffer case, the emitted SMT contains one UF for each output byte
and one UF for the return offset, all over the flattened byte inputs.

## Benchmarks

- `scalar_formula`: `foo(c, g, h)` computes a scalar formula with an if/else.
- `scalar_loop`: `loop_box(c, g, h)` loops over `c` and accumulates `g - h`.
- `scalar_branch_unsigned`: `ubox(c, g, h)` uses unsigned arithmetic, a branch,
  and a loop.
- `decimal_absval_add_one_negative_scalar`: scalarized input version of
  `getlimits_decimal_absval_add_one_negative_cover_proof.i`. It keeps the
  original `decimal_absval_add_one()` body, replaces the input character buffer
  with ten `uint16_t` byte slots constrained to `0..255`, and checks the
  negative postcondition with explicit return-code branches.

## Conversion Process

For `decimal_absval_add_one_negative_scalar`, the source benchmark is:

```sh
/home/sumiqlnx/klee_experiments/ESBMC_exp/sv-benchmarks-main/c/coreutils-v9.5-units/getlimits_decimal_absval_add_one_negative_cover_proof.i
```

The conversion is intentionally narrow and keeps the interesting semantics:

1. Fix the heap buffer to 10 slots. This gives one spare carry slot at index 0,
   the sign at index 1, up to 7 decimal digits at indices `2..8`, and the
   terminator at index 9.
2. Replace the original `char *` symbolic heap state with ten symbolic
   `uint16_t` scalars `slot0..slot9`, each constrained to `0..255`.
3. Preserve the original negative-input initialization shape:
   `slot1 = '-'`, `slot2` is a non-zero digit, later active digit slots are
   decimal digits, and inactive trailing slots are `0`.
4. Keep the original `decimal_absval_add_one()` implementation unchanged.
   The symbolic scalar slots are materialized into a local 10-byte buffer just
   before the call.
5. Drop the SV-Benchmarks `reach_error()` / `cover_check()` scaffolding and use
   explicit return-code checks for the postcondition from
   `postcond_negative()`.
6. Record the returned pointer as a scalar `result_index = result - buf`,
   require it to be 0 or 1, and require `buf[9] == '\0'` before the
   postcondition calls `strlen`.

This benchmark has been run through KLEE with `--libc=uclibc` and the generic
closed-box instrumentation now emits:

- byte-input UFs for the flattened buffer
- byte-output UFs for the post-call buffer contents
- a return-offset UF `|decimal_absval_add_one$ret|`

## Compile

Run from this directory:

```sh
clang -I /home/sumiqlnx/klee_experiments/klee/include -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone testcases/scalar_formula/scalar_formula.c -o testcases/scalar_formula/scalar_formula.bc
clang -I /home/sumiqlnx/klee_experiments/klee/include -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone testcases/scalar_loop/scalar_loop.c -o testcases/scalar_loop/scalar_loop.bc
clang -I /home/sumiqlnx/klee_experiments/klee/include -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone testcases/scalar_branch_unsigned/scalar_branch_unsigned.c -o testcases/scalar_branch_unsigned/scalar_branch_unsigned.bc
clang -I /home/sumiqlnx/klee_experiments/klee/include -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone testcases/decimal_absval_add_one_negative_scalar/decimal_absval_add_one_negative_scalar.c -o testcases/decimal_absval_add_one_negative_scalar/decimal_absval_add_one_negative_scalar.bc

clang -I $HOME/klee_experiments/klee/include -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone smt-cb-klee/instrument-klee-scalar/testcases/scalar_simple/scalar_simple.c -o smt-cb-klee/instrument-klee-scalar/testcases/scalar_simple/scalar_simple.bc
```

## Run

```sh
/home/sumiqlnx/klee_experiments/klee_build/bin/klee --smt-closed-box-functions=foo --write-smt2s --write-kqueries --write-paths --output-dir=outputs/scalar_formula/klee-out testcases/scalar_formula/scalar_formula.bc

/home/sumiqlnx/klee_experiments/klee_build/bin/klee --smt-closed-box-functions=loop_box --write-smt2s --write-kqueries --write-paths --output-dir=outputs/scalar_loop/klee-out testcases/scalar_loop/scalar_loop.bc

/home/sumiqlnx/klee_experiments/klee_build/bin/klee --smt-closed-box-functions=ubox --write-smt2s --write-kqueries --write-paths --output-dir=outputs/scalar_branch_unsigned/klee-out testcases/scalar_branch_unsigned/scalar_branch_unsigned.bc

rm -rf smt-cb-klee/instrument-klee-scalar/outputs/scalar_simple && $HOME/klee_experiments/klee_build/bin/klee --smt-closed-box-functions=simple_foo_cb --write-smt2s --write-kqueries --write-paths --output-dir=smt-cb-klee/instrument-klee-scalar/outputs/scalar_simple smt-cb-klee/instrument-klee-scalar/testcases/scalar_simple/scalar_simple.bc

rm -rf smt-cb-klee/instrument-klee-scalar/outputs/decimal_absval_add_one_negative_scalar && $HOME/klee_experiments/klee_build/bin/klee --libc=uclibc --smt-closed-box-functions=decimal_absval_add_one --write-smt2s --write-kqueries --write-paths --output-dir=smt-cb-klee/instrument-klee-scalar/outputs/decimal_absval_add_one_negative_scalar smt-cb-klee/instrument-klee-scalar/testcases/decimal_absval_add_one_negative_scalar/decimal_absval_add_one_negative_scalar.bc

python3 /home/sumiqlnx/klee_experiments/closed-box-bench/smt-cb-klee/instrument-klee-scalar/convert_smt2_no_arrays.py /home/sumiqlnx/klee_experiments/closed-box-bench/smt-cb-klee/instrument-klee-scalar/outputs/scalar_simple/test000002.smt2

python3 /home/sumiqlnx/klee_experiments/closed-box-bench/smt-cb-klee/instrument-klee-scalar/convert_smt2_no_arrays.py /home/sumiqlnx/klee_experiments/closed-box-bench/smt-cb-klee/instrument-klee-scalar/outputs/decimal_absval_add_one_negative_scalar/test000007.smt2
```

## Run Summary

- `scalar_formula`: 2 completed paths, 2 tests.
- `scalar_loop`: 3 completed paths, 3 tests.
- `scalar_branch_unsigned`: 2 completed paths, 2 tests.
- `decimal_absval_add_one_negative_scalar`: 3772 completed paths, 3772 tests.

All listed runs completed with 0 partially completed paths.

## Verification

Each generated `.smt2` file contains:

- a closed-box UF declaration such as `(declare-fun |foo| ...)`
- an assertion connecting the symbolic return marker to the UF call
- normal KLEE constraints over symbolic inputs and branch conditions

For `decimal_absval_add_one_negative_scalar`, representative files are:

- array-theory version:
  `outputs/decimal_absval_add_one_negative_scalar/test000007.smt2`
- array-free 16-bit version:
  `outputs/decimal_absval_add_one_negative_scalar/test000007.no_arrays_bv16.smt2`

Example check:

```sh
rg "declare-fun \\|foo\\||\\|foo\\|" outputs/scalar_formula/klee-out/*.smt2
z3 -smt2 outputs/scalar_formula/klee-out/test000001.smt2
```
