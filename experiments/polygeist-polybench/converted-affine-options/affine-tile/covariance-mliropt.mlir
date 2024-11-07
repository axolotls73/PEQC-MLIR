#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> (d0 + 1)>
#map2 = affine_map<(d0) -> (0, (d0 * 16 - 13) ceildiv 13)>
#map3 = affine_map<(d0) -> ((d0 * 32 + 31) floordiv 27 + 1)>
#map4 = affine_map<(d0, d1) -> (d0 * 32, d1 * 27)>
#map5 = affine_map<(d0, d1) -> (d0 * 32 + 32, d1 * 26 + 28)>
module {
  func.func @kernel_covariance(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %alloca = memref.alloca() : memref<1xf64>
    %alloca_1 = memref.alloca() {scop.scratchpad} : memref<1xf64>
    affine.for %arg6 = 0 to 28 {
      affine.for %arg7 = #map(%arg6) to 28 {
        affine.store %cst_0, %arg4[%arg6, %arg7] : memref<?x28xf64>
      }
    }
    %0 = arith.subf %arg2, %cst : f64
    affine.store %0, %alloca_1[0] : memref<1xf64>
    affine.for %arg6 = 0 to 28 {
      affine.for %arg7 = #map(%arg6) to #map1(%arg6) {
        affine.store %cst_0, %arg5[%arg7] : memref<?xf64>
      }
    }
    affine.for %arg6 = 0 to 32 {
      affine.for %arg7 = 0 to 28 {
        affine.for %arg8 = #map(%arg6) to #map1(%arg6) {
          affine.for %arg9 = #map(%arg7) to #map1(%arg7) {
            %1 = affine.load %arg5[%arg9] : memref<?xf64>
            %2 = affine.load %arg3[%arg8, %arg9] : memref<?x28xf64>
            %3 = arith.addf %1, %2 : f64
            affine.store %3, %arg5[%arg9] : memref<?xf64>
          }
        }
      }
    }
    affine.for %arg6 = 0 to 28 {
      affine.for %arg7 = #map(%arg6) to #map1(%arg6) {
        %1 = affine.load %arg5[%arg7] : memref<?xf64>
        %2 = arith.divf %1, %arg2 : f64
        affine.store %2, %arg5[%arg7] : memref<?xf64>
      }
    }
    affine.for %arg6 = 0 to 32 {
      affine.for %arg7 = 0 to 28 {
        affine.for %arg8 = #map(%arg6) to #map1(%arg6) {
          affine.for %arg9 = #map(%arg7) to #map1(%arg7) {
            %1 = affine.load %arg3[%arg8, %arg9] : memref<?x28xf64>
            %2 = affine.load %arg5[%arg9] : memref<?xf64>
            %3 = arith.subf %1, %2 : f64
            affine.store %3, %arg3[%arg8, %arg9] : memref<?x28xf64>
          }
        }
      }
    }
    affine.for %arg6 = 0 to 28 {
      affine.for %arg7 = 0 to 32 {
        affine.for %arg8 = #map(%arg6) to 28 {
          %1 = affine.load %arg4[%arg6, %arg8] : memref<?x28xf64>
          %2 = affine.load %arg3[%arg7, %arg6] : memref<?x28xf64>
          %3 = affine.load %arg3[%arg7, %arg8] : memref<?x28xf64>
          %4 = arith.mulf %2, %3 : f64
          %5 = arith.addf %1, %4 : f64
          affine.store %5, %arg4[%arg6, %arg8] : memref<?x28xf64>
        }
      }
    }
    affine.for %arg6 = 0 to 23 {
      affine.for %arg7 = max #map2(%arg6) to #map3(%arg6) {
        affine.for %arg8 = max #map4(%arg6, %arg7) to min #map5(%arg6, %arg7) {
          %1 = affine.load %arg4[%arg7, %arg8 * -26 + %arg7] : memref<?x28xf64>
          %2 = affine.load %alloca_1[0] : memref<1xf64>
          %3 = arith.divf %1, %2 : f64
          affine.store %3, %alloca[0] : memref<1xf64>
          affine.store %3, %arg4[%arg7, %arg8 * -26 + %arg7] : memref<?x28xf64>
          %4 = affine.load %alloca[0] : memref<1xf64>
          affine.store %4, %arg4[%arg8 * -26 + %arg7, %arg7] : memref<?x28xf64>
        }
      }
    }
    return
  }
}

