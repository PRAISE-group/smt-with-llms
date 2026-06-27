# 15 Closed-Box Benchmark Selection Plan

## Summary

Use the constraints in [AGENT.md](/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/AGENT.md:1) as the
filter: unsigned-integer or character-style inputs only, integer/character outputs only, no floating point, no pointer-
facing APIs, and no trivial arithmetic transforms. Build the benchmark pool primarily from GCC builtins and adjacent
integer-safe references, then rank candidates by semantic richness, KLEE compatibility, and ease of writing nontrivial
universally-valid assertions.

The current repo has no existing benchmark files under `src/`, so the benchmark numbering can start from `bench_00` unless
you want to reserve indices.

## Candidate Function List

These are the 15 best benchmark candidates from the referenced sources under the current constraints:

1. `__builtin_popcount`
2. `__builtin_parity`
3. `__builtin_clz`
4. `__builtin_ctz`
5. `__builtin_ffs`
6. `__builtin_bswap16`
7. `__builtin_bswap32`
8. `__builtin_stdc_bit_ceil`
9. `__builtin_stdc_bit_floor`
10. `__builtin_stdc_bit_width`
11. `__builtin_stdc_count_ones`
12. `__builtin_stdc_count_zeros`
13. `__builtin_stdc_leading_zeros`
14. `__builtin_stdc_trailing_zeros`
15. `__builtin_stdc_has_single_bit`

Why these are strong:

- They are integer-only and map cleanly to `uint16_t`-style harnesses.
- They support meaningful relational properties instead of fixed-value toy asserts.
- Most have direct bit-level invariants that KLEE can reason about well.
- They cover distinct behaviors: counting, bit position, normalization, reversal, power-of-two structure.

Functions I would avoid in the first pass:

- Overflow builtins from the GCC overflow page, because they rely on pointer out-parameters and conflict with the repo
  rules.
- Rotate builtins unless we explicitly decide to allow a second scalar input for the shift amount.
- Most libc-style string/memory builtins from the library page, because they need pointer inputs.

## Execution Plan

1. Read the cited GCC docs for each shortlisted builtin and extract the exact behavior, edge conditions, and safe domains.
2. For each chosen function, define one benchmark scenario with a real usage framing, not just a direct call-and-assert
   pattern.
3. For each scenario, derive 2-4 universally-valid assertions:
   - range bounds
   - zero/nonzero partition properties
   - power-of-two or bit-structure implications
   - algebraic equivalences to a simple reference implementation where needed
4. For each benchmark, plan these artifacts in `src/bench_0N/`:
   - original C benchmark
   - KLEE harness copy
   - `README.md` with source links and intended properties
   - runner script for native assert check plus KLEE run
5. Prefer explicit fallback implementations when a builtin may lower to unsupported LLVM/KLEE intrinsics, while preserving
   the same observable semantics.
6. Order implementation from simplest/highest-confidence to trickiest:
   - `popcount`, `parity`, `has_single_bit`, `bit_width`
   - `clz`, `ctz`, `ffs`
   - `bswap16`, `bswap32`
   - remaining `__builtin_stdc_*` count/ceil/floor variants

## Public Interfaces / Benchmark Conventions

- Each wrapper should follow the repo convention: function name with `_cb` suffix.
- Inputs should be named with `inp_` prefix and outputs with `out_` prefix.
- Original benchmark inputs should use `uint16_t` where possible; if a builtin is naturally 32-bit, the benchmark can widen
  internally while keeping the external symbolic inputs 16-bit unless we decide otherwise.
- KLEE harnesses should flatten any compound input shape into scalar symbolic integers.

## Test Plan

For each benchmark, verify:

- native compile and run succeeds with assertions enabled
- KLEE harness compiles
- assertions hold for symbolic inputs within the declared domain
- edge cases are covered:
  - `0`
  - `1`
  - max `uint16_t`
  - single-bit values
  - alternating-bit patterns like `0x5555` and `0xAAAA`
- any function with undefined-zero behavior, such as `clz` or `ctz`, is guarded with preconditions or conditional
  assertions instead of asserting on invalid domains

## Assumptions

- Default assumption: “15 such benchmarks” means 15 benchmark scenarios total, not necessarily 15 unique functions, because
  [AGENT.md](/home/sumiqlnx/klee_experiments/closed-box-bench/cb-new-internet/AGENT.md:3) explicitly allows reuse in
  different semantic contexts.
- Default source priority: broader reference mix, but GCC integer builtins remain the primary source of truth.
- Default numbering starts at `src/bench_00` because `src/` is currently empty.
- If a builtin is poorly supported by the local KLEE/LLVM toolchain, the benchmark should use an equivalent explicit
  implementation in the harness while keeping the original benchmark aligned with the documented builtin behavior.
