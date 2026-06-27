#include <assert.h>
#include <limits.h>
#include <stdint.h>

#include <klee/klee.h>

__attribute__((noinline))
unsigned int builtin_clz_cb(uint16_t inp_code) {
    unsigned int out_prefix_zeros =
        (unsigned int)(__builtin_clz((unsigned int)inp_code) - ((int)(sizeof(unsigned int) * CHAR_BIT) - 16));
    return out_prefix_zeros;
}

int main(void) {
    uint16_t inp_code;

    klee_make_symbolic(&inp_code, sizeof(inp_code), "inp_code");

    if (inp_code != 0U) {
        unsigned int out_prefix_zeros = builtin_clz_cb(inp_code);

        assert(out_prefix_zeros <= 15U);
        assert((uint32_t)inp_code >= (1U << (15U - out_prefix_zeros)));
        assert((uint32_t)inp_code < (1U << (16U - out_prefix_zeros)));
        if ((inp_code & 0x8000U) != 0U) {
            assert(out_prefix_zeros == 0U);
        }
    }

    return 0;
}
