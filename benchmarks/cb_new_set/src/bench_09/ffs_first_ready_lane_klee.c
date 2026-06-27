#include <assert.h>
#include <stdint.h>

#include <klee/klee.h>

__attribute__((noinline))
int builtin_ffs_cb(uint16_t inp_ready) {
    int out_lane = __builtin_ffs((int)inp_ready);
    return out_lane;
}

int main(void) {
    uint16_t inp_ready;

    klee_make_symbolic(&inp_ready, sizeof(inp_ready), "inp_ready");

    int out_lane = builtin_ffs_cb(inp_ready);

    assert(out_lane >= 0);
    assert(out_lane <= 16);
    if (inp_ready == 0U) {
        assert(out_lane == 0);
    } else {
        assert(out_lane >= 1);
        assert((((uint32_t)inp_ready >> (unsigned int)(out_lane - 1)) & 1U) == 1U);
        if (out_lane > 1) {
            assert((((uint32_t)inp_ready) & (((uint32_t)1U << (unsigned int)(out_lane - 1)) - 1U)) == 0U);
        }
    }

    return 0;
}
