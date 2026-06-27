/*
 * Benchmark 013: __builtin_ctz(unsigned int x) + __builtin_parity(unsigned int x)
 *
 * ctz finds the position of the lowest 1-bit. parity counts 1-bits mod 2.
 * Stripping trailing zeros (isolating the lowest set bit via x & -x) relates
 * the two functions: the isolated bit has parity 1 by definition, and
 * the bits below ctz(x) are all 0.
 *
 * Assertions verified (for x > 0):
 *   A1. parity(x) == parity(x >> ctz(x)):
 *       Shifting x right by ctz(x) removes the trailing zeros (which
 *       contribute nothing to parity) while keeping all set bits. The parity
 *       of the result is the same as that of x.
 *   A2. parity(1u << ctz(x)) == 1:
 *       The isolated lowest bit is a single set bit, so its parity is 1.
 *   A3. ctz(x) <= 31 and x has at least one set bit (x > 0 guard).
 */

#include <assert.h>
#include <stdio.h>

int main(void) {
    unsigned int x;
    scanf("%u", &x);
    if (x == 0) return 0; /* ctz undefined for 0 */

    int tz = __builtin_ctz(x);
    int p  = __builtin_parity(x);

    /* A1: removing trailing zeros does not change parity */
    assert(p == __builtin_parity(x >> tz));

    /* A2: the isolated lowest bit always has parity 1 */
    assert(__builtin_parity(1u << tz) == 1);

    /* A3: ctz is within range for nonzero x */
    assert(tz >= 0 && tz <= 31);

    return 0;
}
