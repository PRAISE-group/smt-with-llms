#include "lmax.h"


uint32_t max2 (uint32_t a, uint32_t b) { return a > b? a : b; }

uint32_t max3 (uint32_t a, uint32_t b, uint32_t c) {
  uint32_t t2 = max2(a,b);
  return t2 > c? t2: c;
}

uint32_t max4 (uint32_t a, uint32_t b, uint32_t c, uint32_t d) {
  uint32_t t3 = max3(a, b, c);
  return t3 > d? t3: d;
}

uint32_t max5 (uint32_t a, uint32_t b, uint32_t c, uint32_t d, uint32_t e) {
  uint32_t t4 = max4(a,b,c,d);
  return t4 > d? t4: d;
}

uint32_t max6 (uint32_t a, uint32_t b, uint32_t c, uint32_t d, uint32_t e, uint32_t f) {
  uint32_t t5 = max5(a, b, c, d, e);
  return t5 > d? t5 : e;
}


uint32_t max12 (uint32_t a, uint32_t b, uint32_t c, uint32_t d, uint32_t e, uint32_t f,
		uint32_t g, uint32_t h, uint32_t i, uint32_t j, uint32_t k, uint32_t l)
{
  uint32_t t0 = max6(a, b, c, d, e, f);
  uint32_t t1 = max6(g, h, i, j, k, l);
  return t0 > t1 ? t0 : t1;
}

