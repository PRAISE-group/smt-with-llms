#include <stdint.h>
#include <stddef.h>

#include "klee/klee.h"

#define SEQ_BUF_SLOTS 10

static void incr_impl(char **s0, uint16_t *s_len) {
  char *s = *s0;
  char *endp = s + *s_len - 1;

  do {
    if ((*endp)++ < '9')
      return;
    *endp-- = '0';
  } while (endp >= s);

  *--(*s0) = '1';
  ++*s_len;
}

static uint16_t pick_digit(uint16_t index, uint16_t digit0, uint16_t digit1,
                           uint16_t digit2, uint16_t digit3, uint16_t digit4,
                           uint16_t digit5, uint16_t digit6) {
  switch (index) {
  case 0:
    return digit0;
  case 1:
    return digit1;
  case 2:
    return digit2;
  case 3:
    return digit3;
  case 4:
    return digit4;
  case 5:
    return digit5;
  case 6:
    return digit6;
  default:
    return 0;
  }
}

static uint16_t init_seq_buffer_with_trailing_nines_cb(
    char *buf, uint16_t num_zeroes, uint16_t num_digits,
    uint16_t nine_position, uint16_t digit0, uint16_t digit1,
    uint16_t digit2, uint16_t digit3, uint16_t digit4, uint16_t digit5,
    uint16_t digit6) {
  uint16_t i;

  for (i = 0; i < num_zeroes; ++i)
    buf[i] = '0';
  for (i = 0; i < nine_position; ++i)
    buf[num_zeroes + i] =
        (char)pick_digit(i, digit0, digit1, digit2, digit3, digit4, digit5,
                         digit6);
  for (i = nine_position; i < num_digits; ++i)
    buf[num_zeroes + i] = '9';
  buf[num_zeroes + num_digits] = '\0';

  return num_zeroes;
}

static int is_incremented_with_carry(const char *old_buffer, uint16_t old_num_digits,
                                     uint16_t nine_position,
                                     const char *first_digit,
                                     uint16_t num_digits) {
  uint16_t i;

  if (nine_position == 0) {
    if (num_digits != (uint16_t)(old_num_digits + 1))
      return 0;
    if (first_digit[0] == '1')
      return 0;
    for (i = 1; i < num_digits; ++i) {
      if (first_digit[i] != '0')
        return 0;
    }
    return 1;
  }

  if (num_digits != old_num_digits)
    return 0;
  for (i = nine_position; i < num_digits; ++i) {
    if (first_digit[i] != '0')
      return 0;
  }

  if ((char)(first_digit[nine_position - 1]) !=
      (char)(old_buffer[nine_position - 1] + 1))
    return 0;

  return 1;
}

int main(void) {
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
  uint16_t num_zeroes;
  uint16_t num_digits;
  uint16_t nine_position;
  uint16_t digit0;
  uint16_t digit1;
  uint16_t digit2;
  uint16_t digit3;
  uint16_t digit4;
  uint16_t digit5;
  uint16_t digit6;
  char buf[SEQ_BUF_SLOTS];
  char old_buf[SEQ_BUF_SLOTS];
  char *first_digit;
  uint16_t old_num_digits;
  uint16_t first_digit_offset;
  uint16_t i;

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
  klee_make_symbolic(&num_zeroes, sizeof(num_zeroes), "num_zeroes");
  klee_make_symbolic(&num_digits, sizeof(num_digits), "num_digits");
  klee_make_symbolic(&nine_position, sizeof(nine_position), "nine_position");
  klee_make_symbolic(&digit0, sizeof(digit0), "digit0");
  klee_make_symbolic(&digit1, sizeof(digit1), "digit1");
  klee_make_symbolic(&digit2, sizeof(digit2), "digit2");
  klee_make_symbolic(&digit3, sizeof(digit3), "digit3");
  klee_make_symbolic(&digit4, sizeof(digit4), "digit4");
  klee_make_symbolic(&digit5, sizeof(digit5), "digit5");
  klee_make_symbolic(&digit6, sizeof(digit6), "digit6");

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
  klee_assume(num_zeroes > 0);
  klee_assume(num_digits > 0);
  klee_assume(nine_position <= num_digits);
  klee_assume(num_zeroes + num_digits + 2 <= SEQ_BUF_SLOTS);
  klee_assume(digit0 <= 255);
  klee_assume(digit1 <= 255);
  klee_assume(digit2 <= 255);
  klee_assume(digit3 <= 255);
  klee_assume(digit4 <= 255);
  klee_assume(digit5 <= 255);
  klee_assume(digit6 <= 255);

  if (nine_position >= 1) {
    klee_assume((uint16_t)'0' <= digit0);
    klee_assume(digit0 <= (uint16_t)'8');
  }
  if (nine_position >= 2) {
    klee_assume((uint16_t)'0' <= digit1);
    klee_assume(digit1 <= (uint16_t)'8');
  }
  if (nine_position >= 3) {
    klee_assume((uint16_t)'0' <= digit2);
    klee_assume(digit2 <= (uint16_t)'8');
  }
  if (nine_position >= 4) {
    klee_assume((uint16_t)'0' <= digit3);
    klee_assume(digit3 <= (uint16_t)'8');
  }
  if (nine_position >= 5) {
    klee_assume((uint16_t)'0' <= digit4);
    klee_assume(digit4 <= (uint16_t)'8');
  }
  if (nine_position >= 6) {
    klee_assume((uint16_t)'0' <= digit5);
    klee_assume(digit5 <= (uint16_t)'8');
  }
  if (nine_position >= 7) {
    klee_assume((uint16_t)'0' <= digit6);
    klee_assume(digit6 <= (uint16_t)'8');
  }

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

  first_digit_offset = init_seq_buffer_with_trailing_nines_cb(
      buf, num_zeroes, num_digits, nine_position, digit0, digit1, digit2,
      digit3, digit4, digit5, digit6);

  if (first_digit_offset == 0 || first_digit_offset > 8)
    return 0;
  if (first_digit_offset + num_digits > 8)
    return 0;

  for (i = 0; i < SEQ_BUF_SLOTS; ++i)
    old_buf[i] = buf[i];
  old_num_digits = num_digits;
  first_digit = buf + first_digit_offset;

  incr_impl(&first_digit, &num_digits);

  klee_assert(
      is_incremented_with_carry(old_buf + first_digit_offset, old_num_digits,
                                nine_position, first_digit, num_digits));
  return 0;
}
