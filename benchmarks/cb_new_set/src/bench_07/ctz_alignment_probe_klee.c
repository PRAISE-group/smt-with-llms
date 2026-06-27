#include <assert.h>
#include <stdint.h>

#include <klee/klee.h>

__attribute__((noinline))
unsigned int builtin_ctz_cb(uint16_t inp_addr) {
    unsigned int out_trailing_zeros = (unsigned int)__builtin_ctz((unsigned int)inp_addr);
    return out_trailing_zeros;
}

int main(void) {
    uint16_t inp_addr;

    klee_make_symbolic(&inp_addr, sizeof(inp_addr), "inp_addr");

    if (inp_addr != 0U) {
        unsigned int out_trailing_zeros = builtin_ctz_cb(inp_addr);

        assert(out_trailing_zeros <= 15U);
        assert((((uint32_t)inp_addr >> out_trailing_zeros) & 1U) == 1U);
        if (out_trailing_zeros > 0U) {
            assert((((uint32_t)inp_addr) & (((uint32_t)1U << out_trailing_zeros) - 1U)) == 0U);
        }
        if ((inp_addr & 1U) != 0U) {
            assert(out_trailing_zeros == 0U);
        }
    }

    return 0;
}
