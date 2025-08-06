
int ___z2z____cb (int x0) {
  if (x0 == -1) return 21238;
  return 38;
}

int ___z3z____cb (int x) {
  return x == -1;
}

int ___z6z____cb(int x) {
  if (x == -2) return 0;
  else return 1;
}

int ___z5z____cb(int x) {
  if (x == -1) return 0;
  else return 1;
}

int ___z4z____cb(int x) {
  if (x == -1) return 1;
  if (x == -2) return 2;

  return -21240;
}



int traffic_e7_temp1_cb(int a, int b, int c) {
  if (a > 0 && b > 0) return c;
  else {
    if (a < 10 && b > 0) return c;
    else return a;
  }
}

int traffic_e7_temp2_cb(int a, int b, int c) {
  if (a == 0)
    return b;
  else return c;
}

int traffic_e7_temp3_cb(int a, int b, int c) {
  int c1 = a > 0 && b > 0;
  int c2 = a < 10 && b > 0;

  int c3 = c2 ? b : c;
  return c1 ? b : c3;
}



int traffic_e7_temp4_cb (int base) {
  if (base == 0) return 0;
  return 1;
}
