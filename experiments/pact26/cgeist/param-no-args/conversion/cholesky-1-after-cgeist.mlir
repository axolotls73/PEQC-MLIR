#map = affine_map<(d0) -> (d0)>
module {
  func.func @kernel_cholesky(%arg0: i32, %arg1: memref<?x40xf64>) {
    %0 = arith.index_cast %arg0 : i32 to index
    affine.for %arg2 = 0 to %0 {
      affine.for %arg3 = 0 to #map(%arg2) {
        affine.for %arg4 = 0 to #map(%arg3) {
          %6 = affine.load %arg1[%arg2, %arg4] : memref<?x40xf64>
          %7 = affine.load %arg1[%arg3, %arg4] : memref<?x40xf64>
          %8 = arith.mulf %6, %7 : f64
          %9 = affine.load %arg1[%arg2, %arg3] : memref<?x40xf64>
          %10 = arith.subf %9, %8 : f64
          affine.store %10, %arg1[%arg2, %arg3] : memref<?x40xf64>
        }
        %3 = affine.load %arg1[%arg3, %arg3] : memref<?x40xf64>
        %4 = affine.load %arg1[%arg2, %arg3] : memref<?x40xf64>
        %5 = arith.divf %4, %3 : f64
        affine.store %5, %arg1[%arg2, %arg3] : memref<?x40xf64>
      }
      affine.for %arg3 = 0 to #map(%arg2) {
        %3 = affine.load %arg1[%arg2, %arg3] : memref<?x40xf64>
        %4 = arith.mulf %3, %3 : f64
        %5 = affine.load %arg1[%arg2, %arg2] : memref<?x40xf64>
        %6 = arith.subf %5, %4 : f64
        affine.store %6, %arg1[%arg2, %arg2] : memref<?x40xf64>
      }
      %1 = affine.load %arg1[%arg2, %arg2] : memref<?x40xf64>
      %2 = math.sqrt %1 : f64
      affine.store %2, %arg1[%arg2, %arg2] : memref<?x40xf64>
    }
    return
  }
}
