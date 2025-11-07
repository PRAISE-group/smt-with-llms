int setPowerValue_power(int y_power, int x, int power) {
    while (y_power > x) {
        y_power >>= 1;
        power -= 1;
    }
	return power;
}

int setPowerValue_ypower(int y_power, int x, int power) {
    while (y_power > x) {
        y_power >>= 1;
        power -= 1;
    }
	return y_power;
}