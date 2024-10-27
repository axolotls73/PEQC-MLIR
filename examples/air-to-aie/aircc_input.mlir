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
  func.func @forward(%arg0: memref<2048x2048xi32>, %arg1: memref<2048x2048xi32>, %arg2: memref<2048x2048xi32>) {
    %c32 = arith.constant 32 : index
    %async_token, %results = air.execute -> (memref<2048x2048xi32>) {
      %alloc = memref.alloc() : memref<2048x2048xi32>
      air.execute_terminator %alloc : memref<2048x2048xi32>
    }
    %0 = air.launch async [%async_token] (%arg3, %arg4) in (%arg5=%c32, %arg6=%c32) args(%arg7=%results, %arg8=%arg0, %arg9=%arg1) : memref<2048x2048xi32>, memref<2048x2048xi32>, memref<2048x2048xi32> attributes {id = 1 : i32} {
      %c1 = arith.constant 1 : index
      %c64 = arith.constant 64 : index
      %c0 = arith.constant 0 : index
      %c2048 = arith.constant 2048 : index
      %c256 = arith.constant 256 : index
      %async_token_1, %results_2 = air.execute -> (index) {
        %5 = affine.apply #map()[%arg3]
        air.execute_terminator %5 : index
      }
      %1 = scf.for %arg10 = %c0 to %c2048 step %c256 iter_args(%arg11 = %async_token_1) -> (!air.async.token) {
        %5 = air.channel.put async [%arg11]  @channel_4[] (%arg8[%results_2, %arg10] [%c64, %c256] [%c2048, %c1]) {id = 1 : i32} : (memref<2048x2048xi32>)
        scf.yield %5 : !air.async.token
      }
      %async_token_3, %results_4 = air.execute -> (index) {
        %5 = affine.apply #map()[%arg4]
        air.execute_terminator %5 : index
      }
      %2 = scf.for %arg10 = %c0 to %c2048 step %c256 iter_args(%arg11 = %async_token_3) -> (!air.async.token) {
        %5 = air.channel.put async [%arg11]  @channel_5[] (%arg9[%arg10, %results_4] [%c256, %c64] [%c2048, %c1]) {id = 2 : i32} : (memref<2048x2048xi32>)
        scf.yield %5 : !air.async.token
      }
      %async_token_5, %results_6 = air.execute -> (index) {
        %5 = affine.apply #map()[%arg3]
        air.execute_terminator %5 : index
      }
      %async_token_7, %results_8 = air.execute -> (index) {
        %5 = affine.apply #map()[%arg4]
        air.execute_terminator %5 : index
      }
      %3 = air.channel.get async [%async_token_5, %async_token_7]  @channel_7[] (%arg7[%results_6, %results_8] [%c64, %c64] [%c2048, %c1]) {id = 3 : i32} : (memref<2048x2048xi32>)
      %4 = air.segment @segment_0 async  attributes {id = 2 : i32} {
        %c32_9 = arith.constant 32 : index
        %c1_10 = arith.constant 1 : index
        %c64_11 = arith.constant 64 : index
        %c2 = arith.constant 2 : index
        %c0_12 = arith.constant 0 : index
        %c2048_13 = arith.constant 2048 : index
        %c256_14 = arith.constant 256 : index
        %async_token_15, %results_16 = air.execute -> (memref<64x64xi32, 1>) {
          %alloc = memref.alloc() : memref<64x64xi32, 1>
          air.execute_terminator %alloc : memref<64x64xi32, 1>
        }
        %5 = scf.for %arg10 = %c0_12 to %c2048_13 step %c256_14 iter_args(%arg11 = %async_token_15) -> (!air.async.token) {
          %async_token_18, %results_19 = air.execute -> (memref<64x256xi32, 1>) {
            %alloc = memref.alloc() {hoist_alloc = true} : memref<64x256xi32, 1>
            air.execute_terminator %alloc : memref<64x256xi32, 1>
          }
          %async_token_20, %results_21 = air.execute -> (memref<256x64xi32, 1>) {
            %alloc = memref.alloc() {hoist_alloc = true} : memref<256x64xi32, 1>
            air.execute_terminator %alloc : memref<256x64xi32, 1>
          }
          %7 = air.channel.get async [%arg11, %async_token_18]  @channel_4[] (%results_19[] [] []) {id = 4 : i32} : (memref<64x256xi32, 1>)
          %8 = air.channel.get async [%arg11, %async_token_20]  @channel_5[] (%results_21[] [] []) {id = 5 : i32} : (memref<256x64xi32, 1>)
          %9 = scf.for %arg12 = %c0_12 to %c256_14 step %c32_9 iter_args(%arg13 = %7) -> (!air.async.token) {
            %16 = air.channel.put async [%arg13]  @channel_0[] (%results_19[%c0_12, %arg12] [%c32_9, %c32_9] [%c256_14, %c1_10]) {id = 6 : i32} : (memref<64x256xi32, 1>)
            scf.yield %16 : !air.async.token
          }
          %10 = scf.for %arg12 = %c0_12 to %c256_14 step %c32_9 iter_args(%arg13 = %7) -> (!air.async.token) {
            %16 = air.channel.put async [%arg13]  @channel_1[] (%results_19[%c32_9, %arg12] [%c32_9, %c32_9] [%c256_14, %c1_10]) {id = 7 : i32} : (memref<64x256xi32, 1>)
            scf.yield %16 : !air.async.token
          }
          %11 = scf.for %arg12 = %c0_12 to %c256_14 step %c32_9 iter_args(%arg13 = %8) -> (!air.async.token) {
            %16 = air.channel.put async [%arg13]  @channel_2[] (%results_21[%arg12, %c0_12] [%c32_9, %c32_9] [%c64_11, %c1_10]) {id = 8 : i32} : (memref<256x64xi32, 1>)
            scf.yield %16 : !air.async.token
          }
          %12 = scf.for %arg12 = %c0_12 to %c256_14 step %c32_9 iter_args(%arg13 = %8) -> (!air.async.token) {
            %16 = air.channel.put async [%arg13]  @channel_3[] (%results_21[%arg12, %c32_9] [%c32_9, %c32_9] [%c64_11, %c1_10]) {id = 9 : i32} : (memref<256x64xi32, 1>)
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
            %16 = air.channel.get async [%arg11, %async_token_26, %async_token_24]  @channel_6[%arg12, %arg13] (%results_16[%results_25, %results_27] [%c32_9, %c32_9] [%c64_11, %c1_10]) {id = 10 : i32} : (memref<64x64xi32, 1>)
            scf.reduce(%16 : !air.async.token) {
            ^bb0(%arg14: !air.async.token, %arg15: !air.async.token):
              %17 = air.wait_all async [%arg14, %arg15] 
              scf.reduce.return %17 : !air.async.token
            }
          }
          %14 = air.herd @herd_0 async [%7, %8]  tile (%arg12, %arg13) in (%arg14=%c2, %arg15=%c2) attributes {id = 3 : i32} {
            %c0_i32 = arith.constant 0 : i32
            %c0_24 = arith.constant 0 : index
            %c256_25 = arith.constant 256 : index
            %c32_26 = arith.constant 32 : index
            %async_token_27, %results_28 = air.execute -> (memref<32x32xi32, 2>) {
              %alloc = memref.alloc() : memref<32x32xi32, 2>
              air.execute_terminator %alloc : memref<32x32xi32, 2>
            }
            %async_token_29 = air.execute [%async_token_27] {
              linalg.fill ins(%c0_i32 : i32) outs(%results_28 : memref<32x32xi32, 2>)
            }
            %16 = scf.for %arg16 = %c0_24 to %c256_25 step %c32_26 iter_args(%arg17 = %async_token_29) -> (!air.async.token) {
              %async_token_31, %results_32 = air.execute -> (memref<32x32xi32, 2>) {
                %alloc = memref.alloc() {hoist_alloc = true} : memref<32x32xi32, 2>
                air.execute_terminator %alloc : memref<32x32xi32, 2>
              }
              %async_token_33, %results_34 = air.execute -> (memref<32x32xi32, 2>) {
                %alloc = memref.alloc() {hoist_alloc = true} : memref<32x32xi32, 2>
                air.execute_terminator %alloc : memref<32x32xi32, 2>
              }
              %18 = affine.if #set()[%arg12, %arg13] -> !air.async.token {
                %20 = air.channel.get async [%arg17, %async_token_31]  @channel_0[%arg12, %arg13] (%results_32[] [] []) {id = 11 : i32} : (memref<32x32xi32, 2>)
                affine.yield %20 : !air.async.token
              } else {
                %20 = air.channel.get async [%arg17, %async_token_31]  @channel_1[%arg12, %arg13] (%results_32[] [] []) {id = 12 : i32} : (memref<32x32xi32, 2>)
                affine.yield %20 : !air.async.token
              }
              %19 = affine.if #set1()[%arg12, %arg13] -> !air.async.token {
                %20 = air.channel.get async [%arg17, %async_token_33]  @channel_2[%arg12, %arg13] (%results_34[] [] []) {id = 13 : i32} : (memref<32x32xi32, 2>)
                affine.yield %20 : !air.async.token
              } else {
                %20 = air.channel.get async [%arg17, %async_token_33]  @channel_3[%arg12, %arg13] (%results_34[] [] []) {id = 14 : i32} : (memref<32x32xi32, 2>)
                affine.yield %20 : !air.async.token
              }
              %async_token_35 = air.execute [%19, %18] {
                linalg.matmul {cast = #linalg.type_fn<cast_signed>} ins(%results_32, %results_34 : memref<32x32xi32, 2>, memref<32x32xi32, 2>) outs(%results_28 : memref<32x32xi32, 2>)
              }
              %async_token_36 = air.execute [%async_token_35] {
                memref.dealloc %results_32 : memref<32x32xi32, 2>
              }
              %async_token_37 = air.execute [%async_token_35] {
                memref.dealloc %results_34 : memref<32x32xi32, 2>
              }
              scf.yield %async_token_35 : !air.async.token
            } {unroll = 2 : i32}
            %17 = air.channel.put async [%16]  @channel_6[%arg12, %arg13] (%results_28[] [] []) {id = 15 : i32} : (memref<32x32xi32, 2>)
            %async_token_30 = air.execute [%17] {
              memref.dealloc %results_28 : memref<32x32xi32, 2>
            }
            air.herd_terminator
          }
          %async_token_22 = air.execute [%7] {
            memref.dealloc %results_19 : memref<64x256xi32, 1>
          }
          %async_token_23 = air.execute [%8] {
            memref.dealloc %results_21 : memref<256x64xi32, 1>
          }
          %15 = air.wait_all async [%9, %10, %11, %12, %13, %14] 
          scf.yield %15 : !air.async.token
        } {unroll = 2 : i32}
        %6 = air.channel.put async [%5]  @channel_7[] (%results_16[] [] []) {id = 16 : i32} : (memref<64x64xi32, 1>)
        %async_token_17 = air.execute [%6] {
          memref.dealloc %results_16 : memref<64x64xi32, 1>
        }
        air.segment_terminator
      }
      air.launch_terminator
    }
    %async_token_0 = air.execute [%0] {
      memref.copy %results, %arg2 : memref<2048x2048xi32> to memref<2048x2048xi32>
    }
    return
  }
}
