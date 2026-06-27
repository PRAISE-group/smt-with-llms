# Bench 12: `__builtin_bswap16` Sensor Register

This benchmark treats the input as a two-byte sensor register that must be converted to network byte order.

Files in this folder:
- `bswap16_sensor_register.c`
- `bswap16_sensor_register_klee.c`
- `run.sh`

Properties checked:
- swapping twice returns the original register
- flipping the low byte before swapping becomes a high-byte flip after swapping
- equal bytes make the swap a no-op

Sources:
- https://gcc.gnu.org/onlinedocs/gcc/Byte-Swapping-Builtins.html
- https://klee-se.org/docs/intrinsics/

Run with:

```sh
./run.sh
```
