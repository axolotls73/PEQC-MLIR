#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0)>
module {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %cst = arith.constant 1.000000e-01 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %cst_1 = arith.constant 1.000000e+00 : f64
    %alloca = memref.alloca() {scop.scratchpad} : memref<1xf64>
    affine.store %cst_1, %arg4[27, 27] : memref<?x28xf64>
    affine.for %arg7 = 0 to 27 {
      affine.for %arg8 = #map(%arg7) to 28 {
        affine.store %cst_0, %arg4[%arg7, %arg8] : memref<?x28xf64>
      }
    }
    affine.for %arg7 = 0 to 27 {
      affine.for %arg8 = #map1(%arg7) to #map(%arg7) {
        affine.store %cst_1, %arg4[%arg8, %arg8] : memref<?x28xf64>
      }
    }
    %0 = math.sqrt %arg2 : f64
    affine.store %0, %alloca[0] : memref<1xf64>
    affine.for %arg7 = 0 to 28 {
      affine.for %arg8 = #map1(%arg7) to #map(%arg7) {
        affine.store %cst_0, %arg6[%arg8] : memref<?xf64>
        affine.store %cst_0, %arg5[%arg8] : memref<?xf64>
      }
    }
    affine.for %arg7 = 0 to 32 {
      affine.for %arg8 = 0 to 28 {
        affine.for %arg9 = #map1(%arg7) to #map(%arg7) {
          affine.for %arg10 = #map1(%arg8) to #map(%arg8) {
            %1 = affine.load %arg5[%arg10] : memref<?xf64>
            %2 = affine.load %arg3[%arg9, %arg10] : memref<?x28xf64>
            %3 = arith.addf %1, %2 : f64
            affine.store %3, %arg5[%arg10] : memref<?xf64>
          }
        }
      }
    }
    affine.for %arg7 = 0 to 28 {
      affine.for %arg8 = #map1(%arg7) to #map(%arg7) {
        %1 = affine.load %arg5[%arg8] : memref<?xf64>
        %2 = arith.divf %1, %arg2 : f64
        affine.store %2, %arg5[%arg8] : memref<?xf64>
      }
    }
    affine.for %arg7 = 0 to 32 {
      affine.for %arg8 = 0 to 28 {
        affine.for %arg9 = #map1(%arg7) to #map(%arg7) {
          affine.for %arg10 = #map1(%arg8) to #map(%arg8) {
            %1 = affine.load %arg6[%arg10] : memref<?xf64>
            %2 = affine.load %arg3[%arg9, %arg10] : memref<?x28xf64>
            %3 = affine.load %arg5[%arg10] : memref<?xf64>
            %4 = arith.subf %2, %3 : f64
            %5 = arith.mulf %4, %4 : f64
            %6 = arith.addf %1, %5 : f64
            affine.store %6, %arg6[%arg10] : memref<?xf64>
            %7 = affine.load %arg3[%arg9, %arg10] : memref<?x28xf64>
            %8 = affine.load %arg5[%arg10] : memref<?xf64>
            %9 = arith.subf %7, %8 : f64
            affine.store %9, %arg3[%arg9, %arg10] : memref<?x28xf64>
          }
        }
      }
    }
    affine.for %arg7 = 0 to 28 {
      affine.for %arg8 = #map1(%arg7) to #map(%arg7) {
        %1 = affine.load %arg6[%arg8] : memref<?xf64>
        %2 = arith.divf %1, %arg2 : f64
        %3 = math.sqrt %2 : f64
        %4 = arith.cmpf ole, %3, %cst : f64
        %5 = arith.select %4, %cst_1, %3 : f64
        affine.store %5, %arg6[%arg8] : memref<?xf64>
      }
    }
    affine.for %arg7 = 0 to 32 {
      affine.for %arg8 = 0 to 28 {
        affine.for %arg9 = #map1(%arg7) to #map(%arg7) {
          affine.for %arg10 = #map1(%arg8) to #map(%arg8) {
            %1 = affine.load %arg3[%arg9, %arg10] : memref<?x28xf64>
            %2 = affine.load %alloca[0] : memref<1xf64>
            %3 = affine.load %arg6[%arg10] : memref<?xf64>
            %4 = arith.mulf %2, %3 : f64
            %5 = arith.divf %1, %4 : f64
            affine.store %5, %arg3[%arg9, %arg10] : memref<?x28xf64>
          }
        }
      }
    }
    affine.for %arg7 = 0 to 27 {
      affine.for %arg8 = 0 to 32 {
        affine.for %arg9 = #map(%arg7) to 28 {
          %1 = affine.load %arg4[%arg7, %arg9] : memref<?x28xf64>
          %2 = affine.load %arg3[%arg8, %arg7] : memref<?x28xf64>
          %3 = affine.load %arg3[%arg8, %arg9] : memref<?x28xf64>
          %4 = arith.mulf %2, %3 : f64
          %5 = arith.addf %1, %4 : f64
          affine.store %5, %arg4[%arg7, %arg9] : memref<?x28xf64>
        }
      }
    }
    affine.for %arg7 = 0 to 27 {
      affine.for %arg8 = #map(%arg7) to 28 {
        %1 = affine.load %arg4[%arg7, %arg8] : memref<?x28xf64>
        affine.store %1, %arg4[%arg8, %arg7] : memref<?x28xf64>
      }
    }
    return
  }
}

