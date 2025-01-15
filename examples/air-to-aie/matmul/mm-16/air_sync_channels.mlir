#map = affine_map<()[s0] -> (s0 * 8)>
#map1 = affine_map<()[s0] -> (s0 * 4)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d2)>
#map3 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map4 = affine_map<(d0, d1, d2) -> (d0, d1)>
module {
  air.channel @channel_0 [1, 1]
  air.channel @channel_1 [1, 1]
  air.channel @channel_2 [2, 2]
  air.channel @channel_3 [2, 2]
  air.channel @channel_4 [2, 2]
  air.channel @channel_5 [1, 1]
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
      %1 = air.channel.put async [%async_token_1]  @channel_0[] (%arg7[%results_2, %c0] [%c8, %c16] [%c16, %c1]) {id = 1 : i32} : (memref<16x16xi32>)
      %async_token_3, %results_4 = air.execute -> (index) {
        %5 = affine.apply #map()[%arg4]
        air.execute_terminator %5 : index
      }
      %2 = air.channel.put async [%async_token_3]  @channel_1[] (%arg8[%c0, %results_4] [%c16, %c8] [%c16, %c1]) {id = 2 : i32} : (memref<16x16xi32>)
      %async_token_5, %results_6 = air.execute -> (index) {
        %5 = affine.apply #map()[%arg4]
        air.execute_terminator %5 : index
      }
      %async_token_7, %results_8 = air.execute -> (index) {
        %5 = affine.apply #map()[%arg3]
        air.execute_terminator %5 : index
      }
      %3 = air.channel.get async [%async_token_5, %async_token_7]  @channel_5[] (%arg9[%results_8, %results_6] [%c8, %c8] [%c16, %c1]) {id = 3 : i32} : (memref<16x16xi32>)
      %4 = air.segment @forward_0 async  args(%arg10=%arg3, %arg11=%arg4, %arg12=%arg7, %arg13=%arg8, %arg14=%arg9) : index, index, memref<16x16xi32>, memref<16x16xi32>, memref<16x16xi32> attributes {id = 2 : i32} {
        %c4 = arith.constant 4 : index
        %c1_9 = arith.constant 1 : index
        %c16_10 = arith.constant 16 : index
        %c8_11 = arith.constant 8 : index
        %c0_12 = arith.constant 0 : index
        %c2_13 = arith.constant 2 : index
        %5 = air.wait_all async 
        %6 = air.wait_all async 
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
        %7 = air.channel.get async [%6, %async_token_16]  @channel_0[] (%results_17[] [] []) {id = 4 : i32} : (memref<8x16xi32, 1>)
        %8 = air.channel.get async [%5, %async_token_18]  @channel_1[] (%results_19[] [] []) {id = 5 : i32} : (memref<16x8xi32, 1>)
        %9 = scf.parallel (%arg15, %arg16) = (%c0_12, %c0_12) to (%c2_13, %c2_13) step (%c1_9, %c1_9) init (%7) -> !air.async.token {
          %async_token_23, %results_24 = air.execute -> (index) {
            %16 = affine.apply #map1()[%arg15]
            air.execute_terminator %16 : index
          }
          %14 = air.wait_all async [%async_token_23, %7] 
          %15 = scf.for %arg17 = %c0_12 to %c16_10 step %c4 iter_args(%arg18 = %14) -> (!air.async.token) {
            %16 = air.channel.put async [%arg18]  @channel_2[%arg15, %arg16] (%results_17[%results_24, %arg17] [%c4, %c4] [%c16_10, %c1_9]) {id = 6 : i32} : (memref<8x16xi32, 1>)
            scf.yield %16 : !air.async.token
          }
          scf.reduce(%15 : !air.async.token) {
          ^bb0(%arg17: !air.async.token, %arg18: !air.async.token):
            %16 = air.wait_all async [%arg17, %arg18] 
            scf.reduce.return %16 : !air.async.token
          }
        }
        %10 = scf.parallel (%arg15, %arg16) = (%c0_12, %c0_12) to (%c2_13, %c2_13) step (%c1_9, %c1_9) init (%8) -> !air.async.token {
          %async_token_23, %results_24 = air.execute -> (index) {
            %16 = affine.apply #map1()[%arg16]
            air.execute_terminator %16 : index
          }
          %14 = air.wait_all async [%async_token_23, %8] 
          %15 = scf.for %arg17 = %c0_12 to %c16_10 step %c4 iter_args(%arg18 = %14) -> (!air.async.token) {
            %16 = air.channel.put async [%arg18]  @channel_3[%arg15, %arg16] (%results_19[%arg17, %results_24] [%c4, %c4] [%c8_11, %c1_9]) {id = 7 : i32} : (memref<16x8xi32, 1>)
            scf.yield %16 : !air.async.token
          }
          scf.reduce(%15 : !air.async.token) {
          ^bb0(%arg17: !air.async.token, %arg18: !air.async.token):
            %16 = air.wait_all async [%arg17, %arg18] 
            scf.reduce.return %16 : !air.async.token
          }
        }
        %11 = scf.parallel (%arg15, %arg16) = (%c0_12, %c0_12) to (%c2_13, %c2_13) step (%c1_9, %c1_9) init (%async_token_14) -> !air.async.token {
          %async_token_23, %results_24 = air.execute -> (index) {
            %15 = affine.apply #map1()[%arg16]
            air.execute_terminator %15 : index
          }
          %async_token_25, %results_26 = air.execute -> (index) {
            %15 = affine.apply #map1()[%arg15]
            air.execute_terminator %15 : index
          }
          %14 = air.channel.get async [%async_token_14, %async_token_25, %async_token_23]  @channel_4[%arg15, %arg16] (%results_15[%results_26, %results_24] [%c4, %c4] [%c8_11, %c1_9]) {id = 8 : i32} : (memref<8x8xi32, 1>)
          scf.reduce(%14 : !air.async.token) {
          ^bb0(%arg17: !air.async.token, %arg18: !air.async.token):
            %15 = air.wait_all async [%arg17, %arg18] 
            scf.reduce.return %15 : !air.async.token
          }
        }
        %12 = air.herd @herd_0 async [%async_token_14]  tile (%arg15, %arg16) in (%arg17=%c2_13, %arg18=%c2_13) args(%arg19=%results_15, %arg20=%results_17, %arg21=%results_19) : memref<8x8xi32, 1>, memref<8x16xi32, 1>, memref<16x8xi32, 1> attributes {id = 3 : i32} {
          %c0_i32 = arith.constant 0 : i32
          %c0_23 = arith.constant 0 : index
          %c16_24 = arith.constant 16 : index
          %c4_25 = arith.constant 4 : index
          %async_token_26, %results_27 = air.execute -> (memref<4x4xi32, 2>) {
            %alloc = memref.alloc() : memref<4x4xi32, 2>
            air.execute_terminator %alloc : memref<4x4xi32, 2>
          }
          %async_token_28 = air.execute [%async_token_26] {
            linalg.fill ins(%c0_i32 : i32) outs(%results_27 : memref<4x4xi32, 2>)
          }
          %14 = scf.for %arg22 = %c0_23 to %c16_24 step %c4_25 iter_args(%arg23 = %async_token_28) -> (!air.async.token) {
            %async_token_30, %results_31 = air.execute -> (memref<4x4xi32, 2>) {
              %alloc = memref.alloc() : memref<4x4xi32, 2>
              air.execute_terminator %alloc : memref<4x4xi32, 2>
            }
            %async_token_32, %results_33 = air.execute -> (memref<4x4xi32, 2>) {
              %alloc = memref.alloc() : memref<4x4xi32, 2>
              air.execute_terminator %alloc : memref<4x4xi32, 2>
            }
            %16 = air.channel.get async [%arg23, %async_token_30]  @channel_2[%arg15, %arg16] (%results_31[] [] []) {id = 9 : i32} : (memref<4x4xi32, 2>)
            %17 = air.channel.get async [%arg23, %async_token_32]  @channel_3[%arg15, %arg16] (%results_33[] [] []) {id = 10 : i32} : (memref<4x4xi32, 2>)
            %async_token_34 = air.execute [%17, %16] {
              linalg.generic {indexing_maps = [#map2, #map3, #map4], iterator_types = ["parallel", "parallel", "reduction"]} ins(%results_31, %results_33 : memref<4x4xi32, 2>, memref<4x4xi32, 2>) outs(%results_27 : memref<4x4xi32, 2>) {
              ^bb0(%in: i32, %in_37: i32, %out: i32):
                %18 = arith.muli %in, %in_37 : i32
                %19 = arith.addi %out, %18 : i32
                linalg.yield %19 : i32
              }
            }
            %async_token_35 = air.execute [%async_token_34] {
              memref.dealloc %results_31 : memref<4x4xi32, 2>
            }
            %async_token_36 = air.execute [%async_token_34] {
              memref.dealloc %results_33 : memref<4x4xi32, 2>
            }
            scf.yield %async_token_34 : !air.async.token
          }
          %15 = air.channel.put async [%14]  @channel_4[%arg15, %arg16] (%results_27[] [] []) {id = 11 : i32} : (memref<4x4xi32, 2>)
          %async_token_29 = air.execute [%15] {
            memref.dealloc %results_27 : memref<4x4xi32, 2>
          }
        }
        %async_token_20 = air.execute [%12, %7] {
          memref.dealloc %results_17 : memref<8x16xi32, 1>
        }
        %async_token_21 = air.execute [%12, %8] {
          memref.dealloc %results_19 : memref<16x8xi32, 1>
        }
        %13 = air.channel.put async [%12]  @channel_5[] (%results_15[] [] []) {id = 12 : i32} : (memref<8x8xi32, 1>)
        %async_token_22 = air.execute [%13] {
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
