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
      %c8 = arith.constant 8 : index
      %c0 = arith.constant 0 : index
      %c2048 = arith.constant 2048 : index
      %c256 = arith.constant 256 : index
      %c1 = arith.constant 1 : index
      %c64 = arith.constant 64 : index
      %async_token_1, %results_2 = air.execute -> (index) {
        %7 = affine.apply #map()[%arg3]
        air.execute_terminator %7 : index
      }
      %1 = air.wait_all async 
      %2 = air.channel.put async [%1]  @channel_4[] (%arg8[%c0, %results_2, %c0] [%c8, %c64, %c256] [%c256, %c2048, %c1]) {id = 1 : i32} : (memref<2048x2048xi32>)
      %async_token_3, %results_4 = air.execute -> (index) {
        %7 = affine.apply #map()[%arg4]
        air.execute_terminator %7 : index
      }
      %3 = air.wait_all async 
      %4 = air.channel.put async [%3]  @channel_5[] (%arg9[%c0, %results_4] [%c2048, %c64] [%c2048, %c1]) {id = 2 : i32} : (memref<2048x2048xi32>)
      %async_token_5, %results_6 = air.execute -> (index) {
        %7 = affine.apply #map()[%arg3]
        air.execute_terminator %7 : index
      }
      %async_token_7, %results_8 = air.execute -> (index) {
        %7 = affine.apply #map()[%arg4]
        air.execute_terminator %7 : index
      }
      %5 = air.channel.get async [%async_token_5, %async_token_7]  @channel_7[] (%arg7[%results_6, %results_8] [%c64, %c64] [%c2048, %c1]) {id = 3 : i32} : (memref<2048x2048xi32>)
      %6 = air.segment @segment_0 async  attributes {id = 2 : i32, x_loc = 0 : i64, x_size = 1 : i64, y_loc = 2 : i64, y_size = 4 : i64} {
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
          %14 = air.channel.get async [%arg14, %arg11, %7]  @channel_4[] (%results_23[] [] []) {id = 4 : i32} : (memref<1x1x64x256xi32, 1>)
          %15 = air.wait_all async [%arg13, %14] 
          %16 = air.channel.put async [%15]  @channel_0[] (%results_23[%c0_15, %c0_15, %c0_15] [%c32_9, %c32_9, %c8_11] [%c8_11, %c256_10, %c1_13]) {id = 5 : i32} : (memref<1x1x64x256xi32, 1>)
          %17 = air.wait_all async [%arg13, %14] 
          %18 = air.channel.put async [%17]  @channel_1[] (%results_23[%c0_15, %c32_9, %c0_15] [%c32_9, %c32_9, %c8_11] [%c8_11, %c256_10, %c1_13]) {id = 6 : i32} : (memref<1x1x64x256xi32, 1>)
          %19 = air.channel.get async [%arg14, %arg11, %8]  @channel_5[] (%results_25[] [] []) {id = 7 : i32} : (memref<1x1x256x64xi32, 1>)
          %20 = air.wait_all async [%arg13, %19] 
          %21 = air.channel.put async [%20]  @channel_2[] (%results_25[%c0_15, %c0_15, %c0_15, %c0_15] [%c8_11, %c4, %c32_9, %c8_11] [%c2048_12, %c8_11, %c64_14, %c1_13]) {id = 8 : i32} : (memref<1x1x256x64xi32, 1>)
          %22 = air.wait_all async [%arg13, %19] 
          %23 = air.channel.put async [%22]  @channel_3[] (%results_25[%c0_15, %c0_15, %c0_15, %c32_9] [%c8_11, %c4, %c32_9, %c8_11] [%c2048_12, %c8_11, %c64_14, %c1_13]) {id = 9 : i32} : (memref<1x1x256x64xi32, 1>)
          %async_token_27 = air.execute [%arg14, %arg11] {
            memref.dealloc %results_23 : memref<1x1x64x256xi32, 1>
          }
          %async_token_28 = air.execute [%arg14, %arg11] {
            memref.dealloc %results_25 : memref<1x1x256x64xi32, 1>
          }
          %24 = air.wait_all async [%14, %16, %18, %19, %21, %23, %async_token_27, %async_token_28] 
          %25 = air.channel.get async [%19, %14, %arg12]  @channel_4[] (%results_21[] [] []) {id = 10 : i32} : (memref<1x1x64x256xi32, 1>)
          %26 = air.wait_all async [%24, %25] 
          %27 = air.channel.put async [%26]  @channel_0[] (%results_21[%c0_15, %c0_15, %c0_15] [%c32_9, %c32_9, %c8_11] [%c8_11, %c256_10, %c1_13]) {id = 11 : i32} : (memref<1x1x64x256xi32, 1>)
          %28 = air.wait_all async [%24, %25] 
          %29 = air.channel.put async [%28]  @channel_1[] (%results_21[%c0_15, %c32_9, %c0_15] [%c32_9, %c32_9, %c8_11] [%c8_11, %c256_10, %c1_13]) {id = 12 : i32} : (memref<1x1x64x256xi32, 1>)
          %30 = air.channel.get async [%19, %14, %arg12]  @channel_5[] (%results_19[] [] []) {id = 13 : i32} : (memref<1x1x256x64xi32, 1>)
          %31 = air.wait_all async [%24, %30] 
          %32 = air.channel.put async [%31]  @channel_2[] (%results_19[%c0_15, %c0_15, %c0_15, %c0_15] [%c8_11, %c4, %c32_9, %c8_11] [%c2048_12, %c8_11, %c64_14, %c1_13]) {id = 14 : i32} : (memref<1x1x256x64xi32, 1>)
          %33 = air.wait_all async [%24, %30] 
          %34 = air.channel.put async [%33]  @channel_3[] (%results_19[%c0_15, %c0_15, %c0_15, %c32_9] [%c8_11, %c4, %c32_9, %c8_11] [%c2048_12, %c8_11, %c64_14, %c1_13]) {id = 15 : i32} : (memref<1x1x256x64xi32, 1>)
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
            %15 = affine.apply #map1()[%arg10]
            air.execute_terminator %15 : index
          }
          %async_token_29, %results_30 = air.execute -> (index) {
            %15 = affine.apply #map1()[%arg11]
            air.execute_terminator %15 : index
          }
          %14 = air.channel.get async [%async_token_16, %async_token_29, %async_token_27]  @channel_6[%arg10, %arg11] (%results_17[%results_28, %results_30] [%c32_9, %c32_9] [%c64_14, %c1_13]) {id = 16 : i32} : (memref<1x1x64x64xi32, 1>)
          scf.reduce(%14 : !air.async.token) {
          ^bb0(%arg12: !air.async.token, %arg13: !air.async.token):
            %15 = air.wait_all async [%arg12, %arg13] 
            scf.reduce.return %15 : !air.async.token
          }
        }
        %12 = air.herd @herd_0 async  tile (%arg10, %arg11) in (%arg12=%c1_13, %arg13=%c4) attributes {id = 3 : i32, x_loc = 0 : i64, y_loc = 2 : i64} {
          %c2048_27 = arith.constant 2048 : index
          %c256_28 = arith.constant 256 : index
          %c0_29 = arith.constant 0 : index
          %c0_i32 = arith.constant 0 : i32
          %c1_30 = arith.constant 1 : index
          %c8_31 = arith.constant 8 : index
          %c4_32 = arith.constant 4 : index
          %c64_33 = arith.constant 64 : index
          %c32_34 = arith.constant 32 : index
          %c2_35 = arith.constant 2 : index
          %14 = arith.remsi %arg11, %c2_35 : index
          %15 = arith.divsi %arg11, %c2_35 : index
          %async_token_36, %results_37 = air.execute -> (memref<1x1x4x8x4x8xi32, 2>) {
            %alloc = memref.alloc() : memref<1x1x4x8x4x8xi32, 2>
            air.execute_terminator %alloc : memref<1x1x4x8x4x8xi32, 2>
          }
          %async_token_38 = air.execute [%async_token_36] {
            scf.for %arg14 = %c0_29 to %c1_30 step %c1_30 {
              scf.for %arg15 = %c0_29 to %c1_30 step %c1_30 {
                scf.for %arg16 = %c0_29 to %c4_32 step %c1_30 {
                  scf.for %arg17 = %c0_29 to %c8_31 step %c1_30 {
                    scf.for %arg18 = %c0_29 to %c4_32 step %c1_30 {
                      scf.for %arg19 = %c0_29 to %c8_31 step %c1_30 {
                        memref.store %c0_i32, %results_37[%arg14, %arg15, %arg16, %arg17, %arg18, %arg19] : memref<1x1x4x8x4x8xi32, 2>
                      }
                    }
                  }
                }
              }
            }
          }
          %16 = scf.for %arg14 = %c0_29 to %c2048_27 step %c256_28 iter_args(%arg15 = %async_token_38) -> (!air.async.token) {
            %async_token_40, %results_41 = air.execute [%arg15] -> (memref<1x1x4x4x8x8xi32, 2>) {
              %alloc = memref.alloc() : memref<1x1x4x4x8x8xi32, 2>
              air.execute_terminator %alloc : memref<1x1x4x4x8x8xi32, 2>
            }
            %async_token_42, %results_43 = air.execute [%async_token_40] -> (memref<1x1x4x8x4x8xi32, 2>) {
              %alloc = memref.alloc() : memref<1x1x4x8x4x8xi32, 2>
              air.execute_terminator %alloc : memref<1x1x4x8x4x8xi32, 2>
            }
            %async_token_44, %results_45 = air.execute [%async_token_42] -> (memref<1x1x4x8x4x8xi32, 2>) {
              %alloc = memref.alloc() : memref<1x1x4x8x4x8xi32, 2>
              air.execute_terminator %alloc : memref<1x1x4x8x4x8xi32, 2>
            }
            %async_token_46, %results_47 = air.execute [%async_token_42] -> (memref<1x1x4x4x8x8xi32, 2>) {
              %alloc = memref.alloc() : memref<1x1x4x4x8x8xi32, 2>
              air.execute_terminator %alloc : memref<1x1x4x4x8x8xi32, 2>
            }
            %18:4 = scf.for %arg16 = %c0_29 to %c256_28 step %c64_33 iter_args(%arg17 = %async_token_44, %arg18 = %async_token_46, %arg19 = %async_token_46, %arg20 = %async_token_46) -> (!air.async.token, !air.async.token, !air.async.token, !air.async.token) {
              %19 = affine.if #set()[%15, %14] -> !air.async.token {
                %24 = air.channel.get async [%arg20, %arg17, %async_token_44]  @channel_0[%15, %14] (%results_45[] [] []) {id = 17 : i32} : (memref<1x1x4x8x4x8xi32, 2>)
                affine.yield %24 : !air.async.token
              } else {
                %24 = air.channel.get async [%arg20, %arg17, %async_token_44]  @channel_1[%15, %14] (%results_45[] [] []) {id = 18 : i32} : (memref<1x1x4x8x4x8xi32, 2>)
                affine.yield %24 : !air.async.token
              }
              %20 = affine.if #set1()[%15, %14] -> !air.async.token {
                %24 = air.channel.get async [%arg20, %arg17, %async_token_46]  @channel_2[%15, %14] (%results_47[] [] []) {id = 19 : i32} : (memref<1x1x4x4x8x8xi32, 2>)
                affine.yield %24 : !air.async.token
              } else {
                %24 = air.channel.get async [%arg20, %arg17, %async_token_46]  @channel_3[%15, %14] (%results_47[] [] []) {id = 20 : i32} : (memref<1x1x4x4x8x8xi32, 2>)
                affine.yield %24 : !air.async.token
              }
              %async_token_48 = air.execute [%arg19, %20, %19] {
                scf.for %arg21 = %c0_29 to %c1_30 step %c1_30 {
                  scf.for %arg22 = %c0_29 to %c1_30 step %c1_30 {
                    scf.for %arg23 = %c0_29 to %c1_30 step %c1_30 {
                      scf.for %arg24 = %c0_29 to %c8_31 step %c1_30 {
                        scf.for %arg25 = %c0_29 to %c4_32 step %c1_30 {
                          scf.for %arg26 = %c0_29 to %c4_32 step %c1_30 {
                            scf.for %arg27 = %c0_29 to %c4_32 step %c1_30 {
                              scf.for %arg28 = %c0_29 to %c8_31 step %c1_30 {
                                scf.for %arg29 = %c0_29 to %c8_31 step %c1_30 {
                                  %24 = memref.load %results_45[%arg21, %arg23, %arg26, %arg24, %arg27, %arg29] : memref<1x1x4x8x4x8xi32, 2>
                                  %25 = memref.load %results_47[%arg23, %arg22, %arg25, %arg26, %arg29, %arg28] : memref<1x1x4x4x8x8xi32, 2>
                                  %26 = memref.load %results_37[%arg21, %arg22, %arg25, %arg24, %arg27, %arg28] : memref<1x1x4x8x4x8xi32, 2>
                                  %27 = arith.muli %24, %25 : i32
                                  %28 = arith.addi %26, %27 : i32
                                  memref.store %28, %results_37[%arg21, %arg22, %arg25, %arg24, %arg27, %arg28] : memref<1x1x4x8x4x8xi32, 2>
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
              %async_token_49 = air.execute {
                memref.dealloc %results_45 : memref<1x1x4x8x4x8xi32, 2>
              }
              %async_token_50 = air.execute {
                memref.dealloc %results_47 : memref<1x1x4x4x8x8xi32, 2>
              }
              %21 = affine.if #set()[%15, %14] -> !air.async.token {
                %24 = air.channel.get async [%20, %19, %arg18]  @channel_0[%15, %14] (%results_43[] [] []) {id = 21 : i32} : (memref<1x1x4x8x4x8xi32, 2>)
                affine.yield %24 : !air.async.token
              } else {
                %24 = air.channel.get async [%20, %19, %arg18]  @channel_1[%15, %14] (%results_43[] [] []) {id = 22 : i32} : (memref<1x1x4x8x4x8xi32, 2>)
                affine.yield %24 : !air.async.token
              }
              %22 = affine.if #set1()[%15, %14] -> !air.async.token {
                %24 = air.channel.get async [%20, %19, %arg18]  @channel_2[%15, %14] (%results_41[] [] []) {id = 23 : i32} : (memref<1x1x4x4x8x8xi32, 2>)
                affine.yield %24 : !air.async.token
              } else {
                %24 = air.channel.get async [%20, %19, %arg18]  @channel_3[%15, %14] (%results_41[] [] []) {id = 24 : i32} : (memref<1x1x4x4x8x8xi32, 2>)
                affine.yield %24 : !air.async.token
              }
              %async_token_51 = air.execute [%async_token_48, %22, %21] {
                scf.for %arg21 = %c0_29 to %c1_30 step %c1_30 {
                  scf.for %arg22 = %c0_29 to %c1_30 step %c1_30 {
                    scf.for %arg23 = %c0_29 to %c1_30 step %c1_30 {
                      scf.for %arg24 = %c0_29 to %c8_31 step %c1_30 {
                        scf.for %arg25 = %c0_29 to %c4_32 step %c1_30 {
                          scf.for %arg26 = %c0_29 to %c4_32 step %c1_30 {
                            scf.for %arg27 = %c0_29 to %c4_32 step %c1_30 {
                              scf.for %arg28 = %c0_29 to %c8_31 step %c1_30 {
                                scf.for %arg29 = %c0_29 to %c8_31 step %c1_30 {
                                  %24 = memref.load %results_43[%arg21, %arg23, %arg26, %arg24, %arg27, %arg29] : memref<1x1x4x8x4x8xi32, 2>
                                  %25 = memref.load %results_41[%arg23, %arg22, %arg25, %arg26, %arg29, %arg28] : memref<1x1x4x4x8x8xi32, 2>
                                  %26 = memref.load %results_37[%arg21, %arg22, %arg25, %arg24, %arg27, %arg28] : memref<1x1x4x8x4x8xi32, 2>
                                  %27 = arith.muli %24, %25 : i32
                                  %28 = arith.addi %26, %27 : i32
                                  memref.store %28, %results_37[%arg21, %arg22, %arg25, %arg24, %arg27, %arg28] : memref<1x1x4x8x4x8xi32, 2>
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
              %async_token_52 = air.execute {
                memref.dealloc %results_43 : memref<1x1x4x8x4x8xi32, 2>
              }
              %async_token_53 = air.execute {
                memref.dealloc %results_41 : memref<1x1x4x4x8x8xi32, 2>
              }
              %23 = air.wait_all async [%21, %22] 
              scf.yield %async_token_48, %async_token_51, %async_token_51, %23 : !air.async.token, !air.async.token, !air.async.token, !air.async.token
            }
            scf.yield %18#1 : !air.async.token
          }
          %17 = air.channel.put async [%16]  @channel_6[%15, %14] (%results_37[%c0_29, %c0_29, %c0_29] [%c32_34, %c4_32, %c8_31] [%c8_31, %c256_28, %c1_30]) {id = 25 : i32} : (memref<1x1x4x8x4x8xi32, 2>)
          %async_token_39 = air.execute [%17] {
            memref.dealloc %results_37 : memref<1x1x4x8x4x8xi32, 2>
          }
          air.herd_terminator
        }
        %13 = air.channel.put async [%7, %8, %12]  @channel_7[] (%results_17[] [] []) {id = 26 : i32} : (memref<1x1x64x64xi32, 1>)
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
