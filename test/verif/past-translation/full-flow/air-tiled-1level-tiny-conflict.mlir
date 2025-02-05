
//
// air-tiled-1level-tiny-conflict.mlir: This file is part of the PEQC-MLIR project.
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

// RUN: split-file %s %t && \
// RUN: air-opt --convert-linalg-to-affine-loops --lower-affine %t/input.mlir > %t/input-lowered.mlir
// RUN: verif-opt --verif-scf-parallel-to-async %t/input-lowered.mlir > %t/conversion.mlir && \
// RUN: verif-translate --translate-to-past %t/conversion.mlir > %t/result.c && \
// RUN: %add_epilogue %t/result.c %t/epilogue.c %t/translation.c

// RUN: not %pastchecker %t/translation.c %t/translation.c A,B,C | grep conflict

//--- input.mlir

module {
  func.func @forward(%arg0: memref<16x16xi32>, %arg1: memref<16x16xi32>) -> memref<16x16xi32> {
    %c16 = arith.constant 16 : index
    %c0 = arith.constant 0 : index
    %c4 = arith.constant 4 : index
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() : memref<16x16xi32>
    scf.parallel (%arg2, %arg3) = (%c0, %c0) to (%c16, %c16) step (%c4, %c4) {

      // COM: conflict here
      memref.store %c0_i32, %alloc[%c0, %c0] : memref<16x16xi32>

      %subview = memref.subview %arg0[%arg2, 0] [4, 16] [1, 1] : memref<16x16xi32> to memref<4x16xi32, strided<[16, 1], offset: ?>>
      %subview_0 = memref.subview %arg1[0, %arg3] [16, 4] [1, 1] : memref<16x16xi32> to memref<16x4xi32, strided<[16, 1], offset: ?>>
      %subview_1 = memref.subview %alloc[%arg2, %arg3] [4, 4] [1, 1] : memref<16x16xi32> to memref<4x4xi32, strided<[16, 1], offset: ?>>
      %alloc_2 = memref.alloc() : memref<4x4xi32, 1>
      linalg.fill ins(%c0_i32 : i32) outs(%alloc_2 : memref<4x4xi32, 1>)
      linalg.matmul {cast = #linalg.type_fn<cast_signed>} ins(%subview, %subview_0 : memref<4x16xi32, strided<[16, 1], offset: ?>>, memref<16x4xi32, strided<[16, 1], offset: ?>>) outs(%alloc_2 : memref<4x4xi32, 1>)
      memref.copy %alloc_2, %subview_1 : memref<4x4xi32, 1> to memref<4x4xi32, strided<[16, 1], offset: ?>>
      memref.dealloc %alloc_2 : memref<4x4xi32, 1>
      scf.reduce
    }
    return %alloc : memref<16x16xi32>
  }
}


//--- epilogue.c

{
  float* A;
  float* B;
  float* C;
  forward(A, B, C);
}
