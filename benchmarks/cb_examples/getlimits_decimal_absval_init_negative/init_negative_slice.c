#include <stdint.h>

#define DECIMAL_BUF_SLOTS 10

static void init_negative_impl(char *buf, uint16_t num_digits, uint16_t digit0,
                               uint16_t digit1, uint16_t digit2,
                               uint16_t digit3, uint16_t digit4,
                               uint16_t digit5, uint16_t digit6) {
  buf[1] = '-';
  buf[2] = (char)digit0;

  if (num_digits >= 2)
    buf[3] = (char)digit1;
  else
    buf[3] = '\0';

  if (num_digits >= 3)
    buf[4] = (char)digit2;
  else if (num_digits == 2)
    buf[4] = '\0';

  if (num_digits >= 4)
    buf[5] = (char)digit3;
  else if (num_digits == 3)
    buf[5] = '\0';

  if (num_digits >= 5)
    buf[6] = (char)digit4;
  else if (num_digits == 4)
    buf[6] = '\0';

  if (num_digits >= 6)
    buf[7] = (char)digit5;
  else if (num_digits == 5)
    buf[7] = '\0';

  if (num_digits >= 7)
    buf[8] = (char)digit6;
  else if (num_digits == 6)
    buf[8] = '\0';

  if (num_digits == 7)
    buf[9] = '\0';
}

static void load_buf(char buf[DECIMAL_BUF_SLOTS], uint16_t in0, uint16_t in1,
                     uint16_t in2, uint16_t in3, uint16_t in4, uint16_t in5,
                     uint16_t in6, uint16_t in7, uint16_t in8, uint16_t in9) {
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
}

#define DEFINE_INIT_NEGATIVE_BYTE_FN(INDEX)                                      \
  uint16_t init_negative_arg0_byte##INDEX##_cb(                                  \
      uint16_t num_digits, uint16_t digit0, uint16_t digit1, uint16_t digit2,   \
      uint16_t digit3, uint16_t digit4, uint16_t digit5, uint16_t digit6,       \
      uint16_t in0, uint16_t in1, uint16_t in2, uint16_t in3, uint16_t in4,     \
      uint16_t in5, uint16_t in6, uint16_t in7, uint16_t in8,                   \
      uint16_t in9) {                                                            \
    char buf[DECIMAL_BUF_SLOTS];                                                 \
    load_buf(buf, in0, in1, in2, in3, in4, in5, in6, in7, in8, in9);            \
    init_negative_impl(buf, num_digits, digit0, digit1, digit2, digit3, digit4, \
                       digit5, digit6);                                          \
    return (uint16_t)(unsigned char)buf[INDEX];                                  \
  }

DEFINE_INIT_NEGATIVE_BYTE_FN(0)
DEFINE_INIT_NEGATIVE_BYTE_FN(1)
DEFINE_INIT_NEGATIVE_BYTE_FN(2)
DEFINE_INIT_NEGATIVE_BYTE_FN(3)
DEFINE_INIT_NEGATIVE_BYTE_FN(4)
DEFINE_INIT_NEGATIVE_BYTE_FN(5)
DEFINE_INIT_NEGATIVE_BYTE_FN(6)
DEFINE_INIT_NEGATIVE_BYTE_FN(7)
DEFINE_INIT_NEGATIVE_BYTE_FN(8)
DEFINE_INIT_NEGATIVE_BYTE_FN(9)
