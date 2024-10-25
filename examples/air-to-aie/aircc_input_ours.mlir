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
      %c8 = arith.constant 8 : index
      %c0 = arith.constant 0 : index
      %c2048 = arith.constant 2048 : index
      %c256 = arith.constant 256 : index
      %c1 = arith.constant 1 : index
      %c64 = arith.constant 64 : index
      %async_token_1, %results_2 = air.execute -> (index) {
        %c64_9 = arith.constant 64 : index
        %7 = arith.muli %arg3, %c64_9 : index
        air.execute_terminator %7 : index
      }
      %1 = air.wait_all async 
      %2 = air.channel.put async [%1]  @channel_4[] (%arg8[%c0, %results_2, %c0] [%c8, %c64, %c256] [%c256, %c2048, %c1]) : (memref<2048x2048xi32>)
      %async_token_3, %results_4 = air.execute -> (index) {
        %c64_9 = arith.constant 64 : index
        %7 = arith.muli %arg4, %c64_9 : index
        air.execute_terminator %7 : index
      }
      %3 = air.wait_all async 
      %4 = air.channel.put async [%3]  @channel_5[] (%arg9[%c0, %results_4] [%c2048, %c64] [%c2048, %c1]) : (memref<2048x2048xi32>)
      %async_token_5, %results_6 = air.execute -> (index) {
        %c64_9 = arith.constant 64 : index
        %7 = arith.muli %arg3, %c64_9 : index
        air.execute_terminator %7 : index
      }
      %async_token_7, %results_8 = air.execute -> (index) {
        %c64_9 = arith.constant 64 : index
        %7 = arith.muli %arg4, %c64_9 : index
        air.execute_terminator %7 : index
      }
      %5 = air.channel.get async [%async_token_5, %async_token_7]  @channel_7[] (%arg7[%results_6, %results_8] [%c64, %c64] [%c2048, %c1]) {id = 3 : i32} : (memref<2048x2048xi32>)
      %6 = air.segment @segment_0 async  attributes {id = 2 : i32} {
        %c512 = arith.constant 512 : index
        %c32_9 = arith.constant 32 : index
        %c256_10 = arith.constant 256 : index
        %c8_11 = arith.constant 8 : index
        %c4 = arith.constant 4 : index
        %c2048_12 = arith.constant 2048 : index
        %c1_13 = arith.constant 1 : index
        %c64_14 = arith.constant 64 : index
        %c0_15 = arith.constant 0 : index
        %c2 = arith.constant 2 : index
        %7 = air.wait_all async 
        %8 = air.wait_all async 
        %async_token_16, %results_17 = air.execute -> (memref<1x1x64x64xi32, 1>) {
          %alloc = memref.alloc() : memref<1x1x64x64xi32, 1>
          air.execute_terminator %alloc : memref<1x1x64x64xi32, 1>
        }
        %9 = air.wait_all async 
        %async_token_18, %results_19 = air.execute [%9] -> (memref<1x1x256x64xi32, 1>) {
          %alloc = memref.alloc() : memref<1x1x256x64xi32, 1>
          air.execute_terminator %alloc : memref<1x1x256x64xi32, 1>
        }
        %async_token_20, %results_21 = air.execute [%async_token_18] -> (memref<1x1x64x256xi32, 1>) {
          %alloc = memref.alloc() : memref<1x1x64x256xi32, 1>
          air.execute_terminator %alloc : memref<1x1x64x256xi32, 1>
        }
        %async_token_22, %results_23 = air.execute [%async_token_20] -> (memref<1x1x64x256xi32, 1>) {
          %alloc = memref.alloc() : memref<1x1x64x256xi32, 1>
          air.execute_terminator %alloc : memref<1x1x64x256xi32, 1>
        }
        %async_token_24, %results_25 = air.execute [%async_token_20] -> (memref<1x1x256x64xi32, 1>) {
          %alloc = memref.alloc() : memref<1x1x256x64xi32, 1>
          air.execute_terminator %alloc : memref<1x1x256x64xi32, 1>
        }
        %10:4 = scf.for %arg10 = %c0_15 to %c2048_12 step %c512 iter_args(%arg11 = %async_token_22, %arg12 = %async_token_24, %arg13 = %async_token_24, %arg14 = %async_token_24) -> (!air.async.token, !air.async.token, !air.async.token, !air.async.token) {
          %14 = air.channel.get async [%arg14, %arg11, %7]  @channel_4[] (%results_23[] [] []) {id = 8 : i32} : (memref<1x1x64x256xi32, 1>)
          %15 = air.wait_all async [%arg13, %14] 
          %16 = air.channel.put async [%15]  @channel_0[] (%results_23[%c0_15, %c0_15, %c0_15] [%c32_9, %c32_9, %c8_11] [%c8_11, %c256_10, %c1_13]) : (memref<1x1x64x256xi32, 1>)
          %17 = air.wait_all async [%arg13, %14] 
          %18 = air.channel.put async [%17]  @channel_1[] (%results_23[%c0_15, %c32_9, %c0_15] [%c32_9, %c32_9, %c8_11] [%c8_11, %c256_10, %c1_13]) : (memref<1x1x64x256xi32, 1>)
          %19 = air.channel.get async [%arg14, %arg11, %8]  @channel_5[] (%results_25[] [] []) {id = 9 : i32} : (memref<1x1x256x64xi32, 1>)
          %20 = air.wait_all async [%arg13, %19] 
          %21 = air.channel.put async [%20]  @channel_2[] (%results_25[%c0_15, %c0_15, %c0_15, %c0_15] [%c8_11, %c4, %c32_9, %c8_11] [%c2048_12, %c8_11, %c64_14, %c1_13]) : (memref<1x1x256x64xi32, 1>)
          %22 = air.wait_all async [%arg13, %19] 
          %23 = air.channel.put async [%22]  @channel_3[] (%results_25[%c0_15, %c0_15, %c0_15, %c32_9] [%c8_11, %c4, %c32_9, %c8_11] [%c2048_12, %c8_11, %c64_14, %c1_13]) : (memref<1x1x256x64xi32, 1>)
          %async_token_27 = air.execute [%arg14, %arg11] {
            memref.dealloc %results_23 : memref<1x1x64x256xi32, 1>
          }
          %async_token_28 = air.execute [%arg14, %arg11] {
            memref.dealloc %results_25 : memref<1x1x256x64xi32, 1>
          }
          %24 = air.wait_all async [%14, %16, %18, %19, %21, %23, %async_token_27, %async_token_28] 
          %25 = air.channel.get async [%19, %14, %arg12]  @channel_4[] (%results_21[] [] []) {id = 8 : i32} : (memref<1x1x64x256xi32, 1>)
          %26 = air.wait_all async [%24, %25] 
          %27 = air.channel.put async [%26]  @channel_0[] (%results_21[%c0_15, %c0_15, %c0_15] [%c32_9, %c32_9, %c8_11] [%c8_11, %c256_10, %c1_13]) : (memref<1x1x64x256xi32, 1>)
          %28 = air.wait_all async [%24, %25] 
          %29 = air.channel.put async [%28]  @channel_1[] (%results_21[%c0_15, %c32_9, %c0_15] [%c32_9, %c32_9, %c8_11] [%c8_11, %c256_10, %c1_13]) : (memref<1x1x64x256xi32, 1>)
          %30 = air.channel.get async [%19, %14, %arg12]  @channel_5[] (%results_19[] [] []) {id = 9 : i32} : (memref<1x1x256x64xi32, 1>)
          %31 = air.wait_all async [%24, %30] 
          %32 = air.channel.put async [%31]  @channel_2[] (%results_19[%c0_15, %c0_15, %c0_15, %c0_15] [%c8_11, %c4, %c32_9, %c8_11] [%c2048_12, %c8_11, %c64_14, %c1_13]) : (memref<1x1x256x64xi32, 1>)
          %33 = air.wait_all async [%24, %30] 
          %34 = air.channel.put async [%33]  @channel_3[] (%results_19[%c0_15, %c0_15, %c0_15, %c32_9] [%c8_11, %c4, %c32_9, %c8_11] [%c2048_12, %c8_11, %c64_14, %c1_13]) : (memref<1x1x256x64xi32, 1>)
          %async_token_29 = air.execute [%19, %14, %arg12] {
            memref.dealloc %results_21 : memref<1x1x64x256xi32, 1>
          }
          %async_token_30 = air.execute [%19, %14, %arg12] {
            memref.dealloc %results_19 : memref<1x1x256x64xi32, 1>
          }
          %35 = air.wait_all async [%25, %27, %29, %30, %32, %34, %async_token_29, %async_token_30] 
          %36 = air.wait_all async [%25, %30] 
          scf.yield %24, %35, %35, %36 : !air.async.token, !air.async.token, !air.async.token, !air.async.token
        }
        %11 = scf.parallel (%arg10, %arg11) = (%c0_15, %c0_15) to (%c2, %c2) step (%c1_13, %c1_13) init (%async_token_16) -> !air.async.token {
          %async_token_27, %results_28 = air.execute -> (index) {
            %c32_31 = arith.constant 32 : index
            %15 = arith.muli %arg10, %c32_31 : index
            air.execute_terminator %15 : index
          }
          %async_token_29, %results_30 = air.execute -> (index) {
            %c32_31 = arith.constant 32 : index
            %15 = arith.muli %arg11, %c32_31 : index
            air.execute_terminator %15 : index
          }
          %14 = air.channel.get async [%async_token_16, %async_token_29, %async_token_27]  @channel_6[%arg10, %arg11] (%results_17[%results_28, %results_30] [%c32_9, %c32_9] [%c64_14, %c1_13]) : (memref<1x1x64x64xi32, 1>)
          scf.reduce(%14 : !air.async.token) {
          ^bb0(%arg12: !air.async.token, %arg13: !air.async.token):
            %15 = air.wait_all async [%arg12, %arg13] 
            scf.reduce.return %15 : !air.async.token
          }
        }
        %12 = air.herd @herd_0 async  tile (%arg10, %arg11) in (%arg12=%c2, %arg13=%c2) attributes {id = 3 : i32} {
          %c32_27 = arith.constant 32 : index
          %c64_28 = arith.constant 64 : index
          %c4_29 = arith.constant 4 : index
          %c8_30 = arith.constant 8 : index
          %c1_31 = arith.constant 1 : index
          %c0_i32 = arith.constant 0 : i32
          %c0_32 = arith.constant 0 : index
          %c256_33 = arith.constant 256 : index
          %c2048_34 = arith.constant 2048 : index
          %async_token_35, %results_36 = air.execute -> (memref<1x1x4x8x4x8xi32, 2>) {
            %alloc = memref.alloc() : memref<1x1x4x8x4x8xi32, 2>
            air.execute_terminator %alloc : memref<1x1x4x8x4x8xi32, 2>
          }
          %async_token_37 = air.execute [%async_token_35] {
            %c0_39 = arith.constant 0 : index
            %c1_40 = arith.constant 1 : index
            %c1_41 = arith.constant 1 : index
            scf.for %arg14 = %c0_39 to %c1_40 step %c1_41 {
              %c0_42 = arith.constant 0 : index
              %c1_43 = arith.constant 1 : index
              %c1_44 = arith.constant 1 : index
              scf.for %arg15 = %c0_42 to %c1_43 step %c1_44 {
                %c0_45 = arith.constant 0 : index
                %c4_46 = arith.constant 4 : index
                %c1_47 = arith.constant 1 : index
                scf.for %arg16 = %c0_45 to %c4_46 step %c1_47 {
                  %c0_48 = arith.constant 0 : index
                  %c8_49 = arith.constant 8 : index
                  %c1_50 = arith.constant 1 : index
                  scf.for %arg17 = %c0_48 to %c8_49 step %c1_50 {
                    %c0_51 = arith.constant 0 : index
                    %c4_52 = arith.constant 4 : index
                    %c1_53 = arith.constant 1 : index
                    scf.for %arg18 = %c0_51 to %c4_52 step %c1_53 {
                      %c0_54 = arith.constant 0 : index
                      %c8_55 = arith.constant 8 : index
                      %c1_56 = arith.constant 1 : index
                      scf.for %arg19 = %c0_54 to %c8_55 step %c1_56 {
                        memref.store %c0_i32, %results_36[%arg14, %arg15, %arg16, %arg17, %arg18, %arg19] : memref<1x1x4x8x4x8xi32, 2>
                      }
                    }
                  }
                }
              }
            }
          }
          %14 = scf.for %arg14 = %c0_32 to %c2048_34 step %c256_33 iter_args(%arg15 = %async_token_37) -> (!air.async.token) {
            %async_token_39, %results_40 = air.execute [%arg15] -> (memref<1x1x4x4x8x8xi32, 2>) {
              %alloc = memref.alloc() : memref<1x1x4x4x8x8xi32, 2>
              air.execute_terminator %alloc : memref<1x1x4x4x8x8xi32, 2>
            }
            %async_token_41, %results_42 = air.execute [%async_token_39] -> (memref<1x1x4x8x4x8xi32, 2>) {
              %alloc = memref.alloc() : memref<1x1x4x8x4x8xi32, 2>
              air.execute_terminator %alloc : memref<1x1x4x8x4x8xi32, 2>
            }
            %async_token_43, %results_44 = air.execute [%async_token_41] -> (memref<1x1x4x8x4x8xi32, 2>) {
              %alloc = memref.alloc() : memref<1x1x4x8x4x8xi32, 2>
              air.execute_terminator %alloc : memref<1x1x4x8x4x8xi32, 2>
            }
            %async_token_45, %results_46 = air.execute [%async_token_41] -> (memref<1x1x4x4x8x8xi32, 2>) {
              %alloc = memref.alloc() : memref<1x1x4x4x8x8xi32, 2>
              air.execute_terminator %alloc : memref<1x1x4x4x8x8xi32, 2>
            }
            %16:4 = scf.for %arg16 = %c0_32 to %c256_33 step %c64_28 iter_args(%arg17 = %async_token_43, %arg18 = %async_token_45, %arg19 = %async_token_45, %arg20 = %async_token_45) -> (!air.async.token, !air.async.token, !air.async.token, !air.async.token) {
              %c0_47 = arith.constant 0 : index
              %17 = arith.cmpi eq, %arg10, %c0_47 : index
              %18 = arith.cmpi sge, %arg11, %c0_47 : index
              %19 = arith.andi %17, %18 : i1
              %c-1 = arith.constant -1 : index
              %20 = arith.muli %arg11, %c-1 : index
              %c1_48 = arith.constant 1 : index
              %21 = arith.addi %20, %c1_48 : index
              %22 = arith.cmpi sge, %21, %c0_47 : index
              %23 = arith.andi %19, %22 : i1
              %24 = scf.if %23 -> (!air.async.token) {
                %50 = air.channel.get async [%arg20, %arg17, %async_token_43]  @channel_0[%arg10, %arg11] (%results_44[] [] []) {id = 11 : i32} : (memref<1x1x4x8x4x8xi32, 2>)
                scf.yield %50 : !air.async.token
              } else {
                %50 = air.channel.get async [%arg20, %arg17, %async_token_43]  @channel_1[%arg10, %arg11] (%results_44[] [] []) {id = 12 : i32} : (memref<1x1x4x8x4x8xi32, 2>)
                scf.yield %50 : !air.async.token
              }
              %c0_49 = arith.constant 0 : index
              %25 = arith.cmpi sge, %arg10, %c0_49 : index
              %c-1_50 = arith.constant -1 : index
              %26 = arith.muli %arg10, %c-1_50 : index
              %c1_51 = arith.constant 1 : index
              %27 = arith.addi %26, %c1_51 : index
              %28 = arith.cmpi sge, %27, %c0_49 : index
              %29 = arith.andi %25, %28 : i1
              %30 = arith.cmpi eq, %arg11, %c0_49 : index
              %31 = arith.andi %29, %30 : i1
              %32 = scf.if %31 -> (!air.async.token) {
                %50 = air.channel.get async [%arg20, %arg17, %async_token_45]  @channel_2[%arg10, %arg11] (%results_46[] [] []) {id = 13 : i32} : (memref<1x1x4x4x8x8xi32, 2>)
                scf.yield %50 : !air.async.token
              } else {
                %50 = air.channel.get async [%arg20, %arg17, %async_token_45]  @channel_3[%arg10, %arg11] (%results_46[] [] []) {id = 14 : i32} : (memref<1x1x4x4x8x8xi32, 2>)
                scf.yield %50 : !air.async.token
              }
              %async_token_52 = air.execute [%arg19, %32, %24] {
                %c0_64 = arith.constant 0 : index
                %c1_65 = arith.constant 1 : index
                %c1_66 = arith.constant 1 : index
                scf.for %arg21 = %c0_64 to %c1_65 step %c1_66 {
                  %c0_67 = arith.constant 0 : index
                  %c1_68 = arith.constant 1 : index
                  %c1_69 = arith.constant 1 : index
                  scf.for %arg22 = %c0_67 to %c1_68 step %c1_69 {
                    %c0_70 = arith.constant 0 : index
                    %c1_71 = arith.constant 1 : index
                    %c1_72 = arith.constant 1 : index
                    scf.for %arg23 = %c0_70 to %c1_71 step %c1_72 {
                      %c0_73 = arith.constant 0 : index
                      %c8_74 = arith.constant 8 : index
                      %c1_75 = arith.constant 1 : index
                      scf.for %arg24 = %c0_73 to %c8_74 step %c1_75 {
                        %c0_76 = arith.constant 0 : index
                        %c4_77 = arith.constant 4 : index
                        %c1_78 = arith.constant 1 : index
                        scf.for %arg25 = %c0_76 to %c4_77 step %c1_78 {
                          %c0_79 = arith.constant 0 : index
                          %c4_80 = arith.constant 4 : index
                          %c1_81 = arith.constant 1 : index
                          scf.for %arg26 = %c0_79 to %c4_80 step %c1_81 {
                            %c0_82 = arith.constant 0 : index
                            %c4_83 = arith.constant 4 : index
                            %c1_84 = arith.constant 1 : index
                            scf.for %arg27 = %c0_82 to %c4_83 step %c1_84 {
                              %c0_85 = arith.constant 0 : index
                              %c8_86 = arith.constant 8 : index
                              %c1_87 = arith.constant 1 : index
                              scf.for %arg28 = %c0_85 to %c8_86 step %c1_87 {
                                %c0_88 = arith.constant 0 : index
                                %c8_89 = arith.constant 8 : index
                                %c1_90 = arith.constant 1 : index
                                scf.for %arg29 = %c0_88 to %c8_89 step %c1_90 {
                                  %50 = memref.load %results_44[%arg21, %arg23, %arg26, %arg24, %arg27, %arg29] : memref<1x1x4x8x4x8xi32, 2>
                                  %51 = memref.load %results_46[%arg23, %arg22, %arg25, %arg26, %arg29, %arg28] : memref<1x1x4x4x8x8xi32, 2>
                                  %52 = memref.load %results_36[%arg21, %arg22, %arg25, %arg24, %arg27, %arg28] : memref<1x1x4x8x4x8xi32, 2>
                                  %53 = arith.muli %50, %51 : i32
                                  %54 = arith.addi %52, %53 : i32
                                  memref.store %54, %results_36[%arg21, %arg22, %arg25, %arg24, %arg27, %arg28] : memref<1x1x4x8x4x8xi32, 2>
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
              %async_token_53 = air.execute {
                memref.dealloc %results_44 : memref<1x1x4x8x4x8xi32, 2>
              }
              %async_token_54 = air.execute {
                memref.dealloc %results_46 : memref<1x1x4x4x8x8xi32, 2>
              }
              %c0_55 = arith.constant 0 : index
              %33 = arith.cmpi eq, %arg10, %c0_55 : index
              %34 = arith.cmpi sge, %arg11, %c0_55 : index
              %35 = arith.andi %33, %34 : i1
              %c-1_56 = arith.constant -1 : index
              %36 = arith.muli %arg11, %c-1_56 : index
              %c1_57 = arith.constant 1 : index
              %37 = arith.addi %36, %c1_57 : index
              %38 = arith.cmpi sge, %37, %c0_55 : index
              %39 = arith.andi %35, %38 : i1
              %40 = scf.if %39 -> (!air.async.token) {
                %50 = air.channel.get async [%32, %24, %arg18]  @channel_0[%arg10, %arg11] (%results_42[] [] []) {id = 11 : i32} : (memref<1x1x4x8x4x8xi32, 2>)
                scf.yield %50 : !air.async.token
              } else {
                %50 = air.channel.get async [%32, %24, %arg18]  @channel_1[%arg10, %arg11] (%results_42[] [] []) {id = 12 : i32} : (memref<1x1x4x8x4x8xi32, 2>)
                scf.yield %50 : !air.async.token
              }
              %c0_58 = arith.constant 0 : index
              %41 = arith.cmpi sge, %arg10, %c0_58 : index
              %c-1_59 = arith.constant -1 : index
              %42 = arith.muli %arg10, %c-1_59 : index
              %c1_60 = arith.constant 1 : index
              %43 = arith.addi %42, %c1_60 : index
              %44 = arith.cmpi sge, %43, %c0_58 : index
              %45 = arith.andi %41, %44 : i1
              %46 = arith.cmpi eq, %arg11, %c0_58 : index
              %47 = arith.andi %45, %46 : i1
              %48 = scf.if %47 -> (!air.async.token) {
                %50 = air.channel.get async [%32, %24, %arg18]  @channel_2[%arg10, %arg11] (%results_40[] [] []) {id = 13 : i32} : (memref<1x1x4x4x8x8xi32, 2>)
                scf.yield %50 : !air.async.token
              } else {
                %50 = air.channel.get async [%32, %24, %arg18]  @channel_3[%arg10, %arg11] (%results_40[] [] []) {id = 14 : i32} : (memref<1x1x4x4x8x8xi32, 2>)
                scf.yield %50 : !air.async.token
              }
              %async_token_61 = air.execute [%async_token_52, %48, %40] {
                %c0_64 = arith.constant 0 : index
                %c1_65 = arith.constant 1 : index
                %c1_66 = arith.constant 1 : index
                scf.for %arg21 = %c0_64 to %c1_65 step %c1_66 {
                  %c0_67 = arith.constant 0 : index
                  %c1_68 = arith.constant 1 : index
                  %c1_69 = arith.constant 1 : index
                  scf.for %arg22 = %c0_67 to %c1_68 step %c1_69 {
                    %c0_70 = arith.constant 0 : index
                    %c1_71 = arith.constant 1 : index
                    %c1_72 = arith.constant 1 : index
                    scf.for %arg23 = %c0_70 to %c1_71 step %c1_72 {
                      %c0_73 = arith.constant 0 : index
                      %c8_74 = arith.constant 8 : index
                      %c1_75 = arith.constant 1 : index
                      scf.for %arg24 = %c0_73 to %c8_74 step %c1_75 {
                        %c0_76 = arith.constant 0 : index
                        %c4_77 = arith.constant 4 : index
                        %c1_78 = arith.constant 1 : index
                        scf.for %arg25 = %c0_76 to %c4_77 step %c1_78 {
                          %c0_79 = arith.constant 0 : index
                          %c4_80 = arith.constant 4 : index
                          %c1_81 = arith.constant 1 : index
                          scf.for %arg26 = %c0_79 to %c4_80 step %c1_81 {
                            %c0_82 = arith.constant 0 : index
                            %c4_83 = arith.constant 4 : index
                            %c1_84 = arith.constant 1 : index
                            scf.for %arg27 = %c0_82 to %c4_83 step %c1_84 {
                              %c0_85 = arith.constant 0 : index
                              %c8_86 = arith.constant 8 : index
                              %c1_87 = arith.constant 1 : index
                              scf.for %arg28 = %c0_85 to %c8_86 step %c1_87 {
                                %c0_88 = arith.constant 0 : index
                                %c8_89 = arith.constant 8 : index
                                %c1_90 = arith.constant 1 : index
                                scf.for %arg29 = %c0_88 to %c8_89 step %c1_90 {
                                  %50 = memref.load %results_42[%arg21, %arg23, %arg26, %arg24, %arg27, %arg29] : memref<1x1x4x8x4x8xi32, 2>
                                  %51 = memref.load %results_40[%arg23, %arg22, %arg25, %arg26, %arg29, %arg28] : memref<1x1x4x4x8x8xi32, 2>
                                  %52 = memref.load %results_36[%arg21, %arg22, %arg25, %arg24, %arg27, %arg28] : memref<1x1x4x8x4x8xi32, 2>
                                  %53 = arith.muli %50, %51 : i32
                                  %54 = arith.addi %52, %53 : i32
                                  memref.store %54, %results_36[%arg21, %arg22, %arg25, %arg24, %arg27, %arg28] : memref<1x1x4x8x4x8xi32, 2>
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
              %async_token_62 = air.execute {
                memref.dealloc %results_42 : memref<1x1x4x8x4x8xi32, 2>
              }
              %async_token_63 = air.execute {
                memref.dealloc %results_40 : memref<1x1x4x4x8x8xi32, 2>
              }
              %49 = air.wait_all async [%40, %48] 
              scf.yield %async_token_52, %async_token_61, %async_token_61, %49 : !air.async.token, !air.async.token, !air.async.token, !air.async.token
            }
            scf.yield %16#1 : !air.async.token
          }
          %15 = air.channel.put async [%14]  @channel_6[%arg10, %arg11] (%results_36[%c0_32, %c0_32, %c0_32] [%c32_27, %c4_29, %c8_30] [%c8_30, %c256_33, %c1_31]) : (memref<1x1x4x8x4x8xi32, 2>)
          %async_token_38 = air.execute [%15] {
            memref.dealloc %results_36 : memref<1x1x4x8x4x8xi32, 2>
          }
          air.herd_terminator
        }
        %13 = air.channel.put async [%7, %8, %12]  @channel_7[] (%results_17[] [] []) : (memref<1x1x64x64xi32, 1>)
        %async_token_26 = air.execute [%13] {
          memref.dealloc %results_17 : memref<1x1x64x64xi32, 1>
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

