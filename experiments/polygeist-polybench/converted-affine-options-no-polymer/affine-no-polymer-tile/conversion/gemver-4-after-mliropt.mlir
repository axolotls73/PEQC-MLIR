#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> (d0 + 1)>
module {
  func.func @kernel_gemver(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x40xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>, %arg8: memref<?xf64>, %arg9: memref<?xf64>, %arg10: memref<?xf64>, %arg11: memref<?xf64>) {
    affine.for %arg12 = 0 to 40 {
      affine.for %arg13 = 0 to 40 {
        affine.for %arg14 = #map(%arg12) to #map1(%arg12) {
          affine.for %arg15 = #map(%arg13) to #map1(%arg13) {
            %0 = affine.load %arg3[%arg14, %arg15] : memref<?x40xf64>
            %1 = affine.load %arg4[%arg14] : memref<?xf64>
            %2 = affine.load %arg5[%arg15] : memref<?xf64>
            %3 = arith.mulf %1, %2 : f64
            %4 = arith.addf %0, %3 : f64
            %5 = affine.load %arg6[%arg14] : memref<?xf64>
            %6 = affine.load %arg7[%arg15] : memref<?xf64>
            %7 = arith.mulf %5, %6 : f64
            %8 = arith.addf %4, %7 : f64
            affine.store %8, %arg3[%arg14, %arg15] : memref<?x40xf64>
          }
        }
      }
    }
    affine.for %arg12 = 0 to 40 {
      affine.for %arg13 = 0 to 40 {
        affine.for %arg14 = #map(%arg12) to #map1(%arg12) {
          affine.for %arg15 = #map(%arg13) to #map1(%arg13) {
            %0 = affine.load %arg9[%arg14] : memref<?xf64>
            %1 = affine.load %arg3[%arg15, %arg14] : memref<?x40xf64>
            %2 = arith.mulf %arg2, %1 : f64
            %3 = affine.load %arg10[%arg15] : memref<?xf64>
            %4 = arith.mulf %2, %3 : f64
            %5 = arith.addf %0, %4 : f64
            affine.store %5, %arg9[%arg14] : memref<?xf64>
          }
        }
      }
    }
    affine.for %arg12 = 0 to 40 {
      affine.for %arg13 = #map(%arg12) to #map1(%arg12) {
        %0 = affine.load %arg9[%arg13] : memref<?xf64>
        %1 = affine.load %arg11[%arg13] : memref<?xf64>
        %2 = arith.addf %0, %1 : f64
        affine.store %2, %arg9[%arg13] : memref<?xf64>
      }
    }
    affine.for %arg12 = 0 to 40 {
      affine.for %arg13 = 0 to 40 {
        affine.for %arg14 = #map(%arg12) to #map1(%arg12) {
          affine.for %arg15 = #map(%arg13) to #map1(%arg13) {
            %0 = affine.load %arg8[%arg14] : memref<?xf64>
            %1 = affine.load %arg3[%arg14, %arg15] : memref<?x40xf64>
            %2 = arith.mulf %arg1, %1 : f64
            %3 = affine.load %arg9[%arg15] : memref<?xf64>
            %4 = arith.mulf %2, %3 : f64
            %5 = arith.addf %0, %4 : f64
            affine.store %5, %arg8[%arg14] : memref<?xf64>
          }
        }
      }
    }
    return
  }
}

