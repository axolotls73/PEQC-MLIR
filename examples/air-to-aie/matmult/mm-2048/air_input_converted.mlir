module {
  func.func @forward(%arg0: memref<2048x2048xi32>, %arg1: memref<2048x2048xi32>) -> memref<2048x2048xi32> {
    %c1 = arith.constant 1 : index
    %c2048 = arith.constant 2048 : index
    %c0 = arith.constant 0 : index
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() : memref<2048x2048xi32>
    scf.for %arg2 = %c0 to %c2048 step %c1 {
      scf.for %arg3 = %c0 to %c2048 step %c1 {
        memref.store %c0_i32, %alloc[%arg2, %arg3] : memref<2048x2048xi32>
      }
    }
    scf.for %arg2 = %c0 to %c2048 step %c1 {
      scf.for %arg3 = %c0 to %c2048 step %c1 {
        scf.for %arg4 = %c0 to %c2048 step %c1 {
          %0 = memref.load %arg0[%arg2, %arg4] : memref<2048x2048xi32>
          %1 = memref.load %arg1[%arg4, %arg3] : memref<2048x2048xi32>
          %2 = memref.load %alloc[%arg2, %arg3] : memref<2048x2048xi32>
          %3 = arith.muli %0, %1 : i32
          %4 = arith.addi %2, %3 : i32
          memref.store %4, %alloc[%arg2, %arg3] : memref<2048x2048xi32>
        }
      }
    }
    return %alloc : memref<2048x2048xi32>
  }
}

