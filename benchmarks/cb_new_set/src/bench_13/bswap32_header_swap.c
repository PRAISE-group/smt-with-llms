#include <assert.h>
#include <stdint.h>
#include <stdio.h>

__attribute__((noinline))
uint32_t builtin_bswap32_cb(uint16_t inp_hi, uint16_t inp_lo) {
    uint32_t inp_header = ((uint32_t)inp_hi << 16) | (uint32_t)inp_lo;
    uint32_t out_swapped = __builtin_bswap32(inp_header);
    return out_swapped;
}

int main(void) {
    const uint16_t inp_hi_words[] = {0x0000U, 0x0001U, 0x1234U, 0x55AAU, 0xABCDU, 0xFFFFU};
    const uint16_t inp_lo_words[] = {0x0000U, 0x00FFU, 0x5678U, 0xAA55U, 0x0102U, 0xFFFFU};

    for (unsigned int inp_index = 0U; inp_index < sizeof(inp_hi_words) / sizeof(inp_hi_words[0]); ++inp_index) {
        uint16_t inp_hi = inp_hi_words[inp_index];
        uint16_t inp_lo = inp_lo_words[inp_index];
        uint32_t inp_header = ((uint32_t)inp_hi << 16) | (uint32_t)inp_lo;
        uint32_t out_swapped = builtin_bswap32_cb(inp_hi, inp_lo);

        printf("header 0x%08x -> swapped 0x%08x\n", inp_header, out_swapped);

        assert(__builtin_bswap32(out_swapped) == inp_header);
        assert((uint8_t)(out_swapped >> 24) == (uint8_t)(inp_lo & 0x00FFU));
        assert((uint8_t)(out_swapped >> 16) == (uint8_t)(inp_lo >> 8));
        assert((uint8_t)(out_swapped >> 8) == (uint8_t)(inp_hi & 0x00FFU));
        assert((uint8_t)out_swapped == (uint8_t)(inp_hi >> 8));
    }

    return 0;
}
