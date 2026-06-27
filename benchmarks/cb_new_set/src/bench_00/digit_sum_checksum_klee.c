#include <assert.h>
#include <stdint.h>

#include <klee/klee.h>

uint16_t digit_sum_cb(uint16_t inp_value) {
    uint16_t out_sum = 0U;

    while (inp_value != 0U) {
        out_sum = (uint16_t)(out_sum + (inp_value % 10U));
        inp_value = (uint16_t)(inp_value / 10U);
    }

    return out_sum;
}

int main(void) {
    uint16_t inp_value;
    uint16_t out_sum;

    klee_make_symbolic(&inp_value, sizeof(inp_value), "inp_value");

    out_sum = digit_sum_cb(inp_value);

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

    return 0;
}
