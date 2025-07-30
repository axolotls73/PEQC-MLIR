module {
  memref.global "private" @A : memref<128x256xi32>
  memref.global "private" @B : memref<256x128xi32>
  memref.global "private" @C : memref<128x128xi32>
  func.func @main() {
    %0 = memref.get_global @A : memref<128x256xi32>
    %1 = memref.get_global @B : memref<256x128xi32>
    %2 = memref.get_global @C : memref<128x128xi32>
    call @forward(%0, %1, %2) : (memref<128x256xi32>, memref<256x128xi32>, memref<128x128xi32>) -> ()
    return
  }
  func.func @forward(%arg0: memref<128x256xi32>, %arg1: memref<256x128xi32>, %arg2: memref<128x128xi32>) {
    %c4 = arith.constant 4 : index
    %c32 = arith.constant 32 : index
    %c0_i32 = arith.constant 0 : i32
    %c64 = arith.constant 64 : index
    %c256 = arith.constant 256 : index
    %c128 = arith.constant 128 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %alloc = memref.alloc() : memref<128x128xi32>
    %0 = async.create_group %c4 : !async.group
    %1 = scf.for %arg3 = %c0 to %c2 step %c1 iter_args(%arg4 = %c0) -> (index) {
      %2 = scf.for %arg5 = %c0 to %c2 step %c1 iter_args(%arg6 = %arg4) -> (index) {
        %token = async.execute {
          %5 = arith.muli %arg5, %c64 overflow<nsw> : index
          %6 = arith.muli %arg3, %c64 overflow<nsw> : index
          %alloc_0 = memref.alloc() : memref<64x64xi32, 1>
          %alloc_1 = memref.alloc() : memref<64x256xi32, 1>
          %alloc_2 = memref.alloc() : memref<256x64xi32, 1>
          %c1_3 = arith.constant 1 : index
          %subview = memref.subview %arg0[%6, 0] [64, 256] [1, 1] : memref<128x256xi32> to memref<64x256xi32, strided<[256, 1], offset: ?>>
          memref.copy %subview, %alloc_1 : memref<64x256xi32, strided<[256, 1], offset: ?>> to memref<64x256xi32, 1>
          %c1_4 = arith.constant 1 : index
          %subview_5 = memref.subview %arg1[0, %5] [256, 64] [1, 1] : memref<256x128xi32> to memref<256x64xi32, strided<[128, 1], offset: ?>>
          memref.copy %subview_5, %alloc_2 : memref<256x64xi32, strided<[128, 1], offset: ?>> to memref<256x64xi32, 1>
          %7 = async.create_group %c4 : !async.group
          %8 = scf.for %arg7 = %c0 to %c2 step %c1 iter_args(%arg8 = %c0) -> (index) {
            %9 = scf.for %arg9 = %c0 to %c2 step %c1 iter_args(%arg10 = %arg8) -> (index) {
              %token_8 = async.execute {
                %12 = arith.muli %arg9, %c32 overflow<nsw> : index
                %13 = arith.muli %arg7, %c32 overflow<nsw> : index
                %alloc_9 = memref.alloc() : memref<32x32xi32, 2>
                scf.for %arg11 = %c0 to %c32 step %c1 {
                  scf.for %arg12 = %c0 to %c32 step %c1 {
                    memref.store %c0_i32, %alloc_9[%arg11, %arg12] : memref<32x32xi32, 2>
                  }
                }
                scf.for %arg11 = %c0 to %c256 step %c32 {
                  %alloc_12 = memref.alloc() : memref<32x32xi32, 2>
                  %alloc_13 = memref.alloc() : memref<32x32xi32, 2>
                  %c1_14 = arith.constant 1 : index
                  %subview_15 = memref.subview %alloc_1[%13, %arg11] [32, 32] [1, 1] : memref<64x256xi32, 1> to memref<32x32xi32, strided<[256, 1], offset: ?>, 1>
                  memref.copy %subview_15, %alloc_12 : memref<32x32xi32, strided<[256, 1], offset: ?>, 1> to memref<32x32xi32, 2>
                  %c1_16 = arith.constant 1 : index
                  %subview_17 = memref.subview %alloc_2[%arg11, %12] [32, 32] [1, 1] : memref<256x64xi32, 1> to memref<32x32xi32, strided<[64, 1], offset: ?>, 1>
                  memref.copy %subview_17, %alloc_13 : memref<32x32xi32, strided<[64, 1], offset: ?>, 1> to memref<32x32xi32, 2>
                  scf.for %arg12 = %c0 to %c32 step %c1 {
                    scf.for %arg13 = %c0 to %c32 step %c1 {
                      scf.for %arg14 = %c0 to %c32 step %c1 {
                        %14 = memref.load %alloc_12[%arg12, %arg14] : memref<32x32xi32, 2>
                        %15 = memref.load %alloc_13[%arg14, %arg13] : memref<32x32xi32, 2>
                        %16 = memref.load %alloc_9[%arg12, %arg13] : memref<32x32xi32, 2>
                        %17 = arith.muli %14, %15 : i32
                        %18 = arith.addi %16, %17 : i32
                        memref.store %18, %alloc_9[%arg12, %arg13] : memref<32x32xi32, 2>
                      }
                    }
                  }
                  memref.dealloc %alloc_12 : memref<32x32xi32, 2>
                  memref.dealloc %alloc_13 : memref<32x32xi32, 2>
                }
                %c1_10 = arith.constant 1 : index
                %subview_11 = memref.subview %alloc_0[%13, %12] [32, 32] [1, 1] : memref<64x64xi32, 1> to memref<32x32xi32, strided<[64, 1], offset: ?>, 1>
                memref.copy %alloc_9, %subview_11 : memref<32x32xi32, 2> to memref<32x32xi32, strided<[64, 1], offset: ?>, 1>
                memref.dealloc %alloc_9 : memref<32x32xi32, 2>
                async.yield
              }
              %10 = async.add_to_group %token_8, %7 : !async.token
              %11 = arith.addi %arg10, %c1 : index
              scf.yield %11 : index
            }
            scf.yield %9 : index
          }
          async.await_all %7
          memref.dealloc %alloc_1 : memref<64x256xi32, 1>
          memref.dealloc %alloc_2 : memref<256x64xi32, 1>
          %c1_6 = arith.constant 1 : index
          %subview_7 = memref.subview %alloc[%6, %5] [64, 64] [1, 1] : memref<128x128xi32> to memref<64x64xi32, strided<[128, 1], offset: ?>>
          memref.copy %alloc_0, %subview_7 : memref<64x64xi32, 1> to memref<64x64xi32, strided<[128, 1], offset: ?>>
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

