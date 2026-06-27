#include <assert.h>
#include <stdint.h>
#include <stdio.h>

uint16_t digit_sum_cb(uint16_t inp_value) {
    uint16_t out_sum = 0U;

    while (inp_value != 0U) {
        out_sum = (uint16_t)(out_sum + (inp_value % 10U));
        inp_value = (uint16_t)(inp_value / 10U);
    }

    return out_sum;
}

int main(void) {
    const uint16_t inp_values[] = {0U, 7U, 10U, 99U, 1234U, 59999U, 65535U};

    for (unsigned int inp_index = 0U; inp_index < sizeof(inp_values) / sizeof(inp_values[0]); ++inp_index) {
        uint16_t inp_value = inp_values[inp_index];
        uint16_t out_sum = digit_sum_cb(inp_value);

        printf("value %u -> digit sum %u\n", inp_value, out_sum);

        assert(out_sum <= 41U);
        if (inp_value < 10U) {
            assert(out_sum == inp_value);
        }
        assert(out_sum == (uint16_t)(digit_sum_cb((uint16_t)(inp_value / 10U)) + (inp_value % 10U)));
        if (inp_value == 0U) {
            assert(out_sum == 0U);
        } else {
            assert(out_sum >= 1U);
        }
    }

    return 0;
}
