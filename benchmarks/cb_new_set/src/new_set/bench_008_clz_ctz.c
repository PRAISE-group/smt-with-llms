/*
 * Benchmark 008: __builtin_clz(unsigned int x) + __builtin_ctz(unsigned int x)
 *
 * clz counts leading 0-bits from the MSB; ctz counts trailing 0-bits from
 * the LSB. Together they describe where the set bits of x are confined.
 *
 * Assertions verified (for x > 0):
 *   A1. clz(x) + ctz(x) <= 31: the MSB is at position (31 - clz) and the
 *       LSB is at position ctz; since MSB >= LSB, their gap is at most 31.
 *   A2. (clz(x) + ctz(x) == 31) iff x is a power of 2: equality holds
 *       exactly when the MSB and LSB coincide (single bit set). The classic
 *       power-of-2 test (x & (x-1)) == 0 captures the same condition.
 */

#include <assert.h>
#include <stdio.h>

int main(void) {
    unsigned int x;
    scanf("%u", &x);
    if (x == 0) return 0; /* both builtins undefined for 0 */

    int lz = __builtin_clz(x);
    int tz = __builtin_ctz(x);

    /* A1: leading + trailing zeros fit within 31 bits (the 32nd bit is the MSB) */
    assert(lz + tz <= 31);

    /* A2: sum reaches 31 iff x is a power of 2 (single set bit) */
    assert((lz + tz == 31) == ((x & (x - 1u)) == 0u));

    return 0;
}
