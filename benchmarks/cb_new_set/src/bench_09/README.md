# Bench 09: `__builtin_ffs` First Ready Lane

This benchmark treats a 16-bit mask as a lane-ready bitmap and asks for the first ready lane.

Files in this folder:
- `ffs_first_ready_lane.c`
- `ffs_first_ready_lane_klee.c`
- `run.sh`

Properties checked:
- the result stays in `0..16`
- zero maps to zero
- any nonzero mask reports a one-based lane index
- the reported lane is set and all lower lanes are clear

Sources:
- https://gcc.gnu.org/onlinedocs/gcc/Bit-Operation-Builtins.html
- https://klee-se.org/docs/intrinsics/

Run with:

```sh
./run.sh
```
