#include <assert.h>
#include <stdint.h>
#include <stdio.h>

__attribute__((noinline))
unsigned int builtin_parity_cb(uint16_t inp_frame) {
    unsigned int out_checksum = (unsigned int)__builtin_parity((unsigned int)inp_frame);
    return out_checksum;
}

int main(void) {
    const uint16_t inp_frames[] = {0x0000U, 0x00FFU, 0x5A5AU, 0xA55AU, 0x1234U, 0xFFFFU, 0x8080U};

    for (unsigned int inp_index = 0U; inp_index < sizeof(inp_frames) / sizeof(inp_frames[0]); ++inp_index) {
        uint16_t inp_frame = inp_frames[inp_index];
        uint8_t inp_low = (uint8_t)(inp_frame & 0x00FFU);
        uint8_t inp_high = (uint8_t)(inp_frame >> 8);
        unsigned int out_checksum = builtin_parity_cb(inp_frame);

        printf("frame 0x%04x -> folded parity %u\n", inp_frame, out_checksum);

        assert(out_checksum == ((builtin_parity_cb((uint16_t)inp_low) ^ builtin_parity_cb((uint16_t)inp_high)) & 1U));
        assert(out_checksum == builtin_parity_cb(__builtin_bswap16(inp_frame)));
        if (inp_low == inp_high) {
            assert(out_checksum == 0U);
        }
        if (inp_frame == 0x0000U || inp_frame == 0xFFFFU) {
            assert(out_checksum == 0U);
        }
    }

    return 0;
}
