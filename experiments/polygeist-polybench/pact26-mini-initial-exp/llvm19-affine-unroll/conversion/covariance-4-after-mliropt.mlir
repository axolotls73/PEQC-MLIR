#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0 + 2)>
#map2 = affine_map<(d0) -> (d0 + 3)>
#map3 = affine_map<(d0) -> (d0)>
module {
  func.func @kernel_covariance(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    affine.for %arg6 = 0 to 28 {
      affine.store %cst_0, %arg5[%arg6] : memref<?xf64>
      affine.for %arg7 = 0 to 32 step 4 {
        %3 = affine.load %arg3[%arg7, %arg6] : memref<?x28xf64>
        %4 = affine.load %arg5[%arg6] : memref<?xf64>
        %5 = arith.addf %4, %3 : f64
        affine.store %5, %arg5[%arg6] : memref<?xf64>
        %6 = affine.apply #map(%arg7)
        %7 = affine.load %arg3[%6, %arg6] : memref<?x28xf64>
        %8 = affine.load %arg5[%arg6] : memref<?xf64>
        %9 = arith.addf %8, %7 : f64
        affine.store %9, %arg5[%arg6] : memref<?xf64>
        %10 = affine.apply #map1(%arg7)
        %11 = affine.load %arg3[%10, %arg6] : memref<?x28xf64>
        %12 = affine.load %arg5[%arg6] : memref<?xf64>
        %13 = arith.addf %12, %11 : f64
        affine.store %13, %arg5[%arg6] : memref<?xf64>
        %14 = affine.apply #map2(%arg7)
        %15 = affine.load %arg3[%14, %arg6] : memref<?x28xf64>
        %16 = affine.load %arg5[%arg6] : memref<?xf64>
        %17 = arith.addf %16, %15 : f64
        affine.store %17, %arg5[%arg6] : memref<?xf64>
      }
      %1 = affine.load %arg5[%arg6] : memref<?xf64>
      %2 = arith.divf %1, %arg2 : f64
      affine.store %2, %arg5[%arg6] : memref<?xf64>
    }
    affine.for %arg6 = 0 to 32 {
      affine.for %arg7 = 0 to 28 step 4 {
        %1 = affine.load %arg5[%arg7] : memref<?xf64>
        %2 = affine.load %arg3[%arg6, %arg7] : memref<?x28xf64>
        %3 = arith.subf %2, %1 : f64
        affine.store %3, %arg3[%arg6, %arg7] : memref<?x28xf64>
        %4 = affine.apply #map(%arg7)
        %5 = affine.load %arg5[%4] : memref<?xf64>
        %6 = affine.load %arg3[%arg6, %4] : memref<?x28xf64>
        %7 = arith.subf %6, %5 : f64
        affine.store %7, %arg3[%arg6, %4] : memref<?x28xf64>
        %8 = affine.apply #map1(%arg7)
        %9 = affine.load %arg5[%8] : memref<?xf64>
        %10 = affine.load %arg3[%arg6, %8] : memref<?x28xf64>
        %11 = arith.subf %10, %9 : f64
        affine.store %11, %arg3[%arg6, %8] : memref<?x28xf64>
        %12 = affine.apply #map2(%arg7)
        %13 = affine.load %arg5[%12] : memref<?xf64>
        %14 = affine.load %arg3[%arg6, %12] : memref<?x28xf64>
        %15 = arith.subf %14, %13 : f64
        affine.store %15, %arg3[%arg6, %12] : memref<?x28xf64>
      }
    }
    %0 = arith.subf %arg2, %cst : f64
    affine.for %arg6 = 0 to 28 {
      affine.for %arg7 = #map3(%arg6) to 28 {
        affine.store %cst_0, %arg4[%arg6, %arg7] : memref<?x28xf64>
        affine.for %arg8 = 0 to 32 step 4 {
          %3 = affine.load %arg3[%arg8, %arg6] : memref<?x28xf64>
          %4 = affine.load %arg3[%arg8, %arg7] : memref<?x28xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = affine.load %arg4[%arg6, %arg7] : memref<?x28xf64>
          %7 = arith.addf %6, %5 : f64
          affine.store %7, %arg4[%arg6, %arg7] : memref<?x28xf64>
          %8 = affine.apply #map(%arg8)
          %9 = affine.load %arg3[%8, %arg6] : memref<?x28xf64>
          %10 = affine.load %arg3[%8, %arg7] : memref<?x28xf64>
          %11 = arith.mulf %9, %10 : f64
          %12 = affine.load %arg4[%arg6, %arg7] : memref<?x28xf64>
          %13 = arith.addf %12, %11 : f64
          affine.store %13, %arg4[%arg6, %arg7] : memref<?x28xf64>
          %14 = affine.apply #map1(%arg8)
          %15 = affine.load %arg3[%14, %arg6] : memref<?x28xf64>
          %16 = affine.load %arg3[%14, %arg7] : memref<?x28xf64>
          %17 = arith.mulf %15, %16 : f64
          %18 = affine.load %arg4[%arg6, %arg7] : memref<?x28xf64>
          %19 = arith.addf %18, %17 : f64
          affine.store %19, %arg4[%arg6, %arg7] : memref<?x28xf64>
          %20 = affine.apply #map2(%arg8)
          %21 = affine.load %arg3[%20, %arg6] : memref<?x28xf64>
          %22 = affine.load %arg3[%20, %arg7] : memref<?x28xf64>
          %23 = arith.mulf %21, %22 : f64
          %24 = affine.load %arg4[%arg6, %arg7] : memref<?x28xf64>
          %25 = arith.addf %24, %23 : f64
          affine.store %25, %arg4[%arg6, %arg7] : memref<?x28xf64>
        }
        %1 = affine.load %arg4[%arg6, %arg7] : memref<?x28xf64>
        %2 = arith.divf %1, %0 : f64
        affine.store %2, %arg4[%arg6, %arg7] : memref<?x28xf64>
        affine.store %2, %arg4[%arg7, %arg6] : memref<?x28xf64>
      }
    }
    return
  }
}

