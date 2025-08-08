#!/bin/bash

# cleaning files from prev. run
rm -rf outdir

../../../build/bin/cvc4 --incremental --theoryof-mode=term --simplification=none --fuzz-solve --target-header=./libindustr.h --target-lib=./libindustr.a $1
