#include "libt.h"
#include <limits.h>

__AFL_FUZZ_INIT();

#pragma clang optimize off
#pragma GCC   optimize("O0")
int main(int argc, char **argv) {
  size_t bufflen;
  __AFL_INIT();
  uint8_t *buff = __AFL_FUZZ_TESTCASE_BUF;

 // variable declarations
  uint32_t r;
  uint32_t q;
  uint32_t p;
  uint32_t y;
  uint32_t x;
  uint32_t z;

  while(__AFL_LOOP(UINT_MAX)) { 
    bufflen = __AFL_FUZZ_TESTCASE_LEN;
    if (bufflen < 24) continue;
    uint8_t* buffptr = buff;

    r = *((uint32_t*) buffptr);
    buffptr += 4;

    q = *((uint32_t*) buffptr);
    buffptr += 4;

    p = *((uint32_t*) buffptr);
    buffptr += 4;

    y = *((uint32_t*) buffptr);
    buffptr += 4;

    x = *((uint32_t*) buffptr);
    buffptr += 4;

    z = *((uint32_t*) buffptr);
    buffptr += 4;


    if((255) < z)
     if(z < (65536))
      if(x > y)
       if(z == _mul(x, y))
        if((ispow2(p) && ispow2(q) && ispow2(r)))
         if((p > (1) && q > (1) && r > (1)))
          if((64) == p * q * r)
          {
            FILE* fp = fopen("model.bin", "wb");
            fwrite(&r, sizeof(r), 1, fp);
            fwrite(&q, sizeof(q), 1, fp);
            fwrite(&p, sizeof(p), 1, fp);
            fwrite(&y, sizeof(y), 1, fp);
            fwrite(&x, sizeof(x), 1, fp);
            fwrite(&z, sizeof(z), 1, fp);
            fclose(fp);
            assert(0);
          }
    }
  return 0;
}
