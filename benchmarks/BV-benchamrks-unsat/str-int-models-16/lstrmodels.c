
#include "lstrmodels.h"

uint16_t numvowels_str6_cb (uint16_t s0, uint16_t s1, uint16_t s2, uint16_t s3, uint16_t s4, uint16_t s5)
{
  uint16_t vcount;
  uint16_t s[] = {s0, s1, s2, s3, s4, s5};
  uint16_t *cptr = NULL;

  vcount = 0;

  for (cptr = s; *cptr != '\0'; cptr++)
    switch (*cptr)
    {
      case 'A':  case 'E':  case 'I':  case 'O':  case 'U':
	vcount++; break;
    }

  return (vcount);
}

uint16_t numvowels_str3 (uint16_t s0, uint16_t s1, uint16_t s2)
{
  uint16_t vcount;
  uint16_t s[] = {s0, s1, s2};
  uint16_t cptr;

  vcount = 0;

  for (cptr = 0; cptr < 4; cptr++)
    switch (s[cptr])
    {
      case 'A':  case 'E':  case 'I':  case 'O':  case 'U':
	vcount++; break;
    }

  return (vcount);
}


uint16_t numvowels_str4_cb (uint16_t s0, uint16_t s1, uint16_t s2, uint16_t s3)
{
  uint16_t vcount = 0;

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


uint16_t numvowels_str5 (uint16_t s0, uint16_t s1, uint16_t s2, uint16_t s3, uint16_t s4)
{
  uint16_t vcount = 0;

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


  switch (s4)
    {
    case 'A':  case 'E':  case 'I':  case 'O':  case 'U':
      vcount++; break;
    }


  return (vcount);
}


uint16_t foo4_cb(uint16_t x0, uint16_t x1, uint16_t x2, uint16_t x3) {
    uint16_t result = (x0 + x1 + x2 + x3) & 0x07; // sum mod 8
    if (result == 1)
        return 2;
    return result;
}


uint16_t foo5_cb(uint16_t x0, uint16_t x1, uint16_t x2, uint16_t x3) {
    uint16_t result = (x0 + x1 + x2 + x3) & 0x07; // sum mod 8
    if (result == 2)
        return 6;
    return result;
}

uint16_t foo6_cb(uint16_t x0, uint16_t x1, uint16_t x2,
                uint16_t x3, uint16_t x4, uint16_t x5) {
    uint16_t sum = x0 + x1 + x2 + x3 + x4 + x5;
    uint16_t mod = sum % 7;  // values 0..6
    if (mod == 3)
        return 5;
    return mod;
}

uint16_t foo7_cb(uint16_t x0, uint16_t x1, uint16_t x2, uint16_t x3) {
    uint16_t sum = x0 + x1 + x2 + x3;
    uint16_t mod = sum % 6;  // values 0..5
    if (mod == 3)
        return 4;
    return mod;
}
