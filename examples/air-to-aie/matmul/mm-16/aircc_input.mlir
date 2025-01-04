#map = affine_map<()[s0] -> (s0 * 8)>
#map1 = affine_map<(d0, d1, d2) -> (d0, d2)>
#map2 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map3 = affine_map<(d0, d1, d2) -> (d0, d1)>
#set = affine_set<()[s0, s1] : (s0 == 0, s1 >= 0, -s1 + 1 >= 0)>
#set1 = affine_set<()[s0, s1] : (s0 >= 0, -s0 + 1 >= 0, s1 == 0)>
module {
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
      %4 = air.segment @forward_0 async  attributes {id = 2 : i32} {
        %c4 = arith.constant 4 : index
        %c1_9 = arith.constant 1 : index
        %c16_10 = arith.constant 16 : index
        %c8_11 = arith.constant 8 : index
        %c0_12 = arith.constant 0 : index
        %c2_13 = arith.constant 2 : index
        %async_token_14, %results_15 = air.execute -> (memref<8x8xi32, 1>) {
          %alloc = memref.alloc() : memref<8x8xi32, 1>
          air.execute_terminator %alloc : memref<8x8xi32, 1>
        }
        %async_token_16, %results_17 = air.execute -> (memref<8x16xi32, 1>) {
          %alloc = memref.alloc() : memref<8x16xi32, 1>
          air.execute_terminator %alloc : memref<8x16xi32, 1>
        }
        %async_token_18, %results_19 = air.execute -> (memref<16x8xi32, 1>) {
          %alloc = memref.alloc() : memref<16x8xi32, 1>
          air.execute_terminator %alloc : memref<16x8xi32, 1>
        }
        %5 = air.channel.get async [%async_token_16]  @channel_4[] (%results_17[] [] []) {id = 4 : i32} : (memref<8x16xi32, 1>)
        %6 = air.channel.get async [%async_token_18]  @channel_5[] (%results_19[] [] []) {id = 5 : i32} : (memref<16x8xi32, 1>)
        %7 = air.channel.put async [%5]  @channel_0[] (%results_17[%c0_12, %c0_12, %c0_12] [%c4, %c4, %c4] [%c4, %c16_10, %c1_9]) : (memref<8x16xi32, 1>)
        %8 = air.channel.put async [%5]  @channel_1[] (%results_17[%c0_12, %c4, %c0_12] [%c4, %c4, %c4] [%c4, %c16_10, %c1_9]) : (memref<8x16xi32, 1>)
        %9 = air.channel.put async [%6]  @channel_2[] (%results_19[%c0_12, %c0_12] [%c16_10, %c4] [%c8_11, %c1_9]) : (memref<16x8xi32, 1>)
        %10 = air.channel.put async [%6]  @channel_3[] (%results_19[%c0_12, %c4] [%c16_10, %c4] [%c8_11, %c1_9]) : (memref<16x8xi32, 1>)
        %11 = air.channel.get async [%async_token_14]  @channel_6[%c0_12, %c0_12] (%results_15[%c0_12, %c0_12] [%c4, %c4] [%c8_11, %c1_9]) {id = 10 : i32} : (memref<8x8xi32, 1>)
        %12 = air.channel.get async [%async_token_14]  @channel_6[%c1_9, %c0_12] (%results_15[%c4, %c0_12] [%c4, %c4] [%c8_11, %c1_9]) {id = 10 : i32} : (memref<8x8xi32, 1>)
        %13 = air.channel.get async [%async_token_14]  @channel_6[%c0_12, %c1_9] (%results_15[%c0_12, %c4] [%c4, %c4] [%c8_11, %c1_9]) {id = 10 : i32} : (memref<8x8xi32, 1>)
        %14 = air.channel.get async [%async_token_14]  @channel_6[%c1_9, %c1_9] (%results_15[%c4, %c4] [%c4, %c4] [%c8_11, %c1_9]) {id = 10 : i32} : (memref<8x8xi32, 1>)
        %15 = air.herd @herd_0 async [%async_token_14]  tile (%arg10, %arg11) in (%arg12=%c2_13, %arg13=%c2_13) attributes {id = 3 : i32} {
          %c8_23 = arith.constant 8 : index
          %c0_i32 = arith.constant 0 : i32
          %c0_24 = arith.constant 0 : index
          %c16_25 = arith.constant 16 : index
          %async_token_26, %results_27 = air.execute -> (memref<4x4xi32, 2>) {
            %alloc = memref.alloc() : memref<4x4xi32, 2>
            air.execute_terminator %alloc : memref<4x4xi32, 2>
          }
          %async_token_28 = air.execute [%async_token_26] {
            linalg.fill ins(%c0_i32 : i32) outs(%results_27 : memref<4x4xi32, 2>)
          }
          %async_token_29, %results_30 = air.execute [%async_token_28] -> (memref<4x4xi32, 2>) {
            %alloc = memref.alloc() : memref<4x4xi32, 2>
            air.execute_terminator %alloc : memref<4x4xi32, 2>
          }
          %async_token_31, %results_32 = air.execute [%async_token_29] -> (memref<4x4xi32, 2>) {
            %alloc = memref.alloc() : memref<4x4xi32, 2>
            air.execute_terminator %alloc : memref<4x4xi32, 2>
          }
          %async_token_33, %results_34 = air.execute [%async_token_31] -> (memref<4x4xi32, 2>) {
            %alloc = memref.alloc() : memref<4x4xi32, 2>
            air.execute_terminator %alloc : memref<4x4xi32, 2>
          }
          %async_token_35, %results_36 = air.execute [%async_token_31] -> (memref<4x4xi32, 2>) {
            %alloc = memref.alloc() : memref<4x4xi32, 2>
            air.execute_terminator %alloc : memref<4x4xi32, 2>
          }
          %17:4 = scf.for %arg14 = %c0_24 to %c16_25 step %c8_23 iter_args(%arg15 = %async_token_33, %arg16 = %async_token_35, %arg17 = %async_token_35, %arg18 = %async_token_35) -> (!air.async.token, !air.async.token, !air.async.token, !air.async.token) {
            %19 = affine.if #set()[%arg10, %arg11] -> !air.async.token {
              %24 = air.channel.get async [%arg18, %arg15, %async_token_33]  @channel_0[%arg10, %arg11] (%results_34[] [] []) {id = 11 : i32} : (memref<4x4xi32, 2>)
              affine.yield %24 : !air.async.token
            } else {
              %24 = air.channel.get async [%arg18, %arg15, %async_token_33]  @channel_1[%arg10, %arg11] (%results_34[] [] []) {id = 12 : i32} : (memref<4x4xi32, 2>)
              affine.yield %24 : !air.async.token
            }
            %20 = affine.if #set1()[%arg10, %arg11] -> !air.async.token {
              %24 = air.channel.get async [%arg18, %arg15, %async_token_35]  @channel_2[%arg10, %arg11] (%results_36[] [] []) {id = 13 : i32} : (memref<4x4xi32, 2>)
              affine.yield %24 : !air.async.token
            } else {
              %24 = air.channel.get async [%arg18, %arg15, %async_token_35]  @channel_3[%arg10, %arg11] (%results_36[] [] []) {id = 14 : i32} : (memref<4x4xi32, 2>)
              affine.yield %24 : !air.async.token
            }
            %async_token_38 = air.execute [%arg17, %20, %19] {
              linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "reduction"]} ins(%results_34, %results_36 : memref<4x4xi32, 2>, memref<4x4xi32, 2>) outs(%results_27 : memref<4x4xi32, 2>) {
              ^bb0(%in: i32, %in_44: i32, %out: i32):
                %24 = arith.muli %in, %in_44 : i32
                %25 = arith.addi %out, %24 : i32
                linalg.yield %25 : i32
              }
            }
            %async_token_39 = air.execute {
              memref.dealloc %results_34 : memref<4x4xi32, 2>
            }
            %async_token_40 = air.execute {
              memref.dealloc %results_36 : memref<4x4xi32, 2>
            }
            %21 = affine.if #set()[%arg10, %arg11] -> !air.async.token {
              %24 = air.channel.get async [%20, %19, %arg16]  @channel_0[%arg10, %arg11] (%results_32[] [] []) {id = 11 : i32} : (memref<4x4xi32, 2>)
              affine.yield %24 : !air.async.token
            } else {
              %24 = air.channel.get async [%20, %19, %arg16]  @channel_1[%arg10, %arg11] (%results_32[] [] []) {id = 12 : i32} : (memref<4x4xi32, 2>)
              affine.yield %24 : !air.async.token
            }
            %22 = affine.if #set1()[%arg10, %arg11] -> !air.async.token {
              %24 = air.channel.get async [%20, %19, %arg16]  @channel_2[%arg10, %arg11] (%results_30[] [] []) {id = 13 : i32} : (memref<4x4xi32, 2>)
              affine.yield %24 : !air.async.token
            } else {
              %24 = air.channel.get async [%20, %19, %arg16]  @channel_3[%arg10, %arg11] (%results_30[] [] []) {id = 14 : i32} : (memref<4x4xi32, 2>)
              affine.yield %24 : !air.async.token
            }
            %async_token_41 = air.execute [%async_token_38, %22, %21] {
              linalg.generic {indexing_maps = [#map1, #map2, #map3], iterator_types = ["parallel", "parallel", "reduction"]} ins(%results_32, %results_30 : memref<4x4xi32, 2>, memref<4x4xi32, 2>) outs(%results_27 : memref<4x4xi32, 2>) {
              ^bb0(%in: i32, %in_44: i32, %out: i32):
                %24 = arith.muli %in, %in_44 : i32
                %25 = arith.addi %out, %24 : i32
                linalg.yield %25 : i32
              }
            }
            %async_token_42 = air.execute {
              memref.dealloc %results_32 : memref<4x4xi32, 2>
            }
            %async_token_43 = air.execute {
              memref.dealloc %results_30 : memref<4x4xi32, 2>
            }
            %23 = air.wait_all async [%21, %22] 
            scf.yield %async_token_38, %async_token_41, %async_token_41, %23 : !air.async.token, !air.async.token, !air.async.token, !air.async.token
          }
          %18 = air.channel.put async [%17#1]  @channel_6[%arg10, %arg11] (%results_27[] [] []) {id = 15 : i32} : (memref<4x4xi32, 2>)
          %async_token_37 = air.execute [%18] {
            memref.dealloc %results_27 : memref<4x4xi32, 2>
          }
        }
        %async_token_20 = air.execute [%5] {
          memref.dealloc %results_17 : memref<8x16xi32, 1>
        }
        %async_token_21 = air.execute [%6] {
          memref.dealloc %results_19 : memref<16x8xi32, 1>
        }
        %16 = air.channel.put async [%15]  @channel_7[] (%results_15[] [] []) {id = 16 : i32} : (memref<8x8xi32, 1>)
        %async_token_22 = air.execute [%16] {
          memref.dealloc %results_15 : memref<8x8xi32, 1>
        }
      }
    }
    %async_token_0 = air.execute [%0] {
      memref.copy %results, %arg2 : memref<16x16xi32> to memref<16x16xi32>
    }
    return
  }
}
