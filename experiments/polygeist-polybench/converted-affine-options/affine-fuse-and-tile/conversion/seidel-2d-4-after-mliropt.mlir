#map = affine_map<(d0, d1) -> (0, d0 * 16 + d1 * 16 - 38)>
#map1 = affine_map<(d0, d1) -> (20, d0 * 16 + d1 * 16 + 15)>
#map2 = affine_map<(d0, d1, d2) -> (d0 * 32, d1 + 1, d0 * 32 - d1 + d2 * 32 - 38)>
#map3 = affine_map<(d0, d1, d2) -> (d0 * 32 + 32, d1 + 39, d0 * 32 - d1 + d2 * 32 + 31)>
#map4 = affine_map<(d0, d1, d2, d3) -> (d2 * 32 + d3 * 32, d0 + d1 + 1)>
#map5 = affine_map<(d0, d1, d2, d3) -> (d2 * 32 + d3 * 32 + 32, d0 + d1 + 39)>
module {
  func.func @kernel_seidel_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x40xf64>) {
    %cst = arith.constant 9.000000e+00 : f64
    affine.for %arg3 = 0 to 2 {
      affine.for %arg4 = 0 to 3 {
        affine.for %arg5 = max #map(%arg3, %arg4) to min #map1(%arg3, %arg4) {
          affine.for %arg6 = max #map2(%arg3, %arg5, %arg4) to min #map3(%arg3, %arg5, %arg4) {
            affine.for %arg7 = max #map4(%arg5, %arg6, %arg3, %arg4) to min #map5(%arg5, %arg6, %arg3, %arg4) {
              %0 = affine.load %arg2[-%arg6 + %arg5 - 1, -%arg6 - %arg5 + %arg7 - 1] : memref<?x40xf64>
              %1 = affine.load %arg2[-%arg6 + %arg5 - 1, -%arg6 - %arg5 + %arg7] : memref<?x40xf64>
              %2 = arith.addf %0, %1 : f64
              %3 = affine.load %arg2[-%arg6 + %arg5 - 1, -%arg6 - %arg5 + %arg7 + 1] : memref<?x40xf64>
              %4 = arith.addf %2, %3 : f64
              %5 = affine.load %arg2[-%arg6 + %arg5, -%arg6 - %arg5 + %arg7 - 1] : memref<?x40xf64>
              %6 = arith.addf %4, %5 : f64
              %7 = affine.load %arg2[-%arg6 + %arg5, -%arg6 - %arg5 + %arg7] : memref<?x40xf64>
              %8 = arith.addf %6, %7 : f64
              %9 = affine.load %arg2[-%arg6 + %arg5, -%arg6 - %arg5 + %arg7 + 1] : memref<?x40xf64>
              %10 = arith.addf %8, %9 : f64
              %11 = affine.load %arg2[-%arg6 + %arg5 + 1, -%arg6 - %arg5 + %arg7 - 1] : memref<?x40xf64>
              %12 = arith.addf %10, %11 : f64
              %13 = affine.load %arg2[-%arg6 + %arg5 + 1, -%arg6 - %arg5 + %arg7] : memref<?x40xf64>
              %14 = arith.addf %12, %13 : f64
              %15 = affine.load %arg2[-%arg6 + %arg5 + 1, -%arg6 - %arg5 + %arg7 + 1] : memref<?x40xf64>
              %16 = arith.addf %14, %15 : f64
              %17 = arith.divf %16, %cst : f64
              affine.store %17, %arg2[-%arg6 + %arg5, -%arg6 - %arg5 + %arg7] : memref<?x40xf64>
            }
          }
        }
      }
    }
    return
  }
}

