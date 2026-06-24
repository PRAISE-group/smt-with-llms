#include <stdint.h>
#include <stddef.h>
#include <string.h>

#include "klee/klee.h"

#define DECIMAL_BUF_SLOTS 10

static void init_positive_cb(char *buf, uint16_t num_digits, uint16_t digit0,
                             uint16_t digit1, uint16_t digit2, uint16_t digit3,
                             uint16_t digit4, uint16_t digit5,
                             uint16_t digit6) {
  buf[0] = '0';
  buf[1] = (char)digit0;

  if (num_digits >= 2)
    buf[2] = (char)digit1;
  else
    buf[2] = '\0';

  if (num_digits >= 3)
    buf[3] = (char)digit2;
  else if (num_digits == 2)
    buf[3] = '\0';

  if (num_digits >= 4)
    buf[4] = (char)digit3;
  else if (num_digits == 3)
    buf[4] = '\0';

  if (num_digits >= 5)
    buf[5] = (char)digit4;
  else if (num_digits == 4)
    buf[5] = '\0';

  if (num_digits >= 6)
    buf[6] = (char)digit5;
  else if (num_digits == 5)
    buf[6] = '\0';

  if (num_digits >= 7)
    buf[7] = (char)digit6;
  else if (num_digits == 6)
    buf[7] = '\0';

  if (num_digits == 7)
    buf[8] = '\0';
}

static char *decimal_absval_add_one_positive(char *buf) {
  char *absnum = buf + 1;
  char *p = absnum + strlen(absnum);

  absnum[-1] = '0';
  while (*--p == '9')
    *p = '0';
  ++*p;

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
  uint16_t digit0;
  uint16_t digit1;
  uint16_t digit2;
  uint16_t digit3;
  uint16_t digit4;
  uint16_t digit5;
  uint16_t digit6;
  uint16_t in0;
  uint16_t in1;
  uint16_t in2;
  uint16_t in3;
  uint16_t in4;
  uint16_t in5;
  uint16_t in6;
  uint16_t in7;
  uint16_t in8;
  uint16_t in9;
  char buf[DECIMAL_BUF_SLOTS];
  char *result;
  uintptr_t result_index;

  klee_make_symbolic(&num_digits, sizeof(num_digits), "num_digits");
  klee_make_symbolic(&digit0, sizeof(digit0), "digit0");
  klee_make_symbolic(&digit1, sizeof(digit1), "digit1");
  klee_make_symbolic(&digit2, sizeof(digit2), "digit2");
  klee_make_symbolic(&digit3, sizeof(digit3), "digit3");
  klee_make_symbolic(&digit4, sizeof(digit4), "digit4");
  klee_make_symbolic(&digit5, sizeof(digit5), "digit5");
  klee_make_symbolic(&digit6, sizeof(digit6), "digit6");
  klee_make_symbolic(&in0, sizeof(in0), "in0");
  klee_make_symbolic(&in1, sizeof(in1), "in1");
  klee_make_symbolic(&in2, sizeof(in2), "in2");
  klee_make_symbolic(&in3, sizeof(in3), "in3");
  klee_make_symbolic(&in4, sizeof(in4), "in4");
  klee_make_symbolic(&in5, sizeof(in5), "in5");
  klee_make_symbolic(&in6, sizeof(in6), "in6");
  klee_make_symbolic(&in7, sizeof(in7), "in7");
  klee_make_symbolic(&in8, sizeof(in8), "in8");
  klee_make_symbolic(&in9, sizeof(in9), "in9");

  klee_assume(num_digits >= 1);
  klee_assume(num_digits <= 7);

  klee_assume(digit0 <= 255);
  klee_assume(digit1 <= 255);
  klee_assume(digit2 <= 255);
  klee_assume(digit3 <= 255);
  klee_assume(digit4 <= 255);
  klee_assume(digit5 <= 255);
  klee_assume(digit6 <= 255);
  klee_assume(in0 <= 255);
  klee_assume(in1 <= 255);
  klee_assume(in2 <= 255);
  klee_assume(in3 <= 255);
  klee_assume(in4 <= 255);
  klee_assume(in5 <= 255);
  klee_assume(in6 <= 255);
  klee_assume(in7 <= 255);
  klee_assume(in8 <= 255);
  klee_assume(in9 <= 255);

  klee_assume((uint16_t)'1' <= digit0);
  klee_assume(digit0 <= (uint16_t)'9');
  klee_assume((uint16_t)'0' <= digit1);
  klee_assume(digit1 <= (uint16_t)'9');
  klee_assume((uint16_t)'0' <= digit2);
  klee_assume(digit2 <= (uint16_t)'9');
  klee_assume((uint16_t)'0' <= digit3);
  klee_assume(digit3 <= (uint16_t)'9');
  klee_assume((uint16_t)'0' <= digit4);
  klee_assume(digit4 <= (uint16_t)'9');
  klee_assume((uint16_t)'0' <= digit5);
  klee_assume(digit5 <= (uint16_t)'9');
  klee_assume((uint16_t)'0' <= digit6);
  klee_assume(digit6 <= (uint16_t)'9');

  buf[0] = (char)in0;
  buf[1] = (char)in1;
  buf[2] = (char)in2;
  buf[3] = (char)in3;
  buf[4] = (char)in4;
  buf[5] = (char)in5;
  buf[6] = (char)in6;
  buf[7] = (char)in7;
  buf[8] = (char)in8;
  buf[9] = (char)in9;

  init_positive_cb(buf, num_digits, digit0, digit1, digit2, digit3, digit4,
                   digit5, digit6);
  result = decimal_absval_add_one_positive(buf);
  result_index = (uintptr_t)(result - buf);

  klee_assert(result_index == 0 || result_index == 1);
  klee_assert(is_valid_positive(result));
  klee_assert(strlen(result) == (size_t)num_digits ||
              strlen(result) == (size_t)num_digits + 1);

  return 0;
}
