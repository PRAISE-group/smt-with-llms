
#include "cbf_tolower.h"

uint32_t cbf_tolower_cb(uint32_t c)
{
  if (c >= 'A' && c <= 'Z')
    c += 32;

  return (c);
}
