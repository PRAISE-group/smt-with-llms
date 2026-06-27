/*
 * Benchmark 011: __builtin_ffs(int x) + __builtin_ctz(unsigned int x)
 *
 * ffs works on signed int and returns (1 + LSB index), returning 0 for 0.
 * ctz works on unsigned int and returns the LSB index directly (undefined for 0).
 * For any nonzero value they locate the same bit — their results are related
 * by exactly 1.
 *
 * Assertions verified (for x != 0):
 *   A1. __builtin_ffs(x) == (int)__builtin_ctz((unsigned int)x) + 1:
 *       The two functions agree on the position of the least significant 1-bit;
 *       the only difference is the +1 offset in ffs's return convention. This
 *       holds regardless of whether x is positive or negative, because both
 *       operate on the bit pattern without interpreting the sign.
 *   A2. For x == 0: ffs returns 0 (no set bit), and ctz is not called.
 */

#include <assert.h>
#include <stdio.h>

int main(void) {
    int x;
    scanf("%d", &x);

    int ffs_val = __builtin_ffs(x);

    /* A2: zero produces 0 from ffs */
    assert((x == 0) == (ffs_val == 0));

    if (x != 0) {
        int ctz_val = __builtin_ctz((unsigned int)x);

        /* A1: ffs and ctz find the same bit, offset by 1 */
        assert(ffs_val == ctz_val + 1);
    }

    return 0;
}
