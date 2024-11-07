#map = affine_map<(d0) -> (0, (d0 * 32 - 7) ceildiv 7)>
#map1 = affine_map<(d0) -> (10, (d0 * 32 + 31) floordiv 7 + 1)>
#map2 = affine_map<(d0, d1) -> (d0 * 32, d1 * 7)>
#map3 = affine_map<(d0, d1) -> (d0 * 32 + 32, d1 * 7 + 8)>
#map4 = affine_map<(d0) -> (d0 * 4)>
#map5 = affine_map<(d0) -> (d0 + 1)>
#map6 = affine_map<(d0) -> (d0 + 2)>
#map7 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_doitgen(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x8x12xf64>, %arg4: memref<?x12xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    affine.for %arg6 = 0 to 3 {
      affine.for %arg7 = max #map(%arg6) to min #map1(%arg6) {
        affine.for %arg8 = max #map2(%arg6, %arg7) to min #map3(%arg6, %arg7) {
          affine.parallel (%arg9) = (0) to (3) {
            %0 = affine.apply #map4(%arg9)
            affine.store %cst, %arg5[%0] : memref<?xf64>
            %1 = affine.apply #map5(%0)
            affine.store %cst, %arg5[%1] : memref<?xf64>
            %2 = affine.apply #map6(%0)
            affine.store %cst, %arg5[%2] : memref<?xf64>
            %3 = affine.apply #map7(%0)
            affine.store %cst, %arg5[%3] : memref<?xf64>
          }
          affine.for %arg9 = 0 to 12 {
            affine.parallel (%arg10) = (0) to (3) {
              %0 = affine.apply #map4(%arg10)
              %1 = affine.load %arg5[%0] : memref<?xf64>
              %2 = affine.load %arg3[%arg7, %arg7 * -7 + %arg8, %arg9] : memref<?x8x12xf64>
              %3 = affine.load %arg4[%arg9, %0] : memref<?x12xf64>
              %4 = arith.mulf %2, %3 : f64
              %5 = arith.addf %1, %4 : f64
              affine.store %5, %arg5[%0] : memref<?xf64>
              %6 = affine.apply #map5(%0)
              %7 = affine.load %arg5[%6] : memref<?xf64>
              %8 = affine.load %arg3[%arg7, %arg7 * -7 + %arg8, %arg9] : memref<?x8x12xf64>
              %9 = affine.load %arg4[%arg9, %6] : memref<?x12xf64>
              %10 = arith.mulf %8, %9 : f64
              %11 = arith.addf %7, %10 : f64
              affine.store %11, %arg5[%6] : memref<?xf64>
              %12 = affine.apply #map6(%0)
              %13 = affine.load %arg5[%12] : memref<?xf64>
              %14 = affine.load %arg3[%arg7, %arg7 * -7 + %arg8, %arg9] : memref<?x8x12xf64>
              %15 = affine.load %arg4[%arg9, %12] : memref<?x12xf64>
              %16 = arith.mulf %14, %15 : f64
              %17 = arith.addf %13, %16 : f64
              affine.store %17, %arg5[%12] : memref<?xf64>
              %18 = affine.apply #map7(%0)
              %19 = affine.load %arg5[%18] : memref<?xf64>
              %20 = affine.load %arg3[%arg7, %arg7 * -7 + %arg8, %arg9] : memref<?x8x12xf64>
              %21 = affine.load %arg4[%arg9, %18] : memref<?x12xf64>
              %22 = arith.mulf %20, %21 : f64
              %23 = arith.addf %19, %22 : f64
              affine.store %23, %arg5[%18] : memref<?xf64>
            }
          }
          affine.parallel (%arg9) = (0) to (3) {
            %0 = affine.apply #map4(%arg9)
            %1 = affine.load %arg5[%0] : memref<?xf64>
            affine.store %1, %arg3[%arg7, %arg7 * -7 + %arg8, %0] : memref<?x8x12xf64>
            %2 = affine.apply #map5(%0)
            %3 = affine.load %arg5[%2] : memref<?xf64>
            affine.store %3, %arg3[%arg7, %arg7 * -7 + %arg8, %2] : memref<?x8x12xf64>
            %4 = affine.apply #map6(%0)
            %5 = affine.load %arg5[%4] : memref<?xf64>
            affine.store %5, %arg3[%arg7, %arg7 * -7 + %arg8, %4] : memref<?x8x12xf64>
            %6 = affine.apply #map7(%0)
            %7 = affine.load %arg5[%6] : memref<?xf64>
            affine.store %7, %arg3[%arg7, %arg7 * -7 + %arg8, %6] : memref<?x8x12xf64>
          }
        }
      }
    }
    return
  }
}

