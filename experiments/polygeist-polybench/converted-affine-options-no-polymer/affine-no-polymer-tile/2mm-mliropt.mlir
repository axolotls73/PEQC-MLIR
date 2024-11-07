#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> (d0 + 1)>
module {
  func.func @kernel_2mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: f64, %arg5: f64, %arg6: memref<?x18xf64>, %arg7: memref<?x22xf64>, %arg8: memref<?x18xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x24xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    affine.for %arg11 = 0 to 16 {
      affine.for %arg12 = 0 to 18 {
        affine.for %arg13 = #map(%arg11) to #map1(%arg11) {
          affine.for %arg14 = #map(%arg12) to #map1(%arg12) {
            affine.store %cst, %arg6[%arg13, %arg14] : memref<?x18xf64>
            affine.for %arg15 = 0 to 22 {
              %0 = affine.load %arg7[%arg13, %arg15] : memref<?x22xf64>
              %1 = arith.mulf %arg4, %0 : f64
              %2 = affine.load %arg8[%arg15, %arg14] : memref<?x18xf64>
              %3 = arith.mulf %1, %2 : f64
              %4 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %5 = arith.addf %4, %3 : f64
              affine.store %5, %arg6[%arg13, %arg14] : memref<?x18xf64>
            }
          }
        }
      }
    }
    affine.for %arg11 = 0 to 16 {
      affine.for %arg12 = 0 to 24 {
        affine.for %arg13 = #map(%arg11) to #map1(%arg11) {
          affine.for %arg14 = #map(%arg12) to #map1(%arg12) {
            %0 = affine.load %arg10[%arg13, %arg14] : memref<?x24xf64>
            %1 = arith.mulf %0, %arg5 : f64
            affine.store %1, %arg10[%arg13, %arg14] : memref<?x24xf64>
            affine.for %arg15 = 0 to 18 {
              %2 = affine.load %arg6[%arg13, %arg15] : memref<?x18xf64>
              %3 = affine.load %arg9[%arg15, %arg14] : memref<?x24xf64>
              %4 = arith.mulf %2, %3 : f64
              %5 = affine.load %arg10[%arg13, %arg14] : memref<?x24xf64>
              %6 = arith.addf %5, %4 : f64
              affine.store %6, %arg10[%arg13, %arg14] : memref<?x24xf64>
            }
          }
        }
      }
    }
    return
  }
}

