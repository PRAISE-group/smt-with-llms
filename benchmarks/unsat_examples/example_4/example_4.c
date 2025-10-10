/**
 * @brief Fibonacci verify
 */

long long int fib(long long int n) {
    if (n == 0) return 0;
    if (n == 1) return 1;
    long long int prev_1 = 0, prev_2 = 1, next = 0, i = 2;
    for (; i <= n; i++) {
        next = prev_1 + prev_2;
        prev_1 = prev_2;
        prev_2 = next;
    }
    return prev_2;
}

long long int add_sum(long long int a, long long b) { 
    return (long long int)(a + b); 
}