#include <assert.h>
#include <stdint.h>

#include <klee/klee.h>

static int is_power_of_two16(uint16_t inp_mask) {
    return inp_mask != 0U && (inp_mask & (uint16_t)(inp_mask - 1U)) == 0U;
}

__attribute__((noinline))
unsigned int builtin_parity_cb(uint16_t inp_word) {
    unsigned int out_checksum = (unsigned int)__builtin_parity((unsigned int)inp_word);
    return out_checksum;
}

int main(void) {
    uint16_t inp_word;
    uint8_t inp_low;
    uint8_t inp_high;
    unsigned int out_checksum;

    klee_make_symbolic(&inp_word, sizeof(inp_word), "inp_word");

    inp_low = (uint8_t)(inp_word & 0x00FFU);
    inp_high = (uint8_t)(inp_word >> 8);
    out_checksum = builtin_parity_cb(inp_word);

    assert(out_checksum <= 1U);
    if (inp_word == 0U) {
        assert(out_checksum == 0U);
    }
    if (is_power_of_two16(inp_word)) {
        assert(out_checksum == 1U);
    }
    assert(out_checksum == ((builtin_parity_cb((uint16_t)inp_low) ^ builtin_parity_cb((uint16_t)inp_high)) & 1U));

    return 0;
}
