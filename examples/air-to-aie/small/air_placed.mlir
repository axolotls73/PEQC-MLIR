#map = affine_map<()[s0] -> (s0 * 4)>
#map1 = affine_map<()[s0] -> (s0 * 2)>
#set = affine_set<()[s0, s1] : (s0 == 0, s1 >= 0, -s1 + 1 >= 0)>
#set1 = affine_set<()[s0, s1] : (s0 >= 0, -s0 + 1 >= 0, s1 == 0)>
module {
  air.channel @channel_7 [1, 1]
  air.channel @channel_6 [2, 2]
  air.channel @channel_5 [1, 1]
  air.channel @channel_4 [1, 1]
  air.channel @channel_3 [1, 1] {broadcast_shape = [2, 1]}
  air.channel @channel_2 [1, 1] {broadcast_shape = [2, 1]}
  air.channel @channel_1 [1, 1] {broadcast_shape = [1, 2]}
  air.channel @channel_0 [1, 1] {broadcast_shape = [1, 2]}
  func.func @forward(%arg0: memref<16x16xi32>, %arg1: memref<16x16xi32>, %arg2: memref<16x16xi32>) {
    %c4 = arith.constant 4 : index
    %async_token, %results = air.execute -> (memref<16x16xi32>) {
      %alloc = memref.alloc() : memref<16x16xi32>
      air.execute_terminator %alloc : memref<16x16xi32>
    }
    %0 = air.launch async [%async_token] (%arg3, %arg4) in (%arg5=%c4, %arg6=%c4) args(%arg7=%results, %arg8=%arg0, %arg9=%arg1) : memref<16x16xi32>, memref<16x16xi32>, memref<16x16xi32> attributes {id = 1 : i32} {
      %c1 = arith.constant 1 : index
      %c4_1 = arith.constant 4 : index
      %c0 = arith.constant 0 : index
      %c16 = arith.constant 16 : index
      %c8 = arith.constant 8 : index
      %async_token_2, %results_3 = air.execute -> (index) {
        %5 = affine.apply #map()[%arg3]
        air.execute_terminator %5 : index
      }
      %1 = scf.for %arg10 = %c0 to %c16 step %c8 iter_args(%arg11 = %async_token_2) -> (!air.async.token) {
        %5 = air.channel.put async [%arg11]  @channel_4[] (%arg8[%results_3, %arg10] [%c4_1, %c8] [%c16, %c1]) {id = 1 : i32} : (memref<16x16xi32>)
        scf.yield %5 : !air.async.token
      }
      %async_token_4, %results_5 = air.execute -> (index) {
        %5 = affine.apply #map()[%arg4]
        air.execute_terminator %5 : index
      }
      %2 = scf.for %arg10 = %c0 to %c16 step %c8 iter_args(%arg11 = %async_token_4) -> (!air.async.token) {
        %5 = air.channel.put async [%arg11]  @channel_5[] (%arg9[%arg10, %results_5] [%c8, %c4_1] [%c16, %c1]) {id = 2 : i32} : (memref<16x16xi32>)
        scf.yield %5 : !air.async.token
      }
      %async_token_6, %results_7 = air.execute -> (index) {
        %5 = affine.apply #map()[%arg3]
        air.execute_terminator %5 : index
      }
      %async_token_8, %results_9 = air.execute -> (index) {
        %5 = affine.apply #map()[%arg4]
        air.execute_terminator %5 : index
      }
      %3 = air.channel.get async [%async_token_6, %async_token_8]  @channel_7[] (%arg7[%results_7, %results_9] [%c4_1, %c4_1] [%c16, %c1]) {id = 3 : i32} : (memref<16x16xi32>)
      %4 = air.segment @segment_0 async  attributes {id = 2 : i32, x_loc = 0 : i64, x_size = 1 : i64, y_loc = 2 : i64, y_size = 4 : i64} {
        %c1_10 = arith.constant 1 : index
        %c4_11 = arith.constant 4 : index
        %c2 = arith.constant 2 : index
        %c0_12 = arith.constant 0 : index
        %c16_13 = arith.constant 16 : index
        %c8_14 = arith.constant 8 : index
        %async_token_15, %results_16 = air.execute -> (memref<4x4xi32, 1>) {
          %alloc = memref.alloc() : memref<4x4xi32, 1>
          air.execute_terminator %alloc : memref<4x4xi32, 1>
        }
        %5 = scf.for %arg10 = %c0_12 to %c16_13 step %c8_14 iter_args(%arg11 = %async_token_15) -> (!air.async.token) {
          %async_token_18, %results_19 = air.execute -> (memref<4x8xi32, 1>) {
            %alloc = memref.alloc() {hoist_alloc = true} : memref<4x8xi32, 1>
            air.execute_terminator %alloc : memref<4x8xi32, 1>
          }
          %async_token_20, %results_21 = air.execute -> (memref<8x4xi32, 1>) {
            %alloc = memref.alloc() {hoist_alloc = true} : memref<8x4xi32, 1>
            air.execute_terminator %alloc : memref<8x4xi32, 1>
          }
          %7 = air.channel.get async [%arg11, %async_token_18]  @channel_4[] (%results_19[] [] []) {id = 4 : i32} : (memref<4x8xi32, 1>)
          %8 = air.channel.get async [%arg11, %async_token_20]  @channel_5[] (%results_21[] [] []) {id = 5 : i32} : (memref<8x4xi32, 1>)
          %9 = scf.for %arg12 = %c0_12 to %c8_14 step %c2 iter_args(%arg13 = %7) -> (!air.async.token) {
            %16 = air.channel.put async [%arg13]  @channel_0[] (%results_19[%c0_12, %arg12] [%c2, %c2] [%c8_14, %c1_10]) {id = 6 : i32} : (memref<4x8xi32, 1>)
            scf.yield %16 : !air.async.token
          }
          %10 = scf.for %arg12 = %c0_12 to %c8_14 step %c2 iter_args(%arg13 = %7) -> (!air.async.token) {
            %16 = air.channel.put async [%arg13]  @channel_1[] (%results_19[%c2, %arg12] [%c2, %c2] [%c8_14, %c1_10]) {id = 7 : i32} : (memref<4x8xi32, 1>)
            scf.yield %16 : !air.async.token
          }
          %11 = scf.for %arg12 = %c0_12 to %c8_14 step %c2 iter_args(%arg13 = %8) -> (!air.async.token) {
            %16 = air.channel.put async [%arg13]  @channel_2[] (%results_21[%arg12, %c0_12] [%c2, %c2] [%c4_11, %c1_10]) {id = 8 : i32} : (memref<8x4xi32, 1>)
            scf.yield %16 : !air.async.token
          }
          %12 = scf.for %arg12 = %c0_12 to %c8_14 step %c2 iter_args(%arg13 = %8) -> (!air.async.token) {
            %16 = air.channel.put async [%arg13]  @channel_3[] (%results_21[%arg12, %c2] [%c2, %c2] [%c4_11, %c1_10]) {id = 9 : i32} : (memref<8x4xi32, 1>)
            scf.yield %16 : !air.async.token
          }
          %13 = scf.parallel (%arg12, %arg13) = (%c0_12, %c0_12) to (%c2, %c2) step (%c1_10, %c1_10) init (%arg11) -> !air.async.token {
            %async_token_24, %results_25 = air.execute -> (index) {
              %17 = affine.apply #map1()[%arg12]
              air.execute_terminator %17 : index
            }
            %async_token_26, %results_27 = air.execute -> (index) {
              %17 = affine.apply #map1()[%arg13]
              air.execute_terminator %17 : index
            }
            %16 = air.channel.get async [%arg11, %async_token_26, %async_token_24]  @channel_6[%arg12, %arg13] (%results_16[%results_25, %results_27] [%c2, %c2] [%c4_11, %c1_10]) {id = 10 : i32} : (memref<4x4xi32, 1>)
            scf.reduce(%16 : !air.async.token) {
            ^bb0(%arg14: !air.async.token, %arg15: !air.async.token):
              %17 = air.wait_all async [%arg14, %arg15] 
              scf.reduce.return %17 : !air.async.token
            }
          }
          %14 = air.herd @herd_0 async [%7, %8]  tile (%arg12, %arg13) in (%arg14=%c1_10, %arg15=%c4_11) attributes {id = 3 : i32, x_loc = 0 : i64, y_loc = 2 : i64} {
            %c1_24 = arith.constant 1 : index
            %c8_25 = arith.constant 8 : index
            %c0_26 = arith.constant 0 : index
            %c0_i32 = arith.constant 0 : i32
            %c2_27 = arith.constant 2 : index
            %16 = arith.remsi %arg13, %c2_27 : index
            %17 = arith.divsi %arg13, %c2_27 : index
            %async_token_28, %results_29 = air.execute -> (memref<2x2xi32, 2>) {
              %alloc = memref.alloc() : memref<2x2xi32, 2>
              air.execute_terminator %alloc : memref<2x2xi32, 2>
            }
            %async_token_30 = air.execute [%async_token_28] {
              scf.for %arg16 = %c0_26 to %c2_27 step %c1_24 {
                scf.for %arg17 = %c0_26 to %c2_27 step %c1_24 {
                  memref.store %c0_i32, %results_29[%arg16, %arg17] : memref<2x2xi32, 2>
                }
              }
            }
            %18 = scf.for %arg16 = %c0_26 to %c8_25 step %c2_27 iter_args(%arg17 = %async_token_30) -> (!air.async.token) {
              %async_token_32, %results_33 = air.execute -> (memref<2x2xi32, 2>) {
                %alloc = memref.alloc() {hoist_alloc = true} : memref<2x2xi32, 2>
                air.execute_terminator %alloc : memref<2x2xi32, 2>
              }
              %async_token_34, %results_35 = air.execute -> (memref<2x2xi32, 2>) {
                %alloc = memref.alloc() {hoist_alloc = true} : memref<2x2xi32, 2>
                air.execute_terminator %alloc : memref<2x2xi32, 2>
              }
              %20 = affine.if #set()[%17, %16] -> !air.async.token {
                %22 = air.channel.get async [%arg17, %async_token_32]  @channel_0[%17, %16] (%results_33[] [] []) {id = 11 : i32} : (memref<2x2xi32, 2>)
                affine.yield %22 : !air.async.token
              } else {
                %22 = air.channel.get async [%arg17, %async_token_32]  @channel_1[%17, %16] (%results_33[] [] []) {id = 12 : i32} : (memref<2x2xi32, 2>)
                affine.yield %22 : !air.async.token
              }
              %21 = affine.if #set1()[%17, %16] -> !air.async.token {
                %22 = air.channel.get async [%arg17, %async_token_34]  @channel_2[%17, %16] (%results_35[] [] []) {id = 13 : i32} : (memref<2x2xi32, 2>)
                affine.yield %22 : !air.async.token
              } else {
                %22 = air.channel.get async [%arg17, %async_token_34]  @channel_3[%17, %16] (%results_35[] [] []) {id = 14 : i32} : (memref<2x2xi32, 2>)
                affine.yield %22 : !air.async.token
              }
              %async_token_36 = air.execute [%21, %20] {
                scf.for %arg18 = %c0_26 to %c2_27 step %c1_24 {
                  scf.for %arg19 = %c0_26 to %c2_27 step %c1_24 {
                    scf.for %arg20 = %c0_26 to %c2_27 step %c1_24 {
                      %22 = memref.load %results_33[%arg18, %arg20] : memref<2x2xi32, 2>
                      %23 = memref.load %results_35[%arg20, %arg19] : memref<2x2xi32, 2>
                      %24 = memref.load %results_29[%arg18, %arg19] : memref<2x2xi32, 2>
                      %25 = arith.muli %22, %23 : i32
                      %26 = arith.addi %24, %25 : i32
                      memref.store %26, %results_29[%arg18, %arg19] : memref<2x2xi32, 2>
                    }
                  }
                }
              }
              %async_token_37 = air.execute [%async_token_36] {
                memref.dealloc %results_33 : memref<2x2xi32, 2>
              }
              %async_token_38 = air.execute [%async_token_36] {
                memref.dealloc %results_35 : memref<2x2xi32, 2>
              }
              scf.yield %async_token_36 : !air.async.token
            } {unroll = 2 : i32}
            %19 = air.channel.put async [%18]  @channel_6[%17, %16] (%results_29[] [] []) {id = 15 : i32} : (memref<2x2xi32, 2>)
            %async_token_31 = air.execute [%19] {
              memref.dealloc %results_29 : memref<2x2xi32, 2>
            }
            air.herd_terminator
          }
          %async_token_22 = air.execute [%7] {
            memref.dealloc %results_19 : memref<4x8xi32, 1>
          }
          %async_token_23 = air.execute [%8] {
            memref.dealloc %results_21 : memref<8x4xi32, 1>
          }
          %15 = air.wait_all async [%9, %10, %11, %12, %13, %14] 
          scf.yield %15 : !air.async.token
        } {unroll = 2 : i32}
        %6 = air.channel.put async [%5]  @channel_7[] (%results_16[] [] []) {id = 16 : i32} : (memref<4x4xi32, 1>)
        %async_token_17 = air.execute [%6] {
          memref.dealloc %results_16 : memref<4x4xi32, 1>
        }
        air.segment_terminator
      }
      air.launch_terminator
    }
    %async_token_0 = air.execute [%0] {
      memref.copy %results, %arg2 : memref<16x16xi32> to memref<16x16xi32>
    }
    return
  }
}
