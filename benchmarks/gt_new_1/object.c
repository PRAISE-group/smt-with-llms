#include <assert.h>
#include <stdio.h>
#include <stdint.h>
#include <limits.h>

#define SCALE 1000

int beale_int(int x, int y) {

    int y2 = (y * y) / SCALE;
    int y3 = (y2 * y) / SCALE;

    int t1 = (1500 - x + (x * y) / SCALE);
    int t2 = (2250 - x + (x * y2) / SCALE);
    int t3 = (2625 - x + (x * y3) / SCALE);

    int res = (t1 * t1 + t2 * t2 + t3 * t3) / SCALE;

    return res;
    // int k; return k;
}


int my__builtin_ffs(int x)
{
    if (x == 0)
        return 0;

    int pos = 1;
    while ((x & 1) == 0) {
        x >>= 1;
        pos++;
    }

    return pos;
    // int k; return k;
}


int my__builtin_clrsb(int x)
{
    unsigned int ux = (unsigned int)x;
    unsigned int sign = ux >> 31;
    int count = 0;

    for (int i = 30; i >= 0; --i) {
        unsigned int bit = (ux >> i) & 1U;
        if (bit == sign)
            count++;
        else
            break;
    }

    return count;
    // int k; return k;
}



int my__builtin_clz(unsigned int x)
{
    int count = 0;
    unsigned int mask = 1U << (sizeof(unsigned int) * 8 - 1);

    while ((x & mask) == 0) {
        count++;
        mask >>= 1;
    }

    return count;
    // int k; return k;
}


int my__builtin_ctz(unsigned int x)
{
    int count = 0;

    while ((x & 1U) == 0) {
        count++;
        x >>= 1;
    }

    return count;
    // int k; return k;
}


int my__builtin_popcount(unsigned int x)
{
    int count = 0;

    while (x != 0) {
        count += x & 1U;
        x >>= 1;
    }

    return count;
    // int k; return k;
}


int my__builtin_parity(unsigned int x)
{
    int parity = 0;

    while (x != 0) {
        parity ^= (x & 1U);
        x >>= 1;
    }

    return parity;
    // int k; return k;
}


int booth_int(int x, int y) {

    /* compute linear terms */
    int t1 = (x + (2 * y) - 7000);   // 7 * 1000
    int t2 = ((2 * x) + y - 5000);   // 5 * 1000

    /* square and normalize */
    int res = (t1 * t1 + t2 * t2) / SCALE;

    return res;
    // int k; return k;
}

uint16_t my_builtin_bswap16(uint16_t inp_word) {
    uint16_t out_swapped = __builtin_bswap16(inp_word);
    return out_swapped;
    // int k; return k;
}

uint32_t my_builtin_bswap32(uint16_t inp_hi, uint16_t inp_lo) {
    uint32_t inp_header = ((uint32_t)inp_hi << 16) | (uint32_t)inp_lo;
    uint32_t out_swapped = __builtin_bswap32(inp_header);
    return out_swapped;
    // int k; return k;
}

int bukin_int(int x, int y) {

    // compute A = |100y - x^2|
    int A = 100 * y - x * x;
    if (A < 0) A = -A;

    // integer square root of A
    int r = 0;
    while ((r + 1) * (r + 1) <= A) {
        r++;
    }

    // scaled Bukin function
    // F = 1000 * sqrt(A) + |x + 10|
    int term1 = 1000 * r;

    int dx = x + 10;
    if (dx < 0) dx = -dx;

    return term1 + dx;
    // int k; return k;
}

unsigned int my_builtin_clz(uint16_t inp_code) {
    unsigned int out_prefix_zeros =
        (unsigned int)(__builtin_clz((unsigned int)inp_code) - ((int)(sizeof(unsigned int) * CHAR_BIT) - 16));
    return out_prefix_zeros;
    // int k; return k;
}

unsigned int my_builtin_ctz(uint16_t inp_addr) {
    unsigned int out_trailing_zeros = (unsigned int)__builtin_ctz((unsigned int)inp_addr);
    return out_trailing_zeros;
    // int k; return k;
}


uint16_t decimal_length(uint16_t inp_value) {
    uint16_t out_digits = 1U;

    while (inp_value >= 10U) {
        inp_value = (uint16_t)(inp_value / 10U);
        ++out_digits;
    }

    return out_digits;
    // int k; return k;
}

int my_builtin_ffs(uint16_t inp_ready) {
    int out_lane = __builtin_ffs((int)inp_ready);
    return out_lane;
    // int k; return k;
}

unsigned int my_builtin_parity(uint16_t inp_frame) {
    unsigned int out_checksum = (unsigned int)__builtin_parity((unsigned int)inp_frame);
    return out_checksum;
    // int k; return k;
}


unsigned int my_builtin_popcount(uint16_t inp_ballot) {
    unsigned int out_votes = (unsigned int)__builtin_popcount((unsigned int)inp_ballot);
    return out_votes;
    // int k; return k;
}
