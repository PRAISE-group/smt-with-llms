#include <assert.h>
#include <stdint.h>
#include <stdio.h>

__attribute__((noinline))
unsigned int builtin_ctz_cb(uint16_t inp_mask) {
    unsigned int out_stride = (unsigned int)__builtin_ctz((unsigned int)inp_mask);
    return out_stride;
}

int main(void) {
    const uint16_t inp_masks[] = {0x0000U, 0x0002U, 0x0004U, 0x0010U, 0x0100U, 0x1200U, 0x8000U};

    for (unsigned int inp_index = 0U; inp_index < sizeof(inp_masks) / sizeof(inp_masks[0]); ++inp_index) {
        uint16_t inp_mask = inp_masks[inp_index];

        if (inp_mask == 0U) {
            printf("stride mask 0x%04x -> skipped because __builtin_ctz is undefined on zero\n", inp_mask);
            continue;
        }

        unsigned int out_stride = builtin_ctz_cb(inp_mask);

        printf("stride mask 0x%04x -> %u trailing zeros\n", inp_mask, out_stride);

        assert(out_stride <= 15U);
        if ((inp_mask & 0x00FFU) == 0U) {
            assert(out_stride >= 8U);
        }
        if ((inp_mask & 0x000FU) != 0U) {
            assert(out_stride <= 3U);
        }
        if ((inp_mask & 1U) == 0U) {
            assert(builtin_ctz_cb((uint16_t)(inp_mask >> 1U)) + 1U == out_stride);
        }
    }

    return 0;
}
