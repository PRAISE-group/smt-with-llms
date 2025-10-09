// isprime() is based on Selfridge's Conjecture.
// https://en.wikipedia.org/wiki/John_Selfridge
int main() {
    // variable declarations
    int n;
    int i;
    int out;
    // pre-conditions
    // scanf("%d", &n);
    // scanf("%d", &i);
    // scanf("%d", &out);
    assume((n > 2));
    (i = 0);
    (out = 0);
    // precheck
    // loopcond : (i < n)
    // loopstart
    while ((i < n)) {
        // loop body
        if (n % 6) {
            out = out + 1;
        } else {
            out = out + 2;
        }
    }
    // loopend
    // postcheck
    // post-condition
    if ((n % 6)) {
        assert((out == n));
    } else {
        assert((out == 2 * n));
    }
}
