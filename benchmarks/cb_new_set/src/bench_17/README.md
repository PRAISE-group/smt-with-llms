# Bench 17: `__builtin_rotateright16` Priority Ring

This benchmark treats the input as a 16-bit circular priority mask and rotates it to the right by a symbolic amount.

Files in this folder:
- `rotr_priority_ring.c`
- `rotr_priority_ring_klee.c`
- `run.sh`
- `nl_desc.txt`

Properties checked:
- rotating by `0` or `16` leaves the value unchanged
- rotating right and then rotating right by the complementary amount restores the original value
- rotation composition follows modular step addition
- all-zero and all-one inputs are fixed points

Sources:
- https://gcc.gnu.org/onlinedocs/gcc/Bit-Operation-Builtins.html
- https://klee-se.org/docs/intrinsics/

Run with:

```sh
./run.sh
```
