#include <assert.h>
#include <stdint.h>

#include <klee/klee.h>

static int is_power_of_two16(uint16_t inp_mask) {
    return inp_mask != 0U && (inp_mask & (uint16_t)(inp_mask - 1U)) == 0U;
}

__attribute__((noinline))
unsigned int builtin_popcount_cb(uint16_t inp_ballot) {
    unsigned int out_votes = (unsigned int)__builtin_popcount((unsigned int)inp_ballot);
    return out_votes;
}

int main(void) {
    uint16_t inp_ballot;
    unsigned int out_votes;

    klee_make_symbolic(&inp_ballot, sizeof(inp_ballot), "inp_ballot");

    out_votes = builtin_popcount_cb(inp_ballot);

    assert(out_votes + builtin_popcount_cb((uint16_t)~inp_ballot) == 16U);
    if (inp_ballot == 0xFFFFU) {
        assert(out_votes == 16U);
    }
    if (inp_ballot == 0U) {
        assert(out_votes == 0U);
    }
    if (is_power_of_two16(inp_ballot)) {
        assert(out_votes == 1U);
    }
    if ((uint8_t)inp_ballot == (uint8_t)(inp_ballot >> 8)) {
        assert((out_votes & 1U) == 0U);
    }

    return 0;
}
