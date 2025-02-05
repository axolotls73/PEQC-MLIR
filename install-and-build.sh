
#
# install-and-build.sh: This file is part of the PEQC-MLIR project.
#
# Copyright (C) 2024 Colorado State University
#
# This program can be redistributed and/or modified under the terms
# of the license specified in the LICENSE.txt file at the root of the
# project.
#
# Contact: Louis-Noel Pouchet <pouchet@colostate.edu>
#          Emily Tucker <emily.tucker@colostate.edu>
# Author: Emily Tucker <emily.tucker@colostate.edu>
#
#


if [ ! -d past-0.7.2 ]; then
    wget -O past-0.7.2.tar.gz 'https://sourceforge.net/projects/pocc/files/1.6/testing/modules/past-0.7.2.tar.gz/download'
    tar -xf past-0.7.2.tar.gz
    cd past-0.7.2
    ./configure
    make
    pastpath=`realpath src`
    export PATH="$pastpath:$PATH"
    cd ..
fi

LLVM_CMAKE_DIR="$1"
AIR_ROOT_STR=""
if [ "$#" -eq 2 ]; then
  AIR_ROOT_STR="-DAIR_DIR=$2"
fi

PAST_DIR=`realpath past-0.7.2`

# rm -r build CMakeFiles
mkdir -p build && cd build
cmake -G Ninja .. \
  -DLLVM_DIR=$LLVM_CMAKE_DIR/llvm \
  -DMLIR_DIR=$LLVM_CMAKE_DIR/mlir \
  $AIR_ROOT_STR \
  -DPAST_DIR=$PAST_DIR

cmake --build . --target mlir-doc
cmake --build . --target check-verif

cd ..
