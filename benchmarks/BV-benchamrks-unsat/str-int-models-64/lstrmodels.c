
#include "lstrmodels.h"

uint64_t numvowels_str6_cb (uint64_t s0, uint64_t s1, uint64_t s2, uint64_t s3, uint64_t s4, uint64_t s5)
{
  uint64_t vcount;
  uint64_t s[] = {s0, s1, s2, s3, s4, s5};
  uint64_t *cptr = NULL;

  vcount = 0;

  for (cptr = s; *cptr != '\0'; cptr++)
    switch (*cptr)
    {
      case 'A':  case 'E':  case 'I':  case 'O':  case 'U':
	vcount++; break;
    }

  return (vcount);
}

uint64_t numvowels_str3 (uint64_t s0, uint64_t s1, uint64_t s2)
{
  uint64_t vcount;
  uint64_t s[] = {s0, s1, s2};
  uint64_t cptr;

  vcount = 0;

  for (cptr = 0; cptr < 4; cptr++)
    switch (s[cptr])
    {
      case 'A':  case 'E':  case 'I':  case 'O':  case 'U':
	vcount++; break;
    }

  return (vcount);
}


uint64_t numvowels_str4_cb (uint64_t s0, uint64_t s1, uint64_t s2, uint64_t s3)
{
  uint64_t vcount = 0;

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



uint64_t foo4_cb(uint64_t x0, uint64_t x1, uint64_t x2, uint64_t x3) {
    uint64_t result = (x0 + x1 + x2 + x3) & 0x07; // sum mod 8
    if (result == 1)
        return 2;
    return result;
}


uint64_t foo5_cb(uint64_t x0, uint64_t x1, uint64_t x2, uint64_t x3) {
    uint64_t result = (x0 + x1 + x2 + x3) & 0x07; // sum mod 8
    if (result == 2)
        return 6;
    return result;
}

uint64_t foo6_cb(uint64_t x0, uint64_t x1, uint64_t x2,
                uint64_t x3, uint64_t x4, uint64_t x5) {
    uint64_t sum = x0 + x1 + x2 + x3 + x4 + x5;
    uint64_t mod = sum % 7;  // values 0..6
    if (mod == 3)
        return 5;
    return mod;
}

uint64_t foo7_cb(uint64_t x0, uint64_t x1, uint64_t x2, uint64_t x3) {
    uint64_t sum = x0 + x1 + x2 + x3;
    uint64_t mod = sum % 6;  // values 0..5
    if (mod == 3)
        return 4;
    return mod;
}
