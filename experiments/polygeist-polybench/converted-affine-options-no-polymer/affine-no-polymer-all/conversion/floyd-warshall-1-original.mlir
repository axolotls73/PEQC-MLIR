module {
  func.func @kernel_floyd_warshall(%arg0: i32, %arg1: memref<?x60xi32>) {
    affine.for %arg2 = 0 to 60 {
      affine.for %arg3 = 0 to 60 {
        affine.for %arg4 = 0 to 60 {
          %0 = affine.load %arg1[%arg3, %arg4] : memref<?x60xi32>
          %1 = affine.load %arg1[%arg3, %arg2] : memref<?x60xi32>
          %2 = affine.load %arg1[%arg2, %arg4] : memref<?x60xi32>
          %3 = arith.addi %1, %2 : i32
          %4 = arith.cmpi slt, %0, %3 : i32
          %5 = arith.select %4, %0, %3 : i32
          affine.store %5, %arg1[%arg3, %arg4] : memref<?x60xi32>
        }
      }
    }
    return
  }
}
