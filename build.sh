#!/bin/bash


#
# build.sh: This file is part of the PEQC-MLIR project.
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


AIR_REPO=/opt/mlir-air
# PAST_DIR=/data-host-share/pocc-devel/ir/past
# PAST_DIR=/data-host-share/past-0.7.3-beta
PAST_DIR=/data-host-share/pocc-devel/ir/past-clean
LLVM_REPO=$AIR_REPO/llvm

# rm -r build CMakeFiles
mkdir -p build && cd build
cmake -G Ninja .. \
  -DLLVM_DIR=$LLVM_REPO/build/lib/cmake/llvm \
  -DMLIR_DIR=$LLVM_REPO/build/lib/cmake/mlir \
  -DAIR_DIR=$AIR_REPO \
  -DPAST_DIR=$PAST_DIR

cmake --build . --target mlir-doc
cmake --build . --target verif-lsp-server
cmake --build . --target check-verif
