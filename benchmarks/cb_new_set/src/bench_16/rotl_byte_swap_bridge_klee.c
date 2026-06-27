#include <assert.h>
#include <stdint.h>

#include <klee/klee.h>

__attribute__((noinline))
uint16_t builtin_rotateleft16_cb(uint16_t inp_word, uint16_t inp_steps) {
    uint16_t out_rotated = __builtin_rotateleft16(inp_word, (unsigned int)inp_steps);
    return out_rotated;
}

int main(void) {
    uint16_t inp_word;
    uint16_t out_rot8;

    klee_make_symbolic(&inp_word, sizeof(inp_word), "inp_word");

    out_rot8 = builtin_rotateleft16_cb(inp_word, 8U);

    assert(out_rot8 == __builtin_bswap16(inp_word));
    assert(builtin_rotateleft16_cb(builtin_rotateleft16_cb(inp_word, 4U), 4U) == out_rot8);
    assert(builtin_rotateleft16_cb(inp_word, 8U) == builtin_rotateleft16_cb(inp_word, 24U));
    if ((uint8_t)inp_word == (uint8_t)(inp_word >> 8)) {
        assert(out_rot8 == inp_word);
    }

    return 0;
}
