#include <assert.h>
#include <stdint.h>

#include <klee/klee.h>

__attribute__((noinline))
unsigned int builtin_popcount_cb(uint16_t inp_window) {
    unsigned int out_active = (unsigned int)__builtin_popcount((unsigned int)inp_window);
    return out_active;
}

int main(void) {
    uint16_t inp_window;
    uint8_t inp_low;
    uint8_t inp_high;
    unsigned int out_active;

    klee_make_symbolic(&inp_window, sizeof(inp_window), "inp_window");

    inp_low = (uint8_t)(inp_window & 0x00FFU);
    inp_high = (uint8_t)(inp_window >> 8);
    out_active = builtin_popcount_cb(inp_window);

    assert(out_active == builtin_popcount_cb((uint16_t)inp_low) + builtin_popcount_cb((uint16_t)inp_high));
    if (inp_low == inp_high) {
        assert(out_active == 2U * builtin_popcount_cb((uint16_t)inp_low));
    }
    if (inp_low == 0U) {
        assert(out_active == builtin_popcount_cb((uint16_t)inp_high));
    }

    return 0;
}
