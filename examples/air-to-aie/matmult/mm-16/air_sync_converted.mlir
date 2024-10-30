module {
  func.func @forward(%arg0: memref<16x16xi32>, %arg1: memref<16x16xi32>, %arg2: memref<16x16xi32>) {
    %c4 = arith.constant 4 : index
    %alloc = memref.alloc() : memref<16x16xi32>
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.parallel (%arg3, %arg4) = (%c0, %c0) to (%c4, %c4) step (%c1, %c1) {
      %c1_0 = arith.constant 1 : index
      %c4_1 = arith.constant 4 : index
      %c2 = arith.constant 2 : index
      %c0_2 = arith.constant 0 : index
      %c16 = arith.constant 16 : index
      %c8 = arith.constant 8 : index
      %0 = arith.muli %arg3, %c4_1 : index
      %1 = arith.muli %arg4, %c4_1 : index
      %alloc_3 = memref.alloc() : memref<4x4xi32, 1>
      %2 = builtin.unrealized_conversion_cast %alloc_3 : memref<4x4xi32, 1> to memref<4x4xi32>
      %3 = builtin.unrealized_conversion_cast %alloc_3 : memref<4x4xi32, 1> to memref<4x4xi32>
      scf.for %arg5 = %c0_2 to %c16 step %c8 {
        %alloc_5 = memref.alloc() : memref<4x8xi32, 1>
        %4 = builtin.unrealized_conversion_cast %alloc_5 : memref<4x8xi32, 1> to memref<4x8xi32>
        %5 = builtin.unrealized_conversion_cast %alloc_5 : memref<4x8xi32, 1> to memref<4x8xi32>
        %alloc_6 = memref.alloc() : memref<8x4xi32, 1>
        %6 = builtin.unrealized_conversion_cast %alloc_6 : memref<8x4xi32, 1> to memref<8x4xi32>
        %7 = builtin.unrealized_conversion_cast %alloc_6 : memref<8x4xi32, 1> to memref<8x4xi32>
        %c1_7 = arith.constant 1 : index
        %subview_8 = memref.subview %arg0[%0, %arg5] [4, 8] [1, 1] : memref<16x16xi32> to memref<4x8xi32, strided<[16, 1], offset: ?>>
        memref.copy %subview_8, %alloc_5 : memref<4x8xi32, strided<[16, 1], offset: ?>> to memref<4x8xi32, 1>
        %c1_9 = arith.constant 1 : index
        %subview_10 = memref.subview %arg1[%arg5, %1] [8, 4] [1, 1] : memref<16x16xi32> to memref<8x4xi32, strided<[16, 1], offset: ?>>
        memref.copy %subview_10, %alloc_6 : memref<8x4xi32, strided<[16, 1], offset: ?>> to memref<8x4xi32, 1>
        %c0_11 = arith.constant 0 : index
        %c1_12 = arith.constant 1 : index
        scf.parallel (%arg6, %arg7) = (%c0_11, %c0_11) to (%c2, %c2) step (%c1_12, %c1_12) {
          %c4_13 = arith.constant 4 : index
          %c1_14 = arith.constant 1 : index
          %c0_i32 = arith.constant 0 : i32
          %c0_15 = arith.constant 0 : index
          %c8_16 = arith.constant 8 : index
          %c2_17 = arith.constant 2 : index
          %8 = arith.muli %arg6, %c2_17 : index
          %9 = arith.muli %arg7, %c2_17 : index
          %alloc_18 = memref.alloc() : memref<2x2xi32, 2>
          %10 = builtin.unrealized_conversion_cast %alloc_18 : memref<2x2xi32, 2> to memref<2x2xi32>
          scf.for %arg8 = %c0_15 to %c2_17 step %c1_14 {
            scf.for %arg9 = %c0_15 to %c2_17 step %c1_14 {
              memref.store %c0_i32, %alloc_18[%arg8, %arg9] : memref<2x2xi32, 2>
            }
          }
          scf.for %arg8 = %c0_15 to %c8_16 step %c2_17 {
            %alloc_21 = memref.alloc() : memref<2x2xi32, 2>
            %11 = builtin.unrealized_conversion_cast %alloc_21 : memref<2x2xi32, 2> to memref<2x2xi32>
            %alloc_22 = memref.alloc() : memref<2x2xi32, 2>
            %12 = builtin.unrealized_conversion_cast %alloc_22 : memref<2x2xi32, 2> to memref<2x2xi32>
            %c1_23 = arith.constant 1 : index
            %subview_24 = memref.subview %alloc_5[%8, %arg8] [2, 2] [1, 1] : memref<4x8xi32, 1> to memref<2x2xi32, strided<[8, 1], offset: ?>, 1>
            memref.copy %subview_24, %alloc_21 : memref<2x2xi32, strided<[8, 1], offset: ?>, 1> to memref<2x2xi32, 2>
            %c1_25 = arith.constant 1 : index
            %subview_26 = memref.subview %alloc_6[%arg8, %9] [2, 2] [1, 1] : memref<8x4xi32, 1> to memref<2x2xi32, strided<[4, 1], offset: ?>, 1>
            memref.copy %subview_26, %alloc_22 : memref<2x2xi32, strided<[4, 1], offset: ?>, 1> to memref<2x2xi32, 2>
            scf.for %arg9 = %c0_15 to %c2_17 step %c1_14 {
              scf.for %arg10 = %c0_15 to %c2_17 step %c1_14 {
                scf.for %arg11 = %c0_15 to %c2_17 step %c1_14 {
                  %13 = memref.load %alloc_21[%arg9, %arg11] : memref<2x2xi32, 2>
                  %14 = memref.load %alloc_22[%arg11, %arg10] : memref<2x2xi32, 2>
                  %15 = memref.load %alloc_18[%arg9, %arg10] : memref<2x2xi32, 2>
                  %16 = arith.muli %13, %14 : i32
                  %17 = arith.addi %15, %16 : i32
                  memref.store %17, %alloc_18[%arg9, %arg10] : memref<2x2xi32, 2>
                }
              }
            }
            memref.dealloc %alloc_21 : memref<2x2xi32, 2>
            memref.dealloc %alloc_22 : memref<2x2xi32, 2>
          }
          %c1_19 = arith.constant 1 : index
          %subview_20 = memref.subview %alloc_3[%8, %9] [2, 2] [1, 1] : memref<4x4xi32, 1> to memref<2x2xi32, strided<[4, 1], offset: ?>, 1>
          memref.copy %alloc_18, %subview_20 : memref<2x2xi32, 2> to memref<2x2xi32, strided<[4, 1], offset: ?>, 1>
          memref.dealloc %alloc_18 : memref<2x2xi32, 2>
          scf.reduce 
        }
        memref.dealloc %alloc_5 : memref<4x8xi32, 1>
        memref.dealloc %alloc_6 : memref<8x4xi32, 1>
      }
      %c1_4 = arith.constant 1 : index
      %subview = memref.subview %alloc[%0, %1] [4, 4] [1, 1] : memref<16x16xi32> to memref<4x4xi32, strided<[16, 1], offset: ?>>
      memref.copy %alloc_3, %subview : memref<4x4xi32, 1> to memref<4x4xi32, strided<[16, 1], offset: ?>>
      memref.dealloc %alloc_3 : memref<4x4xi32, 1>
      scf.reduce 
    }
    memref.copy %alloc, %arg2 : memref<16x16xi32> to memref<16x16xi32>
    return
  }
}

