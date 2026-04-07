#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0 + 2)>
#map2 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %cst_1 = arith.constant 1.000000e-01 : f64
    affine.for %arg7 = 0 to 28 {
      affine.store %cst_0, %arg5[%arg7] : memref<?xf64>
      affine.for %arg8 = 0 to 32 step 4 {
        %3 = affine.load %arg3[%arg8, %arg7] : memref<?x28xf64>
        %4 = affine.load %arg5[%arg7] : memref<?xf64>
        %5 = arith.addf %4, %3 : f64
        affine.store %5, %arg5[%arg7] : memref<?xf64>
        %6 = affine.apply #map(%arg8)
        %7 = affine.load %arg3[%6, %arg7] : memref<?x28xf64>
        %8 = affine.load %arg5[%arg7] : memref<?xf64>
        %9 = arith.addf %8, %7 : f64
        affine.store %9, %arg5[%arg7] : memref<?xf64>
        %10 = affine.apply #map1(%arg8)
        %11 = affine.load %arg3[%10, %arg7] : memref<?x28xf64>
        %12 = affine.load %arg5[%arg7] : memref<?xf64>
        %13 = arith.addf %12, %11 : f64
        affine.store %13, %arg5[%arg7] : memref<?xf64>
        %14 = affine.apply #map2(%arg8)
        %15 = affine.load %arg3[%14, %arg7] : memref<?x28xf64>
        %16 = affine.load %arg5[%arg7] : memref<?xf64>
        %17 = arith.addf %16, %15 : f64
        affine.store %17, %arg5[%arg7] : memref<?xf64>
      }
      %1 = affine.load %arg5[%arg7] : memref<?xf64>
      %2 = arith.divf %1, %arg2 : f64
      affine.store %2, %arg5[%arg7] : memref<?xf64>
    }
    affine.for %arg7 = 0 to 28 {
      affine.store %cst_0, %arg6[%arg7] : memref<?xf64>
      affine.for %arg8 = 0 to 32 step 4 {
        %6 = affine.load %arg3[%arg8, %arg7] : memref<?x28xf64>
        %7 = affine.load %arg5[%arg7] : memref<?xf64>
        %8 = arith.subf %6, %7 : f64
        %9 = arith.mulf %8, %8 : f64
        %10 = affine.load %arg6[%arg7] : memref<?xf64>
        %11 = arith.addf %10, %9 : f64
        affine.store %11, %arg6[%arg7] : memref<?xf64>
        %12 = affine.apply #map(%arg8)
        %13 = affine.load %arg3[%12, %arg7] : memref<?x28xf64>
        %14 = affine.load %arg5[%arg7] : memref<?xf64>
        %15 = arith.subf %13, %14 : f64
        %16 = arith.mulf %15, %15 : f64
        %17 = affine.load %arg6[%arg7] : memref<?xf64>
        %18 = arith.addf %17, %16 : f64
        affine.store %18, %arg6[%arg7] : memref<?xf64>
        %19 = affine.apply #map1(%arg8)
        %20 = affine.load %arg3[%19, %arg7] : memref<?x28xf64>
        %21 = affine.load %arg5[%arg7] : memref<?xf64>
        %22 = arith.subf %20, %21 : f64
        %23 = arith.mulf %22, %22 : f64
        %24 = affine.load %arg6[%arg7] : memref<?xf64>
        %25 = arith.addf %24, %23 : f64
        affine.store %25, %arg6[%arg7] : memref<?xf64>
        %26 = affine.apply #map2(%arg8)
        %27 = affine.load %arg3[%26, %arg7] : memref<?x28xf64>
        %28 = affine.load %arg5[%arg7] : memref<?xf64>
        %29 = arith.subf %27, %28 : f64
        %30 = arith.mulf %29, %29 : f64
        %31 = affine.load %arg6[%arg7] : memref<?xf64>
        %32 = arith.addf %31, %30 : f64
        affine.store %32, %arg6[%arg7] : memref<?xf64>
      }
      %1 = affine.load %arg6[%arg7] : memref<?xf64>
      %2 = arith.divf %1, %arg2 : f64
      %3 = math.sqrt %2 : f64
      %4 = arith.cmpf ole, %3, %cst_1 : f64
      %5 = arith.select %4, %cst, %3 : f64
      affine.store %5, %arg6[%arg7] : memref<?xf64>
    }
    %0 = math.sqrt %arg2 : f64
    affine.for %arg7 = 0 to 32 {
      affine.for %arg8 = 0 to 28 step 4 {
        %1 = affine.load %arg5[%arg8] : memref<?xf64>
        %2 = affine.load %arg3[%arg7, %arg8] : memref<?x28xf64>
        %3 = arith.subf %2, %1 : f64
        affine.store %3, %arg3[%arg7, %arg8] : memref<?x28xf64>
        %4 = affine.load %arg6[%arg8] : memref<?xf64>
        %5 = arith.mulf %0, %4 : f64
        %6 = arith.divf %3, %5 : f64
        affine.store %6, %arg3[%arg7, %arg8] : memref<?x28xf64>
        %7 = affine.apply #map(%arg8)
        %8 = affine.load %arg5[%7] : memref<?xf64>
        %9 = affine.load %arg3[%arg7, %7] : memref<?x28xf64>
        %10 = arith.subf %9, %8 : f64
        affine.store %10, %arg3[%arg7, %7] : memref<?x28xf64>
        %11 = affine.load %arg6[%7] : memref<?xf64>
        %12 = arith.mulf %0, %11 : f64
        %13 = arith.divf %10, %12 : f64
        affine.store %13, %arg3[%arg7, %7] : memref<?x28xf64>
        %14 = affine.apply #map1(%arg8)
        %15 = affine.load %arg5[%14] : memref<?xf64>
        %16 = affine.load %arg3[%arg7, %14] : memref<?x28xf64>
        %17 = arith.subf %16, %15 : f64
        affine.store %17, %arg3[%arg7, %14] : memref<?x28xf64>
        %18 = affine.load %arg6[%14] : memref<?xf64>
        %19 = arith.mulf %0, %18 : f64
        %20 = arith.divf %17, %19 : f64
        affine.store %20, %arg3[%arg7, %14] : memref<?x28xf64>
        %21 = affine.apply #map2(%arg8)
        %22 = affine.load %arg5[%21] : memref<?xf64>
        %23 = affine.load %arg3[%arg7, %21] : memref<?x28xf64>
        %24 = arith.subf %23, %22 : f64
        affine.store %24, %arg3[%arg7, %21] : memref<?x28xf64>
        %25 = affine.load %arg6[%21] : memref<?xf64>
        %26 = arith.mulf %0, %25 : f64
        %27 = arith.divf %24, %26 : f64
        affine.store %27, %arg3[%arg7, %21] : memref<?x28xf64>
      }
    }
    affine.for %arg7 = 0 to 27 {
      affine.store %cst, %arg4[%arg7, %arg7] : memref<?x28xf64>
      affine.for %arg8 = #map(%arg7) to 28 {
        affine.store %cst_0, %arg4[%arg7, %arg8] : memref<?x28xf64>
        affine.for %arg9 = 0 to 32 step 4 {
          %2 = affine.load %arg3[%arg9, %arg7] : memref<?x28xf64>
          %3 = affine.load %arg3[%arg9, %arg8] : memref<?x28xf64>
          %4 = arith.mulf %2, %3 : f64
          %5 = affine.load %arg4[%arg7, %arg8] : memref<?x28xf64>
          %6 = arith.addf %5, %4 : f64
          affine.store %6, %arg4[%arg7, %arg8] : memref<?x28xf64>
          %7 = affine.apply #map(%arg9)
          %8 = affine.load %arg3[%7, %arg7] : memref<?x28xf64>
          %9 = affine.load %arg3[%7, %arg8] : memref<?x28xf64>
          %10 = arith.mulf %8, %9 : f64
          %11 = affine.load %arg4[%arg7, %arg8] : memref<?x28xf64>
          %12 = arith.addf %11, %10 : f64
          affine.store %12, %arg4[%arg7, %arg8] : memref<?x28xf64>
          %13 = affine.apply #map1(%arg9)
          %14 = affine.load %arg3[%13, %arg7] : memref<?x28xf64>
          %15 = affine.load %arg3[%13, %arg8] : memref<?x28xf64>
          %16 = arith.mulf %14, %15 : f64
          %17 = affine.load %arg4[%arg7, %arg8] : memref<?x28xf64>
          %18 = arith.addf %17, %16 : f64
          affine.store %18, %arg4[%arg7, %arg8] : memref<?x28xf64>
          %19 = affine.apply #map2(%arg9)
          %20 = affine.load %arg3[%19, %arg7] : memref<?x28xf64>
          %21 = affine.load %arg3[%19, %arg8] : memref<?x28xf64>
          %22 = arith.mulf %20, %21 : f64
          %23 = affine.load %arg4[%arg7, %arg8] : memref<?x28xf64>
          %24 = arith.addf %23, %22 : f64
          affine.store %24, %arg4[%arg7, %arg8] : memref<?x28xf64>
        }
        %1 = affine.load %arg4[%arg7, %arg8] : memref<?x28xf64>
        affine.store %1, %arg4[%arg8, %arg7] : memref<?x28xf64>
      }
    }
    affine.store %cst, %arg4[27, 27] : memref<?x28xf64>
    return
  }
}

