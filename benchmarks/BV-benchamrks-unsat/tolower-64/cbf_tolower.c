
#include "cbf_tolower.h"

uint64_t cbf_tolower_cb(uint64_t c)
{
  if (c >= 'A' && c <= 'Z')
    c += 32;

  return (c);
}
