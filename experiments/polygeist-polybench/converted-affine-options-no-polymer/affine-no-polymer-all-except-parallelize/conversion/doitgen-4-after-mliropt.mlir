#map = affine_map<(d0, d1) -> (d0 + d1)>
#map1 = affine_map<(d0) -> (d0 * 4)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0) -> (d0 + 2)>
#map4 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_doitgen(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x8x12xf64>, %arg4: memref<?x12xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    affine.for %arg6 = 0 to 10 {
      affine.for %arg7 = 0 to 8 {
        affine.for %arg8 = 0 to 1 {
          %0 = affine.apply #map(%arg6, %arg8)
          affine.for %arg9 = 0 to 1 {
            %1 = affine.apply #map(%arg7, %arg9)
            affine.for %arg10 = 0 to 12 {
              affine.store %cst, %arg5[%arg10] : memref<?xf64>
              affine.for %arg11 = 0 to 3 {
                %2 = affine.apply #map1(%arg11)
                %3 = affine.load %arg3[%0, %1, %2] : memref<?x8x12xf64>
                %4 = affine.load %arg4[%2, %arg10] : memref<?x12xf64>
                %5 = arith.mulf %3, %4 : f64
                %6 = affine.load %arg5[%arg10] : memref<?xf64>
                %7 = arith.addf %6, %5 : f64
                affine.store %7, %arg5[%arg10] : memref<?xf64>
                %8 = affine.apply #map2(%2)
                %9 = affine.load %arg3[%0, %1, %8] : memref<?x8x12xf64>
                %10 = affine.load %arg4[%8, %arg10] : memref<?x12xf64>
                %11 = arith.mulf %9, %10 : f64
                %12 = affine.load %arg5[%arg10] : memref<?xf64>
                %13 = arith.addf %12, %11 : f64
                affine.store %13, %arg5[%arg10] : memref<?xf64>
                %14 = affine.apply #map3(%2)
                %15 = affine.load %arg3[%0, %1, %14] : memref<?x8x12xf64>
                %16 = affine.load %arg4[%14, %arg10] : memref<?x12xf64>
                %17 = arith.mulf %15, %16 : f64
                %18 = affine.load %arg5[%arg10] : memref<?xf64>
                %19 = arith.addf %18, %17 : f64
                affine.store %19, %arg5[%arg10] : memref<?xf64>
                %20 = affine.apply #map4(%2)
                %21 = affine.load %arg3[%0, %1, %20] : memref<?x8x12xf64>
                %22 = affine.load %arg4[%20, %arg10] : memref<?x12xf64>
                %23 = arith.mulf %21, %22 : f64
                %24 = affine.load %arg5[%arg10] : memref<?xf64>
                %25 = arith.addf %24, %23 : f64
                affine.store %25, %arg5[%arg10] : memref<?xf64>
              }
            }
            affine.for %arg10 = 0 to 3 {
              %2 = affine.apply #map1(%arg10)
              %3 = affine.load %arg5[%2] : memref<?xf64>
              affine.store %3, %arg3[%0, %1, %2] : memref<?x8x12xf64>
              %4 = affine.apply #map2(%2)
              %5 = affine.load %arg5[%4] : memref<?xf64>
              affine.store %5, %arg3[%0, %1, %4] : memref<?x8x12xf64>
              %6 = affine.apply #map3(%2)
              %7 = affine.load %arg5[%6] : memref<?xf64>
              affine.store %7, %arg3[%0, %1, %6] : memref<?x8x12xf64>
              %8 = affine.apply #map4(%2)
              %9 = affine.load %arg5[%8] : memref<?xf64>
              affine.store %9, %arg3[%0, %1, %8] : memref<?x8x12xf64>
            }
          }
        }
      }
    }
    return
  }
}

