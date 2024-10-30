module {
  func.func @forward(%arg0: memref<16x16xi32>, %arg1: memref<16x16xi32>, %arg2: memref<16x16xi32>) {
    %c0_i32 = arith.constant 0 : i32
    %c8 = arith.constant 8 : index
    %c16 = arith.constant 16 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c4 = arith.constant 4 : index
    %alloc = memref.alloc() : memref<16x16xi32>
    %0 = async.create_group %c16 : !async.group
    %1 = scf.for %arg3 = %c0 to %c4 step %c1 iter_args(%arg4 = %c0) -> (index) {
      %2 = scf.for %arg5 = %c0 to %c4 step %c1 iter_args(%arg6 = %arg4) -> (index) {
        %token = async.execute {
          %5 = arith.muli %arg3, %c4 : index
          %6 = arith.muli %arg5, %c4 : index
          %alloc_0 = memref.alloc() : memref<4x4xi32, 1>
          %7 = builtin.unrealized_conversion_cast %alloc_0 : memref<4x4xi32, 1> to memref<4x4xi32>
          scf.for %arg7 = %c0 to %c16 step %c8 {
            %alloc_1 = memref.alloc() : memref<4x8xi32, 1>
            %8 = builtin.unrealized_conversion_cast %alloc_1 : memref<4x8xi32, 1> to memref<4x8xi32>
            %alloc_2 = memref.alloc() : memref<8x4xi32, 1>
            %9 = builtin.unrealized_conversion_cast %alloc_2 : memref<8x4xi32, 1> to memref<8x4xi32>
            %subview_3 = memref.subview %arg0[%5, %arg7] [4, 8] [16, 1] : memref<16x16xi32> to memref<4x8xi32, strided<[256, 1], offset: ?>>
            memref.copy %subview_3, %alloc_1 : memref<4x8xi32, strided<[256, 1], offset: ?>> to memref<4x8xi32, 1>
            %subview_4 = memref.subview %arg1[%arg7, %6] [8, 4] [16, 1] : memref<16x16xi32> to memref<8x4xi32, strided<[256, 1], offset: ?>>
            memref.copy %subview_4, %alloc_2 : memref<8x4xi32, strided<[256, 1], offset: ?>> to memref<8x4xi32, 1>
            %10 = async.create_group %c4 : !async.group
            %11 = scf.for %arg8 = %c0 to %c2 step %c1 iter_args(%arg9 = %c0) -> (index) {
              %12 = scf.for %arg10 = %c0 to %c2 step %c1 iter_args(%arg11 = %arg9) -> (index) {
                %token_5 = async.execute {
                  %15 = arith.muli %arg8, %c2 : index
                  %16 = arith.muli %arg10, %c2 : index
                  %alloc_6 = memref.alloc() : memref<2x2xi32, 2>
                  %17 = builtin.unrealized_conversion_cast %alloc_6 : memref<2x2xi32, 2> to memref<2x2xi32>
                  scf.for %arg12 = %c0 to %c2 step %c1 {
                    scf.for %arg13 = %c0 to %c2 step %c1 {
                      memref.store %c0_i32, %alloc_6[%arg12, %arg13] : memref<2x2xi32, 2>
                    }
                  }
                  scf.for %arg12 = %c0 to %c8 step %c2 {
                    %alloc_8 = memref.alloc() : memref<2x2xi32, 2>
                    %18 = builtin.unrealized_conversion_cast %alloc_8 : memref<2x2xi32, 2> to memref<2x2xi32>
                    %alloc_9 = memref.alloc() : memref<2x2xi32, 2>
                    %19 = builtin.unrealized_conversion_cast %alloc_9 : memref<2x2xi32, 2> to memref<2x2xi32>
                    %subview_10 = memref.subview %alloc_1[%15, %arg12] [2, 2] [8, 1] : memref<4x8xi32, 1> to memref<2x2xi32, strided<[64, 1], offset: ?>, 1>
                    memref.copy %subview_10, %alloc_8 : memref<2x2xi32, strided<[64, 1], offset: ?>, 1> to memref<2x2xi32, 2>
                    %subview_11 = memref.subview %alloc_2[%arg12, %16] [2, 2] [4, 1] : memref<8x4xi32, 1> to memref<2x2xi32, strided<[16, 1], offset: ?>, 1>
                    memref.copy %subview_11, %alloc_9 : memref<2x2xi32, strided<[16, 1], offset: ?>, 1> to memref<2x2xi32, 2>
                    scf.for %arg13 = %c0 to %c2 step %c1 {
                      scf.for %arg14 = %c0 to %c2 step %c1 {
                        scf.for %arg15 = %c0 to %c2 step %c1 {
                          %20 = memref.load %alloc_8[%arg13, %arg15] : memref<2x2xi32, 2>
                          %21 = memref.load %alloc_9[%arg15, %arg14] : memref<2x2xi32, 2>
                          %22 = memref.load %alloc_6[%arg13, %arg14] : memref<2x2xi32, 2>
                          %23 = arith.muli %20, %21 : i32
                          %24 = arith.addi %22, %23 : i32
                          memref.store %24, %alloc_6[%arg13, %arg14] : memref<2x2xi32, 2>
                        }
                      }
                    }
                    memref.dealloc %alloc_8 : memref<2x2xi32, 2>
                    memref.dealloc %alloc_9 : memref<2x2xi32, 2>
                  }
                  %subview_7 = memref.subview %alloc_0[%15, %16] [2, 2] [4, 1] : memref<4x4xi32, 1> to memref<2x2xi32, strided<[16, 1], offset: ?>, 1>
                  memref.copy %alloc_6, %subview_7 : memref<2x2xi32, 2> to memref<2x2xi32, strided<[16, 1], offset: ?>, 1>
                  memref.dealloc %alloc_6 : memref<2x2xi32, 2>
                  async.yield
                }
                %13 = async.add_to_group %token_5, %10 : !async.token
                %14 = arith.addi %arg11, %c1 : index
                scf.yield %14 : index
              }
              scf.yield %12 : index
            }
            async.await_all %10
            memref.dealloc %alloc_1 : memref<4x8xi32, 1>
            memref.dealloc %alloc_2 : memref<8x4xi32, 1>
          }
          %subview = memref.subview %alloc[%5, %6] [4, 4] [16, 1] : memref<16x16xi32> to memref<4x4xi32, strided<[256, 1], offset: ?>>
          memref.copy %alloc_0, %subview : memref<4x4xi32, 1> to memref<4x4xi32, strided<[256, 1], offset: ?>>
          memref.dealloc %alloc_0 : memref<4x4xi32, 1>
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

