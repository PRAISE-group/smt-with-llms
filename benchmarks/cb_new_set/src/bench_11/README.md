# Bench 11: `__builtin_bswap16` Endian Word

This benchmark models a two-byte endian conversion on a 16-bit word.

Files in this folder:
- `bswap16_endian_word.c`
- `bswap16_endian_word_klee.c`
- `run.sh`

Properties checked:
- swapping twice returns the original word
- the output high byte equals the input low byte
- the output low byte equals the input high byte
- equal bytes make the swap a no-op

Sources:
- https://gcc.gnu.org/onlinedocs/gcc/Byte-Swapping-Builtins.html
- https://klee-se.org/docs/intrinsics/

Run with:

```sh
./run.sh
```
