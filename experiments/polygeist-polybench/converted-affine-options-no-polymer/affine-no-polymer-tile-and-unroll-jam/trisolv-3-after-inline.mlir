#map = affine_map<(d0) -> (d0)>
module {
  func.func @kernel_trisolv(%arg0: i32, %arg1: memref<?x40xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    affine.for %arg4 = 0 to 40 {
      %0 = affine.load %arg3[%arg4] : memref<?xf64>
      affine.store %0, %arg2[%arg4] : memref<?xf64>
      affine.for %arg5 = 0 to #map(%arg4) {
        %4 = affine.load %arg1[%arg4, %arg5] : memref<?x40xf64>
        %5 = affine.load %arg2[%arg5] : memref<?xf64>
        %6 = arith.mulf %4, %5 : f64
        %7 = affine.load %arg2[%arg4] : memref<?xf64>
        %8 = arith.subf %7, %6 : f64
        affine.store %8, %arg2[%arg4] : memref<?xf64>
      }
      %1 = affine.load %arg2[%arg4] : memref<?xf64>
      %2 = affine.load %arg1[%arg4, %arg4] : memref<?x40xf64>
      %3 = arith.divf %1, %2 : f64
      affine.store %3, %arg2[%arg4] : memref<?xf64>
    }
    return
  }
}

