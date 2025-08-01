#include "lhsat.h"


int hash_1_03_03_cb (int x0) {
  if (x0 == 2) return 1;
  else { if (x0 == 0) return 0;
    else { if (x0 == 1) return 2;
      else { if (x0 == 5) return 6;
	else { if (x0 == 8) return 9;
	  else { return 10; }
	}
      }
    }
  }
}



int hash_2_03_03_cb  (int x0) {
  if (x0 == 0) return 0;
  else { if (x0 == 1) return 2;
    else { return 1; }
  }
}

int hash_3_03_03_cb  (int x0) {
  if (x0 == 0) return 0;
  else { if (x0 == 1) return 2;
    else { if (x0 == 4) return 5;
      else { if (x0 == 7) return 8;
	else { return 1; }
      }
    }
  }
}


int ite_lt_cb (int cond, int c1, int c2) {
  if (cond < 0) return c1;
  else return c2;
}


int hash_1_04_04 (int x0) {
  if (x0 == 2) return 1;
  else { if (x0 == 1) return 2;
    else { if (x0 == 4) return 3;
      else { return 4;
      }
    }
  }
}


int hash_2_04_04 (int x0) {
  if (x0 == 2) return 1;
  else { if (x0 == 1) return 2;
    else { if (x0 == 4) return 3;
      else { return 4; }
    }
  }
}

int hash_3_04_04 (int x0) {
  if (x0 == 2) return 1;
  else { if (x0 == 1) return 2;
    else { if (x0 == 4) return 3;
      else { return 4; }
    }
  }
}


int hash_4_04_04 (int x0) {
  if (x0 == 1) return 2;
  else { if (x0 == 4) return 3;
    else { if (x0 == 3) return 4;
      else {return 1;}
    }
  }
}


int hash_1_04_05 (int x0) {
  if (x0 == 2) return 1;
  else { if (x0 == 1) return 2;
    else { if (x0 == 4) return 3;
      else { return 4;
      }
    }
  }
}


int hash_2_04_05 (int x0) {
  if (x0 == 2) return 1;
  else { if (x0 == 1) return 2;
    else { if (x0 == 4) return 3;
      else { return 4; }
    }
  }
}

int hash_3_04_05 (int x0) {
  if (x0 == 2) return 1;
  else { if (x0 == 1) return 2;
    else { if (x0 == 4) return 3;
      else { return 4; }
    }
  }
}

int hash_4_04_05 (int x0) {
  if (x0 == 2) return 1;
  else { if (x0 == 1) return 2;
    else { if (x0 == 4) return 3;
      else { return 4; }
    }
  }
}


int hash_5_04_05 (int x0) {
  if (x0 == 1) return 2;
  else { if (x0 == 4) return 3;
    else { if (x0 == 3) return 4;
      else { return 1; }
    }
  }
}


int hash_1_05_03 (int x0) {
  if (x0 == 3) return 5;
  else { if (x0 == 1) return 1;
    else { if (x0 == 5) return 3;
      else { if (x0 == 2) return 4;
	else { return 2; }
      }
    }
  }
}

int hash_2_05_03 (int x0) {
  if (x0 == 3) return 5;
  else { if (x0 == 1) return 1;
    else { if (x0 == 5) return 3;
      else { if (x0 == 2) return 4;
	else { return 2; }
      }
    }
  }
}


int hash_3_05_03 (int x0) {
  if (x0 == 1) return 1;
  else { if (x0 == 5) return 3;
    else { if (x0 == 2) return 4;
      else { if (x0 == 4) return 2;
	else { return 5; }
      }
    }
  }
}


int hash_1_05_05(int x0) {
  if (x0 == 3) return 5;
  else { if (x0 == 1) return 1;
    else { if (x0 == 5) return 3;
      else { if (x0 == 2) return 4;
	else { return 2; }
      }
    }
  }
}


int hash_3_05_05 (int x0) {
  if (x0 == 3) return 5;
  else { if (x0 == 1) return 1;
    else { if (x0 == 5) return 3;
      else { if (x0 == 2) return 4;
	else { return 2; }
      }
    }
  }
}


int hash_2_05_05 (int x0) {
  if (x0 == 3) return 5;
  else { if (x0 == 1) return 1;
    else { if (x0 == 5) return 3;
      else { if (x0 == 2) return 4;
	else { return 2; }
      }
    }
  }
}


int hash_4_05_05 (int x0) {
  if (x0 == 3) return 5;
  else { if (x0 == 1) return 1;
    else { if (x0 == 5) return 3;
      else { if (x0 == 2) return 4;
	else { return 2; }
      }
    }
  }
}


int hash_5_05_05 (int x0) {
  if (x0 == 1) return 1;
  else { if (x0 == 5) return 3;
    else { if (x0 == 2) return 4;
      else { if (x0 == 4) return 2;
	else { return 5; }
      }
    }
  }
}



int hash_2_06_06 (int x0) {
  if (x0 == 3) return 2;
  else { if (x0 == 1) return 5;
    else { if (x0 == 5) return 1;
      else { if (x0 == 2) return 3;
	else { if (x0 == 6) return 4;
	  else { return 6; }
	}
      }
    }
  }
}

int hash_3_06_06 (int x0) {
  if (x0 == 3) return 2;
  else { if (x0 == 1) return 5;
    else { if (x0 == 5) return 1;
      else { if (x0 == 2) return 3;
	else { if (x0 == 6) return 4;
	  else {return 6; }
	}
      }
    }
  }
}

int hash_5_06_06 (int x0) {
  if (x0 == 3) return 2;
  else { if (x0 == 1) return 5;
    else { if (x0 == 5) return 1;
      else { if (x0 == 2) return 3;
	else { if (x0 == 6) return 4;
	  else { return 6; }
	}
      }
    }
  }
}


int hash_4_06_06 (int x0) {
  if (x0 == 3) return 2;
  else { if (x0 == 1) return 5;
    else { if (x0 == 5) return 1;
      else { if (x0 == 2) return 3;
	else { if (x0 == 6) return 4;
	  else { return 6; }
	}
      }
    }
  }
}


int hash_6_06_06 (int x0) {
  if (x0 == 1) return 5;
  else { if (x0 == 5) return 1;
    else { if (x0 == 2) return 3;
      else { if (x0 == 6) return 4;
	else { if (x0 == 4) return 6;
	  else { return 2; }
	}
      }
    }
  }
}


int hash_1_06_06 (int x0) {
  if (x0 == 3) return 2;
  else { if (x0 == 1) return 5;
    else { if (x0 == 5) return 1;
      else { if (x0 == 2) return 3;
	else { if (x0 == 6) return 4;
	  else { return 6; }
	}
      }
    }
  }
}
