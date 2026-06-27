#include <assert.h>
#include <stdint.h>

#include <klee/klee.h>

__attribute__((noinline))
uint32_t builtin_bswap32_cb(uint16_t inp_hi, uint16_t inp_lo) {
    uint32_t inp_header = ((uint32_t)inp_hi << 16) | (uint32_t)inp_lo;
    uint32_t out_swapped = __builtin_bswap32(inp_header);
    return out_swapped;
}

int main(void) {
    uint16_t inp_hi;
    uint16_t inp_lo;

    klee_make_symbolic(&inp_hi, sizeof(inp_hi), "inp_hi");
    klee_make_symbolic(&inp_lo, sizeof(inp_lo), "inp_lo");

    uint32_t inp_header = ((uint32_t)inp_hi << 16) | (uint32_t)inp_lo;
    uint32_t out_swapped = builtin_bswap32_cb(inp_hi, inp_lo);

    assert(__builtin_bswap32(out_swapped) == inp_header);
    assert((uint8_t)(out_swapped >> 24) == (uint8_t)(inp_lo & 0x00FFU));
    assert((uint8_t)(out_swapped >> 16) == (uint8_t)(inp_lo >> 8));
    assert((uint8_t)(out_swapped >> 8) == (uint8_t)(inp_hi & 0x00FFU));
    assert((uint8_t)out_swapped == (uint8_t)(inp_hi >> 8));

    return 0;
}
