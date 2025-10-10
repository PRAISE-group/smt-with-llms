// Main Multiply Example
// Paper example
int main() {
    // variable declarations
    int x;
    int y;
    int a;
    int b;
    int r;
    int shift;
    int supported;
    // pre-conditions
    // scanf("%d", &a);
    // scanf("%d", &b);
    (x = a);
    (y = b);
    (r = 0);
    (shift = 0);
    // precheck
    // loopcond : (b != 0)
    // loopstart
    while ((b != 0)) {
        // loop body
        if (supported == 1) {
            shift = b % 1;
        } else {
            shift = 0;
        }

        if (shift == 1) {
            r = r + a % shift;
            b = b - 1 % shift;
        } else {
            r = r + a;
            b = b - 1;
        }
    }
    // loopend
    // postcheck
    // post-condition
    assert((r == x * y));
}
