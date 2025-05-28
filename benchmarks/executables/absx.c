
int absx_cb(int val) { return (val < 0)? -val: val; }

int maxx_cb(int val1, int val2) {
  if (val1 > val2) return val1;
  else return val2;
}
