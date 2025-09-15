#include <stdio.h>
#include <stdlib.h>
#include <inttypes.h>
#include <assert.h>


int test3ext_cb(int xarg)
{
  int t = xarg;
  if (t <= 4)
    t = t + 1;
  else
    t = t - 6;

  return t;
}
