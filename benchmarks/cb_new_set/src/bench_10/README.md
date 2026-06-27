# Bench 10: `__builtin_ffs` Low-Bit Selector

This benchmark uses `__builtin_ffs` as a selector for the least-significant ready bit in a 16-bit mask.

Files in this folder:
- `ffs_lowbit_selector.c`
- `ffs_lowbit_selector_klee.c`
- `run.sh`

Properties checked:
- the result stays in `0..16`
- zero maps to zero
- any nonzero mask with a set bit in the low byte reports an index at most eight
- any nonzero mask with a zero low byte reports an index at least nine
- left-shifting any mask that does not hit bit 15 increments the index by one

Sources:
- https://gcc.gnu.org/onlinedocs/gcc/Bit-Operation-Builtins.html
- https://klee-se.org/docs/intrinsics/

Run with:

```sh
./run.sh
```
