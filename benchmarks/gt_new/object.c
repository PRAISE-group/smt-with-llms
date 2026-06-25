int ackermann(int m, int n) {
    if (m==0) {
        return n+1;
    }
    if (n==0) {
        return ackermann(m-1,1);
    }
    return ackermann(m-1,ackermann(m,n-1));
}


long long addition(long long m, long long n) {
    if (n == 0) {
        return m;
    }
    if (n > 0) {
        return addition(m+1, n-1);
    }
    if (n < 0) {
        return addition(m-1, n+1);
    }
    return 0;
}

int isOdd(int n);
int isEven(int n);

int isOdd(int n) {
    if (n == 0) {
        return 0;
    } else if (n == 1) {
        return 1;
    } else {
        return isEven(n - 1);
    }
}

int isEven(int n) {
    if (n == 0) {
        return 1;
    } else if (n == 1) {
        return 0;
    } else {
        return isOdd(n - 1);
    }
}


int gcd(int y1, int y2) {
    if (y1 <= 0 || y2 <= 0) {
        return 0;
    }
    if (y1 == y2) {
        return y1;
    }
    if (y1 > y2) {
        return gcd(y1 - y2, y2);
    }
    return gcd(y1, y2 - y1);
}

// There are multiple functions with same name
// unsigned int id(unsigned int x) {
//   if (x==0) return 0;
//   unsigned int ret = id2(x-1) + 1;
//   if (ret > 2) return 2;
//   return ret;
//   // int k; return k;
// }


int f91(int x) {
    if (x > 100)
        return x -10;
    else {
        return f91(f91(x+11));
    }
}


int mult(int n, int m) {
    if (m < 0) {
        return mult(n, -m);
    }
    if (m == 0) {
        return 0;
    }
    return n + mult(n, m - 1);
}


// Is n a multiple of m?
int multiple_of(int n, int m) {
    if (m < 0) {
        return multiple_of(n, -m);
    }
    if (n < 0) {
        return multiple_of(-n, m); // false
    }
    if (m == 0) {
        return 0; // false
    }
    if (n == 0) {
        return 1; // true
    }
    return multiple_of(n - m, m);
}


int is_prime_(int n, int m);
int is_prime(int n);

// Is n prime?
int is_prime(int n) {
    return is_prime_(n, n - 1);
}


int is_prime_(int n, int m) {
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
            if (multiple_of(n, m) == 0) {
                return 0; // false
            }
            return is_prime_(n, m - 1);
        }
    }
    return 0;
}

int hanoi(int n) {
	if (n == 1) {
		return 1;
	}
	return 2 * (hanoi(n-1)) + 1;
}

unsigned int sum(unsigned int n, unsigned int m) {
    if (n == 0) {
      return m;
    } else {
      return sum(n - 1, m + 1);
    }
}
