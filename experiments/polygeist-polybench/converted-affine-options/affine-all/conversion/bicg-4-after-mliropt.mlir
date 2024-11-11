#map = affine_map<(d0) -> (d0 * -32 + 42, 32)>
#map1 = affine_map<(d0, d1) -> (d0 * 32 + d1)>
#map2 = affine_map<(d0) -> (d0 * -32 + 38, 32)>
module {
  func.func @kernel_bicg(%arg0: i32, %arg1: i32, %arg2: memref<?x38xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    affine.parallel (%arg7) = (0) to (2) {
      affine.for %arg8 = 0 to min #map(%arg7) {
        %0 = affine.apply #map1(%arg7, %arg8)
        affine.store %cst, %arg4[%0] : memref<?xf64>
      }
    }
    affine.parallel (%arg7) = (0) to (2) {
      affine.for %arg8 = 0 to 2 {
        affine.for %arg9 = 0 to min #map(%arg7) {
          %0 = affine.apply #map1(%arg7, %arg9)
          affine.for %arg10 = 0 to min #map2(%arg8) {
            %1 = affine.apply #map1(%arg8, %arg10)
            %2 = affine.load %arg4[%0] : memref<?xf64>
            %3 = affine.load %arg2[%0, %1] : memref<?x38xf64>
            %4 = affine.load %arg5[%1] : memref<?xf64>
            %5 = arith.mulf %3, %4 : f64
            %6 = arith.addf %2, %5 : f64
            affine.store %6, %arg4[%0] : memref<?xf64>
          }
        }
      }
    }
    affine.parallel (%arg7) = (0) to (2) {
      affine.for %arg8 = 0 to min #map2(%arg7) {
        %0 = affine.apply #map1(%arg7, %arg8)
        affine.store %cst, %arg3[%0] : memref<?xf64>
      }
    }
    affine.parallel (%arg7) = (0) to (2) {
      affine.for %arg8 = 0 to 2 {
        affine.for %arg9 = 0 to min #map(%arg8) {
          %0 = affine.apply #map1(%arg8, %arg9)
          %1 = affine.load %arg6[%0] : memref<?xf64>
          affine.for %arg10 = 0 to min #map2(%arg7) {
            %2 = affine.apply #map1(%arg7, %arg10)
            %3 = affine.load %arg3[%2] : memref<?xf64>
            %4 = affine.load %arg2[%0, %2] : memref<?x38xf64>
            %5 = arith.mulf %1, %4 : f64
            %6 = arith.addf %3, %5 : f64
            affine.store %6, %arg3[%2] : memref<?xf64>
          }
        }
      }
    }
    return
  }
}

