/*
 * Benchmark 009: __builtin_popcount(unsigned int x) + __builtin_parity(unsigned int x)
 *
 * popcount gives the exact count of 1-bits; parity gives that count mod 2.
 * Their relationship and shared properties under complement are verified.
 *
 * Assertions verified:
 *   A1. parity(x) == (popcount(x) & 1): parity is the low bit of popcount.
 *       This directly connects the two functions by definition.
 *   A2. popcount(x) + popcount(~x) == 32: all 32 bits are partitioned between
 *       x and its complement.
 *   A3. parity(x) == parity(~x): follows from A1 and A2 since 32 is even,
 *       but here verified independently — a cross-function consistency check.
 */

#include <assert.h>
#include <stdio.h>

int main(void) {
    unsigned int x;
    scanf("%u", &x);

    int cnt = __builtin_popcount(x);
    int p   = __builtin_parity(x);

    /* A1: parity is the lowest bit of popcount */
    assert(p == (cnt & 1));

    /* A2: x and ~x together cover all 32 bits */
    assert(cnt + __builtin_popcount(~x) == 32);

    /* A3: cross-function check — parity is stable under complement */
    assert(p == __builtin_parity(~x));

    return 0;
}
