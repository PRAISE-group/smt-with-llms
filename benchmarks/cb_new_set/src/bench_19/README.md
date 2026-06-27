# Bench 19: `decimal_palindrome_cb` Decimal-Palindrome Flag

This benchmark treats the input as a decimal number and reports whether its decimal representation is a palindrome.

Files in this folder:
- `decimal_palindrome_flag.c`
- `decimal_palindrome_flag_klee.c`
- `run.sh`
- `nl_desc.txt`

Properties checked:
- the output is always `0` or `1`
- single-digit numbers are always decimal palindromes
- any nonzero number ending in `0` is not a decimal palindrome
- the result matches equality against the reversed decimal representation

Sources:
- https://en.wikipedia.org/wiki/Palindromic_number
- https://klee-se.org/docs/intrinsics/

Run with:

```sh
./run.sh
```
