#map = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0) -> (42, d0 * 32 + 32)>
#map2 = affine_map<(d0) -> (38, d0 * 32 + 32)>
module {
  func.func @kernel_atax(%arg0: i32, %arg1: i32, %arg2: memref<?x42xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    affine.parallel (%arg6) = (0) to (2) {
      affine.parallel (%arg7) = (%arg6 * 32) to (min(38, %arg6 * 32 + 32)) {
        affine.store %cst, %arg5[%arg7] : memref<?xf64>
      }
    }
    affine.parallel (%arg6) = (0) to (2) {
      affine.for %arg7 = 0 to 2 {
        affine.parallel (%arg8) = (%arg6 * 32) to (min(38, %arg6 * 32 + 32)) {
          affine.for %arg9 = #map(%arg7) to min #map1(%arg7) {
            %0 = affine.load %arg5[%arg8] : memref<?xf64>
            %1 = affine.load %arg2[%arg8, %arg9] : memref<?x42xf64>
            %2 = affine.load %arg3[%arg9] : memref<?xf64>
            %3 = arith.mulf %1, %2 : f64
            %4 = arith.addf %0, %3 : f64
            affine.store %4, %arg5[%arg8] : memref<?xf64>
          }
        }
      }
    }
    affine.parallel (%arg6) = (0) to (2) {
      affine.parallel (%arg7) = (%arg6 * 32) to (min(42, %arg6 * 32 + 32)) {
        affine.store %cst, %arg4[%arg7] : memref<?xf64>
      }
    }
    affine.parallel (%arg6) = (0) to (2) {
      affine.for %arg7 = 0 to 2 {
        affine.for %arg8 = #map(%arg7) to min #map2(%arg7) {
          affine.parallel (%arg9) = (%arg6 * 32) to (min(42, %arg6 * 32 + 32)) {
            %0 = affine.load %arg4[%arg9] : memref<?xf64>
            %1 = affine.load %arg2[%arg8, %arg9] : memref<?x42xf64>
            %2 = affine.load %arg5[%arg8] : memref<?xf64>
            %3 = arith.mulf %1, %2 : f64
            %4 = arith.addf %0, %3 : f64
            affine.store %4, %arg4[%arg9] : memref<?xf64>
          }
        }
      }
    }
    return
  }
}

