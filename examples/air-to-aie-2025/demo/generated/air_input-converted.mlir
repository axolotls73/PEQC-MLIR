module {
  memref.global "private" @A : memref<16x16xi32>
  memref.global "private" @B : memref<16x16xi32>
  memref.global "private" @C : memref<16x16xi32>
  func.func @main() {
    %0 = memref.get_global @A : memref<16x16xi32>
    %1 = memref.get_global @B : memref<16x16xi32>
    %2 = call @forward(%0, %1) : (memref<16x16xi32>, memref<16x16xi32>) -> memref<16x16xi32>
    %3 = memref.get_global @C : memref<16x16xi32>
    memref.copy %2, %3 : memref<16x16xi32> to memref<16x16xi32>
    return
  }
  func.func @forward(%arg0: memref<16x16xi32>, %arg1: memref<16x16xi32>) -> memref<16x16xi32> {
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() : memref<16x16xi32>
    %c0 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %c0 to %c16 step %c1 {
      %c0_3 = arith.constant 0 : index
      %c16_4 = arith.constant 16 : index
      %c1_5 = arith.constant 1 : index
      scf.for %arg3 = %c0_3 to %c16_4 step %c1_5 {
        memref.store %c0_i32, %alloc[%arg2, %arg3] : memref<16x16xi32>
      }
    }
    %c0_0 = arith.constant 0 : index
    %c16_1 = arith.constant 16 : index
    %c1_2 = arith.constant 1 : index
    scf.for %arg2 = %c0_0 to %c16_1 step %c1_2 {
      %c0_3 = arith.constant 0 : index
      %c16_4 = arith.constant 16 : index
      %c1_5 = arith.constant 1 : index
      scf.for %arg3 = %c0_3 to %c16_4 step %c1_5 {
        %c0_6 = arith.constant 0 : index
        %c16_7 = arith.constant 16 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg4 = %c0_6 to %c16_7 step %c1_8 {
          %0 = memref.load %arg0[%arg2, %arg4] : memref<16x16xi32>
          %1 = memref.load %arg1[%arg4, %arg3] : memref<16x16xi32>
          %2 = memref.load %alloc[%arg2, %arg3] : memref<16x16xi32>
          %3 = arith.muli %0, %1 : i32
          %4 = arith.addi %2, %3 : i32
          memref.store %4, %alloc[%arg2, %arg3] : memref<16x16xi32>
        }
      }
    }
    return %alloc : memref<16x16xi32>
  }
}

