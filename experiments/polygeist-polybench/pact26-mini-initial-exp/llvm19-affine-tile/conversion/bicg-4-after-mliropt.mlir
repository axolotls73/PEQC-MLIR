#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> (d0 + 32, 38)>
#map2 = affine_map<(d0) -> (d0 + 32, 42)>
module {
  func.func @kernel_bicg(%arg0: i32, %arg1: i32, %arg2: memref<?x38xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    affine.for %arg7 = 0 to 38 step 32 {
      affine.for %arg8 = #map(%arg7) to min #map1(%arg7) {
        affine.store %cst, %arg3[%arg8] : memref<?xf64>
      }
    }
    affine.for %arg7 = 0 to 42 step 32 {
      affine.for %arg8 = #map(%arg7) to min #map2(%arg7) {
        affine.store %cst, %arg4[%arg8] : memref<?xf64>
        affine.for %arg9 = 0 to 38 {
          %0 = affine.load %arg3[%arg9] : memref<?xf64>
          %1 = affine.load %arg6[%arg8] : memref<?xf64>
          %2 = affine.load %arg2[%arg8, %arg9] : memref<?x38xf64>
          %3 = arith.mulf %1, %2 : f64
          %4 = arith.addf %0, %3 : f64
          affine.store %4, %arg3[%arg9] : memref<?xf64>
          %5 = affine.load %arg4[%arg8] : memref<?xf64>
          %6 = affine.load %arg2[%arg8, %arg9] : memref<?x38xf64>
          %7 = affine.load %arg5[%arg9] : memref<?xf64>
          %8 = arith.mulf %6, %7 : f64
          %9 = arith.addf %5, %8 : f64
          affine.store %9, %arg4[%arg8] : memref<?xf64>
        }
      }
    }
    return
  }
}

