// https://www.oreilly.com/library/view/hackers-delight/0201914654/0201914654_ch11lev1sec2.html
int icbrt(unsigned x) {
    int s;
    unsigned y, b;
    s = 30;
    y = 0;
    while (s >= 0) {  // Do 11 times.
        y = 2 * y;
        b = (3 * y * (y + 1) + 1) << s;
        s = s - 3;
        if (x >= b) {
            x = x - b;
            y = y + 1;
        }
    }
    return y;
}
