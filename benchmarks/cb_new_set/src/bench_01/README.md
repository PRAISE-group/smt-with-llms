# Bench 01: `__builtin_popcount` Ballot Tally

This benchmark models a 16-seat ballot where each set bit marks one occupied seat.

Files in this folder:
- `popcount_ballot_tally.c`
- `popcount_ballot_tally_klee.c`
- `run.sh`

Properties checked:
- the count of set bits plus the count of clear bits is always sixteen
- an all-ones ballot reports sixteen marked seats
- zero reports zero marked seats
- any one-hot ballot reports exactly one marked seat
- duplicated bytes force an even vote count

The KLEE harness keeps the builtin call intact so the generated constraints stay attached to the builtin wrapper.

Sources:
- https://gcc.gnu.org/onlinedocs/gcc/Bit-Operation-Builtins.html
- https://klee-se.org/docs/intrinsics/

Run with:

```sh
./run.sh
```
