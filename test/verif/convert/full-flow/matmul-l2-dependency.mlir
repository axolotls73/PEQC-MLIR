//XFAIL: *

// RUN: split-file %s %t && \
// RUN: verif-opt --verif-air-execute-to-async --verif-scf-parallel-to-async %t/input.mlir > %t/conversion.mlir 2> %t/STDERR.txt

//--- input.mlir

module {
  func.func @matmul_on_memref(%arg0: memref<128x128xi32>, %arg1: memref<128x128xi32>) -> memref<128x128xi32> {
    %c64 = arith.constant 64 : index
    %c128 = arith.constant 128 : index
    %c0 = arith.constant 0 : index
    %c32 = arith.constant 32 : index
    %c0_i32 = arith.constant 0 : i32
    %async_token, %results = air.execute -> (memref<128x128xi32>) {
      %alloc = memref.alloc() : memref<128x128xi32>
      air.execute_terminator %alloc : memref<128x128xi32>
    } {id = 1 : i32}
    %c0_0 = arith.constant 0 : index
    %c128_1 = arith.constant 128 : index
    %c1 = arith.constant 1 : index
    %0 = air.wait_all async [%async_token]  {id = 4 : i32}
    %1 = scf.for %arg2 = %c0_0 to %c128_1 step %c1 iter_args(%arg3 = %0) -> (!air.async.token) {
      %c0_2 = arith.constant 0 : index
      %c128_3 = arith.constant 128 : index
      %c1_4 = arith.constant 1 : index
      %4 = air.wait_all async [%arg3]  {id = 2 : i32}
      %5 = scf.for %arg4 = %c0_2 to %c128_3 step %c1_4 iter_args(%arg5 = %4) -> (!air.async.token) {
        %c0_i32_5 = arith.constant 0 : i32
        %async_token_6 = air.execute [%arg5] {
          memref.store %c0_i32_5, %results[%arg2, %arg4] : memref<128x128xi32>
        } {id = 2 : i32}
        %7 = air.wait_all async [%arg5, %async_token_6]  {id = 1 : i32}
        scf.yield %7 : !air.async.token
      }
      %6 = air.wait_all async [%arg3, %5]  {id = 3 : i32}
      scf.yield %6 : !air.async.token
    }
    %2 = air.wait_all async [%1]  {id = 18 : i32}
    %3 = scf.parallel (%arg2, %arg3) = (%c0, %c0) to (%c128, %c128) step (%c64, %c64) init (%2) -> !air.async.token {
      %c0_2 = arith.constant 0 : index
      %c128_3 = arith.constant 128 : index
      %c64_4 = arith.constant 64 : index
      %4 = air.wait_all async [%2]  {id = 16 : i32}
      %5 = scf.for %arg4 = %c0_2 to %c128_3 step %c64_4 iter_args(%arg5 = %4) -> (!air.async.token) {
        %c0_5 = arith.constant 0 : index
        %c64_6 = arith.constant 64 : index
        %c32_7 = arith.constant 32 : index
        %subview = memref.subview %arg0[%arg2, %arg4] [64, 64] [1, 1] : memref<128x128xi32> to memref<64x64xi32, strided<[128, 1], offset: ?>>
        %subview_8 = memref.subview %arg1[%arg4, %arg3] [64, 64] [1, 1] : memref<128x128xi32> to memref<64x64xi32, strided<[128, 1], offset: ?>>
        %subview_9 = memref.subview %results[%arg2, %arg3] [64, 64] [1, 1] : memref<128x128xi32> to memref<64x64xi32, strided<[128, 1], offset: ?>>
        %async_token_10, %results_11 = air.execute -> (memref<64x64xi32, 1>) {
          %alloc = memref.alloc() : memref<64x64xi32, 1>
          air.execute_terminator %alloc : memref<64x64xi32, 1>
        } {id = 3 : i32}
        %async_token_12, %results_13 = air.execute -> (memref<64x64xi32, 1>) {
          %alloc = memref.alloc() : memref<64x64xi32, 1>
          air.execute_terminator %alloc : memref<64x64xi32, 1>
        } {id = 4 : i32}
        %async_token_14, %results_15 = air.execute -> (memref<64x64xi32, 1>) {
          %alloc = memref.alloc() : memref<64x64xi32, 1>
          air.execute_terminator %alloc : memref<64x64xi32, 1>
        } {id = 5 : i32}
        %async_token_16 = air.execute [%arg5, %async_token_10] {
          memref.copy %subview, %results_11 : memref<64x64xi32, strided<[128, 1], offset: ?>> to memref<64x64xi32, 1>
        } {id = 6 : i32}
        %async_token_17 = air.execute [%arg5, %async_token_12] {
          memref.copy %subview_8, %results_13 : memref<64x64xi32, strided<[128, 1], offset: ?>> to memref<64x64xi32, 1>
        } {id = 7 : i32}
        %async_token_18 = air.execute [%async_token_14, %arg5] {
          memref.copy %subview_9, %results_15 : memref<64x64xi32, strided<[128, 1], offset: ?>> to memref<64x64xi32, 1>
        } {id = 8 : i32}
        %7 = air.wait_all async [%arg5, %async_token_16, %async_token_17, %async_token_18]  {id = 14 : i32}
        %8 = scf.parallel (%arg6, %arg7) = (%c0_5, %c0_5) to (%c64_6, %c64_6) step (%c32_7, %c32_7) init (%7) -> !air.async.token {
          %c0_23 = arith.constant 0 : index
          %c64_24 = arith.constant 64 : index
          %c32_25 = arith.constant 32 : index
          %10 = air.wait_all async [%7, %7, %7]  {id = 12 : i32}
          %11 = scf.for %arg8 = %c0_23 to %c64_24 step %c32_25 iter_args(%arg9 = %10) -> (!air.async.token) {
            %subview_26 = memref.subview %results_11[%arg6, %arg8] [32, 32] [1, 1] : memref<64x64xi32, 1> to memref<32x32xi32, strided<[64, 1], offset: ?>, 1>
            %subview_27 = memref.subview %results_13[%arg8, %arg7] [32, 32] [1, 1] : memref<64x64xi32, 1> to memref<32x32xi32, strided<[64, 1], offset: ?>, 1>
            %subview_28 = memref.subview %results_15[%arg6, %arg7] [32, 32] [1, 1] : memref<64x64xi32, 1> to memref<32x32xi32, strided<[64, 1], offset: ?>, 1>
            %async_token_29, %results_30 = air.execute -> (memref<32x32xi32, 2>) {
              %alloc = memref.alloc() : memref<32x32xi32, 2>
              air.execute_terminator %alloc : memref<32x32xi32, 2>
            } {id = 9 : i32}
            %async_token_31, %results_32 = air.execute -> (memref<32x32xi32, 2>) {
              %alloc = memref.alloc() : memref<32x32xi32, 2>
              air.execute_terminator %alloc : memref<32x32xi32, 2>
            } {id = 10 : i32}
            %async_token_33, %results_34 = air.execute -> (memref<32x32xi32, 2>) {
              %alloc = memref.alloc() : memref<32x32xi32, 2>
              air.execute_terminator %alloc : memref<32x32xi32, 2>
            } {id = 11 : i32}
            %async_token_35 = air.execute [%async_token_29, %arg9] {
              memref.copy %subview_26, %results_30 : memref<32x32xi32, strided<[64, 1], offset: ?>, 1> to memref<32x32xi32, 2>
            } {id = 12 : i32}
            %async_token_36 = air.execute [%async_token_31, %arg9] {
              memref.copy %subview_27, %results_32 : memref<32x32xi32, strided<[64, 1], offset: ?>, 1> to memref<32x32xi32, 2>
            } {id = 13 : i32}
            %async_token_37 = air.execute [%async_token_33, %arg9] {
              memref.copy %subview_28, %results_34 : memref<32x32xi32, strided<[64, 1], offset: ?>, 1> to memref<32x32xi32, 2>
            } {id = 14 : i32}
            %c0_38 = arith.constant 0 : index
            %c32_39 = arith.constant 32 : index
            %c1_40 = arith.constant 1 : index
            %13 = air.wait_all async [%arg9, %async_token_35, %async_token_36, %async_token_37]  {id = 10 : i32}
            %14 = scf.for %arg10 = %c0_38 to %c32_39 step %c1_40 iter_args(%arg11 = %13) -> (!air.async.token) {
              %c0_45 = arith.constant 0 : index
              %c32_46 = arith.constant 32 : index
              %c1_47 = arith.constant 1 : index
              %16 = air.wait_all async [%arg11, %arg11, %arg11]  {id = 8 : i32}
              %17 = scf.for %arg12 = %c0_45 to %c32_46 step %c1_47 iter_args(%arg13 = %16) -> (!air.async.token) {
                %c0_48 = arith.constant 0 : index
                %c32_49 = arith.constant 32 : index
                %c1_50 = arith.constant 1 : index
                %19 = air.wait_all async [%arg13, %arg13, %arg13]  {id = 6 : i32}
                %20 = scf.for %arg14 = %c0_48 to %c32_49 step %c1_50 iter_args(%arg15 = %19) -> (!air.async.token) {
                  %async_token_51, %results_52 = air.execute [%arg15] -> (i32) {
                    %25 = memref.load %results_30[%arg10, %arg14] : memref<32x32xi32, 2>
                    air.execute_terminator %25 : i32
                  } {id = 15 : i32}
                  %async_token_53, %results_54 = air.execute [%arg15] -> (i32) {
                    %25 = memref.load %results_32[%arg14, %arg12] : memref<32x32xi32, 2>
                    air.execute_terminator %25 : i32
                  } {id = 16 : i32}
                  %async_token_55, %results_56 = air.execute [%arg15] -> (i32) {
                    %25 = memref.load %results_34[%arg10, %arg12] : memref<32x32xi32, 2>
                    air.execute_terminator %25 : i32
                  } {id = 17 : i32}
                  %22 = arith.muli %results_52, %results_54 : i32
                  %23 = arith.addi %results_56, %22 : i32
                  %async_token_57 = air.execute [%arg15, %async_token_55] {
                    memref.store %23, %results_34[%arg10, %arg12] : memref<32x32xi32, 2>
                  } {id = 18 : i32}
                  %24 = air.wait_all async [%arg15, %async_token_51, %async_token_53, %async_token_57]  {id = 5 : i32}
                  scf.yield %24 : !air.async.token
                }
                %21 = air.wait_all async [%arg13, %20]  {id = 7 : i32}
                scf.yield %21 : !air.async.token
              }
              %18 = air.wait_all async [%arg11, %17]  {id = 9 : i32}
              scf.yield %18 : !air.async.token
            }
            %async_token_41 = air.execute [%arg9, %14] {
              memref.copy %results_34, %subview_28 : memref<32x32xi32, 2> to memref<32x32xi32, strided<[64, 1], offset: ?>, 1>
            } {id = 19 : i32}
            %async_token_42 = air.execute [%14] {
              memref.dealloc %results_30 : memref<32x32xi32, 2>
            } {id = 20 : i32}
            %async_token_43 = air.execute [%14] {
              memref.dealloc %results_32 : memref<32x32xi32, 2>
            } {id = 21 : i32}
            %async_token_44 = air.execute [%async_token_41] {
              memref.dealloc %results_34 : memref<32x32xi32, 2>
            } {id = 22 : i32}
            %15 = air.wait_all async [%arg9, %async_token_41]  {id = 11 : i32}
            scf.yield %15 : !air.async.token
          }
          %12 = air.wait_all async [%11]  {id = 13 : i32}
          scf.reduce(%12 : !air.async.token) {
          ^bb0(%arg8: !air.async.token, %arg9: !air.async.token):
            %13 = air.wait_all async [%arg8, %arg9]
            scf.reduce.return %13 : !air.async.token
          }
        }
        %async_token_19 = air.execute [%arg5, %async_token_18] {
          memref.copy %results_15, %subview_9 : memref<64x64xi32, 1> to memref<64x64xi32, strided<[128, 1], offset: ?>>
        } {id = 23 : i32}
        %async_token_20 = air.execute [%async_token_16] {
          memref.dealloc %results_11 : memref<64x64xi32, 1>
        } {id = 24 : i32}
        %async_token_21 = air.execute [%async_token_17] {
          memref.dealloc %results_13 : memref<64x64xi32, 1>
        } {id = 25 : i32}
        %async_token_22 = air.execute [%async_token_19] {
          memref.dealloc %results_15 : memref<64x64xi32, 1>
        } {id = 26 : i32}
        %9 = air.wait_all async [%arg5, %async_token_19, %8]  {id = 15 : i32}
        scf.yield %9 : !air.async.token
      }
      %6 = air.wait_all async [%5]  {id = 17 : i32}
      scf.reduce(%6 : !air.async.token) {
      ^bb0(%arg4: !air.async.token, %arg5: !air.async.token):
        %7 = air.wait_all async [%arg4, %arg5]
        scf.reduce.return %7 : !air.async.token
      }
    }
    return %results : memref<128x128xi32>
  }
}

