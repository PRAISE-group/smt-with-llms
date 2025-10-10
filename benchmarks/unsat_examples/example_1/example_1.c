// Sum of Squares Example.
// https://godbolt.org/z/KhhWxnbqW
long long int foo (long long int sum, long long int i) {
    long long int product = 0;
    __asm__ __volatile__("imull %[d]\n" : [rtn] "=A"(product) : [a] "a"(i), [d] "rm"(i));
    return sum + product;
}