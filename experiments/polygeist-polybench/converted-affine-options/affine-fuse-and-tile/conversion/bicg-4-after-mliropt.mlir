#map = affine_map<(d0) -> (d0 * -32 + 42, 32)>
#map1 = affine_map<(d0) -> (d0 * -32 + 38, 32)>
module {
  func.func @kernel_bicg(%arg0: i32, %arg1: i32, %arg2: memref<?x38xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    affine.for %arg7 = 0 to 2 {
      affine.for %arg8 = 0 to min #map(%arg7) {
        affine.store %cst, %arg4[%arg7 * 32 + %arg8] : memref<?xf64>
      }
    }
    affine.for %arg7 = 0 to 2 {
      affine.for %arg8 = 0 to min #map(%arg7) {
        affine.for %arg9 = 0 to 2 {
          affine.for %arg10 = 0 to min #map1(%arg9) {
            %0 = affine.load %arg4[%arg7 * 32 + %arg8] : memref<?xf64>
            %1 = affine.load %arg2[%arg7 * 32 + %arg8, %arg9 * 32 + %arg10] : memref<?x38xf64>
            %2 = affine.load %arg5[%arg9 * 32 + %arg10] : memref<?xf64>
            %3 = arith.mulf %1, %2 : f64
            %4 = arith.addf %0, %3 : f64
            affine.store %4, %arg4[%arg7 * 32 + %arg8] : memref<?xf64>
          }
        }
      }
    }
    affine.for %arg7 = 0 to 2 {
      affine.for %arg8 = 0 to min #map1(%arg7) {
        affine.store %cst, %arg3[%arg7 * 32 + %arg8] : memref<?xf64>
      }
    }
    affine.for %arg7 = 0 to 2 {
      affine.for %arg8 = 0 to min #map1(%arg7) {
        affine.for %arg9 = 0 to 2 {
          affine.for %arg10 = 0 to min #map(%arg9) {
            %0 = affine.load %arg3[%arg7 * 32 + %arg8] : memref<?xf64>
            %1 = affine.load %arg6[%arg9 * 32 + %arg10] : memref<?xf64>
            %2 = affine.load %arg2[%arg9 * 32 + %arg10, %arg7 * 32 + %arg8] : memref<?x38xf64>
            %3 = arith.mulf %1, %2 : f64
            %4 = arith.addf %0, %3 : f64
            affine.store %4, %arg3[%arg7 * 32 + %arg8] : memref<?xf64>
          }
        }
      }
    }
    return
  }
}

