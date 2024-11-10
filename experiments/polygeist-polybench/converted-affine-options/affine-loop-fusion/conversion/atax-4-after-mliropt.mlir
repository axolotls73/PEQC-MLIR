#map = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0) -> (38, d0 * 32 + 32)>
#map2 = affine_map<(d0) -> (42, d0 * 32 + 32)>
module {
  func.func @kernel_atax(%arg0: i32, %arg1: i32, %arg2: memref<?x42xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    affine.for %arg6 = 0 to 2 {
      affine.for %arg7 = #map(%arg6) to min #map1(%arg6) {
        affine.store %cst, %arg5[%arg7] : memref<?xf64>
      }
    }
    affine.for %arg6 = 0 to 2 {
      affine.for %arg7 = #map(%arg6) to min #map1(%arg6) {
        affine.for %arg8 = 0 to 2 {
          affine.for %arg9 = #map(%arg8) to min #map2(%arg8) {
            %0 = affine.load %arg5[%arg7] : memref<?xf64>
            %1 = affine.load %arg2[%arg7, %arg9] : memref<?x42xf64>
            %2 = affine.load %arg3[%arg9] : memref<?xf64>
            %3 = arith.mulf %1, %2 : f64
            %4 = arith.addf %0, %3 : f64
            affine.store %4, %arg5[%arg7] : memref<?xf64>
          }
        }
      }
    }
    affine.for %arg6 = 0 to 2 {
      affine.for %arg7 = #map(%arg6) to min #map2(%arg6) {
        affine.store %cst, %arg4[%arg7] : memref<?xf64>
      }
    }
    affine.for %arg6 = 0 to 2 {
      affine.for %arg7 = #map(%arg6) to min #map2(%arg6) {
        affine.for %arg8 = 0 to 2 {
          affine.for %arg9 = #map(%arg8) to min #map1(%arg8) {
            %0 = affine.load %arg4[%arg7] : memref<?xf64>
            %1 = affine.load %arg2[%arg9, %arg7] : memref<?x42xf64>
            %2 = affine.load %arg5[%arg9] : memref<?xf64>
            %3 = arith.mulf %1, %2 : f64
            %4 = arith.addf %0, %3 : f64
            affine.store %4, %arg4[%arg7] : memref<?xf64>
          }
        }
      }
    }
    return
  }
}

