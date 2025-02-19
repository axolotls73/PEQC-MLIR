
//
// air_placed.mlir: This file is part of the PEQC-MLIR project.
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
// RUN: split-file %s %t && \
// RUN: air-opt --convert-linalg-to-affine-loops --lower-affine %t/input.mlir > %t/input-lowered.mlir
// RUN: verif-opt --verif-air-convert-channel --lower-affine --verif-air-to-scf-par \
// RUN:     --verif-scf-parallel-to-async --verif-air-execute-to-async --verif-air-dma-to-memref \
// RUN:     --verif-scf-parallel-to-async %t/input-lowered.mlir --verif-move-to-main > %t/conversion.mlir && \
// RUN: sed -i 's/!air.async.token/!async.token/g' %t/conversion.mlir && \
//      ^ quick and dirty solution until i make a pass to remove unrealized_conversion_casts
// RUN: verif-translate --translate-to-past %t/conversion.mlir > %t/result.c && \
// RUN: %add_epilogue %t/result.c %t/epilogue.c %t/translation.c

// RUN: %pastchecker %t/translation.c %t/translation.c A,B,C | grep YES

// RUN: %pastchecker %t/translation.c %t/compare.c A,B,C 2>&1 | grep YES

//--- input.mlir

#map = affine_map<()[s0] -> (s0 * 8)>
#set = affine_set<()[s0, s1] : (s0 == 0, s1 >= 0, -s1 + 1 >= 0)>
#set1 = affine_set<()[s0, s1] : (s0 >= 0, -s0 + 1 >= 0, s1 == 0)>
module {
  memref.global "private" @A : memref<16x16xi32>
  memref.global "private" @B : memref<16x16xi32>
  memref.global "private" @C : memref<16x16xi32>

  func.func @main () -> () {
    %a = memref.get_global @A : memref<16x16xi32>
    %b = memref.get_global @B : memref<16x16xi32>
    %c = memref.get_global @C : memref<16x16xi32>

    func.call @forward (%a, %b, %c) : (memref<16x16xi32>, memref<16x16xi32>, memref<16x16xi32>) -> ()
    return
  }

  air.channel @channel_0 [1, 1] {broadcast_shape = [1, 2]}
  air.channel @channel_1 [1, 1] {broadcast_shape = [1, 2]}
  air.channel @channel_2 [1, 1] {broadcast_shape = [2, 1]}
  air.channel @channel_3 [1, 1] {broadcast_shape = [2, 1]}
  air.channel @channel_4 [1, 1]
  air.channel @channel_5 [1, 1]
  air.channel @channel_6 [2, 2]
  air.channel @channel_7 [1, 1]
  func.func @forward(%arg0: memref<16x16xi32>, %arg1: memref<16x16xi32>, %arg2: memref<16x16xi32>) {
    %c2 = arith.constant 2 : index
    %async_token, %results = air.execute -> (memref<16x16xi32>) {
      %alloc = memref.alloc() : memref<16x16xi32>
      air.execute_terminator %alloc : memref<16x16xi32>
    }
    %0 = air.launch async [%async_token] (%arg3, %arg4) in (%arg5=%c2, %arg6=%c2) args(%arg7=%arg0, %arg8=%arg1, %arg9=%results) : memref<16x16xi32>, memref<16x16xi32>, memref<16x16xi32> attributes {id = 1 : i32} {
      %c1 = arith.constant 1 : index
      %c16 = arith.constant 16 : index
      %c8 = arith.constant 8 : index
      %c0 = arith.constant 0 : index
      %async_token_1, %results_2 = air.execute -> (index) {
        %5 = affine.apply #map()[%arg3]
        air.execute_terminator %5 : index
      }
      %1 = air.channel.put async [%async_token_1]  @channel_4[] (%arg7[%results_2, %c0] [%c8, %c16] [%c16, %c1]) {id = 1 : i32} : (memref<16x16xi32>)
      %async_token_3, %results_4 = air.execute -> (index) {
        %5 = affine.apply #map()[%arg4]
        air.execute_terminator %5 : index
      }
      %2 = air.channel.put async [%async_token_3]  @channel_5[] (%arg8[%c0, %results_4] [%c16, %c8] [%c16, %c1]) {id = 2 : i32} : (memref<16x16xi32>)
      %async_token_5, %results_6 = air.execute -> (index) {
        %5 = affine.apply #map()[%arg4]
        air.execute_terminator %5 : index
      }
      %async_token_7, %results_8 = air.execute -> (index) {
        %5 = affine.apply #map()[%arg3]
        air.execute_terminator %5 : index
      }
      %3 = air.channel.get async [%async_token_5, %async_token_7]  @channel_7[] (%arg9[%results_8, %results_6] [%c8, %c8] [%c16, %c1]) {id = 3 : i32} : (memref<16x16xi32>)
      %4 = air.segment @forward_0 async  attributes {id = 2 : i32, x_loc = 1 : i64, x_size = 1 : i64, y_loc = 2 : i64, y_size = 4 : i64} {
        %c4 = arith.constant 4 : index
        %c1_9 = arith.constant 1 : index
        %c16_10 = arith.constant 16 : index
        %c8_11 = arith.constant 8 : index
        %c0_12 = arith.constant 0 : index
        %async_token_13, %results_14 = air.execute -> (memref<8x8xi32, 1>) {
          %alloc = memref.alloc() : memref<8x8xi32, 1>
          air.execute_terminator %alloc : memref<8x8xi32, 1>
        }
        %async_token_15, %results_16 = air.execute -> (memref<8x16xi32, 1>) {
          %alloc = memref.alloc() : memref<8x16xi32, 1>
          air.execute_terminator %alloc : memref<8x16xi32, 1>
        }
        %async_token_17, %results_18 = air.execute -> (memref<16x8xi32, 1>) {
          %alloc = memref.alloc() : memref<16x8xi32, 1>
          air.execute_terminator %alloc : memref<16x8xi32, 1>
        }
        %5 = air.channel.get async [%async_token_15]  @channel_4[] (%results_16[] [] []) {id = 4 : i32} : (memref<8x16xi32, 1>)
        %6 = air.channel.get async [%async_token_17]  @channel_5[] (%results_18[] [] []) {id = 5 : i32} : (memref<16x8xi32, 1>)
        %7 = air.channel.put async [%5]  @channel_0[] (%results_16[%c0_12, %c0_12, %c0_12] [%c4, %c4, %c4] [%c4, %c16_10, %c1_9]) {id = 6 : i32} : (memref<8x16xi32, 1>)
        %8 = air.channel.put async [%5]  @channel_1[] (%results_16[%c0_12, %c4, %c0_12] [%c4, %c4, %c4] [%c4, %c16_10, %c1_9]) {id = 7 : i32} : (memref<8x16xi32, 1>)
        %9 = air.channel.put async [%6]  @channel_2[] (%results_18[%c0_12, %c0_12] [%c16_10, %c4] [%c8_11, %c1_9]) {id = 8 : i32} : (memref<16x8xi32, 1>)
        %10 = air.channel.put async [%6]  @channel_3[] (%results_18[%c0_12, %c4] [%c16_10, %c4] [%c8_11, %c1_9]) {id = 9 : i32} : (memref<16x8xi32, 1>)
        %11 = air.channel.get async [%async_token_13]  @channel_6[%c0_12, %c0_12] (%results_14[%c0_12, %c0_12] [%c4, %c4] [%c8_11, %c1_9]) {id = 10 : i32} : (memref<8x8xi32, 1>)
        %12 = air.channel.get async [%async_token_13]  @channel_6[%c1_9, %c0_12] (%results_14[%c4, %c0_12] [%c4, %c4] [%c8_11, %c1_9]) {id = 11 : i32} : (memref<8x8xi32, 1>)
        %13 = air.channel.get async [%async_token_13]  @channel_6[%c0_12, %c1_9] (%results_14[%c0_12, %c4] [%c4, %c4] [%c8_11, %c1_9]) {id = 12 : i32} : (memref<8x8xi32, 1>)
        %14 = air.channel.get async [%async_token_13]  @channel_6[%c1_9, %c1_9] (%results_14[%c4, %c4] [%c4, %c4] [%c8_11, %c1_9]) {id = 13 : i32} : (memref<8x8xi32, 1>)
        %15 = air.herd @herd_0 async [%async_token_13]  tile (%arg10, %arg11) in (%arg12=%c1_9, %arg13=%c4) attributes {id = 3 : i32, x_loc = 1 : i64, y_loc = 2 : i64} {
          %c1_22 = arith.constant 1 : index
          %c4_23 = arith.constant 4 : index
          %c16_24 = arith.constant 16 : index
          %c0_25 = arith.constant 0 : index
          %c0_i32 = arith.constant 0 : i32
          %c8_26 = arith.constant 8 : index
          %c2_27 = arith.constant 2 : index
          %17 = arith.remsi %arg11, %c2_27 : index
          %18 = arith.divsi %arg11, %c2_27 : index
          %async_token_28, %results_29 = air.execute -> (memref<4x4xi32, 2>) {
            %alloc = memref.alloc() : memref<4x4xi32, 2>
            air.execute_terminator %alloc : memref<4x4xi32, 2>
          }
          %async_token_30 = air.execute [%async_token_28] {
            scf.for %arg14 = %c0_25 to %c4_23 step %c1_22 {
              scf.for %arg15 = %c0_25 to %c4_23 step %c1_22 {
                memref.store %c0_i32, %results_29[%arg14, %arg15] : memref<4x4xi32, 2>
              }
            }
          }
          %async_token_31, %results_32 = air.execute [%async_token_30] -> (memref<4x4xi32, 2>) {
            %alloc = memref.alloc() : memref<4x4xi32, 2>
            air.execute_terminator %alloc : memref<4x4xi32, 2>
          }
          %async_token_33, %results_34 = air.execute [%async_token_31] -> (memref<4x4xi32, 2>) {
            %alloc = memref.alloc() : memref<4x4xi32, 2>
            air.execute_terminator %alloc : memref<4x4xi32, 2>
          }
          %async_token_35, %results_36 = air.execute [%async_token_33] -> (memref<4x4xi32, 2>) {
            %alloc = memref.alloc() : memref<4x4xi32, 2>
            air.execute_terminator %alloc : memref<4x4xi32, 2>
          }
          %async_token_37, %results_38 = air.execute [%async_token_33] -> (memref<4x4xi32, 2>) {
            %alloc = memref.alloc() : memref<4x4xi32, 2>
            air.execute_terminator %alloc : memref<4x4xi32, 2>
          }
          %19:4 = scf.for %arg14 = %c0_25 to %c16_24 step %c8_26 iter_args(%arg15 = %async_token_35, %arg16 = %async_token_37, %arg17 = %async_token_37, %arg18 = %async_token_37) -> (!air.async.token, !air.async.token, !air.async.token, !air.async.token) {
            %21 = affine.if #set()[%18, %17] -> !air.async.token {
              %26 = air.channel.get async [%arg18, %arg15, %async_token_35]  @channel_0[%18, %17] (%results_36[] [] []) {id = 14 : i32} : (memref<4x4xi32, 2>)
              affine.yield %26 : !air.async.token
            } else {
              %26 = air.channel.get async [%arg18, %arg15, %async_token_35]  @channel_1[%18, %17] (%results_36[] [] []) {id = 15 : i32} : (memref<4x4xi32, 2>)
              affine.yield %26 : !air.async.token
            }
            %22 = affine.if #set1()[%18, %17] -> !air.async.token {
              %26 = air.channel.get async [%arg18, %arg15, %async_token_37]  @channel_2[%18, %17] (%results_38[] [] []) {id = 16 : i32} : (memref<4x4xi32, 2>)
              affine.yield %26 : !air.async.token
            } else {
              %26 = air.channel.get async [%arg18, %arg15, %async_token_37]  @channel_3[%18, %17] (%results_38[] [] []) {id = 17 : i32} : (memref<4x4xi32, 2>)
              affine.yield %26 : !air.async.token
            }
            %async_token_40 = air.execute [%arg17, %22, %21] {
              scf.for %arg19 = %c0_25 to %c4_23 step %c1_22 {
                scf.for %arg20 = %c0_25 to %c4_23 step %c1_22 {
                  scf.for %arg21 = %c0_25 to %c4_23 step %c1_22 {
                    %26 = memref.load %results_36[%arg19, %arg21] : memref<4x4xi32, 2>
                    %27 = memref.load %results_38[%arg21, %arg20] : memref<4x4xi32, 2>
                    %28 = memref.load %results_29[%arg19, %arg20] : memref<4x4xi32, 2>
                    %29 = arith.muli %26, %27 : i32
                    %30 = arith.addi %28, %29 : i32
                    memref.store %30, %results_29[%arg19, %arg20] : memref<4x4xi32, 2>
                  }
                }
              }
            }
            %async_token_41 = air.execute {
              memref.dealloc %results_36 : memref<4x4xi32, 2>
            }
            %async_token_42 = air.execute {
              memref.dealloc %results_38 : memref<4x4xi32, 2>
            }
            %23 = affine.if #set()[%18, %17] -> !air.async.token {
              %26 = air.channel.get async [%22, %21, %arg16]  @channel_0[%18, %17] (%results_34[] [] []) {id = 18 : i32} : (memref<4x4xi32, 2>)
              affine.yield %26 : !air.async.token
            } else {
              %26 = air.channel.get async [%22, %21, %arg16]  @channel_1[%18, %17] (%results_34[] [] []) {id = 19 : i32} : (memref<4x4xi32, 2>)
              affine.yield %26 : !air.async.token
            }
            %24 = affine.if #set1()[%18, %17] -> !air.async.token {
              %26 = air.channel.get async [%22, %21, %arg16]  @channel_2[%18, %17] (%results_32[] [] []) {id = 20 : i32} : (memref<4x4xi32, 2>)
              affine.yield %26 : !air.async.token
            } else {
              %26 = air.channel.get async [%22, %21, %arg16]  @channel_3[%18, %17] (%results_32[] [] []) {id = 21 : i32} : (memref<4x4xi32, 2>)
              affine.yield %26 : !air.async.token
            }
            %async_token_43 = air.execute [%async_token_40, %24, %23] {
              scf.for %arg19 = %c0_25 to %c4_23 step %c1_22 {
                scf.for %arg20 = %c0_25 to %c4_23 step %c1_22 {
                  scf.for %arg21 = %c0_25 to %c4_23 step %c1_22 {
                    %26 = memref.load %results_34[%arg19, %arg21] : memref<4x4xi32, 2>
                    %27 = memref.load %results_32[%arg21, %arg20] : memref<4x4xi32, 2>
                    %28 = memref.load %results_29[%arg19, %arg20] : memref<4x4xi32, 2>
                    %29 = arith.muli %26, %27 : i32
                    %30 = arith.addi %28, %29 : i32
                    memref.store %30, %results_29[%arg19, %arg20] : memref<4x4xi32, 2>
                  }
                }
              }
            }
            %async_token_44 = air.execute {
              memref.dealloc %results_34 : memref<4x4xi32, 2>
            }
            %async_token_45 = air.execute {
              memref.dealloc %results_32 : memref<4x4xi32, 2>
            }
            %25 = air.wait_all async [%23, %24]
            scf.yield %async_token_40, %async_token_43, %async_token_43, %25 : !air.async.token, !air.async.token, !air.async.token, !air.async.token
          }
          %20 = air.channel.put async [%19#1]  @channel_6[%18, %17] (%results_29[] [] []) {id = 22 : i32} : (memref<4x4xi32, 2>)
          %async_token_39 = air.execute [%20] {
            memref.dealloc %results_29 : memref<4x4xi32, 2>
          }
        }
        %async_token_19 = air.execute [%5] {
          memref.dealloc %results_16 : memref<8x16xi32, 1>
        }
        %async_token_20 = air.execute [%6] {
          memref.dealloc %results_18 : memref<16x8xi32, 1>
        }
        %16 = air.channel.put async [%15]  @channel_7[] (%results_14[] [] []) {id = 23 : i32} : (memref<8x8xi32, 1>)
        %async_token_21 = air.execute [%16] {
          memref.dealloc %results_14 : memref<8x8xi32, 1>
        }
      }
    }
    %async_token_0 = air.execute [%0] {
      memref.copy %results, %arg2 : memref<16x16xi32> to memref<16x16xi32>
    }
    return
  }
}

//--- epilogue.c

{
  float* A;
  float* B;
  float* C;
  forward(A, B, C);
}

//--- compare.c

#pragma pocc-region-start
void forward(int** A, int** B, int** C, int N) {
  for (int i = 0; i < N; i++)
    for (int j = 0; j < N; j++){
      C[i][j] = 0;
      for (int k = 0; k < N; k++)
        C[i][j] += A[i][k] * B[k][j];
    }
}
{
  float* A;
  float* B;
  float* C;
  forward(A, B, C, 16);
}
#pragma pocc-region-end
