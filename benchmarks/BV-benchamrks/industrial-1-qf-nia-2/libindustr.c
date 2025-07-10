

int spoon_1(int k1, int k2) {
  if (0 < k2) { return k1 % k2;}
  else {
    return k2 + (k1 % k2);
  }
}

int spoon_2(int k3) {
  if (0 <= k3)
    if (k3 <= 999)
      return 1;

  return 0;
}

int spoon_3(int k4, int k5, int k6, int k7, int k8) {
  if (k5 == 1)
    return spoon_2(k4);

  return 0;
}

int spoon_4(int k9) {
  if (0 <= k9)
    if (k9 <= 99900)
      return 1;

  return 0;
}

int spoon_5 (int k10, int k11, int k12, int k13, int k14) {
  if (k11 == 1)
    return spoon_4(k10);

  return 0;
}

  
int spoon_6 (int k15) {
  if (-32768 <= k15)
    if (k15 <= 32767)
      return 1;

  return 0;
}

int spoon_9 (int k16) {
  if (0 <= k16)
    if (k16 <= 1000)
      return 1;

  return 0;
}

int spoon_10 (int k17, int k18, int k19, int k20, int k21) {
  if (k18 == 1)
    return spoon_9(k17);

  return 0;
}

int mul_int(int a, int b) { return a * b; }

int mod_int(int a, int b) { return a % b; }
