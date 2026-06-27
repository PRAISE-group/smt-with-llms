/*
 * Benchmark 006: __builtin_popcount(unsigned int x)
 *
 * Returns the number of 1-bits in x (the Hamming weight / population count).
 *
 * Assertions verified:
 *   A1. Result is always in [0, 32]
 *   A2. popcount(x) + popcount(~x) == 32: x and its bitwise complement
 *       together have all 32 bits set exactly once, so their counts must sum
 *       to 32. This is a non-trivial global invariant that links x to ~x.
 *   A3. popcount(x) == 0 iff x == 0 (zero is the only value with no set bits)
 */

#include <assert.h>
#include <stdio.h>

int main(void) {
    unsigned int x;
    scanf("%u", &x);

    int cnt = __builtin_popcount(x);

    /* A1: count is in [0, 32] */
    assert(cnt >= 0 && cnt <= 32);

    /* A2: complement covers all remaining bits */
    assert(cnt + __builtin_popcount(~x) == 32);

    /* A3: zero check */
    assert((cnt == 0) == (x == 0u));

    return 0;
}
