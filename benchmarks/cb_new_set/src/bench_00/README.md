# Bench 00: `digit_sum_cb` Decimal Checksum

This benchmark treats the input as a decimal identifier and computes the sum of its decimal digits.

Files in this folder:
- `digit_sum_checksum.c`
- `digit_sum_checksum_klee.c`
- `run.sh`
- `nl_desc.txt`

Properties checked:
- the digit sum stays in `0..41` for a `uint16_t`
- single-digit inputs map to themselves
- the result equals the last digit plus the digit sum of the truncated prefix
- zero maps to zero and every nonzero input has positive digit sum

Sources:
- https://en.wikipedia.org/wiki/Digit_sum
- https://klee-se.org/docs/intrinsics/

Run with:

```sh
./run.sh
```
