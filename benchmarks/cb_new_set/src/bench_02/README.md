# Bench 02: `__builtin_popcount` Mirrored Bytes

This benchmark treats the input as two sampled bytes and checks how the total set-bit count decomposes across the halves.

Files in this folder:
- `popcount_mirrored_bytes.c`
- `popcount_mirrored_bytes_klee.c`
- `run.sh`

Properties checked:
- the total count equals the sum of the per-byte counts
- equal low and high bytes double the per-byte count exactly
- a zero low byte leaves the total equal to the high-byte count

The KLEE harness keeps the builtin call intact so the mirrored-byte structure remains visible in the generated query.

Sources:
- https://gcc.gnu.org/onlinedocs/gcc/Bit-Operation-Builtins.html
- https://klee-se.org/docs/intrinsics/

Run with:

```sh
./run.sh
```
