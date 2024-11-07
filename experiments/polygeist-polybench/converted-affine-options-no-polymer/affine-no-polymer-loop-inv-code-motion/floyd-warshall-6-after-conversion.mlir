module {
  func.func @kernel_floyd_warshall(%arg0: i32, %arg1: memref<?x60xi32>) {
    %c0 = arith.constant 0 : index
    %c60 = arith.constant 60 : index
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %c0 to %c60 step %c1 {
      scf.for %arg3 = %c0 to %c60 step %c1 {
        scf.for %arg4 = %c0 to %c60 step %c1 {
          %0 = memref.load %arg1[%arg3, %arg4] : memref<?x60xi32>
          %1 = memref.load %arg1[%arg3, %arg2] : memref<?x60xi32>
          %2 = memref.load %arg1[%arg2, %arg4] : memref<?x60xi32>
          %3 = arith.addi %1, %2 : i32
          %4 = arith.cmpi slt, %0, %3 : i32
          %5 = arith.select %4, %0, %3 : i32
          memref.store %5, %arg1[%arg3, %arg4] : memref<?x60xi32>
        }
      }
    }
    return
  }
}

