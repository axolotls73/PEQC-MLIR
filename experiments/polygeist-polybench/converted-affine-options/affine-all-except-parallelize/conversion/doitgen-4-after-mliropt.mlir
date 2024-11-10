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
          affine.for %arg9 = 0 to 3 {
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
            %0 = affine.load %arg3[%arg7, %arg7 * -7 + %arg8, %arg9] : memref<?x8x12xf64>
            %1 = affine.load %arg3[%arg7, %arg7 * -7 + %arg8, %arg9] : memref<?x8x12xf64>
            %2 = affine.load %arg3[%arg7, %arg7 * -7 + %arg8, %arg9] : memref<?x8x12xf64>
            %3 = affine.load %arg3[%arg7, %arg7 * -7 + %arg8, %arg9] : memref<?x8x12xf64>
            affine.for %arg10 = 0 to 3 {
              %4 = affine.apply #map4(%arg10)
              %5 = affine.load %arg5[%4] : memref<?xf64>
              %6 = affine.load %arg4[%arg9, %4] : memref<?x12xf64>
              %7 = arith.mulf %0, %6 : f64
              %8 = arith.addf %5, %7 : f64
              affine.store %8, %arg5[%4] : memref<?xf64>
              %9 = affine.apply #map5(%4)
              %10 = affine.load %arg5[%9] : memref<?xf64>
              %11 = affine.load %arg4[%arg9, %9] : memref<?x12xf64>
              %12 = arith.mulf %1, %11 : f64
              %13 = arith.addf %10, %12 : f64
              affine.store %13, %arg5[%9] : memref<?xf64>
              %14 = affine.apply #map6(%4)
              %15 = affine.load %arg5[%14] : memref<?xf64>
              %16 = affine.load %arg4[%arg9, %14] : memref<?x12xf64>
              %17 = arith.mulf %2, %16 : f64
              %18 = arith.addf %15, %17 : f64
              affine.store %18, %arg5[%14] : memref<?xf64>
              %19 = affine.apply #map7(%4)
              %20 = affine.load %arg5[%19] : memref<?xf64>
              %21 = affine.load %arg4[%arg9, %19] : memref<?x12xf64>
              %22 = arith.mulf %3, %21 : f64
              %23 = arith.addf %20, %22 : f64
              affine.store %23, %arg5[%19] : memref<?xf64>
            }
          }
          affine.for %arg9 = 0 to 3 {
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

