#map = affine_map<(d0) -> (0, d0 - 1)>
#map1 = affine_map<(d0) -> (3, d0 + 2)>
#map2 = affine_map<(d0, d1) -> (0, d0 * 16 - 14, d1 * 16 - 14)>
#map3 = affine_map<(d0, d1) -> (20, d0 * 16 + 15, d1 * 16 + 15)>
#map4 = affine_map<(d0, d1) -> (d0 * 32, d1 * 2 + 2)>
#map5 = affine_map<(d0, d1) -> (d0 * 32 + 32, d1 * 2 + 29)>
#map6 = affine_map<(d0) -> (31, d0 * 32)>
#map7 = affine_map<(d0) -> (59, d0 * 32 + 32)>
#set = affine_set<(d0, d1) : (d1 floordiv 16 - d0 >= 0)>
#set1 = affine_set<(d0, d1) : (d0 - (d1 - 1) ceildiv 16 >= 0)>
#set2 = affine_set<(d0, d1) : (-d1 - d0 + 1 >= 0)>
module {
  func.func @kernel_jacobi_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>) {
    %cst = arith.constant 2.000000e-01 : f64
    affine.for %arg4 = 0 to 3 {
      affine.for %arg5 = max #map(%arg4) to min #map1(%arg4) {
        affine.for %arg6 = max #map2(%arg4, %arg5) to min #map3(%arg4, %arg5) {
          affine.if #set(%arg4, %arg6) {
            affine.parallel (%arg7) = (max(%arg5 * 32, %arg6 * 2 + 1)) to (min(%arg5 * 32 + 32, %arg6 * 2 + 29)) {
              %0 = affine.load %arg2[1, %arg6 * -2 + %arg7] : memref<?x30xf64>
              %1 = affine.load %arg2[1, %arg6 * -2 + %arg7 - 1] : memref<?x30xf64>
              %2 = arith.addf %0, %1 : f64
              %3 = affine.load %arg2[1, %arg6 * -2 + %arg7 + 1] : memref<?x30xf64>
              %4 = arith.addf %2, %3 : f64
              %5 = affine.load %arg2[2, %arg6 * -2 + %arg7] : memref<?x30xf64>
              %6 = arith.addf %4, %5 : f64
              %7 = affine.load %arg2[0, %arg6 * -2 + %arg7] : memref<?x30xf64>
              %8 = arith.addf %6, %7 : f64
              %9 = arith.mulf %8, %cst : f64
              affine.store %9, %arg3[1, %arg6 * -2 + %arg7] : memref<?x30xf64>
            }
          }
          affine.for %arg7 = max #map4(%arg4, %arg6) to min #map5(%arg4, %arg6) {
            affine.if #set(%arg5, %arg6) {
              %0 = affine.load %arg2[%arg7 * -2 + %arg6, 1] : memref<?x30xf64>
              %1 = affine.load %arg2[%arg7 * -2 + %arg6, 0] : memref<?x30xf64>
              %2 = arith.addf %0, %1 : f64
              %3 = affine.load %arg2[%arg7 * -2 + %arg6, 2] : memref<?x30xf64>
              %4 = arith.addf %2, %3 : f64
              %5 = affine.load %arg2[%arg7 * -2 + %arg6 + 1, 1] : memref<?x30xf64>
              %6 = arith.addf %4, %5 : f64
              %7 = affine.load %arg2[%arg7 * -2 + %arg6 - 1, 1] : memref<?x30xf64>
              %8 = arith.addf %6, %7 : f64
              %9 = arith.mulf %8, %cst : f64
              affine.store %9, %arg3[%arg7 * -2 + %arg6, 1] : memref<?x30xf64>
            }
            affine.for %arg8 = max #map4(%arg5, %arg6) to min #map5(%arg5, %arg6) {
              %0 = affine.load %arg2[%arg7 * -2 + %arg6, %arg6 * -2 + %arg8] : memref<?x30xf64>
              %1 = affine.load %arg2[%arg7 * -2 + %arg6, %arg6 * -2 + %arg8 - 1] : memref<?x30xf64>
              %2 = arith.addf %0, %1 : f64
              %3 = affine.load %arg2[%arg7 * -2 + %arg6, %arg6 * -2 + %arg8 + 1] : memref<?x30xf64>
              %4 = arith.addf %2, %3 : f64
              %5 = affine.load %arg2[%arg7 * -2 + %arg6 + 1, %arg6 * -2 + %arg8] : memref<?x30xf64>
              %6 = arith.addf %4, %5 : f64
              %7 = affine.load %arg2[%arg7 * -2 + %arg6 - 1, %arg6 * -2 + %arg8] : memref<?x30xf64>
              %8 = arith.addf %6, %7 : f64
              %9 = arith.mulf %8, %cst : f64
              affine.store %9, %arg3[%arg7 * -2 + %arg6, %arg6 * -2 + %arg8] : memref<?x30xf64>
              %10 = affine.load %arg3[%arg7 * -2 + %arg6 - 1, %arg6 * -2 + %arg8 - 1] : memref<?x30xf64>
              %11 = affine.load %arg3[%arg7 * -2 + %arg6 - 1, %arg6 * -2 + %arg8 - 2] : memref<?x30xf64>
              %12 = arith.addf %10, %11 : f64
              %13 = affine.load %arg3[%arg7 * -2 + %arg6 - 1, %arg6 * -2 + %arg8] : memref<?x30xf64>
              %14 = arith.addf %12, %13 : f64
              %15 = affine.load %arg3[%arg7 * -2 + %arg6, %arg6 * -2 + %arg8 - 1] : memref<?x30xf64>
              %16 = arith.addf %14, %15 : f64
              %17 = affine.load %arg3[%arg7 * -2 + %arg6 - 2, %arg6 * -2 + %arg8 - 1] : memref<?x30xf64>
              %18 = arith.addf %16, %17 : f64
              %19 = arith.mulf %18, %cst : f64
              affine.store %19, %arg2[%arg7 * -2 + %arg6 - 1, %arg6 * -2 + %arg8 - 1] : memref<?x30xf64>
            }
            affine.if #set1(%arg5, %arg6) {
              %0 = affine.load %arg3[%arg7 * -2 + %arg6 - 1, 28] : memref<?x30xf64>
              %1 = affine.load %arg3[%arg7 * -2 + %arg6 - 1, 27] : memref<?x30xf64>
              %2 = arith.addf %0, %1 : f64
              %3 = affine.load %arg3[%arg7 * -2 + %arg6 - 1, 29] : memref<?x30xf64>
              %4 = arith.addf %2, %3 : f64
              %5 = affine.load %arg3[%arg7 * -2 + %arg6, 28] : memref<?x30xf64>
              %6 = arith.addf %4, %5 : f64
              %7 = affine.load %arg3[%arg7 * -2 + %arg6 - 2, 28] : memref<?x30xf64>
              %8 = arith.addf %6, %7 : f64
              %9 = arith.mulf %8, %cst : f64
              affine.store %9, %arg2[%arg7 * -2 + %arg6 - 1, 28] : memref<?x30xf64>
            }
          }
          affine.if #set1(%arg4, %arg6) {
            affine.parallel (%arg7) = (max(%arg5 * 32, %arg6 * 2 + 2)) to (min(%arg5 * 32 + 32, %arg6 * 2 + 30)) {
              %0 = affine.load %arg3[28, %arg6 * -2 + %arg7 - 1] : memref<?x30xf64>
              %1 = affine.load %arg3[28, %arg6 * -2 + %arg7 - 2] : memref<?x30xf64>
              %2 = arith.addf %0, %1 : f64
              %3 = affine.load %arg3[28, %arg6 * -2 + %arg7] : memref<?x30xf64>
              %4 = arith.addf %2, %3 : f64
              %5 = affine.load %arg3[29, %arg6 * -2 + %arg7 - 1] : memref<?x30xf64>
              %6 = arith.addf %4, %5 : f64
              %7 = affine.load %arg3[27, %arg6 * -2 + %arg7 - 1] : memref<?x30xf64>
              %8 = arith.addf %6, %7 : f64
              %9 = arith.mulf %8, %cst : f64
              affine.store %9, %arg2[28, %arg6 * -2 + %arg7 - 1] : memref<?x30xf64>
            }
          }
        }
        affine.if #set2(%arg4, %arg5) {
          affine.parallel (%arg6) = (max(31, %arg4 * 32)) to (min(59, %arg4 * 32 + 32)) {
            affine.for %arg7 = max #map6(%arg5) to min #map7(%arg5) {
              %0 = affine.load %arg2[%arg6 - 30, %arg7 - 30] : memref<?x30xf64>
              %1 = affine.load %arg2[%arg6 - 30, %arg7 - 31] : memref<?x30xf64>
              %2 = arith.addf %0, %1 : f64
              %3 = affine.load %arg2[%arg6 - 30, %arg7 - 29] : memref<?x30xf64>
              %4 = arith.addf %2, %3 : f64
              %5 = affine.load %arg2[%arg6 - 29, %arg7 - 30] : memref<?x30xf64>
              %6 = arith.addf %4, %5 : f64
              %7 = affine.load %arg2[%arg6 - 31, %arg7 - 30] : memref<?x30xf64>
              %8 = arith.addf %6, %7 : f64
              %9 = arith.mulf %8, %cst : f64
              affine.store %9, %arg3[%arg6 - 30, %arg7 - 30] : memref<?x30xf64>
            }
          }
        }
      }
    }
    return
  }
}

