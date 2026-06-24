#include <stdint.h>
#include <string.h>

#define DECIMAL_BUF_SLOTS 10

static char *decimal_absval_add_one_impl(char *buf) {
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

#define DEFINE_ADD_ONE_BYTE_FN(INDEX)                                            \
  uint16_t decimal_absval_add_one_arg0_byte##INDEX##_cb(                         \
      uint16_t in0, uint16_t in1, uint16_t in2, uint16_t in3, uint16_t in4,     \
      uint16_t in5, uint16_t in6, uint16_t in7, uint16_t in8,                   \
      uint16_t in9) {                                                            \
    char buf[DECIMAL_BUF_SLOTS];                                                 \
    load_buf(buf, in0, in1, in2, in3, in4, in5, in6, in7, in8, in9);            \
    (void)decimal_absval_add_one_impl(buf);                                      \
    return (uint16_t)(unsigned char)buf[INDEX];                                  \
  }

DEFINE_ADD_ONE_BYTE_FN(0)
DEFINE_ADD_ONE_BYTE_FN(1)
DEFINE_ADD_ONE_BYTE_FN(2)
DEFINE_ADD_ONE_BYTE_FN(3)
DEFINE_ADD_ONE_BYTE_FN(4)
DEFINE_ADD_ONE_BYTE_FN(5)
DEFINE_ADD_ONE_BYTE_FN(6)
DEFINE_ADD_ONE_BYTE_FN(7)
DEFINE_ADD_ONE_BYTE_FN(8)
DEFINE_ADD_ONE_BYTE_FN(9)

uint16_t decimal_absval_add_one_ret_cb(uint16_t in0, uint16_t in1, uint16_t in2,
                                       uint16_t in3, uint16_t in4, uint16_t in5,
                                       uint16_t in6, uint16_t in7, uint16_t in8,
                                       uint16_t in9) {
  char buf[DECIMAL_BUF_SLOTS];
  char *result;

  load_buf(buf, in0, in1, in2, in3, in4, in5, in6, in7, in8, in9);
  result = decimal_absval_add_one_impl(buf);
  return (uint16_t)(uintptr_t)(result - buf);
}
