#map = affine_map<(d0) -> (d0 * -32 + 40, 32)>
#map1 = affine_map<(d0, d1) -> (d0 * 32 + d1)>
module {
  func.func @kernel_gemver(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x40xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>, %arg8: memref<?xf64>, %arg9: memref<?xf64>, %arg10: memref<?xf64>, %arg11: memref<?xf64>) {
    affine.for %arg12 = 0 to 2 {
      affine.for %arg13 = 0 to 2 {
        affine.for %arg14 = 0 to min #map(%arg13) {
          %0 = affine.apply #map1(%arg13, %arg14)
          affine.for %arg15 = 0 to min #map(%arg12) {
            %1 = affine.apply #map1(%arg12, %arg15)
            %2 = affine.load %arg3[%0, %1] : memref<?x40xf64>
            %3 = affine.load %arg4[%0] : memref<?xf64>
            %4 = affine.load %arg5[%1] : memref<?xf64>
            %5 = arith.mulf %3, %4 : f64
            %6 = arith.addf %2, %5 : f64
            %7 = affine.load %arg6[%0] : memref<?xf64>
            %8 = affine.load %arg7[%1] : memref<?xf64>
            %9 = arith.mulf %7, %8 : f64
            %10 = arith.addf %6, %9 : f64
            affine.store %10, %arg3[%0, %1] : memref<?x40xf64>
            %11 = affine.load %arg9[%1] : memref<?xf64>
            %12 = affine.load %arg3[%0, %1] : memref<?x40xf64>
            %13 = arith.mulf %arg2, %12 : f64
            %14 = affine.load %arg10[%0] : memref<?xf64>
            %15 = arith.mulf %13, %14 : f64
            %16 = arith.addf %11, %15 : f64
            affine.store %16, %arg9[%1] : memref<?xf64>
          }
        }
      }
    }
    affine.for %arg12 = 0 to 2 {
      affine.for %arg13 = 0 to min #map(%arg12) {
        %0 = affine.apply #map1(%arg12, %arg13)
        %1 = affine.load %arg9[%0] : memref<?xf64>
        %2 = affine.load %arg11[%0] : memref<?xf64>
        %3 = arith.addf %1, %2 : f64
        affine.store %3, %arg9[%0] : memref<?xf64>
      }
    }
    affine.for %arg12 = 0 to 2 {
      affine.for %arg13 = 0 to 2 {
        affine.for %arg14 = 0 to min #map(%arg12) {
          %0 = affine.apply #map1(%arg12, %arg14)
          affine.for %arg15 = 0 to min #map(%arg13) {
            %1 = affine.apply #map1(%arg13, %arg15)
            %2 = affine.load %arg8[%0] : memref<?xf64>
            %3 = affine.load %arg3[%0, %1] : memref<?x40xf64>
            %4 = arith.mulf %arg1, %3 : f64
            %5 = affine.load %arg9[%1] : memref<?xf64>
            %6 = arith.mulf %4, %5 : f64
            %7 = arith.addf %2, %6 : f64
            affine.store %7, %arg8[%0] : memref<?xf64>
          }
        }
      }
    }
    return
  }
}

