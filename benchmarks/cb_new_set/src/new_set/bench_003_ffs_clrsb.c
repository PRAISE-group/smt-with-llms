/*
 * Benchmark 003: __builtin_ffs(int x) combined with __builtin_clrsb(int x)
 *
 * ffs(x)   — 1 + index of the least significant 1-bit (0 when x==0)
 * clrsb(x) — count of leading redundant sign bits after the sign bit
 *
 * Together they describe both ends of the bit pattern: ffs tracks the
 * trailing structure (low end) and clrsb tracks the leading structure
 * (high end).
 *
 * Assertions verified:
 *   A1. ffs(x) + clrsb(x) <= 32 for all 32-bit x
 *       Proof sketch: for x >= 0 the sum is <= 31 (the ffs 1-bit must lie
 *       inside the 31 non-sign bits and below the leading-zero run);
 *       for x < 0 the sum is <= 32 (the ffs 1-bit must still fit within
 *       the 32-bit word alongside the leading-ones run).
 *   A2. For non-negative x: ffs(x) + clrsb(x) <= 31
 *       Tighter bound: sign bit occupies bit 31; the remaining 31 bits
 *       must fit both the leading-zero run (clrsb) and the ffs position.
 *   A3. The zero value is the unique non-negative input where ffs returns 0;
 *       clrsb independently confirms it with the maximum value of 31.
 */

#include <assert.h>
#include <stdio.h>

int main(void) {
    int x;
    scanf("%d", &x);

    int ffs_val   = __builtin_ffs(x);
    int clrsb_val = __builtin_clrsb(x);

    /* A1: combined span never exceeds the 32-bit word width */
    assert(ffs_val + clrsb_val <= 32);

    /* A2: for non-negative x the 31 non-sign bits impose a tighter bound */
    if (x >= 0) {
        assert(ffs_val + clrsb_val <= 31);
    }

    /* A3: the two functions agree on the zero input */
    assert((x == 0) == (ffs_val == 0 && clrsb_val == 31));

    return 0;
}
