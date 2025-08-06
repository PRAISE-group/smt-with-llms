#include "lnia.h"

uint32_t _mul_cb(uint32_t a, uint32_t b) {
  return a * b;
}

uint32_t _mod_cb(uint32_t a, uint32_t b) { return a % b; }

// (declare-fun pow2 (Int) Int)
uint32_t pow2_cb (uint32_t x) {
  return 1 << x;
}

uint32_t intxor3_cb (uint32_t a, uint32_t b, uint32_t c) { return b ^ c; }

uint32_t intand_cb (uint32_t k, uint32_t b, uint32_t c) { return b && c; }
uint32_t intor_cb (uint32_t k, uint32_t b, uint32_t c) { return c || b; }

uint32_t intmodtotal_cb(uint32_t k, uint32_t a, uint32_t b) {
  if (b == 0) return a;
  else return a % b;
}

uint32_t in_range_cb(uint32_t k, uint32_t x) {
  if (x >= 0 && x <= pow2(k))
    return 1;

  return 0;
}

uint32_t _lt_cb(uint32_t a, uint32_t b) {
  if (a < b) return 1;
  else return 0;
}

uint32_t ite_zero_cb (uint32_t x, uint32_t y, uint32_t z) {
  if (x == 0) return y;
  else return z;
}
