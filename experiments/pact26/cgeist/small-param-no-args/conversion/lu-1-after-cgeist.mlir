#map = affine_map<(d0) -> (d0)>
module {
  func.func @kernel_lu(%arg0: i32, %arg1: memref<?x120xf64>) {
    %0 = arith.index_cast %arg0 : i32 to index
    affine.for %arg2 = 0 to %0 {
      affine.for %arg3 = 0 to #map(%arg2) {
        affine.for %arg4 = 0 to #map(%arg3) {
          %4 = affine.load %arg1[%arg2, %arg4] : memref<?x120xf64>
          %5 = affine.load %arg1[%arg4, %arg3] : memref<?x120xf64>
          %6 = arith.mulf %4, %5 : f64
          %7 = affine.load %arg1[%arg2, %arg3] : memref<?x120xf64>
          %8 = arith.subf %7, %6 : f64
          affine.store %8, %arg1[%arg2, %arg3] : memref<?x120xf64>
        }
        %1 = affine.load %arg1[%arg3, %arg3] : memref<?x120xf64>
        %2 = affine.load %arg1[%arg2, %arg3] : memref<?x120xf64>
        %3 = arith.divf %2, %1 : f64
        affine.store %3, %arg1[%arg2, %arg3] : memref<?x120xf64>
      }
      affine.for %arg3 = #map(%arg2) to %0 {
        affine.for %arg4 = 0 to #map(%arg2) {
          %1 = affine.load %arg1[%arg2, %arg4] : memref<?x120xf64>
          %2 = affine.load %arg1[%arg4, %arg3] : memref<?x120xf64>
          %3 = arith.mulf %1, %2 : f64
          %4 = affine.load %arg1[%arg2, %arg3] : memref<?x120xf64>
          %5 = arith.subf %4, %3 : f64
          affine.store %5, %arg1[%arg2, %arg3] : memref<?x120xf64>
        }
      }
    }
    return
  }
}
