/*
 * Benchmark 010: __builtin_clz(unsigned int x) + __builtin_popcount(unsigned int x)
 *
 * clz tells where the useful bits START (from MSB); popcount tells how many
 * of them are set. Together they constrain each other.
 *
 * Assertions verified (for x > 0):
 *   A1. popcount(x) <= 32 - clz(x): set bits can only live in the lower
 *       (32 - clz) positions (the ones not covered by leading zeros), so
 *       the count can never exceed that range.
 *   A2. popcount(x) >= 1: x > 0 guarantees at least one set bit.
 *   A3. clz(x) <= 31 - (popcount(x) - 1) == 32 - popcount(x): since there
 *       are popcount(x) set bits, the highest one occupies a position that
 *       leaves at most (32 - popcount(x)) leading zeros. Rearranged:
 *       clz(x) + popcount(x) <= 32.
 */

#include <assert.h>
#include <stdio.h>

int main(void) {
    unsigned int x;
    scanf("%u", &x);
    if (x == 0) return 0; /* clz undefined for 0 */

    int lz  = __builtin_clz(x);
    int cnt = __builtin_popcount(x);

    /* A1: popcount is bounded by the significant-bit range */
    assert(cnt <= 32 - lz);

    /* A2: non-zero input has at least one set bit */
    assert(cnt >= 1);

    /* A3: clz and popcount together cannot exceed the word width */
    assert(lz + cnt <= 32);

    return 0;
}
