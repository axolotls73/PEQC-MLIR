#map = affine_map<(d0, d1) -> (d0 + d1)>
#map1 = affine_map<(d0) -> (0, d0 * 16 - 38)>
#map2 = affine_map<(d0) -> (20, d0 * 16 + 15)>
#map3 = affine_map<(d0, d1, d2) -> (d0 * 32, d1 + 1, -d1 + d2 * 32 - 38)>
#map4 = affine_map<(d0, d1, d2) -> (d0 * 32 + 32, d1 + 39, -d1 + d2 * 32 + 31)>
#map5 = affine_map<(d0, d1, d2) -> (d0 * 32, d1 + d2 + 1)>
#map6 = affine_map<(d0, d1, d2) -> (d0 * 32 + 32, d1 + d2 + 39)>
module {
  func.func @kernel_seidel_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x40xf64>) {
    %cst = arith.constant 9.000000e+00 : f64
    affine.for %arg3 = 0 to 2 {
      affine.for %arg4 = 0 to 3 {
        %0 = affine.apply #map(%arg3, %arg4)
        affine.for %arg5 = max #map1(%0) to min #map2(%0) {
          affine.for %arg6 = max #map3(%arg3, %arg5, %0) to min #map4(%arg3, %arg5, %0) {
            affine.for %arg7 = max #map5(%0, %arg5, %arg6) to min #map6(%0, %arg5, %arg6) {
              %1 = affine.load %arg2[-%arg6 + %arg5 - 1, -%arg6 - %arg5 + %arg7 - 1] : memref<?x40xf64>
              %2 = affine.load %arg2[-%arg6 + %arg5 - 1, -%arg6 - %arg5 + %arg7] : memref<?x40xf64>
              %3 = arith.addf %1, %2 : f64
              %4 = affine.load %arg2[-%arg6 + %arg5 - 1, -%arg6 - %arg5 + %arg7 + 1] : memref<?x40xf64>
              %5 = arith.addf %3, %4 : f64
              %6 = affine.load %arg2[-%arg6 + %arg5, -%arg6 - %arg5 + %arg7 - 1] : memref<?x40xf64>
              %7 = arith.addf %5, %6 : f64
              %8 = affine.load %arg2[-%arg6 + %arg5, -%arg6 - %arg5 + %arg7] : memref<?x40xf64>
              %9 = arith.addf %7, %8 : f64
              %10 = affine.load %arg2[-%arg6 + %arg5, -%arg6 - %arg5 + %arg7 + 1] : memref<?x40xf64>
              %11 = arith.addf %9, %10 : f64
              %12 = affine.load %arg2[-%arg6 + %arg5 + 1, -%arg6 - %arg5 + %arg7 - 1] : memref<?x40xf64>
              %13 = arith.addf %11, %12 : f64
              %14 = affine.load %arg2[-%arg6 + %arg5 + 1, -%arg6 - %arg5 + %arg7] : memref<?x40xf64>
              %15 = arith.addf %13, %14 : f64
              %16 = affine.load %arg2[-%arg6 + %arg5 + 1, -%arg6 - %arg5 + %arg7 + 1] : memref<?x40xf64>
              %17 = arith.addf %15, %16 : f64
              %18 = arith.divf %17, %cst : f64
              affine.store %18, %arg2[-%arg6 + %arg5, -%arg6 - %arg5 + %arg7] : memref<?x40xf64>
            }
          }
        }
      }
    }
    return
  }
}

