#include <assert.h>
#include <stdint.h>
#include <stdio.h>

__attribute__((noinline))
int builtin_ffs_cb(uint16_t inp_mask) {
    int out_index = __builtin_ffs((int)inp_mask);
    return out_index;
}

int main(void) {
    const uint16_t inp_masks[] = {0x0000U, 0x0001U, 0x0002U, 0x0010U, 0x0100U, 0x1000U, 0x7FFFU};

    for (unsigned int inp_index = 0U; inp_index < sizeof(inp_masks) / sizeof(inp_masks[0]); ++inp_index) {
        uint16_t inp_mask = inp_masks[inp_index];
        int out_index = builtin_ffs_cb(inp_mask);

        printf("lowbit mask 0x%04x -> selector index %d\n", inp_mask, out_index);

        assert(out_index >= 0);
        assert(out_index <= 16);
        if (inp_mask == 0U) {
            assert(out_index == 0);
        } else {
            if ((inp_mask & 0x00FFU) != 0U) {
                assert(out_index <= 8);
            }
            if ((inp_mask & 0x00FFU) == 0U) {
                assert(out_index >= 9);
            }
            if ((inp_mask & 0x8000U) == 0U) {
                assert(builtin_ffs_cb((uint16_t)(inp_mask << 1U)) == out_index + 1);
            }
        }
    }

    return 0;
}
