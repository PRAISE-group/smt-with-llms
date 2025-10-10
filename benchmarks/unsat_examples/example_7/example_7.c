unsigned int pre_cb (
	unsigned int bit, 
	unsigned int num, 
	unsigned int cont) 
{
    while (bit > num) {
        bit >>= cont;
    }

    return bit;
}

unsigned int lshift_cb (
    unsigned int res, 
    unsigned int shift) 
{
    return res >> shift; 
}