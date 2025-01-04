module {
  func.func @forward(%arg0: memref<128x128xi32>, %arg1: memref<128x128xi32>) -> memref<128x128xi32> {
    %c4 = arith.constant 4 : index
    %c1 = arith.constant 1 : index
    %c32 = arith.constant 32 : index
    %c128 = arith.constant 128 : index
    %c0 = arith.constant 0 : index
    %c64 = arith.constant 64 : index
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() : memref<128x128xi32>
    %0 = async.create_group %c4 : !async.group
    %1 = scf.for %arg2 = %c0 to %c128 step %c64 iter_args(%arg3 = %c0) -> (index) {
      %2 = scf.for %arg4 = %c0 to %c128 step %c64 iter_args(%arg5 = %arg3) -> (index) {
        %token = async.execute {
          %subview = memref.subview %arg0[%arg2, 0] [64, 128] [1, 1] : memref<128x128xi32> to memref<64x128xi32, strided<[128, 1], offset: ?>>
          %subview_0 = memref.subview %arg1[0, %arg4] [128, 64] [1, 1] : memref<128x128xi32> to memref<128x64xi32, strided<[128, 1], offset: ?>>
          %subview_1 = memref.subview %alloc[%arg2, %arg4] [64, 64] [1, 1] : memref<128x128xi32> to memref<64x64xi32, strided<[128, 1], offset: ?>>
          %alloc_2 = memref.alloc() : memref<64x64xi32, 1>
          %alloc_3 = memref.alloc() : memref<64x128xi32, 1>
          %alloc_4 = memref.alloc() : memref<128x64xi32, 1>
          memref.copy %subview, %alloc_3 : memref<64x128xi32, strided<[128, 1], offset: ?>> to memref<64x128xi32, 1>
          memref.copy %subview_0, %alloc_4 : memref<128x64xi32, strided<[128, 1], offset: ?>> to memref<128x64xi32, 1>
          %5 = async.create_group %c4 : !async.group
          %6 = scf.for %arg6 = %c0 to %c64 step %c32 iter_args(%arg7 = %c0) -> (index) {
            %7 = scf.for %arg8 = %c0 to %c64 step %c32 iter_args(%arg9 = %arg7) -> (index) {
              %token_5 = async.execute {
                %subview_6 = memref.subview %alloc_2[%arg6, %arg8] [32, 32] [1, 1] : memref<64x64xi32, 1> to memref<32x32xi32, strided<[64, 1], offset: ?>, 1>
                %alloc_7 = memref.alloc() : memref<32x32xi32, 2>
                scf.for %arg10 = %c0 to %c32 step %c1 {
                  scf.for %arg11 = %c0 to %c32 step %c1 {
                    memref.store %c0_i32, %alloc_7[%arg10, %arg11] : memref<32x32xi32, 2>
                  }
                }
                scf.for %arg10 = %c0 to %c128 step %c32 {
                  %subview_8 = memref.subview %alloc_3[%arg6, %arg10] [32, 32] [1, 1] : memref<64x128xi32, 1> to memref<32x32xi32, strided<[128, 1], offset: ?>, 1>
                  %subview_9 = memref.subview %alloc_4[%arg10, %arg8] [32, 32] [1, 1] : memref<128x64xi32, 1> to memref<32x32xi32, strided<[64, 1], offset: ?>, 1>
                  %alloc_10 = memref.alloc() : memref<32x32xi32, 2>
                  %alloc_11 = memref.alloc() : memref<32x32xi32, 2>
                  memref.copy %subview_8, %alloc_10 : memref<32x32xi32, strided<[128, 1], offset: ?>, 1> to memref<32x32xi32, 2>
                  memref.copy %subview_9, %alloc_11 : memref<32x32xi32, strided<[64, 1], offset: ?>, 1> to memref<32x32xi32, 2>
                  scf.for %arg11 = %c0 to %c32 step %c1 {
                    scf.for %arg12 = %c0 to %c32 step %c1 {
                      scf.for %arg13 = %c0 to %c32 step %c1 {
                        %10 = memref.load %alloc_10[%arg11, %arg13] : memref<32x32xi32, 2>
                        %11 = memref.load %alloc_11[%arg13, %arg12] : memref<32x32xi32, 2>
                        %12 = memref.load %alloc_7[%arg11, %arg12] : memref<32x32xi32, 2>
                        %13 = arith.muli %10, %11 : i32
                        %14 = arith.addi %12, %13 : i32
                        memref.store %14, %alloc_7[%arg11, %arg12] : memref<32x32xi32, 2>
                      }
                    }
                  }
                  memref.dealloc %alloc_10 : memref<32x32xi32, 2>
                  memref.dealloc %alloc_11 : memref<32x32xi32, 2>
                }
                memref.copy %alloc_7, %subview_6 : memref<32x32xi32, 2> to memref<32x32xi32, strided<[64, 1], offset: ?>, 1>
                memref.dealloc %alloc_7 : memref<32x32xi32, 2>
                async.yield
              }
              %8 = async.add_to_group %token_5, %5 : !async.token
              %9 = arith.addi %arg9, %c1 : index
              scf.yield %9 : index
            }
            scf.yield %7 : index
          }
          async.await_all %5
          memref.dealloc %alloc_3 : memref<64x128xi32, 1>
          memref.dealloc %alloc_4 : memref<128x64xi32, 1>
          memref.copy %alloc_2, %subview_1 : memref<64x64xi32, 1> to memref<64x64xi32, strided<[128, 1], offset: ?>>
          memref.dealloc %alloc_2 : memref<64x64xi32, 1>
          async.yield
        }
        %3 = async.add_to_group %token, %0 : !async.token
        %4 = arith.addi %arg5, %c1 : index
        scf.yield %4 : index
      }
      scf.yield %2 : index
    }
    async.await_all %0
    return %alloc : memref<128x128xi32>
  }
}
