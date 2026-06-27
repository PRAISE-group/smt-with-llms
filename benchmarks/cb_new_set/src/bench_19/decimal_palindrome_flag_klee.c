#include <assert.h>
#include <stdint.h>

#include <klee/klee.h>

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
    uint16_t inp_value;
    int out_flag;

    klee_make_symbolic(&inp_value, sizeof(inp_value), "inp_value");

    out_flag = decimal_palindrome_cb(inp_value);

    assert(out_flag == 0 || out_flag == 1);
    assert(out_flag == (reverse_decimal_ref(inp_value) == inp_value));
    if (inp_value < 10U) {
        assert(out_flag == 1);
    }
    if (inp_value != 0U && (inp_value % 10U) == 0U) {
        assert(out_flag == 0);
    }

    return 0;
}
