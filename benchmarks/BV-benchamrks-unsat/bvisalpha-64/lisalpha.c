#include "lisalpha.h"

uint64_t isalpha__cb (uint64_t c) {
  if (c >= 'a' && c <= 'z') return 1;
  else if (c >= 'A' && c <= 'Z') return 1;
  return 0;
}


uint64_t foo_cb(uint64_t c) {
	int res = 0;
	switch (c) {
	case 0:
	  res = 1;
	  break;
	}

	return res;
}

uint64_t foo1_cb(uint64_t c) {
	uint64_t res = 1;
	switch (c) {
	case 0:
	  res = 0;
	  break;
	}

	return res;
}
