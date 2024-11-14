#map = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0, d1) -> (d0 + d1)>
#map2 = affine_map<(d0) -> (d0 * 4)>
#map3 = affine_map<(d0) -> (d0 + 1)>
#map4 = affine_map<(d0) -> (d0 + 2)>
#map5 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_doitgen(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x8x12xf64>, %arg4: memref<?x12xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    affine.parallel (%arg6) = (0) to (1) {
      %0 = affine.apply #map(%arg6)
      affine.for %arg7 = 0 to 1 {
        %1 = affine.apply #map(%arg7)
        affine.for %arg8 = 0 to 10 {
          %2 = affine.apply #map1(%0, %arg8)
          affine.for %arg9 = 0 to 8 {
            %3 = affine.apply #map1(%1, %arg9)
            affine.for %arg10 = 0 to 12 {
              affine.store %cst, %arg5[%arg10] : memref<?xf64>
              affine.for %arg11 = 0 to 3 {
                %4 = affine.apply #map2(%arg11)
                %5 = affine.load %arg3[%2, %3, %4] : memref<?x8x12xf64>
                %6 = affine.load %arg4[%4, %arg10] : memref<?x12xf64>
                %7 = arith.mulf %5, %6 : f64
                %8 = affine.load %arg5[%arg10] : memref<?xf64>
                %9 = arith.addf %8, %7 : f64
                affine.store %9, %arg5[%arg10] : memref<?xf64>
                %10 = affine.apply #map3(%4)
                %11 = affine.load %arg3[%2, %3, %10] : memref<?x8x12xf64>
                %12 = affine.load %arg4[%10, %arg10] : memref<?x12xf64>
                %13 = arith.mulf %11, %12 : f64
                %14 = affine.load %arg5[%arg10] : memref<?xf64>
                %15 = arith.addf %14, %13 : f64
                affine.store %15, %arg5[%arg10] : memref<?xf64>
                %16 = affine.apply #map4(%4)
                %17 = affine.load %arg3[%2, %3, %16] : memref<?x8x12xf64>
                %18 = affine.load %arg4[%16, %arg10] : memref<?x12xf64>
                %19 = arith.mulf %17, %18 : f64
                %20 = affine.load %arg5[%arg10] : memref<?xf64>
                %21 = arith.addf %20, %19 : f64
                affine.store %21, %arg5[%arg10] : memref<?xf64>
                %22 = affine.apply #map5(%4)
                %23 = affine.load %arg3[%2, %3, %22] : memref<?x8x12xf64>
                %24 = affine.load %arg4[%22, %arg10] : memref<?x12xf64>
                %25 = arith.mulf %23, %24 : f64
                %26 = affine.load %arg5[%arg10] : memref<?xf64>
                %27 = arith.addf %26, %25 : f64
                affine.store %27, %arg5[%arg10] : memref<?xf64>
              }
            }
            affine.for %arg10 = 0 to 3 {
              %4 = affine.apply #map2(%arg10)
              %5 = affine.load %arg5[%4] : memref<?xf64>
              affine.store %5, %arg3[%2, %3, %4] : memref<?x8x12xf64>
              %6 = affine.apply #map3(%4)
              %7 = affine.load %arg5[%6] : memref<?xf64>
              affine.store %7, %arg3[%2, %3, %6] : memref<?x8x12xf64>
              %8 = affine.apply #map4(%4)
              %9 = affine.load %arg5[%8] : memref<?xf64>
              affine.store %9, %arg3[%2, %3, %8] : memref<?x8x12xf64>
              %10 = affine.apply #map5(%4)
              %11 = affine.load %arg5[%10] : memref<?xf64>
              affine.store %11, %arg3[%2, %3, %10] : memref<?x8x12xf64>
            }
          }
        }
      }
    }
    return
  }
}

