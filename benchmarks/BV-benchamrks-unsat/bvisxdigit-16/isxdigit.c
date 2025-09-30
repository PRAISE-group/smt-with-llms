#include "isxdigit.h"

uint16_t isxdigit__cb(uint16_t c)
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

uint16_t foo_cb(uint16_t c)
{

  return c & 1u;
}
