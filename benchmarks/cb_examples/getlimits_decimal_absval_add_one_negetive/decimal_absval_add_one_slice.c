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

typedef struct DecimalAbsvalAddOneResult {
  uint16_t byte0;
  uint16_t byte1;
  uint16_t byte2;
  uint16_t byte3;
  uint16_t byte4;
  uint16_t byte5;
  uint16_t byte6;
  uint16_t byte7;
  uint16_t byte8;
  uint16_t byte9;
  uint16_t ret;
} DecimalAbsvalAddOneResult;

DecimalAbsvalAddOneResult decimal_absval_add_one_cb(
    uint16_t in0, uint16_t in1, uint16_t in2, uint16_t in3, uint16_t in4,
    uint16_t in5, uint16_t in6, uint16_t in7, uint16_t in8, uint16_t in9) {
  char buf[DECIMAL_BUF_SLOTS];
  char *result;
  DecimalAbsvalAddOneResult out;

  load_buf(buf, in0, in1, in2, in3, in4, in5, in6, in7, in8, in9);
  result = decimal_absval_add_one_impl(buf);

  out.byte0 = (uint16_t)(unsigned char)buf[0];
  out.byte1 = (uint16_t)(unsigned char)buf[1];
  out.byte2 = (uint16_t)(unsigned char)buf[2];
  out.byte3 = (uint16_t)(unsigned char)buf[3];
  out.byte4 = (uint16_t)(unsigned char)buf[4];
  out.byte5 = (uint16_t)(unsigned char)buf[5];
  out.byte6 = (uint16_t)(unsigned char)buf[6];
  out.byte7 = (uint16_t)(unsigned char)buf[7];
  out.byte8 = (uint16_t)(unsigned char)buf[8];
  out.byte9 = (uint16_t)(unsigned char)buf[9];
  out.ret = (uint16_t)(uintptr_t)(result - buf);
  return out;
}
