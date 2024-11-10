#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> (d0 + 20)>
module {
  func.func @kernel_jacobi_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>) {
    %cst = arith.constant 2.000000e-01 : f64
    affine.for %arg4 = 0 to 20 step 32 {
      affine.for %arg5 = #map(%arg4) to #map1(%arg4) {
        affine.for %arg6 = 0 to 28 {
          affine.for %arg7 = 0 to 28 {
            %0 = affine.load %arg2[%arg6 + 1, %arg7 + 1] : memref<?x30xf64>
            %1 = affine.load %arg2[%arg6 + 1, %arg7] : memref<?x30xf64>
            %2 = arith.addf %0, %1 : f64
            %3 = affine.load %arg2[%arg6 + 1, %arg7 + 2] : memref<?x30xf64>
            %4 = arith.addf %2, %3 : f64
            %5 = affine.load %arg2[%arg6 + 2, %arg7 + 1] : memref<?x30xf64>
            %6 = arith.addf %4, %5 : f64
            %7 = affine.load %arg2[%arg6, %arg7 + 1] : memref<?x30xf64>
            %8 = arith.addf %6, %7 : f64
            %9 = arith.mulf %8, %cst : f64
            affine.store %9, %arg3[%arg6 + 1, %arg7 + 1] : memref<?x30xf64>
          }
        }
        affine.for %arg6 = 0 to 28 {
          affine.for %arg7 = 0 to 28 {
            %0 = affine.load %arg3[%arg6 + 1, %arg7 + 1] : memref<?x30xf64>
            %1 = affine.load %arg3[%arg6 + 1, %arg7] : memref<?x30xf64>
            %2 = arith.addf %0, %1 : f64
            %3 = affine.load %arg3[%arg6 + 1, %arg7 + 2] : memref<?x30xf64>
            %4 = arith.addf %2, %3 : f64
            %5 = affine.load %arg3[%arg6 + 2, %arg7 + 1] : memref<?x30xf64>
            %6 = arith.addf %4, %5 : f64
            %7 = affine.load %arg3[%arg6, %arg7 + 1] : memref<?x30xf64>
            %8 = arith.addf %6, %7 : f64
            %9 = arith.mulf %8, %cst : f64
            affine.store %9, %arg2[%arg6 + 1, %arg7 + 1] : memref<?x30xf64>
          }
        }
      }
    }
    return
  }
}

