module {
  func.func @forward(%arg0: memref<16x16xi32>, %arg1: memref<16x16xi32>, %arg2: memref<16x16xi32>) {
    %c4 = arith.constant 4 : index
    %c0_i32 = arith.constant 0 : i32
    %c8 = arith.constant 8 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %alloc = memref.alloc() : memref<16x16xi32>
    %0 = async.create_group %c4 : !async.group
    %1 = scf.for %arg3 = %c0 to %c2 step %c1 iter_args(%arg4 = %c0) -> (index) {
      %2 = scf.for %arg5 = %c0 to %c2 step %c1 iter_args(%arg6 = %arg4) -> (index) {
        %token = async.execute {
          %5 = arith.muli %arg5, %c8 : index
          %6 = arith.muli %arg3, %c8 : index
          %alloc_0 = memref.alloc() : memref<8x8xi32, 1>
          %alloc_1 = memref.alloc() : memref<8x16xi32, 1>
          %alloc_2 = memref.alloc() : memref<16x8xi32, 1>
          %subview = memref.subview %arg0[%6, 0] [8, 16] [1, 1] : memref<16x16xi32> to memref<8x16xi32, strided<[16, 1], offset: ?>>
          memref.copy %subview, %alloc_1 : memref<8x16xi32, strided<[16, 1], offset: ?>> to memref<8x16xi32, 1>
          %subview_3 = memref.subview %arg1[0, %5] [16, 8] [1, 1] : memref<16x16xi32> to memref<16x8xi32, strided<[16, 1], offset: ?>>
          memref.copy %subview_3, %alloc_2 : memref<16x8xi32, strided<[16, 1], offset: ?>> to memref<16x8xi32, 1>
          %7 = async.create_group %c4 : !async.group
          %8 = scf.for %arg7 = %c0 to %c2 step %c1 iter_args(%arg8 = %c0) -> (index) {
            %9 = scf.for %arg9 = %c0 to %c2 step %c1 iter_args(%arg10 = %arg8) -> (index) {
              %token_5 = async.execute {
                %12 = arith.muli %arg9, %c4 : index
                %13 = arith.muli %arg7, %c4 : index
                %alloc_6 = memref.alloc() : memref<4x4xi32, 2>
                scf.for %arg11 = %c0 to %c4 step %c1 {
                  scf.for %arg12 = %c0 to %c4 step %c1 {
                    memref.store %c0_i32, %alloc_6[%arg11, %arg12] : memref<4x4xi32, 2>
                  }
                }
                scf.for %arg11 = %c0 to %c16 step %c4 {
                  %alloc_8 = memref.alloc() : memref<4x4xi32, 2>
                  %alloc_9 = memref.alloc() : memref<4x4xi32, 2>
                  %subview_10 = memref.subview %alloc_1[%13, %arg11] [4, 4] [1, 1] : memref<8x16xi32, 1> to memref<4x4xi32, strided<[16, 1], offset: ?>, 1>
                  memref.copy %subview_10, %alloc_8 : memref<4x4xi32, strided<[16, 1], offset: ?>, 1> to memref<4x4xi32, 2>
                  %subview_11 = memref.subview %alloc_2[%arg11, %12] [4, 4] [1, 1] : memref<16x8xi32, 1> to memref<4x4xi32, strided<[8, 1], offset: ?>, 1>
                  memref.copy %subview_11, %alloc_9 : memref<4x4xi32, strided<[8, 1], offset: ?>, 1> to memref<4x4xi32, 2>
                  scf.for %arg12 = %c0 to %c4 step %c1 {
                    scf.for %arg13 = %c0 to %c4 step %c1 {
                      scf.for %arg14 = %c0 to %c4 step %c1 {
                        %14 = memref.load %alloc_8[%arg12, %arg14] : memref<4x4xi32, 2>
                        %15 = memref.load %alloc_9[%arg14, %arg13] : memref<4x4xi32, 2>
                        %16 = memref.load %alloc_6[%arg12, %arg13] : memref<4x4xi32, 2>
                        %17 = arith.muli %14, %15 : i32
                        %18 = arith.addi %16, %17 : i32
                        memref.store %18, %alloc_6[%arg12, %arg13] : memref<4x4xi32, 2>
                      }
                    }
                  }
                  memref.dealloc %alloc_8 : memref<4x4xi32, 2>
                  memref.dealloc %alloc_9 : memref<4x4xi32, 2>
                }
                %subview_7 = memref.subview %alloc_0[%13, %12] [4, 4] [1, 1] : memref<8x8xi32, 1> to memref<4x4xi32, strided<[8, 1], offset: ?>, 1>
                memref.copy %alloc_6, %subview_7 : memref<4x4xi32, 2> to memref<4x4xi32, strided<[8, 1], offset: ?>, 1>
                memref.dealloc %alloc_6 : memref<4x4xi32, 2>
                async.yield
              }
              %10 = async.add_to_group %token_5, %7 : !async.token
              %11 = arith.addi %arg10, %c1 : index
              scf.yield %11 : index
            }
            scf.yield %9 : index
          }
          async.await_all %7
          memref.dealloc %alloc_1 : memref<8x16xi32, 1>
          memref.dealloc %alloc_2 : memref<16x8xi32, 1>
          %subview_4 = memref.subview %alloc[%6, %5] [8, 8] [1, 1] : memref<16x16xi32> to memref<8x8xi32, strided<[16, 1], offset: ?>>
          memref.copy %alloc_0, %subview_4 : memref<8x8xi32, 1> to memref<8x8xi32, strided<[16, 1], offset: ?>>
          memref.dealloc %alloc_0 : memref<8x8xi32, 1>
          async.yield
        }
        %3 = async.add_to_group %token, %0 : !async.token
        %4 = arith.addi %arg6, %c1 : index
        scf.yield %4 : index
      }
      scf.yield %2 : index
    }
    async.await_all %0
    memref.copy %alloc, %arg2 : memref<16x16xi32> to memref<16x16xi32>
    return
  }
}
