# Bench 18: `decimal_length_cb` Decimal-Length Bucket

This benchmark treats the input as a decimal identifier and returns how many decimal digits are needed to write it.

Files in this folder:
- `decimal_length_bucket.c`
- `decimal_length_bucket_klee.c`
- `run.sh`
- `nl_desc.txt`

Properties checked:
- the decimal length stays in `1..5` for a `uint16_t`
- values below `10` have one digit
- values in `[10, 99]` have two digits
- values at least `10000` have five digits
- dividing a value by `10` reduces the digit count by one when the value has at least two digits

Sources:
- https://en.wikipedia.org/wiki/Positional_notation
- https://klee-se.org/docs/intrinsics/

Run with:

```sh
./run.sh
```
