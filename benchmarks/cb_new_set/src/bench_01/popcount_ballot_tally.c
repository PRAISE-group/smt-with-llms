#include <assert.h>
#include <stdint.h>
#include <stdio.h>

static int is_power_of_two16(uint16_t inp_mask) {
    return inp_mask != 0U && (inp_mask & (uint16_t)(inp_mask - 1U)) == 0U;
}

__attribute__((noinline))
unsigned int builtin_popcount_cb(uint16_t inp_ballot) {
    unsigned int out_votes = (unsigned int)__builtin_popcount((unsigned int)inp_ballot);
    return out_votes;
}

int main(void) {
    const uint16_t inp_ballots[] = {0x0000U, 0x0001U, 0x00FFU, 0x0F0FU, 0x3333U, 0x8000U, 0xFFFFU};

    for (unsigned int inp_index = 0U; inp_index < sizeof(inp_ballots) / sizeof(inp_ballots[0]); ++inp_index) {
        uint16_t inp_ballot = inp_ballots[inp_index];
        unsigned int out_votes = builtin_popcount_cb(inp_ballot);

        printf("ballot 0x%04x -> %u marked seats\n", inp_ballot, out_votes);

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
    }

    return 0;
}
