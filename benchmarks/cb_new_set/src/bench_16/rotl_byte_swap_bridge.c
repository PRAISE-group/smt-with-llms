#include <assert.h>
#include <stdint.h>
#include <stdio.h>

__attribute__((noinline))
uint16_t builtin_rotateleft16_cb(uint16_t inp_word, uint16_t inp_steps) {
    uint16_t out_rotated = __builtin_rotateleft16(inp_word, (unsigned int)inp_steps);
    return out_rotated;
}

int main(void) {
    const uint16_t inp_words[] = {0x0000U, 0x0001U, 0x00FFU, 0x1234U, 0x8080U, 0x55AAU, 0xFFFFU};

    for (unsigned int inp_index = 0U; inp_index < sizeof(inp_words) / sizeof(inp_words[0]); ++inp_index) {
        uint16_t inp_word = inp_words[inp_index];
        uint16_t out_rot8 = builtin_rotateleft16_cb(inp_word, 8U);

        printf("word 0x%04x rotated left by 8 -> 0x%04x\n", inp_word, out_rot8);

        assert(out_rot8 == __builtin_bswap16(inp_word));
        assert(builtin_rotateleft16_cb(builtin_rotateleft16_cb(inp_word, 4U), 4U) == out_rot8);
        assert(builtin_rotateleft16_cb(inp_word, 8U) == builtin_rotateleft16_cb(inp_word, 24U));
        if ((uint8_t)inp_word == (uint8_t)(inp_word >> 8)) {
            assert(out_rot8 == inp_word);
        }
    }

    return 0;
}
