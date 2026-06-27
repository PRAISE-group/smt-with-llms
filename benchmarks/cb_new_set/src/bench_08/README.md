# Bench 08: `__builtin_ctz` Stride Detector

This benchmark uses the trailing-zero count as a stride detector for a nonzero bit mask.

Files in this folder:
- `ctz_stride_detector.c`
- `ctz_stride_detector_klee.c`
- `run.sh`

Properties checked:
- the result stays in `0..15` on nonzero inputs
- masks whose low byte is zero have at least eight trailing zeros
- masks with a nonzero low nibble have at most three trailing zeros
- shifting an even nonzero mask right by one reduces the count by exactly one

Zero is handled outside the builtin because `__builtin_ctz(0)` is undefined.

Sources:
- https://gcc.gnu.org/onlinedocs/gcc/Bit-Operation-Builtins.html
- https://klee-se.org/docs/intrinsics/

Run with:

```sh
./run.sh
```
