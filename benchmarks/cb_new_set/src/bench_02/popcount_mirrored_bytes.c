#include <assert.h>
#include <stdint.h>
#include <stdio.h>

__attribute__((noinline))
unsigned int builtin_popcount_cb(uint16_t inp_window) {
    unsigned int out_active = (unsigned int)__builtin_popcount((unsigned int)inp_window);
    return out_active;
}

int main(void) {
    const uint16_t inp_windows[] = {0x0000U, 0x00FFU, 0x5A5AU, 0xA5A5U, 0x3C3CU, 0xFFFFU, 0x12ABU};

    for (unsigned int inp_index = 0U; inp_index < sizeof(inp_windows) / sizeof(inp_windows[0]); ++inp_index) {
        uint16_t inp_window = inp_windows[inp_index];
        uint8_t inp_low = (uint8_t)(inp_window & 0x00FFU);
        uint8_t inp_high = (uint8_t)(inp_window >> 8);
        unsigned int out_active = builtin_popcount_cb(inp_window);

        printf("window 0x%04x -> %u sampled bits\n", inp_window, out_active);

        assert(out_active == builtin_popcount_cb((uint16_t)inp_low) + builtin_popcount_cb((uint16_t)inp_high));
        if (inp_low == inp_high) {
            assert(out_active == 2U * builtin_popcount_cb((uint16_t)inp_low));
        }
        if (inp_low == 0U) {
            assert(out_active == builtin_popcount_cb((uint16_t)inp_high));
        }
    }

    return 0;
}
