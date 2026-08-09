#map = affine_map<(d0) -> (d0 + 1)>
module {
  func.func @kernel_trmm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x20xf64>, %arg4: memref<?x30xf64>) {
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.index_cast %arg0 : i32 to index
    affine.for %arg5 = 0 to %1 {
      affine.for %arg6 = 0 to %0 {
        affine.for %arg7 = #map(%arg5) to %1 {
          %4 = affine.load %arg3[%arg7, %arg5] : memref<?x20xf64>
          %5 = affine.load %arg4[%arg7, %arg6] : memref<?x30xf64>
          %6 = arith.mulf %4, %5 : f64
          %7 = affine.load %arg4[%arg5, %arg6] : memref<?x30xf64>
          %8 = arith.addf %7, %6 : f64
          affine.store %8, %arg4[%arg5, %arg6] : memref<?x30xf64>
        }
        %2 = affine.load %arg4[%arg5, %arg6] : memref<?x30xf64>
        %3 = arith.mulf %arg2, %2 : f64
        affine.store %3, %arg4[%arg5, %arg6] : memref<?x30xf64>
      }
    }
    return
  }
}
