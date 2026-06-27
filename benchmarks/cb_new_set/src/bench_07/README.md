# Bench 07: `__builtin_ctz` Alignment Probe

This benchmark models the trailing-zero count as an alignment probe over a nonzero 16-bit address.

Files in this folder:
- `ctz_alignment_probe.c`
- `ctz_alignment_probe_klee.c`
- `run.sh`

Properties checked:
- the result stays in `0..15` on nonzero inputs
- the first one bit after shifting by the reported amount is always exposed
- all lower bits below that position are zero
- odd inputs have zero trailing zeros

Zero is handled outside the builtin because `__builtin_ctz(0)` is undefined.

Sources:
- https://gcc.gnu.org/onlinedocs/gcc/Bit-Operation-Builtins.html
- https://klee-se.org/docs/intrinsics/

Run with:

```sh
./run.sh
```
