#map = affine_map<(d0) -> (d0 * -32 + 38, 32)>
#map1 = affine_map<(d0, d1) -> (d0 * 32 + d1)>
#map2 = affine_map<(d0) -> (d0 * -32 + 42, 32)>
module {
  func.func @kernel_atax(%arg0: i32, %arg1: i32, %arg2: memref<?x42xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    affine.for %arg6 = 0 to 2 {
      affine.for %arg7 = 0 to min #map(%arg6) {
        %0 = affine.apply #map1(%arg6, %arg7)
        affine.store %cst, %arg5[%0] : memref<?xf64>
      }
    }
    affine.for %arg6 = 0 to 2 {
      affine.for %arg7 = 0 to 2 {
        affine.for %arg8 = 0 to min #map(%arg6) {
          %0 = affine.apply #map1(%arg6, %arg8)
          affine.for %arg9 = 0 to min #map2(%arg7) {
            %1 = affine.apply #map1(%arg7, %arg9)
            %2 = affine.load %arg5[%0] : memref<?xf64>
            %3 = affine.load %arg2[%0, %1] : memref<?x42xf64>
            %4 = affine.load %arg3[%1] : memref<?xf64>
            %5 = arith.mulf %3, %4 : f64
            %6 = arith.addf %2, %5 : f64
            affine.store %6, %arg5[%0] : memref<?xf64>
          }
        }
      }
    }
    affine.for %arg6 = 0 to 2 {
      affine.for %arg7 = 0 to min #map2(%arg6) {
        %0 = affine.apply #map1(%arg6, %arg7)
        affine.store %cst, %arg4[%0] : memref<?xf64>
      }
    }
    affine.for %arg6 = 0 to 2 {
      affine.for %arg7 = 0 to 2 {
        affine.for %arg8 = 0 to min #map(%arg7) {
          %0 = affine.apply #map1(%arg7, %arg8)
          affine.for %arg9 = 0 to min #map2(%arg6) {
            %1 = affine.apply #map1(%arg6, %arg9)
            %2 = affine.load %arg4[%1] : memref<?xf64>
            %3 = affine.load %arg2[%0, %1] : memref<?x42xf64>
            %4 = affine.load %arg5[%0] : memref<?xf64>
            %5 = arith.mulf %3, %4 : f64
            %6 = arith.addf %2, %5 : f64
            affine.store %6, %arg4[%1] : memref<?xf64>
          }
        }
      }
    }
    return
  }
}

