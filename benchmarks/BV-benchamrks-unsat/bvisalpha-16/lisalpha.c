

int foo_cb(int c) {
	int res = 0;
	switch (c) {
	case 0:
	  res = 1;
	  break;
	}

	return res;
}

int foo1_cb(int c) {
	int res = 1;
	switch (c) {
	case 0:
	  res = 0;
	  break;
	}

	return res;
}
