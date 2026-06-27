#include <assert.h>
#include <stdint.h>
#include <stdio.h>

static int is_power_of_two16(uint16_t inp_mask) {
    return inp_mask != 0U && (inp_mask & (uint16_t)(inp_mask - 1U)) == 0U;
}

__attribute__((noinline))
unsigned int builtin_parity_cb(uint16_t inp_word) {
    unsigned int out_checksum = (unsigned int)__builtin_parity((unsigned int)inp_word);
    return out_checksum;
}

int main(void) {
    const uint16_t inp_words[] = {0x0000U, 0x0001U, 0x0003U, 0x00F0U, 0x5555U, 0xAAAAU, 0xFFFFU};

    for (unsigned int inp_index = 0U; inp_index < sizeof(inp_words) / sizeof(inp_words[0]); ++inp_index) {
        uint16_t inp_word = inp_words[inp_index];
        uint8_t inp_low = (uint8_t)(inp_word & 0x00FFU);
        uint8_t inp_high = (uint8_t)(inp_word >> 8);
        unsigned int out_checksum = builtin_parity_cb(inp_word);

        printf("word 0x%04x -> parity bit %u\n", inp_word, out_checksum);

        assert(out_checksum <= 1U);
        if (inp_word == 0U) {
            assert(out_checksum == 0U);
        }
        if (is_power_of_two16(inp_word)) {
            assert(out_checksum == 1U);
        }
        assert(out_checksum == ((builtin_parity_cb((uint16_t)inp_low) ^ builtin_parity_cb((uint16_t)inp_high)) & 1U));
    }

    return 0;
}
