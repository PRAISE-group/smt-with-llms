#include <assert.h>
#include <stdint.h>
#include <stdio.h>

__attribute__((noinline))
uint32_t builtin_bswap32_cb(uint16_t inp_hi, uint16_t inp_lo) {
    uint32_t inp_stamp = ((uint32_t)inp_hi << 16) | (uint32_t)inp_lo;
    uint32_t out_stamp = __builtin_bswap32(inp_stamp);
    return out_stamp;
}

int main(void) {
    const uint16_t inp_hi_words[] = {0x0000U, 0x0001U, 0x0011U, 0x1234U, 0xA1B2U, 0xFFFFU};
    const uint16_t inp_lo_words[] = {0x0000U, 0x00FFU, 0x1100U, 0x5678U, 0xC3D4U, 0xFFFFU};

    for (unsigned int inp_index = 0U; inp_index < sizeof(inp_hi_words) / sizeof(inp_hi_words[0]); ++inp_index) {
        uint16_t inp_hi = inp_hi_words[inp_index];
        uint16_t inp_lo = inp_lo_words[inp_index];
        uint32_t out_stamp = builtin_bswap32_cb(inp_hi, inp_lo);

        printf("stamp 0x%04x%04x -> swapped 0x%08x\n", inp_hi, inp_lo, out_stamp);

        assert(out_stamp == ((((uint32_t)__builtin_bswap16(inp_lo)) << 16) | (uint32_t)__builtin_bswap16(inp_hi)));
        if (inp_hi == __builtin_bswap16(inp_lo)) {
            assert(out_stamp == ((((uint32_t)inp_hi) << 16) | (uint32_t)inp_lo));
        }
    }

    return 0;
}
