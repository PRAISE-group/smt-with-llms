#include <assert.h>
#include <stdint.h>
#include <stdio.h>

__attribute__((noinline))
unsigned int builtin_ctz_cb(uint16_t inp_addr) {
    unsigned int out_trailing_zeros = (unsigned int)__builtin_ctz((unsigned int)inp_addr);
    return out_trailing_zeros;
}

int main(void) {
    const uint16_t inp_addrs[] = {0x0000U, 0x0001U, 0x0002U, 0x0008U, 0x00F0U, 0x1200U, 0x8000U};

    for (unsigned int inp_index = 0U; inp_index < sizeof(inp_addrs) / sizeof(inp_addrs[0]); ++inp_index) {
        uint16_t inp_addr = inp_addrs[inp_index];

        if (inp_addr == 0U) {
            printf("address 0x%04x -> skipped because __builtin_ctz is undefined on zero\n", inp_addr);
            continue;
        }

        unsigned int out_trailing_zeros = builtin_ctz_cb(inp_addr);

        printf("address 0x%04x -> %u trailing zeros\n", inp_addr, out_trailing_zeros);

        assert(out_trailing_zeros <= 15U);
        assert(((uint32_t)inp_addr >> out_trailing_zeros) & 1U);
        if (out_trailing_zeros > 0U) {
            assert((((uint32_t)1U << out_trailing_zeros) - 1U & inp_addr) == 0U);
        }
        if ((inp_addr & 1U) != 0U) {
            assert(out_trailing_zeros == 0U);
        }
    }

    return 0;
}
