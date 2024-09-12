#!/bin/bash

LLVM_REPO=/opt/mlir-air/llvm
BUILD_DIR=$LLVM_REPO/build
INSTALL_DIR=$LLVM_REPO/install

rm -r build
mkdir build && cd build
cmake -G Ninja .. \
  -DLLVM_DIR=$LLVM_REPO/build/lib/cmake/llvm \
  -DMLIR_DIR=$LLVM_REPO/build/lib/cmake/mlir

cmake --build . --target mlir-doc
cmake --build . --target check-verif
