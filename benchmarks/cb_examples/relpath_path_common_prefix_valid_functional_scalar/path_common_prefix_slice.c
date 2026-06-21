#include <stdint.h>

static int path_common_prefix(char const *path1, char const *path2) {
  int i = 0;
  int ret = 0;

  if ((path1[1] == '/') != (path2[1] == '/'))
    return 0;

  while (*path1 && *path2) {
    if (*path1 != *path2)
      break;
    if (*path1 == '/')
      ret = i + 1;
    path1++;
    path2++;
    i++;
  }

  if ((!*path1 && !*path2) || (!*path1 && *path2 == '/') ||
      (!*path2 && *path1 == '/'))
    ret = i;

  return ret;
}

uint16_t path_common_prefix_cb(uint16_t path1_0, uint16_t path1_1,
                               uint16_t path1_2, uint16_t path1_3,
                               uint16_t path1_4, uint16_t path1_5,
                               uint16_t path2_0, uint16_t path2_1,
                               uint16_t path2_2, uint16_t path2_3,
                               uint16_t path2_4, uint16_t path2_5) {
  char path1[6];
  char path2[6];

  path1[0] = (char)path1_0;
  path1[1] = (char)path1_1;
  path1[2] = (char)path1_2;
  path1[3] = (char)path1_3;
  path1[4] = (char)path1_4;
  path1[5] = (char)path1_5;

  path2[0] = (char)path2_0;
  path2[1] = (char)path2_1;
  path2[2] = (char)path2_2;
  path2[3] = (char)path2_3;
  path2[4] = (char)path2_4;
  path2[5] = (char)path2_5;

  return (uint16_t)path_common_prefix(path1, path2);
}
