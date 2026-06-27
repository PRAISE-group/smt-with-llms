# Bench 03: `__builtin_parity` Checksum Bit

This benchmark models the parity bit that would be appended to a 16-bit code word.

Files in this folder:
- `parity_checksum_bit.c`
- `parity_checksum_bit_klee.c`
- `run.sh`

Properties checked:
- the result is always either zero or one
- zero has even parity
- any one-hot input has odd parity
- whole-word parity equals low-byte parity XOR high-byte parity

The KLEE harness calls the builtin directly so the parity wrapper remains visible in the emitted query structure.

Sources:
- https://gcc.gnu.org/onlinedocs/gcc/Bit-Operation-Builtins.html
- https://klee-se.org/docs/intrinsics/

Run with:

```sh
./run.sh
```
