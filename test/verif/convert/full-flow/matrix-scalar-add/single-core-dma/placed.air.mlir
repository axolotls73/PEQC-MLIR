
//
// placed.air.mlir: This file is part of the PEQC-MLIR project.
//
// Copyright (C) 2025 Colorado State University
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

// too many tasks? investigate
// XFAIL: *

// REQUIRES: air
// RUN: mkdir -p %t
// RUN: air-opt --convert-linalg-to-affine-loops --lower-affine %s > %t/input-lowered.mlir
// RUN: verif-opt --verif-create-main=argument-names="arg0,arg1" --verif-air-convert-channel %t/input-lowered.mlir > %t/conversion-channel.mlir
// RUN: verif-opt --lower-affine --verif-air-to-scf-par \
// RUN:     --verif-scf-parallel-to-async --verif-air-execute-to-async --verif-air-dma-to-memref \
// RUN:     --verif-scf-parallel-to-async %t/conversion-channel.mlir --verif-move-to-main > %t/conversion.mlir && \
// RUN: sed -i 's/!air.async.token/!async.token/g' %t/conversion.mlir && \
//      ^ quick and dirty solution until i make a pass to remove unrealized_conversion_casts
// RUN: verif-translate --translate-to-past %t/conversion.mlir > %t/result.c && \
// RUN: %add_epilogue %t/result.c %t/translation.c

// RUN: %pastchecker %t/translation.c %t/translation.c arg0,arg1 | grep YES

module {
  air.channel @channel_0 [1, 1]
  air.channel @channel_1 [1, 1]
  func.func @copy(%arg0: memref<32x16xi32>, %arg1: memref<32x16xi32>) {
    %0 = air.launch async () in () args(%arg2=%arg0, %arg3=%arg1) : memref<32x16xi32>, memref<32x16xi32> attributes {id = 1 : i32} {
      %1 = air.segment @seg async  args(%arg4=%arg2, %arg5=%arg3) : memref<32x16xi32>, memref<32x16xi32> attributes {id = 2 : i32, x_loc = 0 : i64, x_size = 4 : i64, y_loc = 2 : i64, y_size = 6 : i64} {
        %c256 = arith.constant 256 : index
        %c2 = arith.constant 2 : index
        %c16 = arith.constant 16 : index
        %c8 = arith.constant 8 : index
        %c1 = arith.constant 1 : index
        %c0 = arith.constant 0 : index
        %2 = air.channel.put async  @channel_0[%c0, %c0] (%arg4[%c0, %c0, %c0, %c0] [%c2, %c2, %c16, %c8] [%c256, %c8, %c16, %c1]) {id = 1 : i32} : (memref<32x16xi32>)
        %3 = air.channel.get async  @channel_1[%c0, %c0] (%arg5[%c0, %c0, %c0, %c0] [%c2, %c2, %c16, %c8] [%c256, %c8, %c16, %c1]) {id = 2 : i32} : (memref<32x16xi32>)
        %4 = air.herd @xaddherd async  tile (%arg6, %arg7) in (%arg8=%c1, %arg9=%c1) attributes {id = 3 : i32, x_loc = 0 : i64, y_loc = 2 : i64} {
          %c8_0 = arith.constant 8 : index
          %c16_1 = arith.constant 16 : index
          %c0_2 = arith.constant 0 : index
          %c2_3 = arith.constant 2 : index
          %c1_4 = arith.constant 1 : index
          %async_token, %results = air.execute -> (memref<16x8xi32, 2 : i32>) {
            %alloc = memref.alloc() : memref<16x8xi32, 2 : i32>
            air.execute_terminator %alloc : memref<16x8xi32, 2 : i32>
          }
          %async_token_5, %results_6 = air.execute -> (memref<16x8xi32, 2 : i32>) {
            %alloc = memref.alloc() : memref<16x8xi32, 2 : i32>
            air.execute_terminator %alloc : memref<16x8xi32, 2 : i32>
          }
          %async_token_7, %results_8 = air.execute -> (memref<16x8xi32, 2 : i32>) {
            %alloc = memref.alloc() : memref<16x8xi32, 2 : i32>
            air.execute_terminator %alloc : memref<16x8xi32, 2 : i32>
          }
          %async_token_9, %results_10 = air.execute -> (memref<16x8xi32, 2 : i32>) {
            %alloc = memref.alloc() : memref<16x8xi32, 2 : i32>
            air.execute_terminator %alloc : memref<16x8xi32, 2 : i32>
          }
          %5 = scf.for %arg10 = %c0_2 to %c2_3 step %c1_4 iter_args(%arg11 = %async_token_9) -> (!air.async.token) {
            %async_token_15, %results_16 = air.execute [%arg11] -> (index) {
              %14 = arith.muli %arg10, %c2_3 : index
              air.execute_terminator %14 : index
            }
            %6 = air.channel.get async [%arg11]  @channel_0[%arg6, %arg7] (%results_10[] [] []) {id = 3 : i32} : (memref<16x8xi32, 2 : i32>)
            %7 = air.wait_all async [%async_token_15, %6]
            %8 = scf.for %arg12 = %c0_2 to %c16_1 step %c1_4 iter_args(%arg13 = %7) -> (!air.async.token) {
              %14 = scf.for %arg14 = %c0_2 to %c8_0 step %c1_4 iter_args(%arg15 = %arg13) -> (!air.async.token) {
                %async_token_21, %results_22 = air.execute [%arg15] -> (i32) {
                  %16 = memref.load %results_10[%arg12, %arg14] : memref<16x8xi32, 2 : i32>
                  air.execute_terminator %16 : i32
                }
                %async_token_23, %results_24 = air.execute [%arg15] -> (i32) {
                  %16 = arith.index_cast %results_16 : index to i32
                  air.execute_terminator %16 : i32
                }
                %async_token_25, %results_26 = air.execute [%arg15] -> (i32) {
                  %16 = arith.addi %results_22, %results_24 : i32
                  air.execute_terminator %16 : i32
                }
                %async_token_27 = air.execute [%arg15] {
                  memref.store %results_26, %results_8[%arg12, %arg14] : memref<16x8xi32, 2 : i32>
                }
                %15 = air.wait_all async [%async_token_21, %async_token_23, %async_token_25, %async_token_27]
                scf.yield %15 : !air.async.token
              }
              scf.yield %14 : !air.async.token
            }
            %9 = air.channel.put async [%8]  @channel_1[%arg6, %arg7] (%results_8[] [] []) {id = 4 : i32} : (memref<16x8xi32, 2 : i32>)
            %async_token_17, %results_18 = air.execute [%9] -> (index) {
              %14 = arith.muli %arg10, %c2_3 : index
              air.execute_terminator %14 : index
            }
            %async_token_19, %results_20 = air.execute [%async_token_17] -> (index) {
              %14 = arith.addi %results_18, %c1_4 : index
              air.execute_terminator %14 : index
            }
            %10 = air.channel.get async [%arg11]  @channel_0[%arg6, %arg7] (%results_6[] [] []) {id = 5 : i32} : (memref<16x8xi32, 2 : i32>)
            %11 = air.wait_all async [%async_token_19, %10]
            %12 = scf.for %arg12 = %c0_2 to %c16_1 step %c1_4 iter_args(%arg13 = %11) -> (!air.async.token) {
              %14 = scf.for %arg14 = %c0_2 to %c8_0 step %c1_4 iter_args(%arg15 = %arg13) -> (!air.async.token) {
                %async_token_21, %results_22 = air.execute [%arg15] -> (i32) {
                  %16 = memref.load %results_6[%arg12, %arg14] : memref<16x8xi32, 2 : i32>
                  air.execute_terminator %16 : i32
                }
                %async_token_23, %results_24 = air.execute [%arg15] -> (i32) {
                  %16 = arith.index_cast %results_20 : index to i32
                  air.execute_terminator %16 : i32
                }
                %async_token_25, %results_26 = air.execute [%arg15] -> (i32) {
                  %16 = arith.addi %results_22, %results_24 : i32
                  air.execute_terminator %16 : i32
                }
                %async_token_27 = air.execute [%arg15] {
                  memref.store %results_26, %results[%arg12, %arg14] : memref<16x8xi32, 2 : i32>
                }
                %15 = air.wait_all async [%async_token_21, %async_token_23, %async_token_25, %async_token_27]
                scf.yield %15 : !air.async.token
              }
              scf.yield %14 : !air.async.token
            }
            %13 = air.channel.put async [%12]  @channel_1[%arg6, %arg7] (%results[] [] []) {id = 6 : i32} : (memref<16x8xi32, 2 : i32>)
            scf.yield %13 : !air.async.token
          }
          %async_token_11 = air.execute [%5] {
            memref.dealloc %results_10 : memref<16x8xi32, 2 : i32>
          }
          %async_token_12 = air.execute [%5] {
            memref.dealloc %results_8 : memref<16x8xi32, 2 : i32>
          }
          %async_token_13 = air.execute [%5] {
            memref.dealloc %results_6 : memref<16x8xi32, 2 : i32>
          }
          %async_token_14 = air.execute [%5] {
            memref.dealloc %results : memref<16x8xi32, 2 : i32>
          }
        }
        air.wait_all [%2, %3, %4]
      }
    }
    return
  }
}
