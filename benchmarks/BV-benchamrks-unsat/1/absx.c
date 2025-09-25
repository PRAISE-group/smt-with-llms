#include <stdint.h>

int absx_cb(int val) {
  if (val > 0) {
      return 0;
  } else {
      return val;  // only when val == 0
  }
}

int foo_cb(uint32_t val) {
  if (val > 0) {
      return 0;
  } else {
      return val;  // only when val == 0
  }
}

int maxx_cb(int val1, int val2) {
  if (val1 > val2) return val1;
  else return val2;
}
