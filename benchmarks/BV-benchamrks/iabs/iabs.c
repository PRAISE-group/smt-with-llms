
#include "iabs.h"

int8_t iabs_cb (int8_t a) {
  if (a < 0) return -a;
  return a;
}
