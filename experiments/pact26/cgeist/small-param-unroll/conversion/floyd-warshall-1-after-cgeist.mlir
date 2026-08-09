module {
  func.func @kernel_floyd_warshall(%arg0: i32, %arg1: memref<?x180xi32>) {
    %0 = arith.index_cast %arg0 : i32 to index
    affine.for %arg2 = 0 to %0 {
      affine.for %arg3 = 0 to %0 {
        affine.for %arg4 = 0 to %0 {
          %1 = affine.load %arg1[%arg3, %arg4] : memref<?x180xi32>
          %2 = affine.load %arg1[%arg3, %arg2] : memref<?x180xi32>
          %3 = affine.load %arg1[%arg2, %arg4] : memref<?x180xi32>
          %4 = arith.addi %2, %3 : i32
          %5 = arith.cmpi slt, %1, %4 : i32
          %6 = arith.select %5, %1, %4 : i32
          affine.store %6, %arg1[%arg3, %arg4] : memref<?x180xi32>
        }
      }
    }
    return
  }
}
