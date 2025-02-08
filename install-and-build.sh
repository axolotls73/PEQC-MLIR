
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

PAST_VERSION="past-0.7.3-beta";
PAST_WEBLINK="https://downloads.sourceforge.net/project/pocc/1.6/testing/modules/unstable-testing";
base_dir=`pwd`;
if [ ! -d "$PAST_VERSION" ]; then
    wget "$PAST_WEBLINK/$PAST_VERSION.tar.gz";
    tar xzf "$PAST_VERSION.tar.gz";
    cd "$PAST_VERSION" && ./configure && make; cd -;
    PAST_BIN_DIR="$base_dir/$PAST_VERSION/src"
    export PATH="$PAST_BIN_DIR:$PATH"
    cd "$base_dir";
fi

LLVM_CMAKE_DIR="$1"
AIR_ROOT_STR=""
if [ "$#" -eq 2 ]; then
  AIR_ROOT_STR="-DAIR_DIR=$2"
fi

PAST_DIR="$base_dir/$PAST_VERSION";

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
