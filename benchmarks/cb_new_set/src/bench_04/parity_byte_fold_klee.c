#include <assert.h>
#include <stdint.h>

#include <klee/klee.h>

__attribute__((noinline))
unsigned int builtin_parity_cb(uint16_t inp_frame) {
    unsigned int out_checksum = (unsigned int)__builtin_parity((unsigned int)inp_frame);
    return out_checksum;
}

int main(void) {
    uint16_t inp_frame;
    uint8_t inp_low;
    uint8_t inp_high;
    unsigned int out_checksum;

    klee_make_symbolic(&inp_frame, sizeof(inp_frame), "inp_frame");

    inp_low = (uint8_t)(inp_frame & 0x00FFU);
    inp_high = (uint8_t)(inp_frame >> 8);
    out_checksum = builtin_parity_cb(inp_frame);

    assert(out_checksum == ((builtin_parity_cb((uint16_t)inp_low) ^ builtin_parity_cb((uint16_t)inp_high)) & 1U));
    assert(out_checksum == builtin_parity_cb(__builtin_bswap16(inp_frame)));
    if (inp_low == inp_high) {
        assert(out_checksum == 0U);
    }
    if (inp_frame == 0x0000U || inp_frame == 0xFFFFU) {
        assert(out_checksum == 0U);
    }

    return 0;
}
