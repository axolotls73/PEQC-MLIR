
//
// matmul-l2-tile.mlir: This file is part of the PEQC-MLIR project.
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

// COM: same as in ../examples/

// RUN: split-file %s %t && \
// RUN: verif-opt --verif-scf-parallel-to-async %t/input.mlir > %t/conversion.mlir && \
// RUN: verif-translate --translate-to-past %t/conversion.mlir > %t/result.c

//--- input.mlir

module {
  func.func @matmul_on_memref(%arg0: memref<128x128xi32>, %arg1: memref<128x128xi32>) -> memref<128x128xi32> {
    %c64 = arith.constant 64 : index
    %c128 = arith.constant 128 : index
    %c0 = arith.constant 0 : index
    %c32 = arith.constant 32 : index
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() : memref<128x128xi32>
    %c0_0 = arith.constant 0 : index
    %c128_1 = arith.constant 128 : index
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %c0_0 to %c128_1 step %c1 {
      %c0_2 = arith.constant 0 : index
      %c128_3 = arith.constant 128 : index
      %c1_4 = arith.constant 1 : index
      scf.for %arg3 = %c0_2 to %c128_3 step %c1_4 {
        memref.store %c0_i32, %alloc[%arg2, %arg3] : memref<128x128xi32>
      }
    }
    scf.parallel (%arg2, %arg3) = (%c0, %c0) to (%c128, %c128) step (%c64, %c64) {
      scf.for %arg4 = %c0 to %c128 step %c64 {
        %subview = memref.subview %arg0[%arg2, %arg4] [64, 64] [1, 1] : memref<128x128xi32> to memref<64x64xi32, strided<[128, 1], offset: ?>>
        %subview_2 = memref.subview %arg1[%arg4, %arg3] [64, 64] [1, 1] : memref<128x128xi32> to memref<64x64xi32, strided<[128, 1], offset: ?>>
        %subview_3 = memref.subview %alloc[%arg2, %arg3] [64, 64] [1, 1] : memref<128x128xi32> to memref<64x64xi32, strided<[128, 1], offset: ?>>
        %alloc_4 = memref.alloc() : memref<64x64xi32, 1>
        %alloc_5 = memref.alloc() : memref<64x64xi32, 1>
        %alloc_6 = memref.alloc() : memref<64x64xi32, 1>
        memref.copy %subview, %alloc_4 : memref<64x64xi32, strided<[128, 1], offset: ?>> to memref<64x64xi32, 1>
        memref.copy %subview_2, %alloc_5 : memref<64x64xi32, strided<[128, 1], offset: ?>> to memref<64x64xi32, 1>
        memref.copy %subview_3, %alloc_6 : memref<64x64xi32, strided<[128, 1], offset: ?>> to memref<64x64xi32, 1>
        scf.parallel (%arg5, %arg6) = (%c0, %c0) to (%c64, %c64) step (%c32, %c32) {
          scf.for %arg7 = %c0 to %c64 step %c32 {
            %subview_7 = memref.subview %alloc_4[%arg5, %arg7] [32, 32] [1, 1] : memref<64x64xi32, 1> to memref<32x32xi32, strided<[64, 1], offset: ?>, 1>
            %subview_8 = memref.subview %alloc_5[%arg7, %arg6] [32, 32] [1, 1] : memref<64x64xi32, 1> to memref<32x32xi32, strided<[64, 1], offset: ?>, 1>
            %subview_9 = memref.subview %alloc_6[%arg5, %arg6] [32, 32] [1, 1] : memref<64x64xi32, 1> to memref<32x32xi32, strided<[64, 1], offset: ?>, 1>
            %alloc_10 = memref.alloc() : memref<32x32xi32, 2>
            %alloc_11 = memref.alloc() : memref<32x32xi32, 2>
            %alloc_12 = memref.alloc() : memref<32x32xi32, 2>
            memref.copy %subview_7, %alloc_10 : memref<32x32xi32, strided<[64, 1], offset: ?>, 1> to memref<32x32xi32, 2>
            memref.copy %subview_8, %alloc_11 : memref<32x32xi32, strided<[64, 1], offset: ?>, 1> to memref<32x32xi32, 2>
            memref.copy %subview_9, %alloc_12 : memref<32x32xi32, strided<[64, 1], offset: ?>, 1> to memref<32x32xi32, 2>
            %c0_13 = arith.constant 0 : index
            %c32_14 = arith.constant 32 : index
            %c1_15 = arith.constant 1 : index
            scf.for %arg8 = %c0_13 to %c32_14 step %c1_15 {
              %c0_16 = arith.constant 0 : index
              %c32_17 = arith.constant 32 : index
              %c1_18 = arith.constant 1 : index
              scf.for %arg9 = %c0_16 to %c32_17 step %c1_18 {
                %c0_19 = arith.constant 0 : index
                %c32_20 = arith.constant 32 : index
                %c1_21 = arith.constant 1 : index
                scf.for %arg10 = %c0_19 to %c32_20 step %c1_21 {
                  %0 = memref.load %alloc_10[%arg8, %arg10] : memref<32x32xi32, 2>
                  %1 = memref.load %alloc_11[%arg10, %arg9] : memref<32x32xi32, 2>
                  %2 = memref.load %alloc_12[%arg8, %arg9] : memref<32x32xi32, 2>
                  %3 = arith.muli %0, %1 : i32
                  %4 = arith.addi %2, %3 : i32
                  memref.store %4, %alloc_12[%arg8, %arg9] : memref<32x32xi32, 2>
                }
              }
            }
            memref.copy %alloc_12, %subview_9 : memref<32x32xi32, 2> to memref<32x32xi32, strided<[64, 1], offset: ?>, 1>
            memref.dealloc %alloc_10 : memref<32x32xi32, 2>
            memref.dealloc %alloc_11 : memref<32x32xi32, 2>
            memref.dealloc %alloc_12 : memref<32x32xi32, 2>
          }
          scf.reduce
        }
        memref.copy %alloc_6, %subview_3 : memref<64x64xi32, 1> to memref<64x64xi32, strided<[128, 1], offset: ?>>
        memref.dealloc %alloc_4 : memref<64x64xi32, 1>
        memref.dealloc %alloc_5 : memref<64x64xi32, 1>
        memref.dealloc %alloc_6 : memref<64x64xi32, 1>
      }
      scf.reduce
    }
    return %alloc : memref<128x128xi32>
  }
}

