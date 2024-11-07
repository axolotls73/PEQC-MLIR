#map = affine_map<(d0, d1) -> (d0 + d1)>
#map1 = affine_map<(d0) -> (d0 * 4)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0) -> (d0 + 2)>
#map4 = affine_map<(d0) -> (d0 + 3)>
#map5 = affine_map<(d0, d1) -> (d0 + d1 * 4)>
module {
  func.func @kernel_covariance(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    affine.parallel (%arg6) = (0) to (28) {
      affine.parallel (%arg7) = (0) to (1) {
        %1 = affine.apply #map(%arg6, %arg7)
        affine.store %cst_0, %arg5[%1] : memref<?xf64>
        affine.for %arg8 = 0 to 8 {
          %4 = affine.apply #map1(%arg8)
          %5 = affine.load %arg3[%4, %1] : memref<?x28xf64>
          %6 = affine.load %arg5[%1] : memref<?xf64>
          %7 = arith.addf %6, %5 : f64
          affine.store %7, %arg5[%1] : memref<?xf64>
          %8 = affine.apply #map2(%4)
          %9 = affine.load %arg3[%8, %1] : memref<?x28xf64>
          %10 = affine.load %arg5[%1] : memref<?xf64>
          %11 = arith.addf %10, %9 : f64
          affine.store %11, %arg5[%1] : memref<?xf64>
          %12 = affine.apply #map3(%4)
          %13 = affine.load %arg3[%12, %1] : memref<?x28xf64>
          %14 = affine.load %arg5[%1] : memref<?xf64>
          %15 = arith.addf %14, %13 : f64
          affine.store %15, %arg5[%1] : memref<?xf64>
          %16 = affine.apply #map4(%4)
          %17 = affine.load %arg3[%16, %1] : memref<?x28xf64>
          %18 = affine.load %arg5[%1] : memref<?xf64>
          %19 = arith.addf %18, %17 : f64
          affine.store %19, %arg5[%1] : memref<?xf64>
        }
        %2 = affine.load %arg5[%1] : memref<?xf64>
        %3 = arith.divf %2, %arg2 : f64
        affine.store %3, %arg5[%1] : memref<?xf64>
      }
    }
    affine.parallel (%arg6) = (0) to (32) {
      affine.for %arg7 = 0 to 7 {
        %1 = affine.apply #map1(%arg7)
        affine.parallel (%arg8) = (0) to (1) {
          %2 = affine.apply #map(%arg6, %arg8)
          affine.for %arg9 = 0 to 1 {
            %3 = affine.apply #map5(%1, %arg9)
            %4 = affine.load %arg5[%3] : memref<?xf64>
            %5 = affine.load %arg3[%2, %3] : memref<?x28xf64>
            %6 = arith.subf %5, %4 : f64
            affine.store %6, %arg3[%2, %3] : memref<?x28xf64>
            %7 = affine.apply #map2(%3)
            %8 = affine.load %arg5[%7] : memref<?xf64>
            %9 = affine.load %arg3[%2, %7] : memref<?x28xf64>
            %10 = arith.subf %9, %8 : f64
            affine.store %10, %arg3[%2, %7] : memref<?x28xf64>
            %11 = affine.apply #map3(%3)
            %12 = affine.load %arg5[%11] : memref<?xf64>
            %13 = affine.load %arg3[%2, %11] : memref<?x28xf64>
            %14 = arith.subf %13, %12 : f64
            affine.store %14, %arg3[%2, %11] : memref<?x28xf64>
            %15 = affine.apply #map4(%3)
            %16 = affine.load %arg5[%15] : memref<?xf64>
            %17 = affine.load %arg3[%2, %15] : memref<?x28xf64>
            %18 = arith.subf %17, %16 : f64
            affine.store %18, %arg3[%2, %15] : memref<?x28xf64>
          }
        }
      }
    }
    %0 = arith.subf %arg2, %cst : f64
    affine.parallel (%arg6) = (0) to (28) {
      affine.parallel (%arg7) = (0) to (-%arg6 + 28) {
        %1 = affine.apply #map(%arg6, %arg7)
        affine.store %cst_0, %arg4[%arg6, %1] : memref<?x28xf64>
        affine.for %arg8 = 0 to 8 {
          %4 = affine.apply #map1(%arg8)
          %5 = affine.load %arg3[%4, %arg6] : memref<?x28xf64>
          %6 = affine.load %arg3[%4, %1] : memref<?x28xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = affine.load %arg4[%arg6, %1] : memref<?x28xf64>
          %9 = arith.addf %8, %7 : f64
          affine.store %9, %arg4[%arg6, %1] : memref<?x28xf64>
          %10 = affine.apply #map2(%4)
          %11 = affine.load %arg3[%10, %arg6] : memref<?x28xf64>
          %12 = affine.load %arg3[%10, %1] : memref<?x28xf64>
          %13 = arith.mulf %11, %12 : f64
          %14 = affine.load %arg4[%arg6, %1] : memref<?x28xf64>
          %15 = arith.addf %14, %13 : f64
          affine.store %15, %arg4[%arg6, %1] : memref<?x28xf64>
          %16 = affine.apply #map3(%4)
          %17 = affine.load %arg3[%16, %arg6] : memref<?x28xf64>
          %18 = affine.load %arg3[%16, %1] : memref<?x28xf64>
          %19 = arith.mulf %17, %18 : f64
          %20 = affine.load %arg4[%arg6, %1] : memref<?x28xf64>
          %21 = arith.addf %20, %19 : f64
          affine.store %21, %arg4[%arg6, %1] : memref<?x28xf64>
          %22 = affine.apply #map4(%4)
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

