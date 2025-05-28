#include <stdio.h>
#include <stdlib.h>
#include <inttypes.h>
#include <assert.h>


int test3ext_cb(int xarg)
{
  int t = xarg;
  if (t > 6)
    t = t - 3;
  else
    t = t - 1;

  return t;
}
