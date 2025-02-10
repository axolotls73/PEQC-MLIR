
//
// aie-buffer-basic.mlir: This file is part of the PEQC-MLIR project.
//
// Copyright (C) 2024 Colorado State University
//
// This program can be redistributed and/or modified under the terms
// of the license specified in the LICENSE.txt file at the root of the
// project.
//
// Contact: Louis-Noel Pouchet <pouchet@colostate.edu>
//          Emily Tucker <emily.tucker@colostate.edu>
// Author: Emily Tucker <emily.tucker@colostate.edu>
//
//

// REQUIRES: air
// RUN: verif-opt --verif-convert-aie %s | FileCheck %s

module {
  %tile14 = aie.tile(1, 4)

// CHECK: memref.global "private" @[[BUFNAME:.*]] : memref<5xi32>
// CHECK-NOT: aie.buffer
  %buf = aie.buffer(%tile14) : memref<5xi32>

// CHECK: [[VAL:%.*]] = arith.constant
  %val = arith.constant 42 : i32
  %0 = arith.constant 0 : index
// CHECK: [[BUFVAL:%.*]] = memref.get_global @[[BUFNAME]] : memref<5xi32>
// CHECK: memref.store [[VAL]], [[BUFVAL]]
  memref.store %val, %buf[%0] : memref<5xi32>

// use sym_name
// CHECK: memref.global "private" @buffer_tile14_buf :
  %buf2 = aie.buffer(%tile14) { sym_name = "tile14_buf" } : memref<5xi32>
}

