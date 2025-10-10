int pre_cb (int bit, int num, int cont) {
    while (bit > num) {
        bit >>= cont;
    }
    return bit;
}