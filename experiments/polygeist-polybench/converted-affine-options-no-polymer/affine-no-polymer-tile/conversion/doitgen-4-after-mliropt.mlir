#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> (d0 + 10)>
#map2 = affine_map<(d0) -> (d0 + 8)>
module {
  func.func @kernel_doitgen(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x8x12xf64>, %arg4: memref<?x12xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    affine.for %arg6 = 0 to 10 step 32 {
      affine.for %arg7 = 0 to 8 step 32 {
        affine.for %arg8 = #map(%arg6) to #map1(%arg6) {
          affine.for %arg9 = #map(%arg7) to #map2(%arg7) {
            affine.for %arg10 = 0 to 12 {
              affine.store %cst, %arg5[%arg10] : memref<?xf64>
              affine.for %arg11 = 0 to 12 {
                %0 = affine.load %arg3[%arg8, %arg9, %arg11] : memref<?x8x12xf64>
                %1 = affine.load %arg4[%arg11, %arg10] : memref<?x12xf64>
                %2 = arith.mulf %0, %1 : f64
                %3 = affine.load %arg5[%arg10] : memref<?xf64>
                %4 = arith.addf %3, %2 : f64
                affine.store %4, %arg5[%arg10] : memref<?xf64>
              }
            }
            affine.for %arg10 = 0 to 12 {
              %0 = affine.load %arg5[%arg10] : memref<?xf64>
              affine.store %0, %arg3[%arg8, %arg9, %arg10] : memref<?x8x12xf64>
            }
          }
        }
      }
    }
    return
  }
}

