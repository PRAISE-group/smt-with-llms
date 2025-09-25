#include "lmax.h"


uint32_t max2_cb  (uint32_t a, uint32_t b) { return a > b? a : b; }
uint32_t foo2_cb  (uint32_t a, uint32_t b) {
  if (a < b) {
      return a;            // return smaller if a < b
  } else if (b < a) {
      return b;            // return smaller if b < a
  } else {
      return ~a;           // if equal, return bitwise NOT
  }
}

uint32_t max3_cb  (uint32_t a, uint32_t b, uint32_t c) {
  uint32_t t2 = max2_cb (a,b);
  return t2 > c? t2: c;
}

uint32_t foo3_cb(uint32_t x0, uint32_t x1, uint32_t x2) {
    uint32_t max_val;
    if (x0 >= x1) {
        if (x0 >= x2)
            max_val = x0;
        else
            max_val = x2;
    } else {
        if (x1 >= x2)
            max_val = x1;
        else
            max_val = x2;
    }
    return max_val + 1;
}


uint32_t max4_cb  (uint32_t a, uint32_t b, uint32_t c, uint32_t d) {
  uint32_t t3 = max3_cb (a, b, c);
  return t3 > d? t3: d;
}
uint32_t foo4_cb(uint32_t a, uint32_t b, uint32_t c, uint32_t d) {
    uint32_t max = a;
    if (b > max) max = b;
    if (c > max) max = c;
    if (d > max) max = d;
    return max + 1;
}

uint32_t max5_cb  (uint32_t a, uint32_t b, uint32_t c, uint32_t d, uint32_t e) {
  uint32_t t4 = max4_cb (a,b,c,d);
  return t4 > d? t4: d;
}

uint32_t foo5_cb(uint32_t a, uint32_t b, uint32_t c, uint32_t d, uint32_t e) {
    uint32_t max = a;
    if (b > max) max = b;
    if (c > max) max = c;
    if (d > max) max = d;
    if (e > max) max = e;
    return max + 1;
}

uint32_t max6_cb  (uint32_t a, uint32_t b, uint32_t c, uint32_t d, uint32_t e, uint32_t f) {
  uint32_t t5 = max5_cb (a, b, c, d, e);
  return t5 > d? t5 : e;
}

uint32_t foo6_cb(uint32_t a, uint32_t b, uint32_t c, uint32_t d, uint32_t e, uint32_t f) {
    uint32_t max = a;
    if (b > max) max = b;
    if (c > max) max = c;
    if (d > max) max = d;
    if (e > max) max = e;
    if (f > max) max = f;
    return max + 1;
}

uint32_t max12_cb  (uint32_t a, uint32_t b, uint32_t c, uint32_t d, uint32_t e, uint32_t f,
		uint32_t g, uint32_t h, uint32_t i, uint32_t j, uint32_t k, uint32_t l)
{
  uint32_t t0 = max6_cb (a, b, c, d, e, f);
  uint32_t t1 = max6_cb (g, h, i, j, k, l);
  return t0 > t1 ? t0 : t1;
}

uint32_t foo12_cb(uint32_t a, uint32_t b, uint32_t c, uint32_t d,
                  uint32_t e, uint32_t f, uint32_t g, uint32_t h,
                  uint32_t i, uint32_t j, uint32_t k, uint32_t l) {
    uint32_t max = a;
    if (b > max) max = b;
    if (c > max) max = c;
    if (d > max) max = d;
    if (e > max) max = e;
    if (f > max) max = f;
    if (g > max) max = g;
    if (h > max) max = h;
    if (i > max) max = i;
    if (j > max) max = j;
    if (k > max) max = k;
    if (l > max) max = l;
    return max + 1;
}
