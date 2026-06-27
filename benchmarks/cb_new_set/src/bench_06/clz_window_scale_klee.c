#include <assert.h>
#include <limits.h>
#include <stdint.h>

#include <klee/klee.h>

__attribute__((noinline))
unsigned int builtin_clz_cb(uint16_t inp_window) {
    unsigned int out_scale =
        (unsigned int)(__builtin_clz((unsigned int)inp_window) - ((int)(sizeof(unsigned int) * CHAR_BIT) - 16));
    return out_scale;
}

int main(void) {
    uint16_t inp_window;

    klee_make_symbolic(&inp_window, sizeof(inp_window), "inp_window");

    if (inp_window != 0U) {
        unsigned int out_scale = builtin_clz_cb(inp_window);

        assert(out_scale <= 15U);
        if ((inp_window & 0xFF00U) == 0U) {
            assert(out_scale >= 8U);
        }
        if ((inp_window & 0xF000U) != 0U) {
            assert(out_scale <= 3U);
        }
        if ((inp_window & 0x8000U) == 0U) {
            assert(builtin_clz_cb((uint16_t)(inp_window << 1U)) + 1U == out_scale);
        }
    }

    return 0;
}
