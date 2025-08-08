#!/bin/bash

FILE=$1
LIB=libt

../../../build/bin/cvc4 --simplification=none --theoryof-mode=term --incremental --fuzz-solve --target-header=./${LIB}.h --target-lib=./${LIB}.a ${FILE}
