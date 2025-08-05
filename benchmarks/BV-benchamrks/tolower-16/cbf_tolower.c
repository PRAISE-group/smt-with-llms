
#include "cbf_tolower.h"

uint16_t cbf_tolower_cb(uint16_t c)
{
  if (c >= 'A' && c <= 'Z')
    c += 32;

  return (c);
}
