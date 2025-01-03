#!/bin/bash

AIR_REPO=/opt/mlir-air
PAST_DIR=/data-host-share/pocc-devel/ir/past
LLVM_REPO=$AIR_REPO/llvm

# rm -r build CMakeFiles
mkdir -p build && cd build
cmake -G Ninja .. \
  -DLLVM_DIR=$LLVM_REPO/build/lib/cmake/llvm \
  -DMLIR_DIR=$LLVM_REPO/build/lib/cmake/mlir \
  -DAIR_DIR=$AIR_REPO \
  -DPAST_DIR=$PAST_DIR

cmake --build . --target mlir-doc
cmake --build . --target check-verif
