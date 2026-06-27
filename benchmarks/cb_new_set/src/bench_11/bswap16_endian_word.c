#include <assert.h>
#include <stdint.h>
#include <stdio.h>

__attribute__((noinline))
uint16_t builtin_bswap16_cb(uint16_t inp_word) {
    uint16_t out_swapped = __builtin_bswap16(inp_word);
    return out_swapped;
}

int main(void) {
    const uint16_t inp_words[] = {0x0000U, 0x0001U, 0x00FFU, 0x1234U, 0x55AAU, 0xAAAAU, 0xFFFFU};

    for (unsigned int inp_index = 0U; inp_index < sizeof(inp_words) / sizeof(inp_words[0]); ++inp_index) {
        uint16_t inp_word = inp_words[inp_index];
        uint16_t out_swapped = builtin_bswap16_cb(inp_word);

        printf("word 0x%04x -> swapped 0x%04x\n", inp_word, out_swapped);

        assert(builtin_bswap16_cb(out_swapped) == inp_word);
        assert((uint16_t)(out_swapped >> 8) == (uint16_t)(inp_word & 0x00FFU));
        assert((uint16_t)(out_swapped & 0x00FFU) == (uint16_t)(inp_word >> 8));
        if ((inp_word & 0x00FFU) == (inp_word >> 8)) {
            assert(out_swapped == inp_word);
        }
    }

    return 0;
}
