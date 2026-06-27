#include <assert.h>
#include <stdint.h>

#include <klee/klee.h>

__attribute__((noinline))
int builtin_ffs_cb(uint16_t inp_mask) {
    int out_index = __builtin_ffs((int)inp_mask);
    return out_index;
}

int main(void) {
    uint16_t inp_mask;

    klee_make_symbolic(&inp_mask, sizeof(inp_mask), "inp_mask");

    int out_index = builtin_ffs_cb(inp_mask);

    assert(out_index >= 0);
    assert(out_index <= 16);
    if (inp_mask == 0U) {
        assert(out_index == 0);
    } else {
        if ((inp_mask & 0x00FFU) != 0U) {
            assert(out_index <= 8);
        }
        if ((inp_mask & 0x00FFU) == 0U) {
            assert(out_index >= 9);
        }
        if ((inp_mask & 0x8000U) == 0U) {
            assert(builtin_ffs_cb((uint16_t)(inp_mask << 1U)) == out_index + 1);
        }
    }

    return 0;
}
