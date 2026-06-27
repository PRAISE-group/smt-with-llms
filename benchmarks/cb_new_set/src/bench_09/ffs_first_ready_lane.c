#include <assert.h>
#include <stdint.h>
#include <stdio.h>

__attribute__((noinline))
int builtin_ffs_cb(uint16_t inp_ready) {
    int out_lane = __builtin_ffs((int)inp_ready);
    return out_lane;
}

int main(void) {
    const uint16_t inp_ready_masks[] = {0x0000U, 0x0001U, 0x0002U, 0x0008U, 0x0100U, 0x8000U, 0xFFFFU};

    for (unsigned int inp_index = 0U; inp_index < sizeof(inp_ready_masks) / sizeof(inp_ready_masks[0]); ++inp_index) {
        uint16_t inp_ready = inp_ready_masks[inp_index];
        int out_lane = builtin_ffs_cb(inp_ready);

        printf("ready mask 0x%04x -> first lane %d\n", inp_ready, out_lane);

        assert(out_lane >= 0);
        assert(out_lane <= 16);
        if (inp_ready == 0U) {
            assert(out_lane == 0);
        } else {
            assert(out_lane >= 1);
            assert((((uint32_t)inp_ready >> (unsigned int)(out_lane - 1)) & 1U) == 1U);
            if (out_lane > 1) {
                assert((((uint32_t)inp_ready) & (((uint32_t)1U << (unsigned int)(out_lane - 1)) - 1U)) == 0U);
            }
        }
    }

    return 0;
}
