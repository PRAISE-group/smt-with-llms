// Reference : https://cp-algorithms.com/algebra/euclid-algorithm.html
int retmod(int a, int b) { 
    return (int)(a % b); 
}

// https://godbolt.org/z/j9hh1hjEE
void swap(int* term1, int* term2) {
    int temp = *term1;
    *term1 = *term2;
    *term2 = temp;
}

// https://cp-algorithms.com/algebra/euclid-algorithm.html
int gcd(int a, int b) {
    while (b) {
        a %= b;
        swap(&a, &b);
    }
    return a;
}