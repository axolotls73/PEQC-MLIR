#map = affine_map<(d0) -> (-d0 + 19)>
#map1 = affine_map<(d0) -> (d0)>
#map2 = affine_map<(d0) -> (d0 + 20)>
#map3 = affine_map<(d0) -> (d0 + 30)>
module {
  func.func @kernel_trmm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x20xf64>, %arg4: memref<?x30xf64>) {
    affine.for %arg5 = 0 to 19 {
      affine.for %arg6 = 0 to #map(%arg5) {
        affine.for %arg7 = 0 to 30 {
          %0 = affine.load %arg4[%arg5, %arg7] : memref<?x30xf64>
          %1 = affine.load %arg3[%arg5 + %arg6 + 1, %arg5] : memref<?x20xf64>
          %2 = affine.load %arg4[%arg5 + %arg6 + 1, %arg7] : memref<?x30xf64>
          %3 = arith.mulf %1, %2 : f64
          %4 = arith.addf %0, %3 : f64
          affine.store %4, %arg4[%arg5, %arg7] : memref<?x30xf64>
        }
      }
    }
    affine.for %arg5 = 0 to 20 step 32 {
      affine.for %arg6 = 0 to 30 step 32 {
        affine.for %arg7 = #map1(%arg5) to #map2(%arg5) {
          affine.for %arg8 = #map1(%arg6) to #map3(%arg6) {
            %0 = affine.load %arg4[%arg7, %arg8] : memref<?x30xf64>
            %1 = arith.mulf %arg2, %0 : f64
            affine.store %1, %arg4[%arg7, %arg8] : memref<?x30xf64>
          }
        }
      }
    }
    return
  }
}

