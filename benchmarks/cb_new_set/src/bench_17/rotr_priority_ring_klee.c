#include <assert.h>
#include <stdint.h>

#include <klee/klee.h>

__attribute__((noinline))
uint16_t builtin_rotateright16_cb(uint16_t inp_mask, uint16_t inp_steps) {
    uint16_t out_rotated = __builtin_rotateright16(inp_mask, (unsigned int)inp_steps);
    return out_rotated;
}

int main(void) {
    uint16_t inp_mask;
    uint16_t inp_steps;
    uint16_t out_rotated;

    klee_make_symbolic(&inp_mask, sizeof(inp_mask), "inp_mask");
    klee_make_symbolic(&inp_steps, sizeof(inp_steps), "inp_steps");

    out_rotated = builtin_rotateright16_cb(inp_mask, inp_steps);

    assert(builtin_rotateright16_cb(inp_mask, 0U) == inp_mask);
    assert(builtin_rotateright16_cb(inp_mask, 16U) == inp_mask);
    assert(builtin_rotateright16_cb(out_rotated, (uint16_t)(16U - (inp_steps & 15U))) == inp_mask);
    assert(builtin_rotateright16_cb(builtin_rotateright16_cb(inp_mask, inp_steps), 5U) ==
           builtin_rotateright16_cb(inp_mask, (uint16_t)((inp_steps + 5U) & 15U)));
    if (inp_mask == 0x0000U || inp_mask == 0xFFFFU) {
        assert(out_rotated == inp_mask);
    }

    return 0;
}
