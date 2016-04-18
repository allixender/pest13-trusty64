#!/bin/bash

apt-get update -y \
      && apt-get install -y --no-install-recommends libgfortran3 build-essential gfortran libquadmath0

cd src

make cppp
 
make d_test

make -f pest.mak all

# make clean

make -f ppest.mak all

# make clean

make -f pestutl1.mak all

# make clean

make -f pestutl2.mak all

# make clean

make -f pestutl3.mak all

# make clean

make -f pestutl4.mak all

# make clean

make -f pestutl5.mak all

# make clean

make -f pestutl6.mak all

# make clean

make -f sensan.mak all

# make clean

make -f beopest.mak all

# make clean

# make install

