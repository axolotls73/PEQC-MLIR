module {
  func.func @forward(%arg0: memref<16x16xi32>, %arg1: memref<16x16xi32>) -> memref<16x16xi32> {
    %c1 = arith.constant 1 : index
    %c4 = arith.constant 4 : index
    %c16 = arith.constant 16 : index
    %c0 = arith.constant 0 : index
    %c8 = arith.constant 8 : index
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() : memref<16x16xi32>
    %0 = async.create_group %c4 : !async.group
    %1 = scf.for %arg2 = %c0 to %c16 step %c8 iter_args(%arg3 = %c0) -> (index) {
      %2 = scf.for %arg4 = %c0 to %c16 step %c8 iter_args(%arg5 = %arg3) -> (index) {
        %token = async.execute {
          %subview = memref.subview %arg0[%arg2, 0] [8, 16] [1, 1] : memref<16x16xi32> to memref<8x16xi32, strided<[16, 1], offset: ?>>
          %subview_0 = memref.subview %arg1[0, %arg4] [16, 8] [1, 1] : memref<16x16xi32> to memref<16x8xi32, strided<[16, 1], offset: ?>>
          %subview_1 = memref.subview %alloc[%arg2, %arg4] [8, 8] [1, 1] : memref<16x16xi32> to memref<8x8xi32, strided<[16, 1], offset: ?>>
          %alloc_2 = memref.alloc() : memref<8x8xi32, 1>
          %alloc_3 = memref.alloc() : memref<8x16xi32, 1>
          %alloc_4 = memref.alloc() : memref<16x8xi32, 1>
          memref.copy %subview, %alloc_3 : memref<8x16xi32, strided<[16, 1], offset: ?>> to memref<8x16xi32, 1>
          memref.copy %subview_0, %alloc_4 : memref<16x8xi32, strided<[16, 1], offset: ?>> to memref<16x8xi32, 1>
          %5 = async.create_group %c4 : !async.group
          %6 = scf.for %arg6 = %c0 to %c8 step %c4 iter_args(%arg7 = %c0) -> (index) {
            %7 = scf.for %arg8 = %c0 to %c8 step %c4 iter_args(%arg9 = %arg7) -> (index) {
              %token_5 = async.execute {
                %subview_6 = memref.subview %alloc_2[%arg6, %arg8] [4, 4] [1, 1] : memref<8x8xi32, 1> to memref<4x4xi32, strided<[8, 1], offset: ?>, 1>
                %alloc_7 = memref.alloc() : memref<4x4xi32, 2>
                scf.for %arg10 = %c0 to %c4 step %c1 {
                  scf.for %arg11 = %c0 to %c4 step %c1 {
                    memref.store %c0_i32, %alloc_7[%arg10, %arg11] : memref<4x4xi32, 2>
                  }
                }
                scf.for %arg10 = %c0 to %c16 step %c4 {
                  %subview_8 = memref.subview %alloc_3[%arg6, %arg10] [4, 4] [1, 1] : memref<8x16xi32, 1> to memref<4x4xi32, strided<[16, 1], offset: ?>, 1>
                  %subview_9 = memref.subview %alloc_4[%arg10, %arg8] [4, 4] [1, 1] : memref<16x8xi32, 1> to memref<4x4xi32, strided<[8, 1], offset: ?>, 1>
                  %alloc_10 = memref.alloc() : memref<4x4xi32, 2>
                  %alloc_11 = memref.alloc() : memref<4x4xi32, 2>
                  memref.copy %subview_8, %alloc_10 : memref<4x4xi32, strided<[16, 1], offset: ?>, 1> to memref<4x4xi32, 2>
                  memref.copy %subview_9, %alloc_11 : memref<4x4xi32, strided<[8, 1], offset: ?>, 1> to memref<4x4xi32, 2>
                  scf.for %arg11 = %c0 to %c4 step %c1 {
                    scf.for %arg12 = %c0 to %c4 step %c1 {
                      scf.for %arg13 = %c0 to %c4 step %c1 {
                        %10 = memref.load %alloc_10[%arg11, %arg13] : memref<4x4xi32, 2>
                        %11 = memref.load %alloc_11[%arg13, %arg12] : memref<4x4xi32, 2>
                        %12 = memref.load %alloc_7[%arg11, %arg12] : memref<4x4xi32, 2>
                        %13 = arith.muli %10, %11 : i32
                        %14 = arith.addi %12, %13 : i32
                        memref.store %14, %alloc_7[%arg11, %arg12] : memref<4x4xi32, 2>
                      }
                    }
                  }
                  memref.dealloc %alloc_10 : memref<4x4xi32, 2>
                  memref.dealloc %alloc_11 : memref<4x4xi32, 2>
                }
                memref.copy %alloc_7, %subview_6 : memref<4x4xi32, 2> to memref<4x4xi32, strided<[8, 1], offset: ?>, 1>
                memref.dealloc %alloc_7 : memref<4x4xi32, 2>
                async.yield
              }
              %8 = async.add_to_group %token_5, %5 : !async.token
              %9 = arith.addi %arg9, %c1 : index
              scf.yield %9 : index
            }
            scf.yield %7 : index
          }
          async.await_all %5
          memref.dealloc %alloc_3 : memref<8x16xi32, 1>
          memref.dealloc %alloc_4 : memref<16x8xi32, 1>
          memref.copy %alloc_2, %subview_1 : memref<8x8xi32, 1> to memref<8x8xi32, strided<[16, 1], offset: ?>>
          memref.dealloc %alloc_2 : memref<8x8xi32, 1>
          async.yield
        }
        %3 = async.add_to_group %token, %0 : !async.token
        %4 = arith.addi %arg5, %c1 : index
        scf.yield %4 : index
      }
      scf.yield %2 : index
    }
    async.await_all %0
    return %alloc : memref<16x16xi32>
  }
}
