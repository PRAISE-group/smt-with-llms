#include <assert.h>
#include <stdint.h>

#include <klee/klee.h>

__attribute__((noinline))
uint16_t builtin_bswap16_cb(uint16_t inp_word) {
    uint16_t out_swapped = __builtin_bswap16(inp_word);
    return out_swapped;
}

int main(void) {
    uint16_t inp_word;

    klee_make_symbolic(&inp_word, sizeof(inp_word), "inp_word");

    uint16_t out_swapped = builtin_bswap16_cb(inp_word);

    assert(builtin_bswap16_cb(out_swapped) == inp_word);
    assert((uint16_t)(out_swapped >> 8) == (uint16_t)(inp_word & 0x00FFU));
    assert((uint16_t)(out_swapped & 0x00FFU) == (uint16_t)(inp_word >> 8));
    if ((inp_word & 0x00FFU) == (inp_word >> 8)) {
        assert(out_swapped == inp_word);
    }

    return 0;
}
