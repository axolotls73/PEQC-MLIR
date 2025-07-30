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
        %c8_9 = arith.constant 8 : index
        %5 = arith.muli %arg3, %c8_9 overflow<nsw> : index
        air.execute_terminator %5 : index
      }
      %1 = air.channel.put async [%async_token_1]  @channel_4[] (%arg7[%results_2, %c0] [%c8, %c16] [%c16, %c1]) {id = 1 : i32} : (memref<16x16xi32>)
      %async_token_3, %results_4 = air.execute -> (index) {
        %c8_9 = arith.constant 8 : index
        %5 = arith.muli %arg4, %c8_9 overflow<nsw> : index
        air.execute_terminator %5 : index
      }
      %2 = air.channel.put async [%async_token_3]  @channel_5[] (%arg8[%c0, %results_4] [%c16, %c8] [%c16, %c1]) {id = 2 : i32} : (memref<16x16xi32>)
      %async_token_5, %results_6 = air.execute -> (index) {
        %c8_9 = arith.constant 8 : index
        %5 = arith.muli %arg4, %c8_9 overflow<nsw> : index
        air.execute_terminator %5 : index
      }
      %async_token_7, %results_8 = air.execute -> (index) {
        %c8_9 = arith.constant 8 : index
        %5 = arith.muli %arg3, %c8_9 overflow<nsw> : index
        air.execute_terminator %5 : index
      }
      %3 = air.channel.get async [%async_token_5, %async_token_7]  @channel_7[] (%arg9[%results_8, %results_6] [%c8, %c8] [%c16, %c1]) {id = 3 : i32} : (memref<16x16xi32>)
      %4 = air.segment @forward_0 async  attributes {id = 2 : i32, x_loc = 1 : i64, x_size = 4 : i64, y_loc = 2 : i64, y_size = 6 : i64} {
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
        %15 = air.herd @herd_0 async [%async_token_13, %5, %6]  tile (%arg10, %arg11) in (%arg12=%c1_9, %arg13=%c4) attributes {id = 3 : i32, x_loc = 1 : i64, y_loc = 2 : i64} {
          %c16_22 = arith.constant 16 : index
          %c0_23 = arith.constant 0 : index
          %c0_i32 = arith.constant 0 : i32
          %c8_24 = arith.constant 8 : index
          %c4_25 = arith.constant 4 : index
          %c1_26 = arith.constant 1 : index
          %c2_27 = arith.constant 2 : index
          %17 = arith.remsi %arg11, %c2_27 : index
          %18 = arith.divsi %arg11, %c2_27 : index
          %async_token_28, %results_29 = air.execute -> (memref<4x4xi32, 2>) {
            %alloc = memref.alloc() : memref<4x4xi32, 2>
            air.execute_terminator %alloc : memref<4x4xi32, 2>
          }
          %async_token_30 = air.execute [%async_token_28] {
            scf.for %arg14 = %c0_23 to %c4_25 step %c1_26 {
              scf.for %arg15 = %c0_23 to %c4_25 step %c1_26 {
                memref.store %c0_i32, %results_29[%arg14, %arg15] : memref<4x4xi32, 2>
              }
            }
          }
          %async_token_31, %results_32 = air.execute -> (memref<4x4xi32, 2>) {
            %alloc = memref.alloc() : memref<4x4xi32, 2>
            air.execute_terminator %alloc : memref<4x4xi32, 2>
          }
          %async_token_33, %results_34 = air.execute -> (memref<4x4xi32, 2>) {
            %alloc = memref.alloc() : memref<4x4xi32, 2>
            air.execute_terminator %alloc : memref<4x4xi32, 2>
          }
          %async_token_35, %results_36 = air.execute -> (memref<4x4xi32, 2>) {
            %alloc = memref.alloc() : memref<4x4xi32, 2>
            air.execute_terminator %alloc : memref<4x4xi32, 2>
          }
          %async_token_37, %results_38 = air.execute -> (memref<4x4xi32, 2>) {
            %alloc = memref.alloc() : memref<4x4xi32, 2>
            air.execute_terminator %alloc : memref<4x4xi32, 2>
          }
          %19:3 = scf.for %arg14 = %c0_23 to %c16_22 step %c8_24 iter_args(%arg15 = %async_token_35, %arg16 = %async_token_37, %arg17 = %async_token_37) -> (!air.async.token, !air.async.token, !air.async.token) {
            %c0_44 = arith.constant 0 : index
            %21 = arith.cmpi eq, %18, %c0_44 : index
            %22 = arith.cmpi sge, %17, %c0_44 : index
            %23 = arith.andi %21, %22 : i1
            %c-1 = arith.constant -1 : index
            %24 = arith.muli %17, %c-1 overflow<nsw> : index
            %c1_45 = arith.constant 1 : index
            %25 = arith.addi %24, %c1_45 : index
            %26 = arith.cmpi sge, %25, %c0_44 : index
            %27 = arith.andi %23, %26 : i1
            %28 = scf.if %27 -> (!air.async.token) {
              %54 = air.channel.get async [%arg17, %arg15, %async_token_35]  @channel_0[%18, %17] (%results_36[] [] []) {id = 14 : i32} : (memref<4x4xi32, 2>)
              scf.yield %54 : !air.async.token
            } else {
              %54 = air.channel.get async [%arg17, %arg15, %async_token_35]  @channel_1[%18, %17] (%results_36[] [] []) {id = 15 : i32} : (memref<4x4xi32, 2>)
              scf.yield %54 : !air.async.token
            }
            %c0_46 = arith.constant 0 : index
            %29 = arith.cmpi sge, %18, %c0_46 : index
            %c-1_47 = arith.constant -1 : index
            %30 = arith.muli %18, %c-1_47 overflow<nsw> : index
            %c1_48 = arith.constant 1 : index
            %31 = arith.addi %30, %c1_48 : index
            %32 = arith.cmpi sge, %31, %c0_46 : index
            %33 = arith.andi %29, %32 : i1
            %34 = arith.cmpi eq, %17, %c0_46 : index
            %35 = arith.andi %33, %34 : i1
            %36 = scf.if %35 -> (!air.async.token) {
              %54 = air.channel.get async [%arg17, %arg15, %async_token_37]  @channel_2[%18, %17] (%results_38[] [] []) {id = 16 : i32} : (memref<4x4xi32, 2>)
              scf.yield %54 : !air.async.token
            } else {
              %54 = air.channel.get async [%arg17, %arg15, %async_token_37]  @channel_3[%18, %17] (%results_38[] [] []) {id = 17 : i32} : (memref<4x4xi32, 2>)
              scf.yield %54 : !air.async.token
            }
            %async_token_49 = air.execute [%arg16, %36, %28] {
              scf.for %arg18 = %c0_23 to %c4_25 step %c1_26 {
                scf.for %arg19 = %c0_23 to %c4_25 step %c1_26 {
                  scf.for %arg20 = %c0_23 to %c4_25 step %c1_26 {
                    %54 = memref.load %results_36[%arg18, %arg20] : memref<4x4xi32, 2>
                    %55 = memref.load %results_38[%arg20, %arg19] : memref<4x4xi32, 2>
                    %56 = memref.load %results_29[%arg18, %arg19] : memref<4x4xi32, 2>
                    %57 = arith.muli %54, %55 : i32
                    %58 = arith.addi %56, %57 : i32
                    memref.store %58, %results_29[%arg18, %arg19] : memref<4x4xi32, 2>
                  }
                }
              }
            }
            %c0_50 = arith.constant 0 : index
            %37 = arith.cmpi eq, %18, %c0_50 : index
            %38 = arith.cmpi sge, %17, %c0_50 : index
            %39 = arith.andi %37, %38 : i1
            %c-1_51 = arith.constant -1 : index
            %40 = arith.muli %17, %c-1_51 overflow<nsw> : index
            %c1_52 = arith.constant 1 : index
            %41 = arith.addi %40, %c1_52 : index
            %42 = arith.cmpi sge, %41, %c0_50 : index
            %43 = arith.andi %39, %42 : i1
            %44 = scf.if %43 -> (!air.async.token) {
              %54 = air.channel.get async [%arg16]  @channel_0[%18, %17] (%results_34[] [] []) {id = 18 : i32} : (memref<4x4xi32, 2>)
              scf.yield %54 : !air.async.token
            } else {
              %54 = air.channel.get async [%arg16]  @channel_1[%18, %17] (%results_34[] [] []) {id = 19 : i32} : (memref<4x4xi32, 2>)
              scf.yield %54 : !air.async.token
            }
            %c0_53 = arith.constant 0 : index
            %45 = arith.cmpi sge, %18, %c0_53 : index
            %c-1_54 = arith.constant -1 : index
            %46 = arith.muli %18, %c-1_54 overflow<nsw> : index
            %c1_55 = arith.constant 1 : index
            %47 = arith.addi %46, %c1_55 : index
            %48 = arith.cmpi sge, %47, %c0_53 : index
            %49 = arith.andi %45, %48 : i1
            %50 = arith.cmpi eq, %17, %c0_53 : index
            %51 = arith.andi %49, %50 : i1
            %52 = scf.if %51 -> (!air.async.token) {
              %54 = air.channel.get async [%arg16]  @channel_2[%18, %17] (%results_32[] [] []) {id = 20 : i32} : (memref<4x4xi32, 2>)
              scf.yield %54 : !air.async.token
            } else {
              %54 = air.channel.get async [%arg16]  @channel_3[%18, %17] (%results_32[] [] []) {id = 21 : i32} : (memref<4x4xi32, 2>)
              scf.yield %54 : !air.async.token
            }
            %async_token_56 = air.execute [%async_token_49, %52, %44] {
              scf.for %arg18 = %c0_23 to %c4_25 step %c1_26 {
                scf.for %arg19 = %c0_23 to %c4_25 step %c1_26 {
                  scf.for %arg20 = %c0_23 to %c4_25 step %c1_26 {
                    %54 = memref.load %results_34[%arg18, %arg20] : memref<4x4xi32, 2>
                    %55 = memref.load %results_32[%arg20, %arg19] : memref<4x4xi32, 2>
                    %56 = memref.load %results_29[%arg18, %arg19] : memref<4x4xi32, 2>
                    %57 = arith.muli %54, %55 : i32
                    %58 = arith.addi %56, %57 : i32
                    memref.store %58, %results_29[%arg18, %arg19] : memref<4x4xi32, 2>
                  }
                }
              }
            }
            %53 = air.wait_all async [%44, %52] 
            scf.yield %async_token_49, %async_token_56, %53 : !air.async.token, !air.async.token, !air.async.token
          }
          %async_token_39 = air.execute [%19#1] {
            memref.dealloc %results_36 : memref<4x4xi32, 2>
          }
          %async_token_40 = air.execute [%19#1] {
            memref.dealloc %results_38 : memref<4x4xi32, 2>
          }
          %async_token_41 = air.execute [%19#1] {
            memref.dealloc %results_34 : memref<4x4xi32, 2>
          }
          %async_token_42 = air.execute [%19#1] {
            memref.dealloc %results_32 : memref<4x4xi32, 2>
          }
          %20 = air.channel.put async [%19#1]  @channel_6[%18, %17] (%results_29[] [] []) {id = 22 : i32} : (memref<4x4xi32, 2>)
          %async_token_43 = air.execute [%20] {
            memref.dealloc %results_29 : memref<4x4xi32, 2>
          }
        }
        %async_token_19 = air.execute {
          memref.dealloc %results_16 : memref<8x16xi32, 1>
        }
        %async_token_20 = air.execute {
          memref.dealloc %results_18 : memref<16x8xi32, 1>
        }
        %16 = air.channel.put async  @channel_7[] (%results_14[] [] []) {id = 23 : i32} : (memref<8x8xi32, 1>)
        %async_token_21 = air.execute [%16] {
          memref.dealloc %results_14 : memref<8x8xi32, 1>
        }
        air.wait_all [%7, %8, %9, %10, %11, %12, %13, %14, %15, %async_token_19, %async_token_20, %async_token_21] 
      }
    }
    %async_token_0 = air.execute [%0] {
      memref.copy %results, %arg2 : memref<16x16xi32> to memref<16x16xi32>
    }
    return
  }
}

