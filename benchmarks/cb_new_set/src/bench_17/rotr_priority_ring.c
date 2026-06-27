#include <assert.h>
#include <stdint.h>
#include <stdio.h>

__attribute__((noinline))
uint16_t builtin_rotateright16_cb(uint16_t inp_mask, uint16_t inp_steps) {
    uint16_t out_rotated = __builtin_rotateright16(inp_mask, (unsigned int)inp_steps);
    return out_rotated;
}

int main(void) {
    const uint16_t inp_masks[] = {0x0000U, 0x0001U, 0x0008U, 0x00F0U, 0x1234U, 0x8000U, 0xFFFFU};
    const uint16_t inp_steps_list[] = {0U, 1U, 4U, 5U, 8U, 15U, 21U};

    for (unsigned int inp_index = 0U; inp_index < sizeof(inp_masks) / sizeof(inp_masks[0]); ++inp_index) {
        uint16_t inp_mask = inp_masks[inp_index];
        uint16_t inp_steps = inp_steps_list[inp_index];
        uint16_t out_rotated = builtin_rotateright16_cb(inp_mask, inp_steps);

        printf("mask 0x%04x rotated right by %u -> 0x%04x\n", inp_mask, inp_steps, out_rotated);

        assert(builtin_rotateright16_cb(inp_mask, 0U) == inp_mask);
        assert(builtin_rotateright16_cb(inp_mask, 16U) == inp_mask);
        assert(builtin_rotateright16_cb(out_rotated, (uint16_t)(16U - (inp_steps & 15U))) == inp_mask);
        assert(builtin_rotateright16_cb(builtin_rotateright16_cb(inp_mask, inp_steps), 5U) ==
               builtin_rotateright16_cb(inp_mask, (uint16_t)((inp_steps + 5U) & 15U)));
        if (inp_mask == 0x0000U || inp_mask == 0xFFFFU) {
            assert(out_rotated == inp_mask);
        }
    }

    return 0;
}
