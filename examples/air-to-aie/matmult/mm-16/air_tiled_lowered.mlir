module {
  func.func @forward(%arg0: memref<16x16xi32>, %arg1: memref<16x16xi32>) -> memref<16x16xi32> {
    %c2 = arith.constant 2 : index
    %c8 = arith.constant 8 : index
    %c16 = arith.constant 16 : index
    %c0 = arith.constant 0 : index
    %c4 = arith.constant 4 : index
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() : memref<16x16xi32>
    scf.parallel (%arg2, %arg3) = (%c0, %c0) to (%c16, %c16) step (%c4, %c4) {
      %subview = memref.subview %alloc[%arg2, %arg3] [4, 4] [1, 1] : memref<16x16xi32> to memref<4x4xi32, strided<[16, 1], offset: ?>>
      %alloc_0 = memref.alloc() : memref<4x4xi32, 1>
      scf.for %arg4 = %c0 to %c16 step %c8 {
        %subview_1 = memref.subview %arg0[%arg2, %arg4] [4, 8] [1, 1] : memref<16x16xi32> to memref<4x8xi32, strided<[16, 1], offset: ?>>
        %subview_2 = memref.subview %arg1[%arg4, %arg3] [8, 4] [1, 1] : memref<16x16xi32> to memref<8x4xi32, strided<[16, 1], offset: ?>>
        %alloc_3 = memref.alloc() : memref<4x8xi32, 1>
        %alloc_4 = memref.alloc() : memref<8x4xi32, 1>
        memref.copy %subview_1, %alloc_3 : memref<4x8xi32, strided<[16, 1], offset: ?>> to memref<4x8xi32, 1>
        memref.copy %subview_2, %alloc_4 : memref<8x4xi32, strided<[16, 1], offset: ?>> to memref<8x4xi32, 1>
        scf.parallel (%arg5, %arg6) = (%c0, %c0) to (%c4, %c4) step (%c2, %c2) {
          %subview_5 = memref.subview %alloc_0[%arg5, %arg6] [2, 2] [1, 1] : memref<4x4xi32, 1> to memref<2x2xi32, strided<[4, 1], offset: ?>, 1>
          %alloc_6 = memref.alloc() : memref<2x2xi32, 2>
          %c0_7 = arith.constant 0 : index
          %c2_8 = arith.constant 2 : index
          %c1 = arith.constant 1 : index
          scf.for %arg7 = %c0_7 to %c2_8 step %c1 {
            %c0_9 = arith.constant 0 : index
            %c2_10 = arith.constant 2 : index
            %c1_11 = arith.constant 1 : index
            scf.for %arg8 = %c0_9 to %c2_10 step %c1_11 {
              memref.store %c0_i32, %alloc_6[%arg7, %arg8] : memref<2x2xi32, 2>
            }
          }
          scf.for %arg7 = %c0 to %c8 step %c2 {
            %subview_9 = memref.subview %alloc_3[%arg5, %arg7] [2, 2] [1, 1] : memref<4x8xi32, 1> to memref<2x2xi32, strided<[8, 1], offset: ?>, 1>
            %subview_10 = memref.subview %alloc_4[%arg7, %arg6] [2, 2] [1, 1] : memref<8x4xi32, 1> to memref<2x2xi32, strided<[4, 1], offset: ?>, 1>
            %alloc_11 = memref.alloc() : memref<2x2xi32, 2>
            %alloc_12 = memref.alloc() : memref<2x2xi32, 2>
            memref.copy %subview_9, %alloc_11 : memref<2x2xi32, strided<[8, 1], offset: ?>, 1> to memref<2x2xi32, 2>
            memref.copy %subview_10, %alloc_12 : memref<2x2xi32, strided<[4, 1], offset: ?>, 1> to memref<2x2xi32, 2>
            %c0_13 = arith.constant 0 : index
            %c2_14 = arith.constant 2 : index
            %c1_15 = arith.constant 1 : index
            scf.for %arg8 = %c0_13 to %c2_14 step %c1_15 {
              %c0_16 = arith.constant 0 : index
              %c2_17 = arith.constant 2 : index
              %c1_18 = arith.constant 1 : index
              scf.for %arg9 = %c0_16 to %c2_17 step %c1_18 {
                %c0_19 = arith.constant 0 : index
                %c2_20 = arith.constant 2 : index
                %c1_21 = arith.constant 1 : index
                scf.for %arg10 = %c0_19 to %c2_20 step %c1_21 {
                  %0 = memref.load %alloc_11[%arg8, %arg10] : memref<2x2xi32, 2>
                  %1 = memref.load %alloc_12[%arg10, %arg9] : memref<2x2xi32, 2>
                  %2 = memref.load %alloc_6[%arg8, %arg9] : memref<2x2xi32, 2>
                  %3 = arith.muli %0, %1 : i32
                  %4 = arith.addi %2, %3 : i32
                  memref.store %4, %alloc_6[%arg8, %arg9] : memref<2x2xi32, 2>
                }
              }
            }
            memref.dealloc %alloc_11 : memref<2x2xi32, 2>
            memref.dealloc %alloc_12 : memref<2x2xi32, 2>
          }
          memref.copy %alloc_6, %subview_5 : memref<2x2xi32, 2> to memref<2x2xi32, strided<[4, 1], offset: ?>, 1>
          memref.dealloc %alloc_6 : memref<2x2xi32, 2>
          scf.reduce 
        }
        memref.dealloc %alloc_3 : memref<4x8xi32, 1>
        memref.dealloc %alloc_4 : memref<8x4xi32, 1>
      }
      memref.copy %alloc_0, %subview : memref<4x4xi32, 1> to memref<4x4xi32, strided<[16, 1], offset: ?>>
      memref.dealloc %alloc_0 : memref<4x4xi32, 1>
      scf.reduce 
    }
    return %alloc : memref<16x16xi32>
  }
}

