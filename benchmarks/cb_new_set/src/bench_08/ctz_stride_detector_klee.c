#include <assert.h>
#include <stdint.h>

#include <klee/klee.h>

__attribute__((noinline))
unsigned int builtin_ctz_cb(uint16_t inp_mask) {
    unsigned int out_stride = (unsigned int)__builtin_ctz((unsigned int)inp_mask);
    return out_stride;
}

int main(void) {
    uint16_t inp_mask;

    klee_make_symbolic(&inp_mask, sizeof(inp_mask), "inp_mask");

    if (inp_mask != 0U) {
        unsigned int out_stride = builtin_ctz_cb(inp_mask);

        assert(out_stride <= 15U);
        if ((inp_mask & 0x00FFU) == 0U) {
            assert(out_stride >= 8U);
        }
        if ((inp_mask & 0x000FU) != 0U) {
            assert(out_stride <= 3U);
        }
        if ((inp_mask & 1U) == 0U) {
            assert(builtin_ctz_cb((uint16_t)(inp_mask >> 1U)) + 1U == out_stride);
        }
    }

    return 0;
}
