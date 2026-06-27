/*
 * Benchmark 002: __builtin_clrsb(int x)
 *
 * Returns the number of leading redundant sign bits in x: the count of
 * bits following the most significant bit that are identical to it.
 * Equivalently, (clrsb(x) + 1) is how many times x can be left-shifted
 * without changing its sign.
 *
 * Assertions verified:
 *   A1. Result is always in [0, 31] for a 32-bit signed int
 *   A2. clrsb(x) == 31 iff x is 0 or -1 (all bits are the same)
 *   A3. When clrsb(x) < 31: the bit immediately past the redundant run
 *       differs from the sign bit — it is the first "meaningful" bit
 */

#include <assert.h>
#include <stdio.h>

int main(void) {
    int x;
    scanf("%d", &x);

    int n = __builtin_clrsb(x);

    /* A1: result is within the valid range */
    assert(n >= 0 && n <= 31);

    /* A2: only x==0 and x==-1 have all 32 bits identical */
    assert((n == 31) == (x == 0 || x == -1));

    /* A3: the bit just after the redundant run must differ from sign */
    if (n < 31) {
        int sign_bit  = (x >> 31) & 1;         /* 0 for non-negative, 1 for negative */
        int break_bit = (x >> (30 - n)) & 1;   /* first bit that breaks the pattern */
        assert(sign_bit != break_bit);
    }

    return 0;
}
