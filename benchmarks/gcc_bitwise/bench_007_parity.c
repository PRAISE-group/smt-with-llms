/*
 * Benchmark 007: __builtin_parity(unsigned int x)
 *
 * Returns the parity of x: the number of 1-bits in x modulo 2.
 * Returns 1 if the count of set bits is odd, 0 if it is even.
 *
 * Assertions verified:
 *   A1. Result is always 0 or 1
 *   A2. parity(x) == parity(~x): complementing x flips all 32 bits, adding
 *       an even offset (32) to the popcount, so the parity is unchanged.
 *       This is a non-trivial structural property of the 32-bit word width.
 *   A3. For x > 0: parity(x) ^ parity(x & (x-1)) == 1.
 *       x & (x-1) clears exactly the lowest set bit of x, so the two values
 *       differ by exactly one 1-bit, which flips the parity.
 */

#include <assert.h>
#include <stdio.h>

int main(void) {
    unsigned int x;
    scanf("%u", &x);

    int p = __builtin_parity(x);

    /* A1: result is 0 or 1 */
    assert(p == 0 || p == 1);

    /* A2: parity is preserved under bitwise complement (32 is even) */
    assert(p == __builtin_parity(~x));

    /* A3: clearing the LSB flips parity (removes exactly one 1-bit) */
    if (x > 0u) {
        assert(p ^ __builtin_parity(x & (x - 1u)) == 1);
    }

    return 0;
}
