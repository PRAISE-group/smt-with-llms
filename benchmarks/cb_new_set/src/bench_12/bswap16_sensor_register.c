#include <assert.h>
#include <stdint.h>
#include <stdio.h>

__attribute__((noinline))
uint16_t builtin_bswap16_cb(uint16_t inp_register) {
    uint16_t out_network = __builtin_bswap16(inp_register);
    return out_network;
}

int main(void) {
    const uint16_t inp_registers[] = {0x0000U, 0x00FFU, 0x1234U, 0xABCDU, 0x55AAU, 0x8080U, 0xFFFFU};

    for (unsigned int inp_index = 0U; inp_index < sizeof(inp_registers) / sizeof(inp_registers[0]); ++inp_index) {
        uint16_t inp_register = inp_registers[inp_index];
        uint16_t out_network = builtin_bswap16_cb(inp_register);

        printf("register 0x%04x -> network order 0x%04x\n", inp_register, out_network);

        assert(builtin_bswap16_cb(out_network) == inp_register);
        assert(builtin_bswap16_cb((uint16_t)(inp_register ^ 0x00FFU)) == (uint16_t)(out_network ^ 0xFF00U));
        if ((inp_register & 0x00FFU) == (inp_register >> 8)) {
            assert(out_network == inp_register);
        }
    }

    return 0;
}
