
//
// matmul-loops-basic-tiny.mlir: This file is part of the PEQC-MLIR project.
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
// RUN: verif-translate --translate-to-past %t/input.mlir > %t/result.c && \
// RUN: %add_epilogue %t/result.c %t/epilogue.c %t/translation.c

// RUN: %pastchecker --enable-preprocessor %t/translation.c %t/translation.c A,B,C | grep YES

// RUN: %pastchecker %t/translation.c %t/compare.c A,B,C | grep YES

// RUN: %pastchecker %t/translation.c %t/compare-bug.c A,B,C | not grep YES

//--- input.mlir

module {
  func.func @matmul_on_memref(%arg0: memref<10x10xi32>, %arg1: memref<10x10xi32>) -> memref<10x10xi32> {
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() : memref<10x10xi32>
    %c0 = arith.constant 0 : index
    %c10 = arith.constant 10 : index
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %c0 to %c10 step %c1 {
      %c0_3 = arith.constant 0 : index
      %c10_4 = arith.constant 10 : index
      %c1_5 = arith.constant 1 : index
      scf.for %arg3 = %c0_3 to %c10_4 step %c1_5 {
        memref.store %c0_i32, %alloc[%arg2, %arg3] : memref<10x10xi32>
      }
    }
    %c0_0 = arith.constant 0 : index
    %c10_1 = arith.constant 10 : index
    %c1_2 = arith.constant 1 : index
    scf.for %arg2 = %c0_0 to %c10_1 step %c1_2 {
      %c0_3 = arith.constant 0 : index
      %c10_4 = arith.constant 10 : index
      %c1_5 = arith.constant 1 : index
      scf.for %arg3 = %c0_3 to %c10_4 step %c1_5 {
        %c0_6 = arith.constant 0 : index
        %c10_7 = arith.constant 10 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg4 = %c0_6 to %c10_7 step %c1_8 {
          %0 = memref.load %arg0[%arg2, %arg4] : memref<10x10xi32>
          %1 = memref.load %arg1[%arg4, %arg3] : memref<10x10xi32>
          %2 = memref.load %alloc[%arg2, %arg3] : memref<10x10xi32>
          %3 = arith.muli %0, %1 : i32
          %4 = arith.addi %2, %3 : i32
          memref.store %4, %alloc[%arg2, %arg3] : memref<10x10xi32>
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

//--- compare-bug.c

#pragma pocc-region-start
void matmul_on_memref(int** A, int** B, int** C) {
  for (int i = 0; i < 10; i++)
    for (int j = 0; j < 10; j++){
      C[i][j] = 0;
      for (int k = 0; k < 10; k++)
        C[i][j] += A[i][k] * B[k][j];
    }
  C[5][6] = 42;
}
{
  matmul_on_memref(A, B, C);
}
#pragma pocc-region-end
