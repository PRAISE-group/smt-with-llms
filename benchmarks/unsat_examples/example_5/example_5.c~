/*
 * Function to compute power modulo
 * https://cp-algorithms.com/algebra/binary-exp.html
 */

long long binpow_cb (long long a, long long b) {
    if (b == 0) return 1;
    long long res = binpow_cb (a, b / 2);
    if (b % 2)
        return res * res * a;
    else
        return res * res;
}

// Reference : https://cp-algorithms.com/algebra/euclid-algorithm.html
long long int retmod_cb (long long int a, long long int b) { 
    return (long long int)(a % b); 
}
