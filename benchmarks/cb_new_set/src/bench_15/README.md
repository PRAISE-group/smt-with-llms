# Bench 15: `__builtin_rotateleft16` Flag Ring

This benchmark treats the input as a 16-bit ring of flags and rotates the ring to the left by a symbolic number of steps.

Files in this folder:
- `rotl_flag_ring.c`
- `rotl_flag_ring_klee.c`
- `run.sh`
- `nl_desc.txt`

Properties checked:
- rotating by `0` or `16` leaves the value unchanged
- rotating left and then rotating left by the complementary amount restores the original value
- rotation composition follows modular step addition
- all-zero and all-one inputs are fixed points

Sources:
- https://gcc.gnu.org/onlinedocs/gcc/Bit-Operation-Builtins.html
- https://klee-se.org/docs/intrinsics/

Run with:

```sh
./run.sh
```
