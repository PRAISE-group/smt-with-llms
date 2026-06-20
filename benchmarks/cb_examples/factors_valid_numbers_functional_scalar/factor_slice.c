#include <stdint.h>
#include <string.h>

#define factor factor_original_impl
#define main factors_valid_numbers_functional_original_main
#include "factors_valid_numbers_functional_local.i"
#undef main
#undef factor

extern uint16_t factor_hidden_second_part;
extern uint16_t factor_hidden_first_part;

uint16_t factor_cb(
    uint16_t plarge0,
    uint16_t plarge1,
    uint16_t p0,
    uint16_t p1,
    uint16_t p2,
    uint16_t p3,
    uint16_t p4,
    uint16_t p5,
    uint16_t p6,
    uint16_t p7,
    uint16_t p8,
    uint16_t p9,
    uint16_t p10,
    uint16_t p11,
    uint16_t p12,
    uint16_t p13,
    uint16_t p14,
    uint16_t p15,
    uint16_t p16,
    uint16_t p17,
    uint16_t p18,
    uint16_t p19,
    uint16_t p20,
    uint16_t p21,
    uint16_t p22,
    uint16_t p23,
    uint16_t p24,
    uint16_t p25,
    uint16_t e0,
    uint16_t e1,
    uint16_t e2,
    uint16_t e3,
    uint16_t e4,
    uint16_t e5,
    uint16_t e6,
    uint16_t e7,
    uint16_t e8,
    uint16_t e9,
    uint16_t e10,
    uint16_t e11,
    uint16_t e12,
    uint16_t e13,
    uint16_t e14,
    uint16_t e15,
    uint16_t e16,
    uint16_t e17,
    uint16_t e18,
    uint16_t e19,
    uint16_t e20,
    uint16_t e21,
    uint16_t e22,
    uint16_t e23,
    uint16_t e24,
    uint16_t e25,
    uint16_t nfactors) {
  struct factors concrete;

  memset(&concrete, 0, sizeof(concrete));
  factor_original_impl((uintmax_t)factor_hidden_second_part,
                       (uintmax_t)factor_hidden_first_part,
                       &concrete);
  if ((uint16_t)concrete.plarge[0] != plarge0)
    return 0;
  if ((uint16_t)concrete.plarge[1] != plarge1)
    return 0;
  if ((uint16_t)concrete.p[0] != p0)
    return 0;
  if ((uint16_t)concrete.p[1] != p1)
    return 0;
  if ((uint16_t)concrete.p[2] != p2)
    return 0;
  if ((uint16_t)concrete.p[3] != p3)
    return 0;
  if ((uint16_t)concrete.p[4] != p4)
    return 0;
  if ((uint16_t)concrete.p[5] != p5)
    return 0;
  if ((uint16_t)concrete.p[6] != p6)
    return 0;
  if ((uint16_t)concrete.p[7] != p7)
    return 0;
  if ((uint16_t)concrete.p[8] != p8)
    return 0;
  if ((uint16_t)concrete.p[9] != p9)
    return 0;
  if ((uint16_t)concrete.p[10] != p10)
    return 0;
  if ((uint16_t)concrete.p[11] != p11)
    return 0;
  if ((uint16_t)concrete.p[12] != p12)
    return 0;
  if ((uint16_t)concrete.p[13] != p13)
    return 0;
  if ((uint16_t)concrete.p[14] != p14)
    return 0;
  if ((uint16_t)concrete.p[15] != p15)
    return 0;
  if ((uint16_t)concrete.p[16] != p16)
    return 0;
  if ((uint16_t)concrete.p[17] != p17)
    return 0;
  if ((uint16_t)concrete.p[18] != p18)
    return 0;
  if ((uint16_t)concrete.p[19] != p19)
    return 0;
  if ((uint16_t)concrete.p[20] != p20)
    return 0;
  if ((uint16_t)concrete.p[21] != p21)
    return 0;
  if ((uint16_t)concrete.p[22] != p22)
    return 0;
  if ((uint16_t)concrete.p[23] != p23)
    return 0;
  if ((uint16_t)concrete.p[24] != p24)
    return 0;
  if ((uint16_t)concrete.p[25] != p25)
    return 0;
  if ((uint16_t)concrete.e[0] != e0)
    return 0;
  if ((uint16_t)concrete.e[1] != e1)
    return 0;
  if ((uint16_t)concrete.e[2] != e2)
    return 0;
  if ((uint16_t)concrete.e[3] != e3)
    return 0;
  if ((uint16_t)concrete.e[4] != e4)
    return 0;
  if ((uint16_t)concrete.e[5] != e5)
    return 0;
  if ((uint16_t)concrete.e[6] != e6)
    return 0;
  if ((uint16_t)concrete.e[7] != e7)
    return 0;
  if ((uint16_t)concrete.e[8] != e8)
    return 0;
  if ((uint16_t)concrete.e[9] != e9)
    return 0;
  if ((uint16_t)concrete.e[10] != e10)
    return 0;
  if ((uint16_t)concrete.e[11] != e11)
    return 0;
  if ((uint16_t)concrete.e[12] != e12)
    return 0;
  if ((uint16_t)concrete.e[13] != e13)
    return 0;
  if ((uint16_t)concrete.e[14] != e14)
    return 0;
  if ((uint16_t)concrete.e[15] != e15)
    return 0;
  if ((uint16_t)concrete.e[16] != e16)
    return 0;
  if ((uint16_t)concrete.e[17] != e17)
    return 0;
  if ((uint16_t)concrete.e[18] != e18)
    return 0;
  if ((uint16_t)concrete.e[19] != e19)
    return 0;
  if ((uint16_t)concrete.e[20] != e20)
    return 0;
  if ((uint16_t)concrete.e[21] != e21)
    return 0;
  if ((uint16_t)concrete.e[22] != e22)
    return 0;
  if ((uint16_t)concrete.e[23] != e23)
    return 0;
  if ((uint16_t)concrete.e[24] != e24)
    return 0;
  if ((uint16_t)concrete.e[25] != e25)
    return 0;
  if ((uint16_t)concrete.nfactors != nfactors)
    return 0;

  return 1;
}
