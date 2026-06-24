#include <stdint.h>

#define SEQ_BUF_SLOTS 10

static void load_buf(char buf[SEQ_BUF_SLOTS], uint16_t in0, uint16_t in1,
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

typedef struct CallIncrResult {
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
} CallIncrResult;

CallIncrResult call_incr_cb(uint16_t in0, uint16_t in1, uint16_t in2,
                            uint16_t in3, uint16_t in4, uint16_t in5,
                            uint16_t in6, uint16_t in7, uint16_t in8,
                            uint16_t in9, uint16_t first_digit_offset,
                            uint16_t num_digits) {
  char buf[SEQ_BUF_SLOTS];
  char *first_digit;
  uint16_t new_num_digits;
  CallIncrResult out;

  load_buf(buf, in0, in1, in2, in3, in4, in5, in6, in7, in8, in9);
  first_digit = buf + first_digit_offset;
  new_num_digits = num_digits;
  incr_impl(&first_digit, &new_num_digits);

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
  out.ret = (uint16_t)(((uint16_t)(first_digit - buf) << 8) |
                       (new_num_digits & 0x00ff));
  return out;
}
