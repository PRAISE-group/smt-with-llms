#include <assert.h>
#include <stdint.h>

#include <klee/klee.h>

uint16_t decimal_length_cb(uint16_t inp_value) {
    uint16_t out_digits = 1U;

    while (inp_value >= 10U) {
        inp_value = (uint16_t)(inp_value / 10U);
        ++out_digits;
    }

    return out_digits;
}

int main(void) {
    uint16_t inp_value;
    uint16_t out_digits;

    klee_make_symbolic(&inp_value, sizeof(inp_value), "inp_value");

    out_digits = decimal_length_cb(inp_value);

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

    return 0;
}
