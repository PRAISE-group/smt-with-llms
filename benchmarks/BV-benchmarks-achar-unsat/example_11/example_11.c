// https://godbolt.org/z/MYM4fv4GP
long long int cube (long long int a) {
    long long int res = 1;
    int b = 3;
    while (b > 0) {
        if (b & 1) res = res * a;
        a = a * a;
        b >>= 1;
    }
    return res;
}