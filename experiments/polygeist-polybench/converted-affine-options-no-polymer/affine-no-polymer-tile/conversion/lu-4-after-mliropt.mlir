#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> (d0 + 4)>
module {
  func.func @kernel_lu(%arg0: i32, %arg1: memref<?x40xf64>) {
    affine.for %arg2 = 0 to 40 step 4 {
      affine.for %arg3 = #map(%arg2) to #map1(%arg2) {
        affine.for %arg4 = 0 to #map(%arg3) {
          affine.for %arg5 = 0 to #map(%arg4) {
            %3 = affine.load %arg1[%arg3, %arg5] : memref<?x40xf64>
            %4 = affine.load %arg1[%arg5, %arg4] : memref<?x40xf64>
            %5 = arith.mulf %3, %4 : f64
            %6 = affine.load %arg1[%arg3, %arg4] : memref<?x40xf64>
            %7 = arith.subf %6, %5 : f64
            affine.store %7, %arg1[%arg3, %arg4] : memref<?x40xf64>
          }
          %0 = affine.load %arg1[%arg4, %arg4] : memref<?x40xf64>
          %1 = affine.load %arg1[%arg3, %arg4] : memref<?x40xf64>
          %2 = arith.divf %1, %0 : f64
          affine.store %2, %arg1[%arg3, %arg4] : memref<?x40xf64>
        }
        affine.for %arg4 = #map(%arg3) to 40 {
          affine.for %arg5 = 0 to #map(%arg3) {
            %0 = affine.load %arg1[%arg3, %arg5] : memref<?x40xf64>
            %1 = affine.load %arg1[%arg5, %arg4] : memref<?x40xf64>
            %2 = arith.mulf %0, %1 : f64
            %3 = affine.load %arg1[%arg3, %arg4] : memref<?x40xf64>
            %4 = arith.subf %3, %2 : f64
            affine.store %4, %arg1[%arg3, %arg4] : memref<?x40xf64>
          }
        }
      }
    }
    return
  }
}

