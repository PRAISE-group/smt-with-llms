/*
 * Benchmark 004: __builtin_clz(unsigned int x)
 *
 * Returns the number of leading 0-bits in x, starting from the most
 * significant bit. Result is UNDEFINED when x == 0.
 *
 * Assertions verified (for x > 0):
 *   A1. Result is in [0, 31]
 *   A2. The bit at position (31 - clz(x)) is 1 — it IS the MSB
 *   A3. All bits strictly above that position are 0 (no higher bit is set)
 */

#include <assert.h>
#include <stdio.h>

int main(void) {
    unsigned int x;
    scanf("%u", &x);
    if (x == 0) return 0; /* clz undefined for 0 */

    int n = __builtin_clz(x);

    /* A1: result is within the valid range */
    assert(n >= 0 && n <= 31);

    /* A2: the most significant 1-bit is exactly at position (31 - n) */
    assert((x >> (31 - n)) & 1u);

    /* A3: no bit above position (31 - n) is set */
    if (n > 0) {
        assert((x >> (32 - n)) == 0u);
    }

    return 0;
}
