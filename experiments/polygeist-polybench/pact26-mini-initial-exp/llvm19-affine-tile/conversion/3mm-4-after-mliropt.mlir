#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> (d0 + 16)>
#map2 = affine_map<(d0) -> (d0 + 18)>
#map3 = affine_map<(d0) -> (d0 + 22)>
module {
  func.func @kernel_3mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: memref<?x18xf64>, %arg6: memref<?x20xf64>, %arg7: memref<?x18xf64>, %arg8: memref<?x22xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x22xf64>, %arg11: memref<?x22xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    affine.for %arg12 = 0 to 16 step 32 {
      affine.for %arg13 = 0 to 18 step 32 {
        affine.for %arg14 = #map(%arg12) to #map1(%arg12) {
          affine.for %arg15 = #map(%arg13) to #map2(%arg13) {
            affine.store %cst, %arg5[%arg14, %arg15] : memref<?x18xf64>
            affine.for %arg16 = 0 to 20 {
              %0 = affine.load %arg6[%arg14, %arg16] : memref<?x20xf64>
              %1 = affine.load %arg7[%arg16, %arg15] : memref<?x18xf64>
              %2 = arith.mulf %0, %1 : f64
              %3 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %4 = arith.addf %3, %2 : f64
              affine.store %4, %arg5[%arg14, %arg15] : memref<?x18xf64>
            }
          }
        }
      }
    }
    affine.for %arg12 = 0 to 18 step 32 {
      affine.for %arg13 = 0 to 22 step 32 {
        affine.for %arg14 = #map(%arg12) to #map2(%arg12) {
          affine.for %arg15 = #map(%arg13) to #map3(%arg13) {
            affine.store %cst, %arg8[%arg14, %arg15] : memref<?x22xf64>
            affine.for %arg16 = 0 to 24 {
              %0 = affine.load %arg9[%arg14, %arg16] : memref<?x24xf64>
              %1 = affine.load %arg10[%arg16, %arg15] : memref<?x22xf64>
              %2 = arith.mulf %0, %1 : f64
              %3 = affine.load %arg8[%arg14, %arg15] : memref<?x22xf64>
              %4 = arith.addf %3, %2 : f64
              affine.store %4, %arg8[%arg14, %arg15] : memref<?x22xf64>
            }
          }
        }
      }
    }
    affine.for %arg12 = 0 to 16 step 32 {
      affine.for %arg13 = 0 to 22 step 32 {
        affine.for %arg14 = #map(%arg12) to #map1(%arg12) {
          affine.for %arg15 = #map(%arg13) to #map3(%arg13) {
            affine.store %cst, %arg11[%arg14, %arg15] : memref<?x22xf64>
            affine.for %arg16 = 0 to 18 {
              %0 = affine.load %arg5[%arg14, %arg16] : memref<?x18xf64>
              %1 = affine.load %arg8[%arg16, %arg15] : memref<?x22xf64>
              %2 = arith.mulf %0, %1 : f64
              %3 = affine.load %arg11[%arg14, %arg15] : memref<?x22xf64>
              %4 = arith.addf %3, %2 : f64
              affine.store %4, %arg11[%arg14, %arg15] : memref<?x22xf64>
            }
          }
        }
      }
    }
    return
  }
}

