# Bench 04: `__builtin_parity` Byte Fold

This benchmark treats the input as two bytes and checks the parity of the whole frame against per-byte parity folding.

Files in this folder:
- `parity_byte_fold.c`
- `parity_byte_fold_klee.c`
- `run.sh`

Properties checked:
- whole-word parity equals low-byte parity XOR high-byte parity
- byte swapping does not change parity
- duplicated bytes force even parity
- all-zero and all-one frames have even parity

The KLEE harness keeps the builtin call intact so the byte-folded parity behavior remains tied to the builtin wrapper.

Sources:
- https://gcc.gnu.org/onlinedocs/gcc/Bit-Operation-Builtins.html
- https://gcc.gnu.org/onlinedocs/gcc/Byte-Swapping-Builtins.html
- https://klee-se.org/docs/intrinsics/

Run with:

```sh
./run.sh
```
