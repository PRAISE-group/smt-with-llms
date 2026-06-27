# Bench 06: `__builtin_clz` Window Scale

This benchmark uses the leading-zero count as a scale estimate for a nonzero 16-bit measurement window.

Files in this folder:
- `clz_window_scale.c`
- `clz_window_scale_klee.c`
- `run.sh`

Properties checked:
- the result stays in `0..15` on nonzero inputs
- values confined to the low byte have at least eight leading zeros
- values with a nonzero top nibble have at most three leading zeros
- left-shifting any non-top-bit value reduces the count by exactly one

Zero is handled outside the builtin because `__builtin_clz(0)` is undefined.

Sources:
- https://gcc.gnu.org/onlinedocs/gcc/Bit-Operation-Builtins.html
- https://klee-se.org/docs/intrinsics/

Run with:

```sh
./run.sh
```
