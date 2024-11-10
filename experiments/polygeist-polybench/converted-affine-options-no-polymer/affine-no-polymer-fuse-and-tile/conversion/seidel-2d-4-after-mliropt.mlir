#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> (d0 + 20)>
#map2 = affine_map<(d0) -> (d0 + 32, 38)>
module {
  func.func @kernel_seidel_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x40xf64>) {
    %cst = arith.constant 9.000000e+00 : f64
    affine.for %arg3 = 0 to 20 step 32 {
      affine.for %arg4 = 0 to 38 step 32 {
        affine.for %arg5 = 0 to 38 step 32 {
          affine.for %arg6 = #map(%arg3) to #map1(%arg3) {
            affine.for %arg7 = #map(%arg4) to min #map2(%arg4) {
              affine.for %arg8 = #map(%arg5) to min #map2(%arg5) {
                %0 = affine.load %arg2[%arg7, %arg8] : memref<?x40xf64>
                %1 = affine.load %arg2[%arg7, %arg8 + 1] : memref<?x40xf64>
                %2 = arith.addf %0, %1 : f64
                %3 = affine.load %arg2[%arg7, %arg8 + 2] : memref<?x40xf64>
                %4 = arith.addf %2, %3 : f64
                %5 = affine.load %arg2[%arg7 + 1, %arg8] : memref<?x40xf64>
                %6 = arith.addf %4, %5 : f64
                %7 = affine.load %arg2[%arg7 + 1, %arg8 + 1] : memref<?x40xf64>
                %8 = arith.addf %6, %7 : f64
                %9 = affine.load %arg2[%arg7 + 1, %arg8 + 2] : memref<?x40xf64>
                %10 = arith.addf %8, %9 : f64
                %11 = affine.load %arg2[%arg7 + 2, %arg8] : memref<?x40xf64>
                %12 = arith.addf %10, %11 : f64
                %13 = affine.load %arg2[%arg7 + 2, %arg8 + 1] : memref<?x40xf64>
                %14 = arith.addf %12, %13 : f64
                %15 = affine.load %arg2[%arg7 + 2, %arg8 + 2] : memref<?x40xf64>
                %16 = arith.addf %14, %15 : f64
                %17 = arith.divf %16, %cst : f64
                affine.store %17, %arg2[%arg7 + 1, %arg8 + 1] : memref<?x40xf64>
              }
            }
          }
        }
      }
    }
    return
  }
}

