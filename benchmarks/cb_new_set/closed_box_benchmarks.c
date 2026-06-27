#include <limits.h>
#include <stdint.h>
#include <stdio.h>

uint16_t digit_sum_cb(uint16_t inp_value) {
    uint16_t out_sum = 0U;

    while (inp_value != 0U) {
        out_sum = (uint16_t)(out_sum + (inp_value % 10U));
        inp_value = (uint16_t)(inp_value / 10U);
    }

    return out_sum;
}

__attribute__((noinline))
unsigned int builtin_popcount_cb(uint16_t inp_ballot) {
    unsigned int out_votes = (unsigned int)__builtin_popcount((unsigned int)inp_ballot);
    return out_votes;
}

__attribute__((noinline))
unsigned int builtin_parity_cb(uint16_t inp_word) {
    unsigned int out_checksum = (unsigned int)__builtin_parity((unsigned int)inp_word);
    return out_checksum;
}

__attribute__((noinline))
unsigned int builtin_clz_cb(uint16_t inp_code) {
    unsigned int out_prefix_zeros =
        (unsigned int)(__builtin_clz((unsigned int)inp_code) - ((int)(sizeof(unsigned int) * CHAR_BIT) - 16));
    return out_prefix_zeros;
}

__attribute__((noinline))
unsigned int builtin_ctz_cb(uint16_t inp_addr) {
    unsigned int out_trailing_zeros = (unsigned int)__builtin_ctz((unsigned int)inp_addr);
    return out_trailing_zeros;
}

__attribute__((noinline))
int builtin_ffs_cb(uint16_t inp_ready) {
    int out_lane = __builtin_ffs((int)inp_ready);
    return out_lane;
}

__attribute__((noinline))
uint16_t builtin_bswap16_cb(uint16_t inp_word) {
    uint16_t out_swapped = __builtin_bswap16(inp_word);
    return out_swapped;
}

__attribute__((noinline))
uint32_t builtin_bswap32_cb(uint16_t inp_hi, uint16_t inp_lo) {
    uint32_t inp_header = ((uint32_t)inp_hi << 16) | (uint32_t)inp_lo;
    uint32_t out_swapped = __builtin_bswap32(inp_header);
    return out_swapped;
}

__attribute__((noinline))
uint16_t builtin_rotateleft16_cb(uint16_t inp_flags, uint16_t inp_steps) {
    uint16_t out_rotated = __builtin_rotateleft16(inp_flags, (unsigned int)inp_steps);
    return out_rotated;
}

__attribute__((noinline))
uint16_t builtin_rotateright16_cb(uint16_t inp_mask, uint16_t inp_steps) {
    uint16_t out_rotated = __builtin_rotateright16(inp_mask, (unsigned int)inp_steps);
    return out_rotated;
}

uint16_t decimal_length_cb(uint16_t inp_value) {
    uint16_t out_digits = 1U;

    while (inp_value >= 10U) {
        inp_value = (uint16_t)(inp_value / 10U);
        ++out_digits;
    }

    return out_digits;
}

int decimal_palindrome_cb(uint16_t inp_value) {
    uint16_t inp_original = inp_value;
    uint16_t out_reverse = 0U;

    while (inp_value != 0U) {
        out_reverse = (uint16_t)(out_reverse * 10U + (inp_value % 10U));
        inp_value = (uint16_t)(inp_value / 10U);
    }

    return out_reverse == inp_original;
}
