# Bench 05: `__builtin_clz` Prefix Bucket

This benchmark models a prefix bucket calculation where the number of leading zero bits determines the magnitude bucket of a nonzero 16-bit code.

Files in this folder:
- `clz_prefix_bucket.c`
- `clz_prefix_bucket_klee.c`
- `run.sh`

Properties checked:
- the result stays in `0..15` on the valid nonzero domain
- the input lies between the two powers of two implied by the leading-zero count
- any input with the top bit set has zero leading zeros

Zero is covered explicitly as a skipped case because `__builtin_clz(0)` is undefined.

Sources:
- https://gcc.gnu.org/onlinedocs/gcc/Bit-Operation-Builtins.html
- https://klee-se.org/docs/intrinsics/

Run with:

```sh
./run.sh
```
