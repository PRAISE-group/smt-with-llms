#include <assert.h>
#include <stdint.h>

#include <klee/klee.h>

__attribute__((noinline))
uint16_t builtin_rotateleft16_cb(uint16_t inp_flags, uint16_t inp_steps) {
    uint16_t out_rotated = __builtin_rotateleft16(inp_flags, (unsigned int)inp_steps);
    return out_rotated;
}

int main(void) {
    uint16_t inp_flags;
    uint16_t inp_steps;
    uint16_t out_rotated;

    klee_make_symbolic(&inp_flags, sizeof(inp_flags), "inp_flags");
    klee_make_symbolic(&inp_steps, sizeof(inp_steps), "inp_steps");

    out_rotated = builtin_rotateleft16_cb(inp_flags, inp_steps);

    assert(builtin_rotateleft16_cb(inp_flags, 0U) == inp_flags);
    assert(builtin_rotateleft16_cb(inp_flags, 16U) == inp_flags);
    assert(builtin_rotateleft16_cb(out_rotated, (uint16_t)(16U - (inp_steps & 15U))) == inp_flags);
    assert(builtin_rotateleft16_cb(builtin_rotateleft16_cb(inp_flags, inp_steps), 3U) ==
           builtin_rotateleft16_cb(inp_flags, (uint16_t)((inp_steps + 3U) & 15U)));
    if (inp_flags == 0x0000U || inp_flags == 0xFFFFU) {
        assert(out_rotated == inp_flags);
    }

    return 0;
}
