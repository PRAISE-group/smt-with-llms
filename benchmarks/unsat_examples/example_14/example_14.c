// Multiply() adapted from the example_8.c file.
long long int multiply(long long int a, long long int b) {
    long long int r = 0ll;
    while (b != 0) {
        long long int shift = __builtin_ctz(b);
        if (shift) {
            r += a << shift;
            b -= 1 << shift;
        } else {
            r += a;
            b -= 1;
        }
    }

    return r;
}