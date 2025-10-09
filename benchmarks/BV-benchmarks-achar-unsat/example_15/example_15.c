long long int foo (long long int sum, long long int i) {
    long long int product = 0;
    __asm__ __volatile__("imull %[d]\n" : [rtn] "=A"(product) : [a] "a"(i), [d] "rm"(i));
    __asm__ __volatile__("imull %[d]\n" : [rtn] "=A"(product) : [a] "a"(product), [d] "rm"(i));
    return sum + product;
}