#map = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0, d1) -> (d0 + d1)>
#map2 = affine_map<(d0) -> (d0 * 4)>
#map3 = affine_map<(d0) -> (d0 + 1)>
#map4 = affine_map<(d0) -> (d0 + 2)>
#map5 = affine_map<(d0) -> (d0 + 3)>
#map6 = affine_map<(d0) -> (d0 * 128)>
#map7 = affine_map<(d0, d1) -> (d0 + d1 * 4)>
#map8 = affine_map<(d0) -> (-d0 + 28)>
module {
  func.func @kernel_covariance(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    affine.parallel (%arg6) = (0) to (1) {
      %1 = affine.apply #map(%arg6)
      affine.for %arg7 = 0 to 28 {
        %2 = affine.apply #map1(%1, %arg7)
        affine.store %cst_0, %arg5[%2] : memref<?xf64>
        affine.for %arg8 = 0 to 8 {
          %5 = affine.apply #map2(%arg8)
          %6 = affine.load %arg3[%5, %2] : memref<?x28xf64>
          %7 = affine.load %arg5[%2] : memref<?xf64>
          %8 = arith.addf %7, %6 : f64
          affine.store %8, %arg5[%2] : memref<?xf64>
          %9 = affine.apply #map3(%5)
          %10 = affine.load %arg3[%9, %2] : memref<?x28xf64>
          %11 = affine.load %arg5[%2] : memref<?xf64>
          %12 = arith.addf %11, %10 : f64
          affine.store %12, %arg5[%2] : memref<?xf64>
          %13 = affine.apply #map4(%5)
          %14 = affine.load %arg3[%13, %2] : memref<?x28xf64>
          %15 = affine.load %arg5[%2] : memref<?xf64>
          %16 = arith.addf %15, %14 : f64
          affine.store %16, %arg5[%2] : memref<?xf64>
          %17 = affine.apply #map5(%5)
          %18 = affine.load %arg3[%17, %2] : memref<?x28xf64>
          %19 = affine.load %arg5[%2] : memref<?xf64>
          %20 = arith.addf %19, %18 : f64
          affine.store %20, %arg5[%2] : memref<?xf64>
        }
        %3 = affine.load %arg5[%2] : memref<?xf64>
        %4 = arith.divf %3, %arg2 : f64
        affine.store %4, %arg5[%2] : memref<?xf64>
      }
    }
    affine.parallel (%arg6) = (0) to (1) {
      %1 = affine.apply #map(%arg6)
      affine.for %arg7 = 0 to 1 {
        %2 = affine.apply #map6(%arg7)
        affine.for %arg8 = 0 to 32 {
          %3 = affine.apply #map1(%1, %arg8)
          affine.for %arg9 = 0 to 7 {
            %4 = affine.apply #map7(%2, %arg9)
            %5 = affine.load %arg5[%4] : memref<?xf64>
            %6 = affine.load %arg3[%3, %4] : memref<?x28xf64>
            %7 = arith.subf %6, %5 : f64
            affine.store %7, %arg3[%3, %4] : memref<?x28xf64>
            %8 = affine.apply #map3(%4)
            %9 = affine.load %arg5[%8] : memref<?xf64>
            %10 = affine.load %arg3[%3, %8] : memref<?x28xf64>
            %11 = arith.subf %10, %9 : f64
            affine.store %11, %arg3[%3, %8] : memref<?x28xf64>
            %12 = affine.apply #map4(%4)
            %13 = affine.load %arg5[%12] : memref<?xf64>
            %14 = affine.load %arg3[%3, %12] : memref<?x28xf64>
            %15 = arith.subf %14, %13 : f64
            affine.store %15, %arg3[%3, %12] : memref<?x28xf64>
            %16 = affine.apply #map5(%4)
            %17 = affine.load %arg5[%16] : memref<?xf64>
            %18 = affine.load %arg3[%3, %16] : memref<?x28xf64>
            %19 = arith.subf %18, %17 : f64
            affine.store %19, %arg3[%3, %16] : memref<?x28xf64>
          }
        }
      }
    }
    %0 = arith.subf %arg2, %cst : f64
    affine.parallel (%arg6) = (0) to (28) {
      affine.for %arg7 = 0 to #map8(%arg6) {
        %1 = affine.apply #map1(%arg6, %arg7)
        affine.store %cst_0, %arg4[%arg6, %1] : memref<?x28xf64>
        affine.for %arg8 = 0 to 8 {
          %4 = affine.apply #map2(%arg8)
          %5 = affine.load %arg3[%4, %arg6] : memref<?x28xf64>
          %6 = affine.load %arg3[%4, %1] : memref<?x28xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = affine.load %arg4[%arg6, %1] : memref<?x28xf64>
          %9 = arith.addf %8, %7 : f64
          affine.store %9, %arg4[%arg6, %1] : memref<?x28xf64>
          %10 = affine.apply #map3(%4)
          %11 = affine.load %arg3[%10, %arg6] : memref<?x28xf64>
          %12 = affine.load %arg3[%10, %1] : memref<?x28xf64>
          %13 = arith.mulf %11, %12 : f64
          %14 = affine.load %arg4[%arg6, %1] : memref<?x28xf64>
          %15 = arith.addf %14, %13 : f64
          affine.store %15, %arg4[%arg6, %1] : memref<?x28xf64>
          %16 = affine.apply #map4(%4)
          %17 = affine.load %arg3[%16, %arg6] : memref<?x28xf64>
          %18 = affine.load %arg3[%16, %1] : memref<?x28xf64>
          %19 = arith.mulf %17, %18 : f64
          %20 = affine.load %arg4[%arg6, %1] : memref<?x28xf64>
          %21 = arith.addf %20, %19 : f64
          affine.store %21, %arg4[%arg6, %1] : memref<?x28xf64>
          %22 = affine.apply #map5(%4)
          %23 = affine.load %arg3[%22, %arg6] : memref<?x28xf64>
          %24 = affine.load %arg3[%22, %1] : memref<?x28xf64>
          %25 = arith.mulf %23, %24 : f64
          %26 = affine.load %arg4[%arg6, %1] : memref<?x28xf64>
          %27 = arith.addf %26, %25 : f64
          affine.store %27, %arg4[%arg6, %1] : memref<?x28xf64>
        }
        %2 = affine.load %arg4[%arg6, %1] : memref<?x28xf64>
        %3 = arith.divf %2, %0 : f64
        affine.store %3, %arg4[%arg6, %1] : memref<?x28xf64>
        affine.store %3, %arg4[%1, %arg6] : memref<?x28xf64>
      }
    }
    return
  }
}

