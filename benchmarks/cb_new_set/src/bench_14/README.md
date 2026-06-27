# Bench 14: `__builtin_bswap32` Packet Stamp

This benchmark treats the two `uint16_t` inputs as a packet stamp and checks that the 32-bit byte swap matches two nested 16-bit byte swaps.

Files in this folder:
- `bswap32_packet_stamp.c`
- `bswap32_packet_stamp_klee.c`
- `run.sh`

Properties checked:
- the 32-bit result matches a pair of 16-bit byte swaps on the low and high halves
- any byte-palindromic input stamp remains unchanged after the swap

Sources:
- https://gcc.gnu.org/onlinedocs/gcc/Byte-Swapping-Builtins.html
- https://klee-se.org/docs/intrinsics/

Run with:

```sh
./run.sh
```
