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

typedef struct InitNegativeResult {
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
} InitNegativeResult;

InitNegativeResult init_negative_cb(uint16_t num_digits, uint16_t digit0,
                                    uint16_t digit1, uint16_t digit2,
                                    uint16_t digit3, uint16_t digit4,
                                    uint16_t digit5, uint16_t digit6,
                                    uint16_t in0, uint16_t in1, uint16_t in2,
                                    uint16_t in3, uint16_t in4, uint16_t in5,
                                    uint16_t in6, uint16_t in7, uint16_t in8,
                                    uint16_t in9) {
  char buf[DECIMAL_BUF_SLOTS];
  InitNegativeResult out;

  load_buf(buf, in0, in1, in2, in3, in4, in5, in6, in7, in8, in9);
  init_negative_impl(buf, num_digits, digit0, digit1, digit2, digit3, digit4,
                     digit5, digit6);

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
  return out;
}
