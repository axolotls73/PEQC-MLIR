#map = affine_map<(d0) -> (d0 + 1)>
module {
  func.func @kernel_trmm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x20xf64>, %arg4: memref<?x30xf64>) {
    affine.for %arg5 = 0 to 19 {
      affine.for %arg6 = #map(%arg5) to 20 {
        affine.for %arg7 = 0 to 30 {
          %0 = affine.load %arg4[%arg5, %arg7] : memref<?x30xf64>
          %1 = affine.load %arg3[%arg6, %arg5] : memref<?x20xf64>
          %2 = affine.load %arg4[%arg6, %arg7] : memref<?x30xf64>
          %3 = arith.mulf %1, %2 : f64
          %4 = arith.addf %0, %3 : f64
          affine.store %4, %arg4[%arg5, %arg7] : memref<?x30xf64>
        }
      }
    }
    affine.for %arg5 = 0 to 20 {
      affine.for %arg6 = 0 to 30 {
        %0 = affine.load %arg4[%arg5, %arg6] : memref<?x30xf64>
        %1 = arith.mulf %arg2, %0 : f64
        affine.store %1, %arg4[%arg5, %arg6] : memref<?x30xf64>
      }
    }
    return
  }
}

