/*
 * Benchmark 014: All six bit-operation builtins combined
 *
 *   __builtin_ffs(int x)           — 1 + index of LSB, 0 if x == 0
 *   __builtin_clrsb(int x)         — leading redundant sign bits
 *   __builtin_clz(unsigned int x)  — leading zero bits (undefined for 0)
 *   __builtin_ctz(unsigned int x)  — trailing zero bits (undefined for 0)
 *   __builtin_popcount(unsigned int x) — count of 1-bits
 *   __builtin_parity(unsigned int x)   — count of 1-bits mod 2
 *
 * Input: a signed integer x (cast to unsigned where needed).
 *
 * Assertions verified:
 *   A1. ffs(x) + clrsb(x) <= 32   (combined LSB/MSB span fits the word)
 *   A2. popcount(ux) + popcount(~ux) == 32   (complement covers all bits)
 *   A3. parity(ux) == (popcount(ux) & 1)     (parity is popcount mod 2)
 *   A4. (ffs(x) == 0) == (popcount(ux) == 0) (both detect zero input)
 *   For x != 0 additionally:
 *   A5. ffs(x) == ctz(ux) + 1    (same bit, different offset convention)
 *   A6. clz(ux) + ctz(ux) <= 31  (leading + trailing zeros fit in 31 bits)
 *   A7. popcount(ux) <= 32 - clz(ux)  (set bits lie in the non-leading-zero range)
 *   A8. parity(ux) == parity(~ux)     (complement preserves parity, 32 is even)
 */

#include <assert.h>
#include <stdio.h>

int main(void) {
    int x;
    scanf("%d", &x);

    unsigned int ux = (unsigned int)x;

    int ffs_val = __builtin_ffs(x);
    int rsb_val = __builtin_clrsb(x);
    int cnt_val = __builtin_popcount(ux);
    int par_val = __builtin_parity(ux);

    /* A1: ffs + clrsb span at most 32 bits */
    assert(ffs_val + rsb_val <= 32);

    /* A2: complement covers all 32 bits */
    assert(cnt_val + __builtin_popcount(~ux) == 32);

    /* A3: parity is the low bit of popcount */
    assert(par_val == (cnt_val & 1));

    /* A4: zero is detected consistently by ffs and popcount */
    assert((ffs_val == 0) == (cnt_val == 0));

    if (x != 0) {
        int lz_val = __builtin_clz(ux);
        int tz_val = __builtin_ctz(ux);

        /* A5: ffs and ctz locate the same LSB, offset by 1 */
        assert(ffs_val == tz_val + 1);

        /* A6: leading + trailing zeros cannot exceed 31 */
        assert(lz_val + tz_val <= 31);

        /* A7: set bits are bounded by the significant-bit range */
        assert(cnt_val <= 32 - lz_val);

        /* A8: parity is stable under complement */
        assert(par_val == __builtin_parity(~ux));
    }

    return 0;
}
