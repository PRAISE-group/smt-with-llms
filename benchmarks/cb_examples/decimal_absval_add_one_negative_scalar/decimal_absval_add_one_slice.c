#include <string.h>

char *decimal_absval_add_one(char *buf) {
  int negative = (buf[1] == '-');
  char *absnum = buf + 1 + negative;
  char *p = absnum + strlen(absnum);

  absnum[-1] = '0';
  while (*--p == '9')
    *p = '0';
  ++*p;

  char *result = absnum < p ? absnum : p;
  if (negative)
    *--result = '-';

  return result;
}
