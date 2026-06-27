#include <assert.h>
#include <stdint.h>
#include <stdio.h>

uint16_t decimal_length_cb(uint16_t inp_value) {
    uint16_t out_digits = 1U;

    while (inp_value >= 10U) {
        inp_value = (uint16_t)(inp_value / 10U);
        ++out_digits;
    }

    return out_digits;
}

int main(void) {
    const uint16_t inp_values[] = {0U, 7U, 10U, 99U, 100U, 9999U, 65535U};

    for (unsigned int inp_index = 0U; inp_index < sizeof(inp_values) / sizeof(inp_values[0]); ++inp_index) {
        uint16_t inp_value = inp_values[inp_index];
        uint16_t out_digits = decimal_length_cb(inp_value);

        printf("value %u -> decimal digits %u\n", inp_value, out_digits);

        assert(out_digits >= 1U);
        assert(out_digits <= 5U);
        if (inp_value < 10U) {
            assert(out_digits == 1U);
        }
        if (inp_value >= 10U && inp_value < 100U) {
            assert(out_digits == 2U);
        }
        if (inp_value >= 10000U) {
            assert(out_digits == 5U);
        }
        if (inp_value >= 10U) {
            assert(out_digits == (uint16_t)(decimal_length_cb((uint16_t)(inp_value / 10U)) + 1U));
        }
    }

    return 0;
}
