module {
  func.func @kernel_floyd_warshall(%arg0: i32, %arg1: memref<?x60xi32>) {
    %0 = arith.index_cast %arg0 : i32 to index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %c0 to %0 step %c1 {
      %c0_0 = arith.constant 0 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg3 = %c0_0 to %0 step %c1_1 {
        %c0_2 = arith.constant 0 : index
        %c1_3 = arith.constant 1 : index
        scf.for %arg4 = %c0_2 to %0 step %c1_3 {
          %1 = memref.load %arg1[%arg3, %arg4] : memref<?x60xi32>
          %2 = memref.load %arg1[%arg3, %arg2] : memref<?x60xi32>
          %3 = memref.load %arg1[%arg2, %arg4] : memref<?x60xi32>
          %4 = arith.addi %2, %3 : i32
          %5 = arith.cmpi slt, %1, %4 : i32
          %6 = arith.select %5, %1, %4 : i32
          memref.store %6, %arg1[%arg3, %arg4] : memref<?x60xi32>
        }
      }
    }
    return
  }
}

