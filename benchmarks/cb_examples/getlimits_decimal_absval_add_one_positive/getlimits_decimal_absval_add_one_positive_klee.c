#include <stdint.h>
#include <stddef.h>
#include <string.h>

#include "klee/klee.h"

#define DECIMAL_BUF_SLOTS 10

static char *decimal_absval_add_one_cb(char *buf) {
  int negative = (buf[1] == '-');
  char *absnum = buf + 1 + negative;
  char *p = absnum + strlen(absnum);

  absnum[-1] = '0';
  while (*--p == '9')
    *p = '0';
  ++*p;

  if (negative) {
    char *result = absnum < p ? absnum : p;
    *--result = '-';
    return result;
  }

  return absnum < p ? absnum : p;
}

static int is_valid_positive(const char *result) {
  size_t i;
  size_t result_len;
  int has_nonzero_digit = 0;

  if (result[0] < '0' || result[0] > '9')
    return 0;

  result_len = strlen(result);
  if (result_len == 0)
    return 0;

  for (i = 0; i < result_len; ++i) {
    unsigned char c = (unsigned char)result[i];
    if (c < '0' || c > '9')
      return 0;
    if (c != '0')
      has_nonzero_digit = 1;
  }

  return has_nonzero_digit;
}

int main(void) {
  uint16_t num_digits;
  uint16_t slot0;
  uint16_t slot1;
  uint16_t slot2;
  uint16_t slot3;
  uint16_t slot4;
  uint16_t slot5;
  uint16_t slot6;
  uint16_t slot7;
  uint16_t slot8;
  uint16_t slot9;
  char buf[DECIMAL_BUF_SLOTS];
  char *result;
  uintptr_t result_index;

  klee_make_symbolic(&num_digits, sizeof(num_digits), "num_digits");
  klee_make_symbolic(&slot0, sizeof(slot0), "slot0");
  klee_make_symbolic(&slot1, sizeof(slot1), "slot1");
  klee_make_symbolic(&slot2, sizeof(slot2), "slot2");
  klee_make_symbolic(&slot3, sizeof(slot3), "slot3");
  klee_make_symbolic(&slot4, sizeof(slot4), "slot4");
  klee_make_symbolic(&slot5, sizeof(slot5), "slot5");
  klee_make_symbolic(&slot6, sizeof(slot6), "slot6");
  klee_make_symbolic(&slot7, sizeof(slot7), "slot7");
  klee_make_symbolic(&slot8, sizeof(slot8), "slot8");
  klee_make_symbolic(&slot9, sizeof(slot9), "slot9");

  klee_assume(num_digits >= 1);
  klee_assume(num_digits <= 7);

  klee_assume(slot0 <= 255);
  klee_assume(slot1 <= 255);
  klee_assume(slot2 <= 255);
  klee_assume(slot3 <= 255);
  klee_assume(slot4 <= 255);
  klee_assume(slot5 <= 255);
  klee_assume(slot6 <= 255);
  klee_assume(slot7 <= 255);
  klee_assume(slot8 <= 255);
  klee_assume(slot9 <= 255);

  klee_assume(slot0 == (uint16_t)'0');
  klee_assume((uint16_t)'1' <= slot1);
  klee_assume(slot1 <= (uint16_t)'9');
  if (num_digits >= 2) {
    klee_assume((uint16_t)'0' <= slot2);
    klee_assume(slot2 <= (uint16_t)'9');
  } else {
    klee_assume(slot2 == 0);
  }

  if (num_digits >= 3) {
    klee_assume((uint16_t)'0' <= slot3);
    klee_assume(slot3 <= (uint16_t)'9');
  } else {
    klee_assume(slot3 == 0);
  }

  if (num_digits >= 4) {
    klee_assume((uint16_t)'0' <= slot4);
    klee_assume(slot4 <= (uint16_t)'9');
  } else {
    klee_assume(slot4 == 0);
  }

  if (num_digits >= 5) {
    klee_assume((uint16_t)'0' <= slot5);
    klee_assume(slot5 <= (uint16_t)'9');
  } else {
    klee_assume(slot5 == 0);
  }

  if (num_digits >= 6) {
    klee_assume((uint16_t)'0' <= slot6);
    klee_assume(slot6 <= (uint16_t)'9');
  } else {
    klee_assume(slot6 == 0);
  }

  if (num_digits >= 7) {
    klee_assume((uint16_t)'0' <= slot7);
    klee_assume(slot7 <= (uint16_t)'9');
  } else {
    klee_assume(slot7 == 0);
  }
  klee_assume(slot8 == 0);
  klee_assume(slot9 == 0);

  buf[0] = (char)slot0;
  buf[1] = (char)slot1;
  buf[2] = (char)slot2;
  buf[3] = (char)slot3;
  buf[4] = (char)slot4;
  buf[5] = (char)slot5;
  buf[6] = (char)slot6;
  buf[7] = (char)slot7;
  buf[8] = (char)slot8;
  buf[9] = (char)slot9;

  result = decimal_absval_add_one_cb(buf);
  if (result != buf && result != buf + 1)
    return 0;
  result_index = (uintptr_t)(result - buf);

  klee_assert(result_index == 0 || result_index == 1);
  klee_assert(is_valid_positive(result));
  klee_assert(strlen(result) == (size_t)num_digits ||
              strlen(result) == (size_t)num_digits + 1);

  return 0;
}
