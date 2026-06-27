/*
 * Benchmark 012: __builtin_clrsb(int x) + __builtin_clz(unsigned int x)
 *
 * clrsb counts redundant sign bits (bits matching the sign after the sign bit).
 * clz counts leading zero bits from the MSB (for unsigned input).
 *
 * For non-negative x (sign bit = 0): all the redundant sign bits ARE leading
 * zeros. So clrsb(x) == clz((unsigned)x) - 1... wait that's off by one
 * because clz counts the sign bit too. More precisely:
 *   clrsb(x) == clz((unsigned int)x) - 1    for x > 0
 *   clrsb(0) == 31  and  clz(0u) is undefined
 *
 * For negative x: the relationship inverts — clrsb counts leading ones
 * (after the sign bit), while clz on the unsigned pattern sees bit 31 set
 * and returns 0. So clrsb(x) + clz((unsigned int)x) == 31 for x < 0:
 * the sign bit is 1 (clz = 0) and the next clrsb bits match it.
 * Actually: clz((unsigned)x) = 0 for all x < 0 (bit 31 is always 1).
 * So: for x < 0, clrsb(x) + clz((unsigned int)x) == clrsb(x).
 *
 * The general, always-valid relationship (all x, including 0):
 *
 * Assertions verified:
 *   A1. For x > 0: clrsb(x) == clz((unsigned int)x) - 1
 *       (clz counts the 0 sign bit plus the clrsb redundant 0s)
 *   A2. For x < 0: clz((unsigned int)x) == 0
 *       (the sign bit is 1, so clz on the unsigned pattern is always 0)
 *   A3. For x < 0 and clrsb(x) < 31: the bit at position (30 - clrsb(x))
 *       is 0. The sign bit is 1; the first bit that breaks the run must be
 *       the opposite (0). For x == -1 all bits are 1, so clrsb is 31
 *       and this check is skipped.
 */

#include <assert.h>
#include <stdio.h>

int main(void) {
    int x;
    scanf("%d", &x);

    int rsb = __builtin_clrsb(x);

    if (x > 0) {
        int lz = __builtin_clz((unsigned int)x);
        /* A1: clz counts sign bit (always 0 for x>0) plus the redundant zeros */
        assert(rsb == lz - 1);
    } else if (x < 0) {
        int lz = __builtin_clz((unsigned int)x);
        /* A2: any negative number has bit 31 = 1, so clz on unsigned is 0 */
        assert(lz == 0);
        /* A3: the first bit that breaks the leading-ones run must be 0
         *     (sign = 1, break bit ≠ sign ⟹ break bit = 0);
         *     skip when rsb == 31 (x == -1, no break bit exists) */
        if (rsb < 31) {
            assert(((x >> (30 - rsb)) & 1) == 0);
        }
    } else {
        /* x == 0: clrsb is 31 (all 31 post-sign bits are 0 = sign) */
        assert(rsb == 31);
    }

    return 0;
}
