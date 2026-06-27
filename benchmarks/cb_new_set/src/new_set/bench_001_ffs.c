/*
 * Benchmark 001: __builtin_ffs(int x)
 *
 * Returns one plus the index of the least significant 1-bit of x,
 * or 0 if x is zero.
 *
 * Assertions verified:
 *   A1. ffs(x) == 0  <=>  x == 0
 *   A2. When x != 0: the bit at position ffs(x)-1 is set (it IS the LSB)
 *   A3. When x != 0: all bits below position ffs(x)-1 are zero (no lower set bit)
 */

#include <assert.h>
#include <stdio.h>

int main(void) {
    int x;
    scanf("%d", &x);

    int pos = __builtin_ffs(x);

    /* A1: ffs returns 0 if and only if the input is 0 */
    assert((x == 0) == (pos == 0));

    if (x != 0) {
        /* A2: the bit at position (pos-1) must be 1 */
        assert((x >> (pos - 1)) & 1);

        /* A3: every bit below position (pos-1) must be 0 */
        if (pos > 1) {
            assert((x & ((1 << (pos - 1)) - 1)) == 0);
        }
    }

    return 0;
}
