#include <assert.h>
#include <stdint.h>
#include <stdio.h>

__attribute__((noinline))
uint16_t builtin_rotateleft16_cb(uint16_t inp_flags, uint16_t inp_steps) {
    uint16_t out_rotated = __builtin_rotateleft16(inp_flags, (unsigned int)inp_steps);
    return out_rotated;
}

int main(void) {
    const uint16_t inp_flags_list[] = {0x0000U, 0x0001U, 0x00F0U, 0x1234U, 0x8001U, 0xAAAAU, 0xFFFFU};
    const uint16_t inp_steps_list[] = {0U, 1U, 4U, 7U, 8U, 15U, 19U};

    for (unsigned int inp_index = 0U; inp_index < sizeof(inp_flags_list) / sizeof(inp_flags_list[0]); ++inp_index) {
        uint16_t inp_flags = inp_flags_list[inp_index];
        uint16_t inp_steps = inp_steps_list[inp_index];
        uint16_t out_rotated = builtin_rotateleft16_cb(inp_flags, inp_steps);

        printf("flags 0x%04x rotated left by %u -> 0x%04x\n", inp_flags, inp_steps, out_rotated);

        assert(builtin_rotateleft16_cb(inp_flags, 0U) == inp_flags);
        assert(builtin_rotateleft16_cb(inp_flags, 16U) == inp_flags);
        assert(builtin_rotateleft16_cb(out_rotated, (uint16_t)(16U - (inp_steps & 15U))) == inp_flags);
        assert(builtin_rotateleft16_cb(builtin_rotateleft16_cb(inp_flags, inp_steps), 3U) ==
               builtin_rotateleft16_cb(inp_flags, (uint16_t)((inp_steps + 3U) & 15U)));
        if (inp_flags == 0x0000U || inp_flags == 0xFFFFU) {
            assert(out_rotated == inp_flags);
        }
    }

    return 0;
}
