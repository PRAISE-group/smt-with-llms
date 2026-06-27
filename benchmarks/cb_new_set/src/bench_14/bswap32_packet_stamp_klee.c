#include <assert.h>
#include <stdint.h>

#include <klee/klee.h>

__attribute__((noinline))
uint32_t builtin_bswap32_cb(uint16_t inp_hi, uint16_t inp_lo) {
    uint32_t inp_stamp = ((uint32_t)inp_hi << 16) | (uint32_t)inp_lo;
    uint32_t out_stamp = __builtin_bswap32(inp_stamp);
    return out_stamp;
}

int main(void) {
    uint16_t inp_hi;
    uint16_t inp_lo;

    klee_make_symbolic(&inp_hi, sizeof(inp_hi), "inp_hi");
    klee_make_symbolic(&inp_lo, sizeof(inp_lo), "inp_lo");

    uint32_t out_stamp = builtin_bswap32_cb(inp_hi, inp_lo);

    assert(out_stamp == ((((uint32_t)__builtin_bswap16(inp_lo)) << 16) | (uint32_t)__builtin_bswap16(inp_hi)));
    if (inp_hi == __builtin_bswap16(inp_lo)) {
        assert(out_stamp == ((((uint32_t)inp_hi) << 16) | (uint32_t)inp_lo));
    }

    return 0;
}
