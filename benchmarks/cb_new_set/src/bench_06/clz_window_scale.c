#include <assert.h>
#include <limits.h>
#include <stdint.h>
#include <stdio.h>

__attribute__((noinline))
unsigned int builtin_clz_cb(uint16_t inp_window) {
    unsigned int out_scale =
        (unsigned int)(__builtin_clz((unsigned int)inp_window) - ((int)(sizeof(unsigned int) * CHAR_BIT) - 16));
    return out_scale;
}

int main(void) {
    const uint16_t inp_windows[] = {0x0000U, 0x0001U, 0x007FU, 0x0100U, 0x1234U, 0x4000U, 0x7FFFU};

    for (unsigned int inp_index = 0U; inp_index < sizeof(inp_windows) / sizeof(inp_windows[0]); ++inp_index) {
        uint16_t inp_window = inp_windows[inp_index];

        if (inp_window == 0U) {
            printf("window 0x%04x -> skipped because __builtin_clz is undefined on zero\n", inp_window);
            continue;
        }

        unsigned int out_scale = builtin_clz_cb(inp_window);

        printf("window 0x%04x -> %u scale bits\n", inp_window, out_scale);

        assert(out_scale <= 15U);
        if ((inp_window & 0xFF00U) == 0U) {
            assert(out_scale >= 8U);
        }
        if ((inp_window & 0xF000U) != 0U) {
            assert(out_scale <= 3U);
        }
        if ((inp_window & 0x8000U) == 0U) {
            assert(builtin_clz_cb((uint16_t)(inp_window << 1U)) + 1U == out_scale);
        }
    }

    return 0;
}
