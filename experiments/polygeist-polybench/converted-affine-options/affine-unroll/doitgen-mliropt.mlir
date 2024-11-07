#map = affine_map<(d0) -> (0, (d0 * 32 - 7) ceildiv 7)>
#map1 = affine_map<(d0) -> (10, (d0 * 32 + 31) floordiv 7 + 1)>
#map2 = affine_map<(d0, d1) -> (d0 * 32, d1 * 7)>
#map3 = affine_map<(d0, d1) -> (d0 * 32 + 32, d1 * 7 + 8)>
#map4 = affine_map<(d0) -> (d0 + 1)>
#map5 = affine_map<(d0) -> (d0 + 2)>
#map6 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_doitgen(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x8x12xf64>, %arg4: memref<?x12xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    affine.for %arg6 = 0 to 3 {
      affine.for %arg7 = max #map(%arg6) to min #map1(%arg6) {
        affine.for %arg8 = max #map2(%arg6, %arg7) to min #map3(%arg6, %arg7) {
          affine.for %arg9 = 0 to 12 step 4 {
            affine.store %cst, %arg5[%arg9] : memref<?xf64>
            %0 = affine.apply #map4(%arg9)
            affine.store %cst, %arg5[%0] : memref<?xf64>
            %1 = affine.apply #map5(%arg9)
            affine.store %cst, %arg5[%1] : memref<?xf64>
            %2 = affine.apply #map6(%arg9)
            affine.store %cst, %arg5[%2] : memref<?xf64>
          }
          affine.for %arg9 = 0 to 12 {
            affine.for %arg10 = 0 to 12 step 4 {
              %0 = affine.load %arg5[%arg10] : memref<?xf64>
              %1 = affine.load %arg3[%arg7, %arg7 * -7 + %arg8, %arg9] : memref<?x8x12xf64>
              %2 = affine.load %arg4[%arg9, %arg10] : memref<?x12xf64>
              %3 = arith.mulf %1, %2 : f64
              %4 = arith.addf %0, %3 : f64
              affine.store %4, %arg5[%arg10] : memref<?xf64>
              %5 = affine.apply #map4(%arg10)
              %6 = affine.load %arg5[%5] : memref<?xf64>
              %7 = affine.load %arg3[%arg7, %arg7 * -7 + %arg8, %arg9] : memref<?x8x12xf64>
              %8 = affine.load %arg4[%arg9, %5] : memref<?x12xf64>
              %9 = arith.mulf %7, %8 : f64
              %10 = arith.addf %6, %9 : f64
              affine.store %10, %arg5[%5] : memref<?xf64>
              %11 = affine.apply #map5(%arg10)
              %12 = affine.load %arg5[%11] : memref<?xf64>
              %13 = affine.load %arg3[%arg7, %arg7 * -7 + %arg8, %arg9] : memref<?x8x12xf64>
              %14 = affine.load %arg4[%arg9, %11] : memref<?x12xf64>
              %15 = arith.mulf %13, %14 : f64
              %16 = arith.addf %12, %15 : f64
              affine.store %16, %arg5[%11] : memref<?xf64>
              %17 = affine.apply #map6(%arg10)
              %18 = affine.load %arg5[%17] : memref<?xf64>
              %19 = affine.load %arg3[%arg7, %arg7 * -7 + %arg8, %arg9] : memref<?x8x12xf64>
              %20 = affine.load %arg4[%arg9, %17] : memref<?x12xf64>
              %21 = arith.mulf %19, %20 : f64
              %22 = arith.addf %18, %21 : f64
              affine.store %22, %arg5[%17] : memref<?xf64>
            }
          }
          affine.for %arg9 = 0 to 12 step 4 {
            %0 = affine.load %arg5[%arg9] : memref<?xf64>
            affine.store %0, %arg3[%arg7, %arg7 * -7 + %arg8, %arg9] : memref<?x8x12xf64>
            %1 = affine.apply #map4(%arg9)
            %2 = affine.load %arg5[%1] : memref<?xf64>
            affine.store %2, %arg3[%arg7, %arg7 * -7 + %arg8, %1] : memref<?x8x12xf64>
            %3 = affine.apply #map5(%arg9)
            %4 = affine.load %arg5[%3] : memref<?xf64>
            affine.store %4, %arg3[%arg7, %arg7 * -7 + %arg8, %3] : memref<?x8x12xf64>
            %5 = affine.apply #map6(%arg9)
            %6 = affine.load %arg5[%5] : memref<?xf64>
            affine.store %6, %arg3[%arg7, %arg7 * -7 + %arg8, %5] : memref<?x8x12xf64>
          }
        }
      }
    }
    return
  }
}

