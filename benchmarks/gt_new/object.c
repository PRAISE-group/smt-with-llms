int ackermann_cb(int m, int n) {
    if (m==0) {
        return n+1;
    }
    if (n==0) {
        return ackermann_cb(m-1,1);
    }
    return ackermann_cb(m-1,ackermann_cb(m,n-1));
}


long long addition_cb(long long m, long long n) {
    if (n == 0) {
        return m;
    }
    if (n > 0) {
        return addition_cb(m+1, n-1);
    }
    if (n < 0) {
        return addition_cb(m-1, n+1);
    }
    return 0;
}

int isOdd_cb(int n);
int isEven_cb(int n);

int isOdd_cb(int n) {
    if (n == 0) {
        return 0;
    } else if (n == 1) {
        return 1;
    } else {
        return isEven_cb(n - 1);
    }
}

int isEven_cb(int n) {
    if (n == 0) {
        return 1;
    } else if (n == 1) {
        return 0;
    } else {
        return isOdd_cb(n - 1);
    }
}


int gcd_cb(int y1, int y2) {
    if (y1 <= 0 || y2 <= 0) {
        return 0;
    }
    if (y1 == y2) {
        return y1;
    }
    if (y1 > y2) {
        return gcd_cb(y1 - y2, y2);
    }
    return gcd_cb(y1, y2 - y1);
}

int divides_cb(int n, int m) {
    if (m == 0) {
        return 1; // true
    }
    if (n > m) {
        return 0; // false
    }
    return divides_cb(n, m - n);
    // int k; return k;
}

unsigned int idb23_cb(unsigned int x) {
  if (x==0) return 0;
  unsigned int ret = idb23_cb(x-1) + 1;
  if (ret > 2) return 2;
  return ret;
  // int k; return k;
}

int idb510_cb(int x) {
  if (x==0) return 0;
  int ret = idb510_cb((unsigned int)x-1) + 1;
  if (ret > 5) return 5;
  return ret;
  // int k; return k;
}



// There are multiple functions with same name
// unsigned int id(unsigned int x) {
//   if (x==0) return 0;
//   unsigned int ret = id2(x-1) + 1;
//   if (ret > 2) return 2;
//   return ret;
//   // int k; return k;
// }


int f91_cb(int x) {
    if (x > 100)
        return x -10;
    else {
        return f91_cb(f91_cb(x+11));
    }
}


int mult_cb(int n, int m) {
    if (m < 0) {
        return mult_cb(n, -m);
    }
    if (m == 0) {
        return 0;
    }
    return n + mult_cb(n, m - 1);
}


// Is n a multiple of m?
int multiple_of_cb(int n, int m) {
    if (m < 0) {
        return multiple_of_cb(n, -m);
    }
    if (n < 0) {
        return multiple_of_cb(-n, m); // false
    }
    if (m == 0) {
        return 0; // false
    }
    if (n == 0) {
        return 1; // true
    }
    return multiple_of_cb(n - m, m);
}


int is_prime__cb(int n, int m);
int is_prime_cb(int n);

// Is n prime?
int is_prime_cb(int n) {
    return is_prime__cb(n, n - 1);
}


int is_prime__cb(int n, int m) {
    if (n <= 1) {
        return 0; // false
    }
    if (n == 2) {
        return 1; // true
    }
    if (n > 2) {
        if (m <= 1) {
            return 1; // true
        } else {
            if (multiple_of_cb(n, m) == 0) {
                return 0; // false
            }
            return is_prime__cb(n, m - 1);
        }
    }
    return 0;
}

int hanoi_cb(int n) {
	if (n == 1) {
		return 1;
	}
	return 2 * (hanoi_cb(n-1)) + 1;
}

unsigned int sum_cb(unsigned int n, unsigned int m) {
    if (n == 0) {
      return m;
    } else {
      return sum_cb(n - 1, m + 1);
    }
}
