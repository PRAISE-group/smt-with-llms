#include "isxdigit.h"

uint8_t isxdigit__cb(uint8_t c)
{
  if (c >= '0') {
    if (c <= '9') {
      return 1;
    }
  }

  if (c >= 'A')
    if (c <= 'F')
      return 1;

  if (c >= 'a')
    if (c <= 'f')
      return 1;

  return 0;
}

uint8_t foo_cb(uint8_t c)
{

  return c & 1u;
}
