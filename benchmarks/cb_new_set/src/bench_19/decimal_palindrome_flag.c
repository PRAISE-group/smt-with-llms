#include <assert.h>
#include <stdint.h>
#include <stdio.h>

static uint16_t reverse_decimal_ref(uint16_t inp_value) {
    uint16_t out_reverse = 0U;

    while (inp_value != 0U) {
        out_reverse = (uint16_t)(out_reverse * 10U + (inp_value % 10U));
        inp_value = (uint16_t)(inp_value / 10U);
    }

    return out_reverse;
}

int decimal_palindrome_cb(uint16_t inp_value) {
    int out_flag = reverse_decimal_ref(inp_value) == inp_value;
    return out_flag;
}

int main(void) {
    const uint16_t inp_values[] = {0U, 7U, 10U, 11U, 101U, 1234U, 65535U};

    for (unsigned int inp_index = 0U; inp_index < sizeof(inp_values) / sizeof(inp_values[0]); ++inp_index) {
        uint16_t inp_value = inp_values[inp_index];
        int out_flag = decimal_palindrome_cb(inp_value);

        printf("value %u -> decimal palindrome %d\n", inp_value, out_flag);

        assert(out_flag == 0 || out_flag == 1);
        assert(out_flag == (reverse_decimal_ref(inp_value) == inp_value));
        if (inp_value < 10U) {
            assert(out_flag == 1);
        }
        if (inp_value != 0U && (inp_value % 10U) == 0U) {
            assert(out_flag == 0);
        }
    }

    return 0;
}
