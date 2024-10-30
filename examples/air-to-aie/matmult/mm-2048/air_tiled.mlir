module {
  func.func @forward(%arg0: memref<2048x2048xi32>, %arg1: memref<2048x2048xi32>) -> memref<2048x2048xi32> {
    %c32 = arith.constant 32 : index
    %c256 = arith.constant 256 : index
    %c2048 = arith.constant 2048 : index
    %c0 = arith.constant 0 : index
    %c64 = arith.constant 64 : index
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() : memref<2048x2048xi32>
    scf.parallel (%arg2, %arg3) = (%c0, %c0) to (%c2048, %c2048) step (%c64, %c64) {
      %subview = memref.subview %alloc[%arg2, %arg3] [64, 64] [1, 1] : memref<2048x2048xi32> to memref<64x64xi32, strided<[2048, 1], offset: ?>>
      %alloc_0 = memref.alloc() : memref<64x64xi32, 1>
      scf.for %arg4 = %c0 to %c2048 step %c256 {
        %subview_1 = memref.subview %arg0[%arg2, %arg4] [64, 256] [1, 1] : memref<2048x2048xi32> to memref<64x256xi32, strided<[2048, 1], offset: ?>>
        %subview_2 = memref.subview %arg1[%arg4, %arg3] [256, 64] [1, 1] : memref<2048x2048xi32> to memref<256x64xi32, strided<[2048, 1], offset: ?>>
        %alloc_3 = memref.alloc() : memref<64x256xi32, 1>
        %alloc_4 = memref.alloc() : memref<256x64xi32, 1>
        memref.copy %subview_1, %alloc_3 : memref<64x256xi32, strided<[2048, 1], offset: ?>> to memref<64x256xi32, 1>
        memref.copy %subview_2, %alloc_4 : memref<256x64xi32, strided<[2048, 1], offset: ?>> to memref<256x64xi32, 1>
        scf.parallel (%arg5, %arg6) = (%c0, %c0) to (%c64, %c64) step (%c32, %c32) {
          %subview_5 = memref.subview %alloc_0[%arg5, %arg6] [32, 32] [1, 1] : memref<64x64xi32, 1> to memref<32x32xi32, strided<[64, 1], offset: ?>, 1>
          %alloc_6 = memref.alloc() : memref<32x32xi32, 2>
          linalg.fill ins(%c0_i32 : i32) outs(%alloc_6 : memref<32x32xi32, 2>)
          scf.for %arg7 = %c0 to %c256 step %c32 {
            %subview_7 = memref.subview %alloc_3[%arg5, %arg7] [32, 32] [1, 1] : memref<64x256xi32, 1> to memref<32x32xi32, strided<[256, 1], offset: ?>, 1>
            %subview_8 = memref.subview %alloc_4[%arg7, %arg6] [32, 32] [1, 1] : memref<256x64xi32, 1> to memref<32x32xi32, strided<[64, 1], offset: ?>, 1>
            %alloc_9 = memref.alloc() : memref<32x32xi32, 2>
            %alloc_10 = memref.alloc() : memref<32x32xi32, 2>
            memref.copy %subview_7, %alloc_9 : memref<32x32xi32, strided<[256, 1], offset: ?>, 1> to memref<32x32xi32, 2>
            memref.copy %subview_8, %alloc_10 : memref<32x32xi32, strided<[64, 1], offset: ?>, 1> to memref<32x32xi32, 2>
            linalg.matmul {cast = #linalg.type_fn<cast_signed>} ins(%alloc_9, %alloc_10 : memref<32x32xi32, 2>, memref<32x32xi32, 2>) outs(%alloc_6 : memref<32x32xi32, 2>)
            memref.dealloc %alloc_9 : memref<32x32xi32, 2>
            memref.dealloc %alloc_10 : memref<32x32xi32, 2>
          }
          memref.copy %alloc_6, %subview_5 : memref<32x32xi32, 2> to memref<32x32xi32, strided<[64, 1], offset: ?>, 1>
          memref.dealloc %alloc_6 : memref<32x32xi32, 2>
          scf.reduce 
        }
        memref.dealloc %alloc_3 : memref<64x256xi32, 1>
        memref.dealloc %alloc_4 : memref<256x64xi32, 1>
      }
      memref.copy %alloc_0, %subview : memref<64x64xi32, 1> to memref<64x64xi32, strided<[2048, 1], offset: ?>>
      memref.dealloc %alloc_0 : memref<64x64xi32, 1>
      scf.reduce 
    }
    return %alloc : memref<2048x2048xi32>
  }
}
