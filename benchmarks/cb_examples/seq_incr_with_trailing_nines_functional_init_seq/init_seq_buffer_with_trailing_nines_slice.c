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

typedef struct InitSeqBufferWithTrailingNinesResult {
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
} InitSeqBufferWithTrailingNinesResult;

InitSeqBufferWithTrailingNinesResult init_seq_buffer_with_trailing_nines_cb(
    uint16_t num_zeroes, uint16_t num_digits, uint16_t nine_position,
    uint16_t digit0, uint16_t digit1, uint16_t digit2, uint16_t digit3,
    uint16_t digit4, uint16_t digit5, uint16_t digit6, uint16_t in0,
    uint16_t in1, uint16_t in2, uint16_t in3, uint16_t in4, uint16_t in5,
    uint16_t in6, uint16_t in7, uint16_t in8, uint16_t in9) {
  char buf[SEQ_BUF_SLOTS];
  InitSeqBufferWithTrailingNinesResult out;
  uint16_t i;

  load_buf(buf, in0, in1, in2, in3, in4, in5, in6, in7, in8, in9);
  for (i = 0; i < num_zeroes; ++i)
    buf[i] = '0';
  for (i = 0; i < nine_position; ++i)
    buf[num_zeroes + i] =
        (char)pick_digit(i, digit0, digit1, digit2, digit3, digit4, digit5,
                         digit6);
  for (i = nine_position; i < num_digits; ++i)
    buf[num_zeroes + i] = '9';
  buf[num_zeroes + num_digits] = '\0';

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
  out.ret = num_zeroes;
  return out;
}
