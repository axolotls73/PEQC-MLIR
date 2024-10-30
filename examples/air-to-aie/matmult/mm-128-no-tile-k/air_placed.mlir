#map = affine_map<()[s0] -> (s0 * 64)>
#map1 = affine_map<()[s0] -> (s0 * 32)>
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
  func.func @forward(%arg0: memref<128x128xi32>, %arg1: memref<128x128xi32>, %arg2: memref<128x128xi32>) {
    %c2 = arith.constant 2 : index
    %async_token, %results = air.execute -> (memref<128x128xi32>) {
      %alloc = memref.alloc() : memref<128x128xi32>
      air.execute_terminator %alloc : memref<128x128xi32>
    }
    %0 = air.launch async [%async_token] (%arg3, %arg4) in (%arg5=%c2, %arg6=%c2) args(%arg7=%arg0, %arg8=%arg1, %arg9=%results) : memref<128x128xi32>, memref<128x128xi32>, memref<128x128xi32> attributes {id = 1 : i32} {
      %c1 = arith.constant 1 : index
      %c128 = arith.constant 128 : index
      %c64 = arith.constant 64 : index
      %c0 = arith.constant 0 : index
      %async_token_1, %results_2 = air.execute -> (index) {
        %5 = affine.apply #map()[%arg3]
        air.execute_terminator %5 : index
      }
      %1 = air.channel.put async [%async_token_1]  @channel_4[] (%arg7[%results_2, %c0] [%c64, %c128] [%c128, %c1]) {id = 1 : i32} : (memref<128x128xi32>)
      %async_token_3, %results_4 = air.execute -> (index) {
        %5 = affine.apply #map()[%arg4]
        air.execute_terminator %5 : index
      }
      %2 = air.channel.put async [%async_token_3]  @channel_5[] (%arg8[%c0, %results_4] [%c128, %c64] [%c128, %c1]) {id = 2 : i32} : (memref<128x128xi32>)
      %async_token_5, %results_6 = air.execute -> (index) {
        %5 = affine.apply #map()[%arg3]
        air.execute_terminator %5 : index
      }
      %async_token_7, %results_8 = air.execute -> (index) {
        %5 = affine.apply #map()[%arg4]
        air.execute_terminator %5 : index
      }
      %3 = air.channel.get async [%async_token_5, %async_token_7]  @channel_7[] (%arg9[%results_6, %results_8] [%c64, %c64] [%c128, %c1]) {id = 3 : i32} : (memref<128x128xi32>)
      %4 = air.segment @segment_0 async  attributes {id = 2 : i32, x_loc = 0 : i64, x_size = 1 : i64, y_loc = 2 : i64, y_size = 4 : i64} {
        %c4 = arith.constant 4 : index
        %c32 = arith.constant 32 : index
        %c1_9 = arith.constant 1 : index
        %c128_10 = arith.constant 128 : index
        %c64_11 = arith.constant 64 : index
        %c0_12 = arith.constant 0 : index
        %c2_13 = arith.constant 2 : index
        %5 = air.wait_all async 
        %6 = air.wait_all async 
        %async_token_14, %results_15 = air.execute -> (memref<64x64xi32, 1>) {
          %alloc = memref.alloc() : memref<64x64xi32, 1>
          air.execute_terminator %alloc : memref<64x64xi32, 1>
        }
        %async_token_16, %results_17 = air.execute -> (memref<64x128xi32, 1>) {
          %alloc = memref.alloc() : memref<64x128xi32, 1>
          air.execute_terminator %alloc : memref<64x128xi32, 1>
        }
        %async_token_18, %results_19 = air.execute -> (memref<128x64xi32, 1>) {
          %alloc = memref.alloc() : memref<128x64xi32, 1>
          air.execute_terminator %alloc : memref<128x64xi32, 1>
        }
        %7 = air.channel.get async [%5, %async_token_16]  @channel_4[] (%results_17[] [] []) {id = 4 : i32} : (memref<64x128xi32, 1>)
        %8 = air.channel.get async [%6, %async_token_18]  @channel_5[] (%results_19[] [] []) {id = 5 : i32} : (memref<128x64xi32, 1>)
        %9 = scf.for %arg10 = %c0_12 to %c128_10 step %c1_9 iter_args(%arg11 = %7) -> (!air.async.token) {
          %16 = air.channel.put async [%arg11]  @channel_0[] (%results_17[%c0_12, %arg10] [%c32, %c1_9] [%c128_10, %c1_9]) {id = 6 : i32} : (memref<64x128xi32, 1>)
          scf.yield %16 : !air.async.token
        }
        %10 = scf.for %arg10 = %c0_12 to %c128_10 step %c1_9 iter_args(%arg11 = %7) -> (!air.async.token) {
          %16 = air.channel.put async [%arg11]  @channel_1[] (%results_17[%c32, %arg10] [%c32, %c1_9] [%c128_10, %c1_9]) {id = 7 : i32} : (memref<64x128xi32, 1>)
          scf.yield %16 : !air.async.token
        }
        %11 = scf.for %arg10 = %c0_12 to %c128_10 step %c1_9 iter_args(%arg11 = %8) -> (!air.async.token) {
          %16 = air.channel.put async [%arg11]  @channel_2[] (%results_19[%arg10, %c0_12] [%c1_9, %c32] [%c64_11, %c1_9]) {id = 8 : i32} : (memref<128x64xi32, 1>)
          scf.yield %16 : !air.async.token
        }
        %12 = scf.for %arg10 = %c0_12 to %c128_10 step %c1_9 iter_args(%arg11 = %8) -> (!air.async.token) {
          %16 = air.channel.put async [%arg11]  @channel_3[] (%results_19[%arg10, %c32] [%c1_9, %c32] [%c64_11, %c1_9]) {id = 9 : i32} : (memref<128x64xi32, 1>)
          scf.yield %16 : !air.async.token
        }
        %13 = scf.parallel (%arg10, %arg11) = (%c0_12, %c0_12) to (%c2_13, %c2_13) step (%c1_9, %c1_9) init (%async_token_14) -> !air.async.token {
          %async_token_23, %results_24 = air.execute -> (index) {
            %17 = affine.apply #map1()[%arg10]
            air.execute_terminator %17 : index
          }
          %async_token_25, %results_26 = air.execute -> (index) {
            %17 = affine.apply #map1()[%arg11]
            air.execute_terminator %17 : index
          }
          %16 = air.channel.get async [%async_token_14, %async_token_25, %async_token_23]  @channel_6[%arg10, %arg11] (%results_15[%results_24, %results_26] [%c32, %c32] [%c64_11, %c1_9]) {id = 10 : i32} : (memref<64x64xi32, 1>)
          scf.reduce(%16 : !air.async.token) {
          ^bb0(%arg12: !air.async.token, %arg13: !air.async.token):
            %17 = air.wait_all async [%arg12, %arg13] 
            scf.reduce.return %17 : !air.async.token
          }
        }
        %14 = air.herd @herd_0 async [%async_token_14, %7, %8]  tile (%arg10, %arg11) in (%arg12=%c1_9, %arg13=%c4) attributes {id = 3 : i32, x_loc = 0 : i64, y_loc = 2 : i64} {
          %c32_23 = arith.constant 32 : index
          %c1_24 = arith.constant 1 : index
          %c128_25 = arith.constant 128 : index
          %c0_26 = arith.constant 0 : index
          %c0_i32 = arith.constant 0 : i32
          %c2_27 = arith.constant 2 : index
          %16 = arith.remsi %arg11, %c2_27 : index
          %17 = arith.divsi %arg11, %c2_27 : index
          %async_token_28, %results_29 = air.execute -> (memref<32x32xi32, 2>) {
            %alloc = memref.alloc() : memref<32x32xi32, 2>
            air.execute_terminator %alloc : memref<32x32xi32, 2>
          }
          %async_token_30 = air.execute [%async_token_28] {
            scf.for %arg14 = %c0_26 to %c32_23 step %c1_24 {
              scf.for %arg15 = %c0_26 to %c32_23 step %c1_24 {
                memref.store %c0_i32, %results_29[%arg14, %arg15] : memref<32x32xi32, 2>
              }
            }
          }
          %18 = scf.for %arg14 = %c0_26 to %c128_25 step %c1_24 iter_args(%arg15 = %async_token_30) -> (!air.async.token) {
            %async_token_32, %results_33 = air.execute -> (memref<32x1xi32, 2>) {
              %alloc = memref.alloc() {hoist_alloc = true} : memref<32x1xi32, 2>
              air.execute_terminator %alloc : memref<32x1xi32, 2>
            }
            %async_token_34, %results_35 = air.execute -> (memref<1x32xi32, 2>) {
              %alloc = memref.alloc() {hoist_alloc = true} : memref<1x32xi32, 2>
              air.execute_terminator %alloc : memref<1x32xi32, 2>
            }
            %20 = affine.if #set()[%17, %16] -> !air.async.token {
              %22 = air.channel.get async [%arg15, %async_token_32]  @channel_0[%17, %16] (%results_33[] [] []) {id = 11 : i32} : (memref<32x1xi32, 2>)
              affine.yield %22 : !air.async.token
            } else {
              %22 = air.channel.get async [%arg15, %async_token_32]  @channel_1[%17, %16] (%results_33[] [] []) {id = 12 : i32} : (memref<32x1xi32, 2>)
              affine.yield %22 : !air.async.token
            }
            %21 = affine.if #set1()[%17, %16] -> !air.async.token {
              %22 = air.channel.get async [%arg15, %async_token_34]  @channel_2[%17, %16] (%results_35[] [] []) {id = 13 : i32} : (memref<1x32xi32, 2>)
              affine.yield %22 : !air.async.token
            } else {
              %22 = air.channel.get async [%arg15, %async_token_34]  @channel_3[%17, %16] (%results_35[] [] []) {id = 14 : i32} : (memref<1x32xi32, 2>)
              affine.yield %22 : !air.async.token
            }
            %async_token_36 = air.execute [%21, %20] {
              scf.for %arg16 = %c0_26 to %c32_23 step %c1_24 {
                scf.for %arg17 = %c0_26 to %c32_23 step %c1_24 {
                  scf.for %arg18 = %c0_26 to %c1_24 step %c1_24 {
                    %22 = memref.load %results_33[%arg16, %arg18] : memref<32x1xi32, 2>
                    %23 = memref.load %results_35[%arg18, %arg17] : memref<1x32xi32, 2>
                    %24 = memref.load %results_29[%arg16, %arg17] : memref<32x32xi32, 2>
                    %25 = arith.muli %22, %23 : i32
                    %26 = arith.addi %24, %25 : i32
                    memref.store %26, %results_29[%arg16, %arg17] : memref<32x32xi32, 2>
                  }
                }
              }
            }
            %async_token_37 = air.execute [%async_token_36] {
              memref.dealloc %results_33 : memref<32x1xi32, 2>
            }
            %async_token_38 = air.execute [%async_token_36] {
              memref.dealloc %results_35 : memref<1x32xi32, 2>
            }
            scf.yield %async_token_36 : !air.async.token
          } {unroll = 2 : i32}
          %19 = air.channel.put async [%18]  @channel_6[%17, %16] (%results_29[] [] []) {id = 15 : i32} : (memref<32x32xi32, 2>)
          %async_token_31 = air.execute [%19] {
            memref.dealloc %results_29 : memref<32x32xi32, 2>
          }
          air.herd_terminator
        }
        %async_token_20 = air.execute [%7] {
          memref.dealloc %results_17 : memref<64x128xi32, 1>
        }
        %async_token_21 = air.execute [%8] {
          memref.dealloc %results_19 : memref<128x64xi32, 1>
        }
        %15 = air.channel.put async [%14]  @channel_7[] (%results_15[] [] []) {id = 16 : i32} : (memref<64x64xi32, 1>)
        %async_token_22 = air.execute [%15] {
          memref.dealloc %results_15 : memref<64x64xi32, 1>
        }
        air.segment_terminator
      }
      air.launch_terminator
    }
    %async_token_0 = air.execute [%0] {
      memref.copy %results, %arg2 : memref<128x128xi32> to memref<128x128xi32>
    }
    return
  }
}
