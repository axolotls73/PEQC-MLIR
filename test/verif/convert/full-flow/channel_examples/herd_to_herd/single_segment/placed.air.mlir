
//
// placed.air.mlir: This file is part of the PEQC-MLIR project.
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

//XFAIL: *
// REQUIRES: air
// RUN: mkdir -p %t
// RUN: air-opt --convert-linalg-to-affine-loops --lower-affine %s > %t/input-lowered.mlir
// RUN: verif-opt --verif-create-main=argument-names="A,B,C" --verif-air-convert-channel %t/input-lowered.mlir > %t/conversion-channel.mlir
// RUN: verif-opt --lower-affine --verif-air-to-scf-par \
// RUN:     --verif-scf-parallel-to-async --verif-air-execute-to-async --verif-air-dma-to-memref \
// RUN:     --verif-scf-parallel-to-async %t/conversion-channel.mlir --verif-move-to-main > %t/conversion.mlir && \
// RUN: sed -i 's/!air.async.token/!async.token/g' %t/conversion.mlir && \
//      ^ quick and dirty solution until i make a pass to remove unrealized_conversion_casts
// RUN: verif-translate --translate-to-past %t/conversion.mlir > %t/result.c && \
// RUN: %add_epilogue %t/result.c %t/translation.c

// RUN: %pastchecker %t/translation.c %t/translation.c A,B,C | grep YES

// RUN: %pastchecker %t/translation.c %S/compare.c A,B,C 2>&1 | grep YES

module {
  air.channel @ChanIn []
  air.channel @ChanOut []
  air.channel @Herd2Herd []
  func.func @copy(%arg0: memref<8x16xi32>, %arg1: memref<8x16xi32>) {
    %0 = air.launch async () in () args(%arg2=%arg0, %arg3=%arg1) : memref<8x16xi32>, memref<8x16xi32> attributes {id = 1 : i32} {
      %1 = air.channel.put async  @ChanIn[] (%arg2[] [] []) {id = 1 : i32} : (memref<8x16xi32>)
      %2 = air.channel.get async  @ChanOut[] (%arg3[] [] []) {id = 2 : i32} : (memref<8x16xi32>)
      %3 = air.segment @seg async  attributes {id = 2 : i32, x_loc = 0 : i64, x_size = 4 : i64, y_loc = 2 : i64, y_size = 6 : i64} {
        %c1 = arith.constant 1 : index
        %4 = air.herd @producer_herd async  tile (%arg4, %arg5) in (%arg6=%c1, %arg7=%c1) attributes {id = 3 : i32, x_loc = 0 : i64, y_loc = 2 : i64} {
          %c16 = arith.constant 16 : index
          %c1_0 = arith.constant 1 : index
          %c8 = arith.constant 8 : index
          %c0 = arith.constant 0 : index
          %async_token, %results = air.execute -> (memref<8x16xi32, 2 : i32>) {
            %alloc = memref.alloc() : memref<8x16xi32, 2 : i32>
            air.execute_terminator %alloc : memref<8x16xi32, 2 : i32>
          }
          %async_token_1, %results_2 = air.execute -> (memref<8x16xi32, 2 : i32>) {
            %alloc = memref.alloc() : memref<8x16xi32, 2 : i32>
            air.execute_terminator %alloc : memref<8x16xi32, 2 : i32>
          }
          %6 = air.channel.get async [%async_token]  @ChanIn[] (%results[] [] []) {id = 3 : i32} : (memref<8x16xi32, 2 : i32>)
          %async_token_3 = air.execute [%6, %async_token_1] {
            scf.for %arg8 = %c0 to %c8 step %c1_0 {
              scf.for %arg9 = %c0 to %c16 step %c1_0 {
                %8 = memref.load %results[%arg8, %arg9] : memref<8x16xi32, 2 : i32>
                %9 = arith.muli %8, %8 : i32
                memref.store %9, %results_2[%arg8, %arg9] : memref<8x16xi32, 2 : i32>
              }
            }
          }
          %7 = air.channel.put async [%async_token_3]  @Herd2Herd[] (%results_2[] [] []) {id = 4 : i32} : (memref<8x16xi32, 2 : i32>)
          %async_token_4 = air.execute [%async_token_3] {
            memref.dealloc %results : memref<8x16xi32, 2 : i32>
          }
          %async_token_5 = air.execute [%7] {
            memref.dealloc %results_2 : memref<8x16xi32, 2 : i32>
          }
        }
        %5 = air.herd @consumer_herd async  tile (%arg4, %arg5) in (%arg6=%c1, %arg7=%c1) attributes {id = 4 : i32, x_loc = 1 : i64, y_loc = 2 : i64} {
          %c1_i32 = arith.constant 1 : i32
          %c16 = arith.constant 16 : index
          %c1_0 = arith.constant 1 : index
          %c8 = arith.constant 8 : index
          %c0 = arith.constant 0 : index
          %async_token, %results = air.execute -> (memref<8x16xi32, 2 : i32>) {
            %alloc = memref.alloc() : memref<8x16xi32, 2 : i32>
            air.execute_terminator %alloc : memref<8x16xi32, 2 : i32>
          }
          %async_token_1, %results_2 = air.execute -> (memref<8x16xi32, 2 : i32>) {
            %alloc = memref.alloc() : memref<8x16xi32, 2 : i32>
            air.execute_terminator %alloc : memref<8x16xi32, 2 : i32>
          }
          %6 = air.channel.get async [%async_token]  @Herd2Herd[] (%results[] [] []) {id = 5 : i32} : (memref<8x16xi32, 2 : i32>)
          %7 = air.wait_all async [%async_token_1, %6]
          %8 = scf.for %arg8 = %c0 to %c8 step %c1_0 iter_args(%arg9 = %7) -> (!air.async.token) {
            %10 = scf.for %arg10 = %c0 to %c16 step %c1_0 iter_args(%arg11 = %arg9) -> (!air.async.token) {
              %async_token_5, %results_6 = air.execute [%arg11] -> (i32) {
                %12 = memref.load %results[%arg8, %arg10] : memref<8x16xi32, 2 : i32>
                air.execute_terminator %12 : i32
              }
              %async_token_7, %results_8 = air.execute [%arg11] -> (i32) {
                %12 = arith.addi %results_6, %c1_i32 : i32
                air.execute_terminator %12 : i32
              }
              %async_token_9 = air.execute [%arg11] {
                memref.store %results_8, %results_2[%arg8, %arg10] : memref<8x16xi32, 2 : i32>
              }
              %11 = air.wait_all async [%async_token_5, %async_token_7, %async_token_9]
              scf.yield %11 : !air.async.token
            }
            scf.yield %10 : !air.async.token
          }
          %9 = air.channel.put async [%8]  @ChanOut[] (%results_2[] [] []) {id = 6 : i32} : (memref<8x16xi32, 2 : i32>)
          %async_token_3 = air.execute [%8] {
            memref.dealloc %results : memref<8x16xi32, 2 : i32>
          }
          %async_token_4 = air.execute [%9] {
            memref.dealloc %results_2 : memref<8x16xi32, 2 : i32>
          }
        }
        air.wait_all [%4, %5]
      }
    }
    return
  }
}
