
#include "lstrmodels.h"

uint8_t numvowels_str6_cb (uint8_t s0, uint8_t s1, uint8_t s2, uint8_t s3, uint8_t s4, uint8_t s5)
{
  uint8_t vcount;
  uint8_t s[] = {s0, s1, s2, s3, s4, s5};
  uint8_t *cptr = NULL;

  vcount = 0;

  for (cptr = s; *cptr != '\0'; cptr++)
    switch (*cptr)
    {
      case 'A':  case 'E':  case 'I':  case 'O':  case 'U':
	vcount++; break;
    }

  return (vcount);
}

uint8_t numvowels_str3 (uint8_t s0, uint8_t s1, uint8_t s2)
{
  uint8_t vcount;
  uint8_t s[] = {s0, s1, s2};
  uint8_t cptr;

  vcount = 0;

  for (cptr = 0; cptr < 4; cptr++)
    switch (s[cptr])
    {
      case 'A':  case 'E':  case 'I':  case 'O':  case 'U':
	vcount++; break;
    }

  return (vcount);
}


uint8_t numvowels_str4_cb (uint8_t s0, uint8_t s1, uint8_t s2, uint8_t s3)
{
  uint8_t vcount = 0;

  switch (s0)
    {
    case 'A':  case 'E':  case 'I':  case 'O':  case 'U':
      vcount++; break;
    }

  switch (s1)
    {
    case 'A':  case 'E':  case 'I':  case 'O':  case 'U':
      vcount++; break;
    }

  switch (s2)
    {
    case 'A':  case 'E':  case 'I':  case 'O':  case 'U':
	vcount++; break;
    }

  switch (s3)
    {
    case 'A':  case 'E':  case 'I':  case 'O':  case 'U':
      vcount++; break;
    }


  return (vcount);
}


uint8_t foo4_cb(uint8_t x0, uint8_t x1, uint8_t x2, uint8_t x3) {
    uint8_t result = (x0 + x1 + x2 + x3) & 0x07; // sum mod 8
    if (result == 1)
        return 2;
    return result;
}


uint8_t foo5_cb(uint8_t x0, uint8_t x1, uint8_t x2, uint8_t x3) {
    uint8_t result = (x0 + x1 + x2 + x3) & 0x07; // sum mod 8
    if (result == 2)
        return 6;
    return result;
}

uint8_t foo6_cb(uint8_t x0, uint8_t x1, uint8_t x2,
                uint8_t x3, uint8_t x4, uint8_t x5) {
    uint8_t sum = x0 + x1 + x2 + x3 + x4 + x5;
    uint8_t mod = sum % 7;  // values 0..6
    if (mod == 3)
        return 5;
    return mod;
}

uint8_t foo7_cb(uint8_t x0, uint8_t x1, uint8_t x2, uint8_t x3) {
    uint8_t sum = x0 + x1 + x2 + x3;
    uint8_t mod = sum % 6;  // values 0..5
    if (mod == 3)
        return 4;
    return mod;
}
