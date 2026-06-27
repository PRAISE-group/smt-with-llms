#include <assert.h>
#include <limits.h>
#include <stdint.h>
#include <stdio.h>

__attribute__((noinline))
unsigned int builtin_clz_cb(uint16_t inp_code) {
    unsigned int out_prefix_zeros =
        (unsigned int)(__builtin_clz((unsigned int)inp_code) - ((int)(sizeof(unsigned int) * CHAR_BIT) - 16));
    return out_prefix_zeros;
}

int main(void) {
    const uint16_t inp_codes[] = {0x0000U, 0x0001U, 0x0002U, 0x00F0U, 0x0FFFU, 0x8000U, 0xFFFFU};

    for (unsigned int inp_index = 0U; inp_index < sizeof(inp_codes) / sizeof(inp_codes[0]); ++inp_index) {
        uint16_t inp_code = inp_codes[inp_index];

        if (inp_code == 0U) {
            printf("prefix code 0x%04x -> skipped because __builtin_clz is undefined on zero\n", inp_code);
            continue;
        }

        unsigned int out_prefix_zeros = builtin_clz_cb(inp_code);

        printf("prefix code 0x%04x -> %u leading zeros\n", inp_code, out_prefix_zeros);

        assert(out_prefix_zeros <= 15U);
        assert((uint32_t)inp_code >= (1U << (15U - out_prefix_zeros)));
        assert((uint32_t)inp_code < (1U << (16U - out_prefix_zeros)));
        if ((inp_code & 0x8000U) != 0U) {
            assert(out_prefix_zeros == 0U);
        }
    }

    return 0;
}
