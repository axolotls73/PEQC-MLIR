#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> (d0 + 16)>
#map2 = affine_map<(d0) -> (d0 + 22)>
#map3 = affine_map<(d0) -> (d0 + 2)>
#map4 = affine_map<(d0) -> (d0 + 18)>
#map5 = affine_map<(d0) -> (d0 + 24)>
#set = affine_set<(d0) : (d0 == 0)>
#set1 = affine_set<(d0) : (d0 - 1 == 0)>
module {
  func.func @kernel_3mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: memref<?x18xf64>, %arg6: memref<?x20xf64>, %arg7: memref<?x18xf64>, %arg8: memref<?x22xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x22xf64>, %arg11: memref<?x22xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    affine.for %arg12 = 0 to 16 step 32 {
      affine.for %arg13 = 0 to 22 step 32 {
        affine.for %arg14 = #map(%arg12) to #map1(%arg12) {
          affine.for %arg15 = #map(%arg13) to #map2(%arg13) {
            affine.store %cst, %arg11[%arg14, %arg15] : memref<?x22xf64>
            affine.store %cst, %arg8[%arg14, %arg15] : memref<?x22xf64>
          }
        }
      }
    }
    affine.for %arg12 = 0 to 2 step 32 {
      affine.for %arg13 = 0 to 22 step 32 {
        affine.for %arg14 = #map(%arg12) to #map3(%arg12) {
          affine.for %arg15 = #map(%arg13) to #map2(%arg13) {
            affine.store %cst, %arg8[%arg14 + 16, %arg15] : memref<?x22xf64>
          }
        }
      }
    }
    affine.for %arg12 = 0 to 18 step 32 {
      affine.for %arg13 = 0 to 22 step 32 {
        affine.for %arg14 = 0 to 24 step 32 {
          affine.for %arg15 = #map(%arg12) to #map4(%arg12) {
            affine.for %arg16 = #map(%arg13) to #map2(%arg13) {
              affine.for %arg17 = #map(%arg14) to #map5(%arg14) {
                %0 = affine.load %arg8[%arg15, %arg16] : memref<?x22xf64>
                %1 = affine.load %arg9[%arg15, %arg17] : memref<?x24xf64>
                %2 = affine.load %arg10[%arg17, %arg16] : memref<?x22xf64>
                %3 = arith.mulf %1, %2 : f64
                %4 = arith.addf %0, %3 : f64
                affine.store %4, %arg8[%arg15, %arg16] : memref<?x22xf64>
              }
            }
          }
        }
      }
    }
    affine.for %arg12 = 0 to 16 step 32 {
      affine.for %arg13 = 0 to 18 step 32 {
        affine.for %arg14 = #map(%arg12) to #map1(%arg12) {
          affine.for %arg15 = #map(%arg13) to #map4(%arg13) {
            affine.store %cst, %arg5[%arg14, %arg15] : memref<?x18xf64>
          }
        }
      }
    }
    affine.for %arg12 = 0 to 2 step 32 {
      affine.for %arg13 = #map(%arg12) to #map3(%arg12) {
        affine.if #set(%arg13) {
          affine.for %arg14 = 0 to 16 {
            affine.for %arg15 = 0 to 18 {
              affine.for %arg16 = 0 to 20 {
                %0 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %1 = affine.load %arg6[%arg14, %arg16] : memref<?x20xf64>
                %2 = affine.load %arg7[%arg16, %arg15] : memref<?x18xf64>
                %3 = arith.mulf %1, %2 : f64
                %4 = arith.addf %0, %3 : f64
                affine.store %4, %arg5[%arg14, %arg15] : memref<?x18xf64>
              }
              affine.for %arg16 = 0 to 13 {
                %0 = affine.load %arg11[%arg14, %arg16] : memref<?x22xf64>
                %1 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %2 = affine.load %arg8[%arg15, %arg16] : memref<?x22xf64>
                %3 = arith.mulf %1, %2 : f64
                %4 = arith.addf %0, %3 : f64
                affine.store %4, %arg11[%arg14, %arg16] : memref<?x22xf64>
              }
            }
          }
        }
        affine.if #set1(%arg13) {
          affine.for %arg14 = 0 to 16 {
            affine.for %arg15 = 0 to 18 {
              affine.for %arg16 = 0 to 9 {
                %0 = affine.load %arg11[%arg14, %arg16 + 13] : memref<?x22xf64>
                %1 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %2 = affine.load %arg8[%arg15, %arg16 + 13] : memref<?x22xf64>
                %3 = arith.mulf %1, %2 : f64
                %4 = arith.addf %0, %3 : f64
                affine.store %4, %arg11[%arg14, %arg16 + 13] : memref<?x22xf64>
              }
            }
          }
        }
      }
    }
    return
  }
}

