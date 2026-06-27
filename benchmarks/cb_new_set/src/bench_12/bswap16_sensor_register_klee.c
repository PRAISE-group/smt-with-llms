#include <assert.h>
#include <stdint.h>

#include <klee/klee.h>

__attribute__((noinline))
uint16_t builtin_bswap16_cb(uint16_t inp_register) {
    uint16_t out_network = __builtin_bswap16(inp_register);
    return out_network;
}

int main(void) {
    uint16_t inp_register;

    klee_make_symbolic(&inp_register, sizeof(inp_register), "inp_register");

    uint16_t out_network = builtin_bswap16_cb(inp_register);

    assert(builtin_bswap16_cb(out_network) == inp_register);
    assert(builtin_bswap16_cb((uint16_t)(inp_register ^ 0x00FFU)) == (uint16_t)(out_network ^ 0xFF00U));
    if ((inp_register & 0x00FFU) == (inp_register >> 8)) {
        assert(out_network == inp_register);
    }

    return 0;
}
