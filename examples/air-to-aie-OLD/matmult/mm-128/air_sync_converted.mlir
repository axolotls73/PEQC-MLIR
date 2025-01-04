module {
  func.func @forward(%arg0: memref<128x128xi32>, %arg1: memref<128x128xi32>, %arg2: memref<128x128xi32>) {
    %c4 = arith.constant 4 : index
    %c32 = arith.constant 32 : index
    %c0_i32 = arith.constant 0 : i32
    %c64 = arith.constant 64 : index
    %c128 = arith.constant 128 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %alloc = memref.alloc() : memref<128x128xi32>
    %0 = async.create_group %c4 : !async.group
    %1 = scf.for %arg3 = %c0 to %c2 step %c1 iter_args(%arg4 = %c0) -> (index) {
      %2 = scf.for %arg5 = %c0 to %c2 step %c1 iter_args(%arg6 = %arg4) -> (index) {
        %token = async.execute {
          %5 = arith.muli %arg3, %c64 : index
          %6 = arith.muli %arg5, %c64 : index
          %alloc_0 = memref.alloc() : memref<64x64xi32, 1>
          scf.for %arg7 = %c0 to %c128 step %c64 {
            %alloc_1 = memref.alloc() : memref<64x64xi32, 1>
            %alloc_2 = memref.alloc() : memref<64x64xi32, 1>
            %subview_3 = memref.subview %arg0[%5, %arg7] [64, 64] [1, 1] : memref<128x128xi32> to memref<64x64xi32, strided<[128, 1], offset: ?>>
            memref.copy %subview_3, %alloc_1 : memref<64x64xi32, strided<[128, 1], offset: ?>> to memref<64x64xi32, 1>
            %subview_4 = memref.subview %arg1[%arg7, %6] [64, 64] [1, 1] : memref<128x128xi32> to memref<64x64xi32, strided<[128, 1], offset: ?>>
            memref.copy %subview_4, %alloc_2 : memref<64x64xi32, strided<[128, 1], offset: ?>> to memref<64x64xi32, 1>
            %7 = async.create_group %c4 : !async.group
            %8 = scf.for %arg8 = %c0 to %c2 step %c1 iter_args(%arg9 = %c0) -> (index) {
              %9 = scf.for %arg10 = %c0 to %c2 step %c1 iter_args(%arg11 = %arg9) -> (index) {
                %token_5 = async.execute {
                  %12 = arith.muli %arg8, %c32 : index
                  %13 = arith.muli %arg10, %c32 : index
                  %alloc_6 = memref.alloc() : memref<32x32xi32, 2>
                  scf.for %arg12 = %c0 to %c32 step %c1 {
                    scf.for %arg13 = %c0 to %c32 step %c1 {
                      memref.store %c0_i32, %alloc_6[%arg12, %arg13] : memref<32x32xi32, 2>
                    }
                  }
                  scf.for %arg12 = %c0 to %c64 step %c32 {
                    %alloc_8 = memref.alloc() : memref<32x32xi32, 2>
                    %alloc_9 = memref.alloc() : memref<32x32xi32, 2>
                    %subview_10 = memref.subview %alloc_1[%12, %arg12] [32, 32] [1, 1] : memref<64x64xi32, 1> to memref<32x32xi32, strided<[64, 1], offset: ?>, 1>
                    memref.copy %subview_10, %alloc_8 : memref<32x32xi32, strided<[64, 1], offset: ?>, 1> to memref<32x32xi32, 2>
                    %subview_11 = memref.subview %alloc_2[%arg12, %13] [32, 32] [1, 1] : memref<64x64xi32, 1> to memref<32x32xi32, strided<[64, 1], offset: ?>, 1>
                    memref.copy %subview_11, %alloc_9 : memref<32x32xi32, strided<[64, 1], offset: ?>, 1> to memref<32x32xi32, 2>
                    scf.for %arg13 = %c0 to %c32 step %c1 {
                      scf.for %arg14 = %c0 to %c32 step %c1 {
                        scf.for %arg15 = %c0 to %c32 step %c1 {
                          %14 = memref.load %alloc_8[%arg13, %arg15] : memref<32x32xi32, 2>
                          %15 = memref.load %alloc_9[%arg15, %arg14] : memref<32x32xi32, 2>
                          %16 = memref.load %alloc_6[%arg13, %arg14] : memref<32x32xi32, 2>
                          %17 = arith.muli %14, %15 : i32
                          %18 = arith.addi %16, %17 : i32
                          memref.store %18, %alloc_6[%arg13, %arg14] : memref<32x32xi32, 2>
                        }
                      }
                    }
                    memref.dealloc %alloc_8 : memref<32x32xi32, 2>
                    memref.dealloc %alloc_9 : memref<32x32xi32, 2>
                  }
                  %subview_7 = memref.subview %alloc_0[%12, %13] [32, 32] [1, 1] : memref<64x64xi32, 1> to memref<32x32xi32, strided<[64, 1], offset: ?>, 1>
                  memref.copy %alloc_6, %subview_7 : memref<32x32xi32, 2> to memref<32x32xi32, strided<[64, 1], offset: ?>, 1>
                  memref.dealloc %alloc_6 : memref<32x32xi32, 2>
                  async.yield
                }
                %10 = async.add_to_group %token_5, %7 : !async.token
                %11 = arith.addi %arg11, %c1 : index
                scf.yield %11 : index
              }
              scf.yield %9 : index
            }
            async.await_all %7
            memref.dealloc %alloc_1 : memref<64x64xi32, 1>
            memref.dealloc %alloc_2 : memref<64x64xi32, 1>
          }
          %subview = memref.subview %alloc[%5, %6] [64, 64] [1, 1] : memref<128x128xi32> to memref<64x64xi32, strided<[128, 1], offset: ?>>
          memref.copy %alloc_0, %subview : memref<64x64xi32, 1> to memref<64x64xi32, strided<[128, 1], offset: ?>>
          memref.dealloc %alloc_0 : memref<64x64xi32, 1>
          async.yield
        }
        %3 = async.add_to_group %token, %0 : !async.token
        %4 = arith.addi %arg6, %c1 : index
        scf.yield %4 : index
      }
      scf.yield %2 : index
    }
    async.await_all %0
    memref.copy %alloc, %arg2 : memref<128x128xi32> to memref<128x128xi32>
    return
  }
}

