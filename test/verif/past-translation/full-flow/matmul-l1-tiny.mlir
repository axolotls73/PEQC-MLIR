
//
// matmul-l1-tiny.mlir: This file is part of the PEQC-MLIR project.
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

// COM: air-opt -air-linalg-codegen='l1-tile-size=5,5,5' --convert-linalg-to-affine-loops --lower-affine examples/matmul-linalg-memref-tiny.mlir
// modified to use scf.for to only test the translator

// RUN: split-file %s %t && \
// RUN: verif-translate --translate-to-past %t/input.mlir > %t/result.c && \
// RUN: %add_epilogue %t/result.c %t/epilogue.c %t/translation.c

// RUN: %pastchecker %t/translation.c %t/translation.c A,B,C | grep YES

// RUN: %pastchecker %t/translation.c %t/compare.c A,B,C | grep YES

//--- input.mlir

module {
  func.func @matmul_on_memref(%arg0: memref<10x10xi32>, %arg1: memref<10x10xi32>) -> memref<10x10xi32> {
    %c5 = arith.constant 5 : index
    %c10 = arith.constant 10 : index
    %c0 = arith.constant 0 : index
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() : memref<10x10xi32>
    %c0_0 = arith.constant 0 : index
    %c10_1 = arith.constant 10 : index
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %c0_0 to %c10_1 step %c1 {
      %c0_2 = arith.constant 0 : index
      %c10_3 = arith.constant 10 : index
      %c1_4 = arith.constant 1 : index
      scf.for %arg3 = %c0_2 to %c10_3 step %c1_4 {
        memref.store %c0_i32, %alloc[%arg2, %arg3] : memref<10x10xi32>
      }
    }
    // scf.parallel (%arg2, %arg3) = (%c0, %c0) to (%c10, %c10) step (%c5, %c5) {
    scf.for %arg2 = %c0 to %c10 step %c5 {
      scf.for %arg3 = %c0 to %c10 step %c5 {
        scf.for %arg4 = %c0 to %c10 step %c5 {
          %subview = memref.subview %arg0[%arg2, %arg4] [5, 5] [1, 1] : memref<10x10xi32> to memref<5x5xi32, strided<[10, 1], offset: ?>>
          %subview_2 = memref.subview %arg1[%arg4, %arg3] [5, 5] [1, 1] : memref<10x10xi32> to memref<5x5xi32, strided<[10, 1], offset: ?>>
          %subview_3 = memref.subview %alloc[%arg2, %arg3] [5, 5] [1, 1] : memref<10x10xi32> to memref<5x5xi32, strided<[10, 1], offset: ?>>
          %alloc_4 = memref.alloc() : memref<5x5xi32, 2>
          %alloc_5 = memref.alloc() : memref<5x5xi32, 2>
          %alloc_6 = memref.alloc() : memref<5x5xi32, 2>
          memref.copy %subview, %alloc_4 : memref<5x5xi32, strided<[10, 1], offset: ?>> to memref<5x5xi32, 2>
          memref.copy %subview_2, %alloc_5 : memref<5x5xi32, strided<[10, 1], offset: ?>> to memref<5x5xi32, 2>
          memref.copy %subview_3, %alloc_6 : memref<5x5xi32, strided<[10, 1], offset: ?>> to memref<5x5xi32, 2>
          %c0_7 = arith.constant 0 : index
          %c5_8 = arith.constant 5 : index
          %c1_9 = arith.constant 1 : index
          scf.for %arg5 = %c0_7 to %c5_8 step %c1_9 {
            %c0_10 = arith.constant 0 : index
            %c5_11 = arith.constant 5 : index
            %c1_12 = arith.constant 1 : index
            scf.for %arg6 = %c0_10 to %c5_11 step %c1_12 {
              %c0_13 = arith.constant 0 : index
              %c5_14 = arith.constant 5 : index
              %c1_15 = arith.constant 1 : index
              scf.for %arg7 = %c0_13 to %c5_14 step %c1_15 {
                %0 = memref.load %alloc_4[%arg5, %arg7] : memref<5x5xi32, 2>
                %1 = memref.load %alloc_5[%arg7, %arg6] : memref<5x5xi32, 2>
                %2 = memref.load %alloc_6[%arg5, %arg6] : memref<5x5xi32, 2>
                %3 = arith.muli %0, %1 : i32
                %4 = arith.addi %2, %3 : i32
                memref.store %4, %alloc_6[%arg5, %arg6] : memref<5x5xi32, 2>
              }
            }
          }
          memref.copy %alloc_6, %subview_3 : memref<5x5xi32, 2> to memref<5x5xi32, strided<[10, 1], offset: ?>>
          memref.dealloc %alloc_4 : memref<5x5xi32, 2>
          memref.dealloc %alloc_5 : memref<5x5xi32, 2>
          memref.dealloc %alloc_6 : memref<5x5xi32, 2>
        }
      }
    }
    return %alloc : memref<10x10xi32>
  }
}

//--- epilogue.c

{
  matmul_on_memref(A, B, C);
}

//--- compare.c

#pragma pocc-region-start
void matmul_on_memref(int** A, int** B, int** C) {
  for (int i = 0; i < 10; i++)
    for (int j = 0; j < 10; j++){
      C[i][j] = 0;
      for (int k = 0; k < 10; k++)
        C[i][j] += A[i][k] * B[k][j];
    }
}
{
  matmul_on_memref(A, B, C);
}
#pragma pocc-region-end
