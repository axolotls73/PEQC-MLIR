module {
  func.func @forward(%arg0: memref<16x16xi32>, %arg1: memref<16x16xi32>) -> memref<16x16xi32> {
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c8 = arith.constant 8 : index
    %c16 = arith.constant 16 : index
    %c0 = arith.constant 0 : index
    %c4 = arith.constant 4 : index
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() : memref<16x16xi32>
    %0 = async.create_group %c16 : !async.group
    %1 = scf.for %arg2 = %c0 to %c16 step %c4 iter_args(%arg3 = %c0) -> (index) {
      %2 = scf.for %arg4 = %c0 to %c16 step %c4 iter_args(%arg5 = %arg3) -> (index) {
        %token = async.execute {
          %subview = memref.subview %alloc[%arg2, %arg4] [4, 4] [1, 1] : memref<16x16xi32> to memref<4x4xi32, strided<[16, 1], offset: ?>>
          %alloc_0 = memref.alloc() : memref<4x4xi32, 1>
          scf.for %arg6 = %c0 to %c16 step %c8 {
            %subview_1 = memref.subview %arg0[%arg2, %arg6] [4, 8] [1, 1] : memref<16x16xi32> to memref<4x8xi32, strided<[16, 1], offset: ?>>
            %subview_2 = memref.subview %arg1[%arg6, %arg4] [8, 4] [1, 1] : memref<16x16xi32> to memref<8x4xi32, strided<[16, 1], offset: ?>>
            %alloc_3 = memref.alloc() : memref<4x8xi32, 1>
            %alloc_4 = memref.alloc() : memref<8x4xi32, 1>
            memref.copy %subview_1, %alloc_3 : memref<4x8xi32, strided<[16, 1], offset: ?>> to memref<4x8xi32, 1>
            memref.copy %subview_2, %alloc_4 : memref<8x4xi32, strided<[16, 1], offset: ?>> to memref<8x4xi32, 1>
            %5 = async.create_group %c4 : !async.group
            %6 = scf.for %arg7 = %c0 to %c4 step %c2 iter_args(%arg8 = %c0) -> (index) {
              %7 = scf.for %arg9 = %c0 to %c4 step %c2 iter_args(%arg10 = %arg8) -> (index) {
                %token_5 = async.execute {
                  %subview_6 = memref.subview %alloc_0[%arg7, %arg9] [2, 2] [1, 1] : memref<4x4xi32, 1> to memref<2x2xi32, strided<[4, 1], offset: ?>, 1>
                  %alloc_7 = memref.alloc() : memref<2x2xi32, 2>
                  scf.for %arg11 = %c0 to %c2 step %c1 {
                    scf.for %arg12 = %c0 to %c2 step %c1 {
                      memref.store %c0_i32, %alloc_7[%arg11, %arg12] : memref<2x2xi32, 2>
                    }
                  }
                  scf.for %arg11 = %c0 to %c8 step %c2 {
                    %subview_8 = memref.subview %alloc_3[%arg7, %arg11] [2, 2] [1, 1] : memref<4x8xi32, 1> to memref<2x2xi32, strided<[8, 1], offset: ?>, 1>
                    %subview_9 = memref.subview %alloc_4[%arg11, %arg9] [2, 2] [1, 1] : memref<8x4xi32, 1> to memref<2x2xi32, strided<[4, 1], offset: ?>, 1>
                    %alloc_10 = memref.alloc() : memref<2x2xi32, 2>
                    %alloc_11 = memref.alloc() : memref<2x2xi32, 2>
                    memref.copy %subview_8, %alloc_10 : memref<2x2xi32, strided<[8, 1], offset: ?>, 1> to memref<2x2xi32, 2>
                    memref.copy %subview_9, %alloc_11 : memref<2x2xi32, strided<[4, 1], offset: ?>, 1> to memref<2x2xi32, 2>
                    scf.for %arg12 = %c0 to %c2 step %c1 {
                      scf.for %arg13 = %c0 to %c2 step %c1 {
                        scf.for %arg14 = %c0 to %c2 step %c1 {
                          %10 = memref.load %alloc_10[%arg12, %arg14] : memref<2x2xi32, 2>
                          %11 = memref.load %alloc_11[%arg14, %arg13] : memref<2x2xi32, 2>
                          %12 = memref.load %alloc_7[%arg12, %arg13] : memref<2x2xi32, 2>
                          %13 = arith.muli %10, %11 : i32
                          %14 = arith.addi %12, %13 : i32
                          memref.store %14, %alloc_7[%arg12, %arg13] : memref<2x2xi32, 2>
                        }
                      }
                    }
                    memref.dealloc %alloc_10 : memref<2x2xi32, 2>
                    memref.dealloc %alloc_11 : memref<2x2xi32, 2>
                  }
                  memref.copy %alloc_7, %subview_6 : memref<2x2xi32, 2> to memref<2x2xi32, strided<[4, 1], offset: ?>, 1>
                  memref.dealloc %alloc_7 : memref<2x2xi32, 2>
                  async.yield
                }
                %8 = async.add_to_group %token_5, %5 : !async.token
                %9 = arith.addi %arg10, %c1 : index
                scf.yield %9 : index
              }
              scf.yield %7 : index
            }
            async.await_all %5
            memref.dealloc %alloc_3 : memref<4x8xi32, 1>
            memref.dealloc %alloc_4 : memref<8x4xi32, 1>
          }
          memref.copy %alloc_0, %subview : memref<4x4xi32, 1> to memref<4x4xi32, strided<[16, 1], offset: ?>>
          memref.dealloc %alloc_0 : memref<4x4xi32, 1>
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

