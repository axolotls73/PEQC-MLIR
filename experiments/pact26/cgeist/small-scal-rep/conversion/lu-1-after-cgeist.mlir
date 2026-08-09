#map = affine_map<(d0) -> (d0)>
module {
  func.func @kernel_lu(%arg0: i32, %arg1: memref<?x120xf64>) {
    affine.for %arg2 = 0 to 120 {
      affine.for %arg3 = 0 to #map(%arg2) {
        affine.for %arg4 = 0 to #map(%arg3) {
          %3 = affine.load %arg1[%arg2, %arg4] : memref<?x120xf64>
          %4 = affine.load %arg1[%arg4, %arg3] : memref<?x120xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = affine.load %arg1[%arg2, %arg3] : memref<?x120xf64>
          %7 = arith.subf %6, %5 : f64
          affine.store %7, %arg1[%arg2, %arg3] : memref<?x120xf64>
        }
        %0 = affine.load %arg1[%arg3, %arg3] : memref<?x120xf64>
        %1 = affine.load %arg1[%arg2, %arg3] : memref<?x120xf64>
        %2 = arith.divf %1, %0 : f64
        affine.store %2, %arg1[%arg2, %arg3] : memref<?x120xf64>
      }
      affine.for %arg3 = #map(%arg2) to 120 {
        affine.for %arg4 = 0 to #map(%arg2) {
          %0 = affine.load %arg1[%arg2, %arg4] : memref<?x120xf64>
          %1 = affine.load %arg1[%arg4, %arg3] : memref<?x120xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = affine.load %arg1[%arg2, %arg3] : memref<?x120xf64>
          %4 = arith.subf %3, %2 : f64
          affine.store %4, %arg1[%arg2, %arg3] : memref<?x120xf64>
        }
      }
    }
    return
  }
}
