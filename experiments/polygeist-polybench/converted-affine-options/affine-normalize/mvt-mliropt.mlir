#map = affine_map<(d0) -> (d0 * -32 + 40, 32)>
#map1 = affine_map<(d0, d1) -> (d0 * 32 + d1)>
module {
  func.func @kernel_mvt(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?x40xf64>) {
    affine.for %arg6 = 0 to 2 {
      affine.for %arg7 = 0 to 2 {
        affine.for %arg8 = 0 to min #map(%arg6) {
          %0 = affine.apply #map1(%arg6, %arg8)
          affine.for %arg9 = 0 to min #map(%arg7) {
            %1 = affine.apply #map1(%arg7, %arg9)
            %2 = affine.load %arg1[%0] : memref<?xf64>
            %3 = affine.load %arg5[%0, %1] : memref<?x40xf64>
            %4 = affine.load %arg3[%1] : memref<?xf64>
            %5 = arith.mulf %3, %4 : f64
            %6 = arith.addf %2, %5 : f64
            affine.store %6, %arg1[%0] : memref<?xf64>
            %7 = affine.load %arg2[%0] : memref<?xf64>
            %8 = affine.load %arg5[%1, %0] : memref<?x40xf64>
            %9 = affine.load %arg4[%1] : memref<?xf64>
            %10 = arith.mulf %8, %9 : f64
            %11 = arith.addf %7, %10 : f64
            affine.store %11, %arg2[%0] : memref<?xf64>
          }
        }
      }
    }
    return
  }
}

