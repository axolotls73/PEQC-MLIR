#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> (d0 + 32, 40)>
module {
  func.func @kernel_trisolv(%arg0: i32, %arg1: memref<?x40xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    affine.for %arg4 = 0 to 40 step 32 {
      affine.for %arg5 = #map(%arg4) to min #map1(%arg4) {
        %0 = affine.load %arg3[%arg5] : memref<?xf64>
        affine.store %0, %arg2[%arg5] : memref<?xf64>
        affine.for %arg6 = 0 to #map(%arg5) {
          %4 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
          %5 = affine.load %arg2[%arg6] : memref<?xf64>
          %6 = arith.mulf %4, %5 : f64
          %7 = affine.load %arg2[%arg5] : memref<?xf64>
          %8 = arith.subf %7, %6 : f64
          affine.store %8, %arg2[%arg5] : memref<?xf64>
        }
        %1 = affine.load %arg2[%arg5] : memref<?xf64>
        %2 = affine.load %arg1[%arg5, %arg5] : memref<?x40xf64>
        %3 = arith.divf %1, %2 : f64
        affine.store %3, %arg2[%arg5] : memref<?xf64>
      }
    }
    return
  }
}

