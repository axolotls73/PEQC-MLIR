module {
  func.func @matmul_on_memref(%arg0: memref<32x32xi32>, %arg1: memref<32x32xi32>) -> memref<32x32xi32> {
    %c1 = arith.constant 1 : index
    %c32 = arith.constant 32 : index
    %c0 = arith.constant 0 : index
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() : memref<32x32xi32>
    scf.for %arg2 = %c0 to %c32 step %c1 {
      scf.for %arg3 = %c0 to %c32 step %c1 {
        memref.store %c0_i32, %alloc[%arg2, %arg3] : memref<32x32xi32>
      }
    }
    scf.for %arg2 = %c0 to %c32 step %c1 {
      scf.for %arg3 = %c0 to %c32 step %c1 {
        scf.for %arg4 = %c0 to %c32 step %c1 {
          %0 = memref.load %arg0[%arg2, %arg4] : memref<32x32xi32>
          %1 = memref.load %arg1[%arg4, %arg3] : memref<32x32xi32>
          %2 = memref.load %alloc[%arg2, %arg3] : memref<32x32xi32>
          %3 = arith.muli %0, %1 : i32
          %4 = arith.addi %2, %3 : i32
          memref.store %4, %alloc[%arg2, %arg3] : memref<32x32xi32>
        }
      }
    }
    return %alloc : memref<32x32xi32>
  }
  memref.global "private" @A : memref<32x32xi32>
  memref.global "private" @B : memref<32x32xi32>
  memref.global "private" @C : memref<32x32xi32>
  func.func @main() {
    %0 = memref.get_global @A : memref<32x32xi32>
    %1 = memref.get_global @B : memref<32x32xi32>
    %2 = memref.get_global @C : memref<32x32xi32>
    %3 = call @matmul_on_memref(%0, %1) : (memref<32x32xi32>, memref<32x32xi32>) -> memref<32x32xi32>
    memref.copy %3, %2 : memref<32x32xi32> to memref<32x32xi32>
    return
  }
}

