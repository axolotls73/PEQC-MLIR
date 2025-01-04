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
        %c4_10 = arith.constant 4 : index
        %5 = arith.muli %arg3, %c4_10 : index
        air.execute_terminator %5 : index
      }
      %1 = scf.for %arg10 = %c0 to %c16 step %c8 iter_args(%arg11 = %async_token_2) -> (!air.async.token) {
        %5 = air.channel.put async [%arg11]  @channel_4[] (%arg8[%results_3, %arg10] [%c4_1, %c8] [%c16, %c1]) {id = 1 : i32} : (memref<16x16xi32>)
        scf.yield %5 : !air.async.token
      }
      %async_token_4, %results_5 = air.execute -> (index) {
        %c4_10 = arith.constant 4 : index
        %5 = arith.muli %arg4, %c4_10 : index
        air.execute_terminator %5 : index
      }
      %2 = scf.for %arg10 = %c0 to %c16 step %c8 iter_args(%arg11 = %async_token_4) -> (!air.async.token) {
        %5 = air.channel.put async [%arg11]  @channel_5[] (%arg9[%arg10, %results_5] [%c8, %c4_1] [%c16, %c1]) {id = 2 : i32} : (memref<16x16xi32>)
        scf.yield %5 : !air.async.token
      }
      %async_token_6, %results_7 = air.execute -> (index) {
        %c4_10 = arith.constant 4 : index
        %5 = arith.muli %arg3, %c4_10 : index
        air.execute_terminator %5 : index
      }
      %async_token_8, %results_9 = air.execute -> (index) {
        %c4_10 = arith.constant 4 : index
        %5 = arith.muli %arg4, %c4_10 : index
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
              %c2_28 = arith.constant 2 : index
              %17 = arith.muli %arg12, %c2_28 : index
              air.execute_terminator %17 : index
            }
            %async_token_26, %results_27 = air.execute -> (index) {
              %c2_28 = arith.constant 2 : index
              %17 = arith.muli %arg13, %c2_28 : index
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
              %c0_36 = arith.constant 0 : index
              %20 = arith.cmpi eq, %17, %c0_36 : index
              %21 = arith.cmpi sge, %16, %c0_36 : index
              %22 = arith.andi %20, %21 : i1
              %c-1 = arith.constant -1 : index
              %23 = arith.muli %16, %c-1 : index
              %c1_37 = arith.constant 1 : index
              %24 = arith.addi %23, %c1_37 : index
              %25 = arith.cmpi sge, %24, %c0_36 : index
              %26 = arith.andi %22, %25 : i1
              %27 = scf.if %26 -> (!air.async.token) {
                %36 = air.channel.get async [%arg17, %async_token_32]  @channel_0[%17, %16] (%results_33[] [] []) {id = 11 : i32} : (memref<2x2xi32, 2>)
                scf.yield %36 : !air.async.token
              } else {
                %36 = air.channel.get async [%arg17, %async_token_32]  @channel_1[%17, %16] (%results_33[] [] []) {id = 12 : i32} : (memref<2x2xi32, 2>)
                scf.yield %36 : !air.async.token
              }
              %c0_38 = arith.constant 0 : index
              %28 = arith.cmpi sge, %17, %c0_38 : index
              %c-1_39 = arith.constant -1 : index
              %29 = arith.muli %17, %c-1_39 : index
              %c1_40 = arith.constant 1 : index
              %30 = arith.addi %29, %c1_40 : index
              %31 = arith.cmpi sge, %30, %c0_38 : index
              %32 = arith.andi %28, %31 : i1
              %33 = arith.cmpi eq, %16, %c0_38 : index
              %34 = arith.andi %32, %33 : i1
              %35 = scf.if %34 -> (!air.async.token) {
                %36 = air.channel.get async [%arg17, %async_token_34]  @channel_2[%17, %16] (%results_35[] [] []) {id = 13 : i32} : (memref<2x2xi32, 2>)
                scf.yield %36 : !air.async.token
              } else {
                %36 = air.channel.get async [%arg17, %async_token_34]  @channel_3[%17, %16] (%results_35[] [] []) {id = 14 : i32} : (memref<2x2xi32, 2>)
                scf.yield %36 : !air.async.token
              }
              %async_token_41 = air.execute [%35, %27] {
                scf.for %arg18 = %c0_26 to %c2_27 step %c1_24 {
                  scf.for %arg19 = %c0_26 to %c2_27 step %c1_24 {
                    scf.for %arg20 = %c0_26 to %c2_27 step %c1_24 {
                      %36 = memref.load %results_33[%arg18, %arg20] : memref<2x2xi32, 2>
                      %37 = memref.load %results_35[%arg20, %arg19] : memref<2x2xi32, 2>
                      %38 = memref.load %results_29[%arg18, %arg19] : memref<2x2xi32, 2>
                      %39 = arith.muli %36, %37 : i32
                      %40 = arith.addi %38, %39 : i32
                      memref.store %40, %results_29[%arg18, %arg19] : memref<2x2xi32, 2>
                    }
                  }
                }
              }
              %async_token_42 = air.execute [%async_token_41] {
                memref.dealloc %results_33 : memref<2x2xi32, 2>
              }
              %async_token_43 = air.execute [%async_token_41] {
                memref.dealloc %results_35 : memref<2x2xi32, 2>
              }
              scf.yield %async_token_41 : !air.async.token
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

