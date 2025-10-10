// Multiply() adapted from the example_8.c file.
long long int multiply_cb (long long int a, long long int b) {
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

// Function to compute the factorial of a number
long long int factorial_cb (int n) {
    // Factorial is not defined for negative numbers
    if (n < 0) return -1;
    if (n == 0 || n == 1) return 1;
    long long int result = 1;
    for (int i = 2; i <= n; i++) {
        result = result * i;
    }
    return result;
}