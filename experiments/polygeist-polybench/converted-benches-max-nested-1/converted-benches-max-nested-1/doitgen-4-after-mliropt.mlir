#map = affine_map<(d0) -> (0, (d0 * 32 - 7) ceildiv 7)>
#map1 = affine_map<(d0) -> (10, (d0 * 32 + 31) floordiv 7 + 1)>
#map2 = affine_map<(d0, d1) -> (d0 * 32, d1 * 7)>
#map3 = affine_map<(d0, d1) -> (d0 * 32 + 32, d1 * 7 + 8)>
module {
  func.func @kernel_doitgen(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x8x12xf64>, %arg4: memref<?x12xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    affine.for %arg6 = 0 to 3 {
      affine.for %arg7 = max #map(%arg6) to min #map1(%arg6) {
        affine.for %arg8 = max #map2(%arg6, %arg7) to min #map3(%arg6, %arg7) {
          affine.parallel (%arg9) = (0) to (12) {
            affine.store %cst, %arg5[%arg9] : memref<?xf64>
          }
          affine.for %arg9 = 0 to 12 {
            affine.parallel (%arg10) = (0) to (12) {
              %0 = affine.load %arg5[%arg10] : memref<?xf64>
              %1 = affine.load %arg3[%arg7, %arg7 * -7 + %arg8, %arg9] : memref<?x8x12xf64>
              %2 = affine.load %arg4[%arg9, %arg10] : memref<?x12xf64>
              %3 = arith.mulf %1, %2 : f64
              %4 = arith.addf %0, %3 : f64
              affine.store %4, %arg5[%arg10] : memref<?xf64>
            }
          }
          affine.parallel (%arg9) = (0) to (12) {
            %0 = affine.load %arg5[%arg9] : memref<?xf64>
            affine.store %0, %arg3[%arg7, %arg7 * -7 + %arg8, %arg9] : memref<?x8x12xf64>
          }
        }
      }
    }
    return
  }
}

