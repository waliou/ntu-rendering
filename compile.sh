#! /bin/bash

if [[ ! -d ./build/ ]]; then
  mkdir build  
fi

cd build
cmake ../pbrt-v4
make -j $(nproc)
