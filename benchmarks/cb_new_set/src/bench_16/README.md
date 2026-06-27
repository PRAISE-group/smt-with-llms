# Bench 16: `__builtin_rotateleft16` Byte-Swap Bridge

This benchmark uses left rotation to expose the special case where rotating a 16-bit word by eight positions is the same as swapping its two bytes.

Files in this folder:
- `rotl_byte_swap_bridge.c`
- `rotl_byte_swap_bridge_klee.c`
- `run.sh`
- `nl_desc.txt`

Properties checked:
- rotating left by eight matches `__builtin_bswap16`
- two four-bit left rotations equal one eight-bit left rotation
- rotation amounts are interpreted modulo sixteen
- words with equal bytes are unchanged by an eight-bit rotation

Sources:
- https://gcc.gnu.org/onlinedocs/gcc/Bit-Operation-Builtins.html
- https://gcc.gnu.org/onlinedocs/gcc/Byte-Swapping-Builtins.html
- https://klee-se.org/docs/intrinsics/

Run with:

```sh
./run.sh
```
