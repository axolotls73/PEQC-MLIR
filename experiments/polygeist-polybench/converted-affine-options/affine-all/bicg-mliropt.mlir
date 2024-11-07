#map = affine_map<(d0) -> (d0 * -32 + 38, 32)>
#map1 = affine_map<(d0, d1) -> (d0 * 32 + d1)>
#map2 = affine_map<(d0) -> (d0 * -32 + 42, 32)>
module {
  func.func @kernel_bicg(%arg0: i32, %arg1: i32, %arg2: memref<?x38xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    affine.parallel (%arg7) = (0) to (2) {
      affine.parallel (%arg8) = (%arg7 * 32) to (min(42, %arg7 * 32 + 32)) {
        affine.store %cst, %arg4[%arg8] : memref<?xf64>
      }
    }
    affine.parallel (%arg7) = (0) to (2) {
      affine.for %arg8 = 0 to 2 {
        affine.parallel (%arg9) = (%arg7 * 32) to (min(42, %arg7 * 32 + 32)) {
          affine.for %arg10 = 0 to min #map(%arg8) {
            %0 = affine.apply #map1(%arg8, %arg10)
            %1 = affine.load %arg4[%arg9] : memref<?xf64>
            %2 = affine.load %arg2[%arg9, %0] : memref<?x38xf64>
            %3 = affine.load %arg5[%0] : memref<?xf64>
            %4 = arith.mulf %2, %3 : f64
            %5 = arith.addf %1, %4 : f64
            affine.store %5, %arg4[%arg9] : memref<?xf64>
          }
        }
      }
    }
    affine.parallel (%arg7) = (0) to (2) {
      affine.parallel (%arg8) = (%arg7 * 32) to (min(38, %arg7 * 32 + 32)) {
        affine.store %cst, %arg3[%arg8] : memref<?xf64>
      }
    }
    affine.parallel (%arg7) = (0) to (2) {
      affine.for %arg8 = 0 to 2 {
        affine.for %arg9 = 0 to min #map2(%arg8) {
          %0 = affine.apply #map1(%arg8, %arg9)
          affine.parallel (%arg10) = (%arg7 * 32) to (min(38, %arg7 * 32 + 32)) {
            %1 = affine.load %arg3[%arg10] : memref<?xf64>
            %2 = affine.load %arg6[%0] : memref<?xf64>
            %3 = affine.load %arg2[%0, %arg10] : memref<?x38xf64>
            %4 = arith.mulf %2, %3 : f64
            %5 = arith.addf %1, %4 : f64
            affine.store %5, %arg3[%arg10] : memref<?xf64>
          }
        }
      }
    }
    return
  }
}

