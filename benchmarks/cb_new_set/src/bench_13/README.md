# Bench 13: `__builtin_bswap32` Header Swap

This benchmark treats two `uint16_t` inputs as a 32-bit header word and swaps the byte order.

Files in this folder:
- `bswap32_header_swap.c`
- `bswap32_header_swap_klee.c`
- `run.sh`

Properties checked:
- swapping twice returns the original 32-bit header
- the four output bytes are the exact reverse of the input byte order

Sources:
- https://gcc.gnu.org/onlinedocs/gcc/Byte-Swapping-Builtins.html
- https://klee-se.org/docs/intrinsics/

Run with:

```sh
./run.sh
```
