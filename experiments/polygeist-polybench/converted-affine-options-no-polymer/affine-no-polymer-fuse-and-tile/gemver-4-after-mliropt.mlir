#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> (d0 + 32, 40)>
module {
  func.func @kernel_gemver(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x40xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>, %arg8: memref<?xf64>, %arg9: memref<?xf64>, %arg10: memref<?xf64>, %arg11: memref<?xf64>) {
    affine.for %arg12 = 0 to 40 step 32 {
      affine.for %arg13 = #map(%arg12) to min #map1(%arg12) {
        affine.for %arg14 = 0 to 40 {
          %3 = affine.load %arg3[%arg14, %arg13] : memref<?x40xf64>
          %4 = affine.load %arg4[%arg14] : memref<?xf64>
          %5 = affine.load %arg5[%arg13] : memref<?xf64>
          %6 = arith.mulf %4, %5 : f64
          %7 = arith.addf %3, %6 : f64
          %8 = affine.load %arg6[%arg14] : memref<?xf64>
          %9 = affine.load %arg7[%arg13] : memref<?xf64>
          %10 = arith.mulf %8, %9 : f64
          %11 = arith.addf %7, %10 : f64
          affine.store %11, %arg3[%arg14, %arg13] : memref<?x40xf64>
          %12 = affine.load %arg9[%arg13] : memref<?xf64>
          %13 = affine.load %arg3[%arg14, %arg13] : memref<?x40xf64>
          %14 = arith.mulf %arg2, %13 : f64
          %15 = affine.load %arg10[%arg14] : memref<?xf64>
          %16 = arith.mulf %14, %15 : f64
          %17 = arith.addf %12, %16 : f64
          affine.store %17, %arg9[%arg13] : memref<?xf64>
        }
        %0 = affine.load %arg9[%arg13] : memref<?xf64>
        %1 = affine.load %arg11[%arg13] : memref<?xf64>
        %2 = arith.addf %0, %1 : f64
        affine.store %2, %arg9[%arg13] : memref<?xf64>
      }
    }
    affine.for %arg12 = 0 to 40 step 32 {
      affine.for %arg13 = 0 to 40 step 32 {
        affine.for %arg14 = #map(%arg12) to min #map1(%arg12) {
          affine.for %arg15 = #map(%arg13) to min #map1(%arg13) {
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

