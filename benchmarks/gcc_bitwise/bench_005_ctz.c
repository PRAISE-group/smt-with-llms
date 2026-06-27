/*
 * Benchmark 005: __builtin_ctz(unsigned int x)
 *
 * Returns the number of trailing 0-bits in x, starting from the least
 * significant bit. Result is UNDEFINED when x == 0.
 *
 * Assertions verified (for x > 0):
 *   A1. Result is in [0, 31]
 *   A2. The bit at position ctz(x) is 1 — it IS the LSB
 *   A3. All bits strictly below that position are 0 (no lower bit is set)
 */

#include <assert.h>
#include <stdio.h>

int main(void) {
    unsigned int x;
    scanf("%u", &x);
    if (x == 0) return 0; /* ctz undefined for 0 */

    int n = __builtin_ctz(x);

    /* A1: result is within the valid range */
    assert(n >= 0 && n <= 31);

    /* A2: the least significant 1-bit is exactly at position n */
    assert((x >> n) & 1u);

    /* A3: all bits below position n are 0 */
    if (n > 0) {
        assert((x & ((1u << n) - 1u)) == 0u);
    }

    return 0;
}
