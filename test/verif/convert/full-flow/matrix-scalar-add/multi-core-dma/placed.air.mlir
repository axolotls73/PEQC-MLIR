
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

#map = affine_map<()[s0] -> (s0 * 2)>
#map1 = affine_map<()[s0, s1] -> (s0 + s1)>
module {
  air.channel @channel_0 [2, 2]
  air.channel @channel_1 [2, 2]
  func.func @copy(%arg0: memref<32x16xi32>, %arg1: memref<32x16xi32>) {
    %0 = air.launch async () in () args(%arg2=%arg0, %arg3=%arg1) : memref<32x16xi32>, memref<32x16xi32> attributes {id = 1 : i32} {
      %1 = air.segment @seg async  args(%arg4=%arg2, %arg5=%arg3) : memref<32x16xi32>, memref<32x16xi32> attributes {id = 2 : i32, x_loc = 0 : i64, x_size = 4 : i64, y_loc = 2 : i64, y_size = 6 : i64} {
        %c4 = arith.constant 4 : index
        %c16 = arith.constant 16 : index
        %c8 = arith.constant 8 : index
        %c1 = arith.constant 1 : index
        %c0 = arith.constant 0 : index
        %2 = air.channel.put async  @channel_0[%c0, %c0] (%arg4[%c0, %c0] [%c16, %c8] [%c16, %c1]) {id = 1 : i32} : (memref<32x16xi32>)
        %3 = air.channel.put async  @channel_0[%c1, %c0] (%arg4[%c16, %c0] [%c16, %c8] [%c16, %c1]) {id = 2 : i32} : (memref<32x16xi32>)
        %4 = air.channel.put async  @channel_0[%c0, %c1] (%arg4[%c0, %c8] [%c16, %c8] [%c16, %c1]) {id = 3 : i32} : (memref<32x16xi32>)
        %5 = air.channel.put async  @channel_0[%c1, %c1] (%arg4[%c16, %c8] [%c16, %c8] [%c16, %c1]) {id = 4 : i32} : (memref<32x16xi32>)
        %6 = air.channel.get async  @channel_1[%c0, %c0] (%arg5[%c0, %c0] [%c16, %c8] [%c16, %c1]) {id = 5 : i32} : (memref<32x16xi32>)
        %7 = air.channel.get async  @channel_1[%c1, %c0] (%arg5[%c16, %c0] [%c16, %c8] [%c16, %c1]) {id = 6 : i32} : (memref<32x16xi32>)
        %8 = air.channel.get async  @channel_1[%c0, %c1] (%arg5[%c0, %c8] [%c16, %c8] [%c16, %c1]) {id = 7 : i32} : (memref<32x16xi32>)
        %9 = air.channel.get async  @channel_1[%c1, %c1] (%arg5[%c16, %c8] [%c16, %c8] [%c16, %c1]) {id = 8 : i32} : (memref<32x16xi32>)
        %10 = air.herd @xaddherd async  tile (%arg6, %arg7) in (%arg8=%c1, %arg9=%c4) attributes {id = 3 : i32, x_loc = 0 : i64, y_loc = 2 : i64} {
          %c16_0 = arith.constant 16 : index
          %c8_1 = arith.constant 8 : index
          %c1_2 = arith.constant 1 : index
          %c0_3 = arith.constant 0 : index
          %c2 = arith.constant 2 : index
          %11 = arith.remsi %arg7, %c2 : index
          %12 = arith.divsi %arg7, %c2 : index
          %async_token, %results = air.execute -> (index) {
            %17 = affine.apply #map()[%12]
            air.execute_terminator %17 : index
          }
          %async_token_4, %results_5 = air.execute [%async_token] -> (index) {
            %17 = affine.apply #map1()[%results, %11]
            air.execute_terminator %17 : index
          }
          %async_token_6, %results_7 = air.execute -> (memref<16x8xi32, 2 : i32>) {
            %alloc = memref.alloc() : memref<16x8xi32, 2 : i32>
            air.execute_terminator %alloc : memref<16x8xi32, 2 : i32>
          }
          %async_token_8, %results_9 = air.execute -> (memref<16x8xi32, 2 : i32>) {
            %alloc = memref.alloc() : memref<16x8xi32, 2 : i32>
            air.execute_terminator %alloc : memref<16x8xi32, 2 : i32>
          }
          %13 = air.channel.get async [%async_token_6]  @channel_0[%12, %11] (%results_7[] [] []) {id = 9 : i32} : (memref<16x8xi32, 2 : i32>)
          %14 = air.wait_all async [%async_token_4, %async_token_8, %13]
          %15 = scf.for %arg10 = %c0_3 to %c16_0 step %c1_2 iter_args(%arg11 = %14) -> (!air.async.token) {
            %17 = scf.for %arg12 = %c0_3 to %c8_1 step %c1_2 iter_args(%arg13 = %arg11) -> (!air.async.token) {
              %async_token_12, %results_13 = air.execute [%arg13] -> (i32) {
                %19 = memref.load %results_7[%arg10, %arg12] : memref<16x8xi32, 2 : i32>
                air.execute_terminator %19 : i32
              }
              %async_token_14, %results_15 = air.execute [%arg13] -> (i32) {
                %19 = arith.index_cast %results_5 : index to i32
                air.execute_terminator %19 : i32
              }
              %async_token_16, %results_17 = air.execute [%arg13] -> (i32) {
                %19 = arith.addi %results_13, %results_15 : i32
                air.execute_terminator %19 : i32
              }
              %async_token_18 = air.execute [%arg13] {
                memref.store %results_17, %results_9[%arg10, %arg12] : memref<16x8xi32, 2 : i32>
              }
              %18 = air.wait_all async [%async_token_12, %async_token_14, %async_token_16, %async_token_18]
              scf.yield %18 : !air.async.token
            }
            scf.yield %17 : !air.async.token
          }
          %16 = air.channel.put async [%15]  @channel_1[%12, %11] (%results_9[] [] []) {id = 10 : i32} : (memref<16x8xi32, 2 : i32>)
          %async_token_10 = air.execute [%15] {
            memref.dealloc %results_7 : memref<16x8xi32, 2 : i32>
          }
          %async_token_11 = air.execute [%16] {
            memref.dealloc %results_9 : memref<16x8xi32, 2 : i32>
          }
        }
        air.wait_all [%2, %3, %4, %5, %6, %7, %8, %9, %10]
      }
    }
    return
  }
}
