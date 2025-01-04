module {
  air.channel @channel_0 [1, 1] {broadcast_shape = [1, 2]}
  air.channel @channel_1 [1, 1] {broadcast_shape = [1, 2]}
  air.channel @channel_2 [1, 1] {broadcast_shape = [2, 1]}
  air.channel @channel_3 [1, 1] {broadcast_shape = [2, 1]}
  air.channel @channel_4 [1, 1]
  air.channel @channel_5 [1, 1]
  air.channel @channel_6 [2, 2]
  air.channel @channel_7 [1, 1]
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
        %c64_9 = arith.constant 64 : index
        %5 = arith.muli %arg3, %c64_9 : index
        air.execute_terminator %5 : index
      }
      %1 = air.channel.put async [%async_token_1]  @channel_4[] (%arg7[%results_2, %c0] [%c64, %c128] [%c128, %c1]) {id = 1 : i32} : (memref<128x128xi32>)
      %async_token_3, %results_4 = air.execute -> (index) {
        %c64_9 = arith.constant 64 : index
        %5 = arith.muli %arg4, %c64_9 : index
        air.execute_terminator %5 : index
      }
      %2 = air.channel.put async [%async_token_3]  @channel_5[] (%arg8[%c0, %results_4] [%c128, %c64] [%c128, %c1]) {id = 2 : i32} : (memref<128x128xi32>)
      %async_token_5, %results_6 = air.execute -> (index) {
        %c64_9 = arith.constant 64 : index
        %5 = arith.muli %arg4, %c64_9 : index
        air.execute_terminator %5 : index
      }
      %async_token_7, %results_8 = air.execute -> (index) {
        %c64_9 = arith.constant 64 : index
        %5 = arith.muli %arg3, %c64_9 : index
        air.execute_terminator %5 : index
      }
      %3 = air.channel.get async [%async_token_5, %async_token_7]  @channel_7[] (%arg9[%results_8, %results_6] [%c64, %c64] [%c128, %c1]) {id = 3 : i32} : (memref<128x128xi32>)
      %4 = air.segment @forward_0 async  attributes {id = 2 : i32} {
        %c4 = arith.constant 4 : index
        %c32 = arith.constant 32 : index
        %c1_9 = arith.constant 1 : index
        %c128_10 = arith.constant 128 : index
        %c64_11 = arith.constant 64 : index
        %c0_12 = arith.constant 0 : index
        %c2_13 = arith.constant 2 : index
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
        %5 = air.channel.get async [%async_token_16]  @channel_4[] (%results_17[] [] []) {id = 4 : i32} : (memref<64x128xi32, 1>)
        %6 = air.channel.get async [%async_token_18]  @channel_5[] (%results_19[] [] []) {id = 5 : i32} : (memref<128x64xi32, 1>)
        %7 = air.channel.put async [%5]  @channel_0[] (%results_17[%c0_12, %c0_12, %c0_12] [%c4, %c32, %c32] [%c32, %c128_10, %c1_9]) : (memref<64x128xi32, 1>)
        %8 = air.channel.put async [%5]  @channel_1[] (%results_17[%c0_12, %c32, %c0_12] [%c4, %c32, %c32] [%c32, %c128_10, %c1_9]) : (memref<64x128xi32, 1>)
        %9 = air.channel.put async [%6]  @channel_2[] (%results_19[%c0_12, %c0_12] [%c128_10, %c32] [%c64_11, %c1_9]) : (memref<128x64xi32, 1>)
        %10 = air.channel.put async [%6]  @channel_3[] (%results_19[%c0_12, %c32] [%c128_10, %c32] [%c64_11, %c1_9]) : (memref<128x64xi32, 1>)
        %11 = air.channel.get async [%async_token_14]  @channel_6[%c0_12, %c0_12] (%results_15[%c0_12, %c0_12] [%c32, %c32] [%c64_11, %c1_9]) {id = 10 : i32} : (memref<64x64xi32, 1>)
        %12 = air.channel.get async [%async_token_14]  @channel_6[%c1_9, %c0_12] (%results_15[%c32, %c0_12] [%c32, %c32] [%c64_11, %c1_9]) {id = 10 : i32} : (memref<64x64xi32, 1>)
        %13 = air.channel.get async [%async_token_14]  @channel_6[%c0_12, %c1_9] (%results_15[%c0_12, %c32] [%c32, %c32] [%c64_11, %c1_9]) {id = 10 : i32} : (memref<64x64xi32, 1>)
        %14 = air.channel.get async [%async_token_14]  @channel_6[%c1_9, %c1_9] (%results_15[%c32, %c32] [%c32, %c32] [%c64_11, %c1_9]) {id = 10 : i32} : (memref<64x64xi32, 1>)
        %15 = air.herd @herd_0 async [%async_token_14]  tile (%arg10, %arg11) in (%arg12=%c2_13, %arg13=%c2_13) attributes {id = 3 : i32} {
          %c64_23 = arith.constant 64 : index
          %c0_i32 = arith.constant 0 : i32
          %c0_24 = arith.constant 0 : index
          %c128_25 = arith.constant 128 : index
          %async_token_26, %results_27 = air.execute -> (memref<32x32xi32, 2>) {
            %alloc = memref.alloc() : memref<32x32xi32, 2>
            air.execute_terminator %alloc : memref<32x32xi32, 2>
          }
          %async_token_28 = air.execute [%async_token_26] {
            %c0_38 = arith.constant 0 : index
            %c32_39 = arith.constant 32 : index
            %c1_40 = arith.constant 1 : index
            scf.for %arg14 = %c0_38 to %c32_39 step %c1_40 {
              %c0_41 = arith.constant 0 : index
              %c32_42 = arith.constant 32 : index
              %c1_43 = arith.constant 1 : index
              scf.for %arg15 = %c0_41 to %c32_42 step %c1_43 {
                memref.store %c0_i32, %results_27[%arg14, %arg15] : memref<32x32xi32, 2>
              }
            }
          }
          %async_token_29, %results_30 = air.execute [%async_token_28] -> (memref<32x32xi32, 2>) {
            %alloc = memref.alloc() : memref<32x32xi32, 2>
            air.execute_terminator %alloc : memref<32x32xi32, 2>
          }
          %async_token_31, %results_32 = air.execute [%async_token_29] -> (memref<32x32xi32, 2>) {
            %alloc = memref.alloc() : memref<32x32xi32, 2>
            air.execute_terminator %alloc : memref<32x32xi32, 2>
          }
          %async_token_33, %results_34 = air.execute [%async_token_31] -> (memref<32x32xi32, 2>) {
            %alloc = memref.alloc() : memref<32x32xi32, 2>
            air.execute_terminator %alloc : memref<32x32xi32, 2>
          }
          %async_token_35, %results_36 = air.execute [%async_token_31] -> (memref<32x32xi32, 2>) {
            %alloc = memref.alloc() : memref<32x32xi32, 2>
            air.execute_terminator %alloc : memref<32x32xi32, 2>
          }
          %17:4 = scf.for %arg14 = %c0_24 to %c128_25 step %c64_23 iter_args(%arg15 = %async_token_33, %arg16 = %async_token_35, %arg17 = %async_token_35, %arg18 = %async_token_35) -> (!air.async.token, !air.async.token, !air.async.token, !air.async.token) {
            %c0_38 = arith.constant 0 : index
            %19 = arith.cmpi eq, %arg10, %c0_38 : index
            %20 = arith.cmpi sge, %arg11, %c0_38 : index
            %21 = arith.andi %19, %20 : i1
            %c-1 = arith.constant -1 : index
            %22 = arith.muli %arg11, %c-1 : index
            %c1_39 = arith.constant 1 : index
            %23 = arith.addi %22, %c1_39 : index
            %24 = arith.cmpi sge, %23, %c0_38 : index
            %25 = arith.andi %21, %24 : i1
            %26 = scf.if %25 -> (!air.async.token) {
              %52 = air.channel.get async [%arg18, %arg15, %async_token_33]  @channel_0[%arg10, %arg11] (%results_34[] [] []) {id = 11 : i32} : (memref<32x32xi32, 2>)
              scf.yield %52 : !air.async.token
            } else {
              %52 = air.channel.get async [%arg18, %arg15, %async_token_33]  @channel_1[%arg10, %arg11] (%results_34[] [] []) {id = 12 : i32} : (memref<32x32xi32, 2>)
              scf.yield %52 : !air.async.token
            }
            %c0_40 = arith.constant 0 : index
            %27 = arith.cmpi sge, %arg10, %c0_40 : index
            %c-1_41 = arith.constant -1 : index
            %28 = arith.muli %arg10, %c-1_41 : index
            %c1_42 = arith.constant 1 : index
            %29 = arith.addi %28, %c1_42 : index
            %30 = arith.cmpi sge, %29, %c0_40 : index
            %31 = arith.andi %27, %30 : i1
            %32 = arith.cmpi eq, %arg11, %c0_40 : index
            %33 = arith.andi %31, %32 : i1
            %34 = scf.if %33 -> (!air.async.token) {
              %52 = air.channel.get async [%arg18, %arg15, %async_token_35]  @channel_2[%arg10, %arg11] (%results_36[] [] []) {id = 13 : i32} : (memref<32x32xi32, 2>)
              scf.yield %52 : !air.async.token
            } else {
              %52 = air.channel.get async [%arg18, %arg15, %async_token_35]  @channel_3[%arg10, %arg11] (%results_36[] [] []) {id = 14 : i32} : (memref<32x32xi32, 2>)
              scf.yield %52 : !air.async.token
            }
            %async_token_43 = air.execute [%arg17, %34, %26] {
              %c0_55 = arith.constant 0 : index
              %c32_56 = arith.constant 32 : index
              %c1_57 = arith.constant 1 : index
              scf.for %arg19 = %c0_55 to %c32_56 step %c1_57 {
                %c0_58 = arith.constant 0 : index
                %c32_59 = arith.constant 32 : index
                %c1_60 = arith.constant 1 : index
                scf.for %arg20 = %c0_58 to %c32_59 step %c1_60 {
                  %c0_61 = arith.constant 0 : index
                  %c32_62 = arith.constant 32 : index
                  %c1_63 = arith.constant 1 : index
                  scf.for %arg21 = %c0_61 to %c32_62 step %c1_63 {
                    %52 = memref.load %results_34[%arg19, %arg21] : memref<32x32xi32, 2>
                    %53 = memref.load %results_36[%arg21, %arg20] : memref<32x32xi32, 2>
                    %54 = memref.load %results_27[%arg19, %arg20] : memref<32x32xi32, 2>
                    %55 = arith.muli %52, %53 : i32
                    %56 = arith.addi %54, %55 : i32
                    memref.store %56, %results_27[%arg19, %arg20] : memref<32x32xi32, 2>
                  }
                }
              }
            }
            %async_token_44 = air.execute {
              memref.dealloc %results_34 : memref<32x32xi32, 2>
            }
            %async_token_45 = air.execute {
              memref.dealloc %results_36 : memref<32x32xi32, 2>
            }
            %c0_46 = arith.constant 0 : index
            %35 = arith.cmpi eq, %arg10, %c0_46 : index
            %36 = arith.cmpi sge, %arg11, %c0_46 : index
            %37 = arith.andi %35, %36 : i1
            %c-1_47 = arith.constant -1 : index
            %38 = arith.muli %arg11, %c-1_47 : index
            %c1_48 = arith.constant 1 : index
            %39 = arith.addi %38, %c1_48 : index
            %40 = arith.cmpi sge, %39, %c0_46 : index
            %41 = arith.andi %37, %40 : i1
            %42 = scf.if %41 -> (!air.async.token) {
              %52 = air.channel.get async [%34, %26, %arg16]  @channel_0[%arg10, %arg11] (%results_32[] [] []) {id = 11 : i32} : (memref<32x32xi32, 2>)
              scf.yield %52 : !air.async.token
            } else {
              %52 = air.channel.get async [%34, %26, %arg16]  @channel_1[%arg10, %arg11] (%results_32[] [] []) {id = 12 : i32} : (memref<32x32xi32, 2>)
              scf.yield %52 : !air.async.token
            }
            %c0_49 = arith.constant 0 : index
            %43 = arith.cmpi sge, %arg10, %c0_49 : index
            %c-1_50 = arith.constant -1 : index
            %44 = arith.muli %arg10, %c-1_50 : index
            %c1_51 = arith.constant 1 : index
            %45 = arith.addi %44, %c1_51 : index
            %46 = arith.cmpi sge, %45, %c0_49 : index
            %47 = arith.andi %43, %46 : i1
            %48 = arith.cmpi eq, %arg11, %c0_49 : index
            %49 = arith.andi %47, %48 : i1
            %50 = scf.if %49 -> (!air.async.token) {
              %52 = air.channel.get async [%34, %26, %arg16]  @channel_2[%arg10, %arg11] (%results_30[] [] []) {id = 13 : i32} : (memref<32x32xi32, 2>)
              scf.yield %52 : !air.async.token
            } else {
              %52 = air.channel.get async [%34, %26, %arg16]  @channel_3[%arg10, %arg11] (%results_30[] [] []) {id = 14 : i32} : (memref<32x32xi32, 2>)
              scf.yield %52 : !air.async.token
            }
            %async_token_52 = air.execute [%async_token_43, %50, %42] {
              %c0_55 = arith.constant 0 : index
              %c32_56 = arith.constant 32 : index
              %c1_57 = arith.constant 1 : index
              scf.for %arg19 = %c0_55 to %c32_56 step %c1_57 {
                %c0_58 = arith.constant 0 : index
                %c32_59 = arith.constant 32 : index
                %c1_60 = arith.constant 1 : index
                scf.for %arg20 = %c0_58 to %c32_59 step %c1_60 {
                  %c0_61 = arith.constant 0 : index
                  %c32_62 = arith.constant 32 : index
                  %c1_63 = arith.constant 1 : index
                  scf.for %arg21 = %c0_61 to %c32_62 step %c1_63 {
                    %52 = memref.load %results_32[%arg19, %arg21] : memref<32x32xi32, 2>
                    %53 = memref.load %results_30[%arg21, %arg20] : memref<32x32xi32, 2>
                    %54 = memref.load %results_27[%arg19, %arg20] : memref<32x32xi32, 2>
                    %55 = arith.muli %52, %53 : i32
                    %56 = arith.addi %54, %55 : i32
                    memref.store %56, %results_27[%arg19, %arg20] : memref<32x32xi32, 2>
                  }
                }
              }
            }
            %async_token_53 = air.execute {
              memref.dealloc %results_32 : memref<32x32xi32, 2>
            }
            %async_token_54 = air.execute {
              memref.dealloc %results_30 : memref<32x32xi32, 2>
            }
            %51 = air.wait_all async [%42, %50] 
            scf.yield %async_token_43, %async_token_52, %async_token_52, %51 : !air.async.token, !air.async.token, !air.async.token, !air.async.token
          }
          %18 = air.channel.put async [%17#1]  @channel_6[%arg10, %arg11] (%results_27[] [] []) {id = 15 : i32} : (memref<32x32xi32, 2>)
          %async_token_37 = air.execute [%18] {
            memref.dealloc %results_27 : memref<32x32xi32, 2>
          }
        }
        %async_token_20 = air.execute [%5] {
          memref.dealloc %results_17 : memref<64x128xi32, 1>
        }
        %async_token_21 = air.execute [%6] {
          memref.dealloc %results_19 : memref<128x64xi32, 1>
        }
        %16 = air.channel.put async [%15]  @channel_7[] (%results_15[] [] []) {id = 16 : i32} : (memref<64x64xi32, 1>)
        %async_token_22 = air.execute [%16] {
          memref.dealloc %results_15 : memref<64x64xi32, 1>
        }
      }
    }
    %async_token_0 = air.execute [%0] {
      memref.copy %results, %arg2 : memref<128x128xi32> to memref<128x128xi32>
    }
    return
  }
}
