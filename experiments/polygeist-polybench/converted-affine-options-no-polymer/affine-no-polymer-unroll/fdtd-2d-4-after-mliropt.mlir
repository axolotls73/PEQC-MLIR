#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0 + 2)>
#map2 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_fdtd_2d(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?x30xf64>, %arg6: memref<?xf64>) {
    %c28 = arith.constant 28 : index
    %c29 = arith.constant 29 : index
    %cst = arith.constant 0.69999999999999996 : f64
    %cst_0 = arith.constant 5.000000e-01 : f64
    affine.for %arg7 = 0 to 20 {
      affine.for %arg8 = 0 to 28 step 4 {
        %0 = affine.load %arg6[%arg7] : memref<?xf64>
        affine.store %0, %arg4[0, %arg8] : memref<?x30xf64>
        %1 = affine.apply #map(%arg8)
        %2 = affine.load %arg6[%arg7] : memref<?xf64>
        affine.store %2, %arg4[0, %1] : memref<?x30xf64>
        %3 = affine.apply #map1(%arg8)
        %4 = affine.load %arg6[%arg7] : memref<?xf64>
        affine.store %4, %arg4[0, %3] : memref<?x30xf64>
        %5 = affine.apply #map2(%arg8)
        %6 = affine.load %arg6[%arg7] : memref<?xf64>
        affine.store %6, %arg4[0, %5] : memref<?x30xf64>
      }
      affine.for %arg8 = 28 to 30 {
        %0 = affine.load %arg6[%arg7] : memref<?xf64>
        affine.store %0, %arg4[0, %arg8] : memref<?x30xf64>
      }
      affine.for %arg8 = 1 to 20 {
        affine.for %arg9 = 0 to 28 step 4 {
          %0 = affine.load %arg4[%arg8, %arg9] : memref<?x30xf64>
          %1 = affine.load %arg5[%arg8, %arg9] : memref<?x30xf64>
          %2 = affine.load %arg5[%arg8 - 1, %arg9] : memref<?x30xf64>
          %3 = arith.subf %1, %2 : f64
          %4 = arith.mulf %3, %cst_0 : f64
          %5 = arith.subf %0, %4 : f64
          affine.store %5, %arg4[%arg8, %arg9] : memref<?x30xf64>
          %6 = affine.apply #map(%arg9)
          %7 = affine.load %arg4[%arg8, %6] : memref<?x30xf64>
          %8 = affine.load %arg5[%arg8, %6] : memref<?x30xf64>
          %9 = affine.load %arg5[%arg8 - 1, %6] : memref<?x30xf64>
          %10 = arith.subf %8, %9 : f64
          %11 = arith.mulf %10, %cst_0 : f64
          %12 = arith.subf %7, %11 : f64
          affine.store %12, %arg4[%arg8, %6] : memref<?x30xf64>
          %13 = affine.apply #map1(%arg9)
          %14 = affine.load %arg4[%arg8, %13] : memref<?x30xf64>
          %15 = affine.load %arg5[%arg8, %13] : memref<?x30xf64>
          %16 = affine.load %arg5[%arg8 - 1, %13] : memref<?x30xf64>
          %17 = arith.subf %15, %16 : f64
          %18 = arith.mulf %17, %cst_0 : f64
          %19 = arith.subf %14, %18 : f64
          affine.store %19, %arg4[%arg8, %13] : memref<?x30xf64>
          %20 = affine.apply #map2(%arg9)
          %21 = affine.load %arg4[%arg8, %20] : memref<?x30xf64>
          %22 = affine.load %arg5[%arg8, %20] : memref<?x30xf64>
          %23 = affine.load %arg5[%arg8 - 1, %20] : memref<?x30xf64>
          %24 = arith.subf %22, %23 : f64
          %25 = arith.mulf %24, %cst_0 : f64
          %26 = arith.subf %21, %25 : f64
          affine.store %26, %arg4[%arg8, %20] : memref<?x30xf64>
        }
        affine.for %arg9 = 28 to 30 {
          %0 = affine.load %arg4[%arg8, %arg9] : memref<?x30xf64>
          %1 = affine.load %arg5[%arg8, %arg9] : memref<?x30xf64>
          %2 = affine.load %arg5[%arg8 - 1, %arg9] : memref<?x30xf64>
          %3 = arith.subf %1, %2 : f64
          %4 = arith.mulf %3, %cst_0 : f64
          %5 = arith.subf %0, %4 : f64
          affine.store %5, %arg4[%arg8, %arg9] : memref<?x30xf64>
        }
      }
      affine.for %arg8 = 0 to 20 {
        affine.for %arg9 = 1 to 29 step 4 {
          %6 = affine.load %arg3[%arg8, %arg9] : memref<?x30xf64>
          %7 = affine.load %arg5[%arg8, %arg9] : memref<?x30xf64>
          %8 = affine.load %arg5[%arg8, %arg9 - 1] : memref<?x30xf64>
          %9 = arith.subf %7, %8 : f64
          %10 = arith.mulf %9, %cst_0 : f64
          %11 = arith.subf %6, %10 : f64
          affine.store %11, %arg3[%arg8, %arg9] : memref<?x30xf64>
          %12 = affine.apply #map(%arg9)
          %13 = affine.load %arg3[%arg8, %12] : memref<?x30xf64>
          %14 = affine.load %arg5[%arg8, %12] : memref<?x30xf64>
          %15 = affine.load %arg5[%arg8, %12 - 1] : memref<?x30xf64>
          %16 = arith.subf %14, %15 : f64
          %17 = arith.mulf %16, %cst_0 : f64
          %18 = arith.subf %13, %17 : f64
          affine.store %18, %arg3[%arg8, %12] : memref<?x30xf64>
          %19 = affine.apply #map1(%arg9)
          %20 = affine.load %arg3[%arg8, %19] : memref<?x30xf64>
          %21 = affine.load %arg5[%arg8, %19] : memref<?x30xf64>
          %22 = affine.load %arg5[%arg8, %19 - 1] : memref<?x30xf64>
          %23 = arith.subf %21, %22 : f64
          %24 = arith.mulf %23, %cst_0 : f64
          %25 = arith.subf %20, %24 : f64
          affine.store %25, %arg3[%arg8, %19] : memref<?x30xf64>
          %26 = affine.apply #map2(%arg9)
          %27 = affine.load %arg3[%arg8, %26] : memref<?x30xf64>
          %28 = affine.load %arg5[%arg8, %26] : memref<?x30xf64>
          %29 = affine.load %arg5[%arg8, %26 - 1] : memref<?x30xf64>
          %30 = arith.subf %28, %29 : f64
          %31 = arith.mulf %30, %cst_0 : f64
          %32 = arith.subf %27, %31 : f64
          affine.store %32, %arg3[%arg8, %26] : memref<?x30xf64>
        }
        %0 = affine.load %arg3[%arg8, %c29] : memref<?x30xf64>
        %1 = affine.load %arg5[%arg8, %c29] : memref<?x30xf64>
        %2 = affine.load %arg5[%arg8, %c29 - 1] : memref<?x30xf64>
        %3 = arith.subf %1, %2 : f64
        %4 = arith.mulf %3, %cst_0 : f64
        %5 = arith.subf %0, %4 : f64
        affine.store %5, %arg3[%arg8, %c29] : memref<?x30xf64>
      }
      affine.for %arg8 = 0 to 19 {
        affine.for %arg9 = 0 to 28 step 4 {
          %10 = affine.load %arg5[%arg8, %arg9] : memref<?x30xf64>
          %11 = affine.load %arg3[%arg8, %arg9 + 1] : memref<?x30xf64>
          %12 = affine.load %arg3[%arg8, %arg9] : memref<?x30xf64>
          %13 = arith.subf %11, %12 : f64
          %14 = affine.load %arg4[%arg8 + 1, %arg9] : memref<?x30xf64>
          %15 = arith.addf %13, %14 : f64
          %16 = affine.load %arg4[%arg8, %arg9] : memref<?x30xf64>
          %17 = arith.subf %15, %16 : f64
          %18 = arith.mulf %17, %cst : f64
          %19 = arith.subf %10, %18 : f64
          affine.store %19, %arg5[%arg8, %arg9] : memref<?x30xf64>
          %20 = affine.apply #map(%arg9)
          %21 = affine.load %arg5[%arg8, %20] : memref<?x30xf64>
          %22 = affine.load %arg3[%arg8, %20 + 1] : memref<?x30xf64>
          %23 = affine.load %arg3[%arg8, %20] : memref<?x30xf64>
          %24 = arith.subf %22, %23 : f64
          %25 = affine.load %arg4[%arg8 + 1, %20] : memref<?x30xf64>
          %26 = arith.addf %24, %25 : f64
          %27 = affine.load %arg4[%arg8, %20] : memref<?x30xf64>
          %28 = arith.subf %26, %27 : f64
          %29 = arith.mulf %28, %cst : f64
          %30 = arith.subf %21, %29 : f64
          affine.store %30, %arg5[%arg8, %20] : memref<?x30xf64>
          %31 = affine.apply #map1(%arg9)
          %32 = affine.load %arg5[%arg8, %31] : memref<?x30xf64>
          %33 = affine.load %arg3[%arg8, %31 + 1] : memref<?x30xf64>
          %34 = affine.load %arg3[%arg8, %31] : memref<?x30xf64>
          %35 = arith.subf %33, %34 : f64
          %36 = affine.load %arg4[%arg8 + 1, %31] : memref<?x30xf64>
          %37 = arith.addf %35, %36 : f64
          %38 = affine.load %arg4[%arg8, %31] : memref<?x30xf64>
          %39 = arith.subf %37, %38 : f64
          %40 = arith.mulf %39, %cst : f64
          %41 = arith.subf %32, %40 : f64
          affine.store %41, %arg5[%arg8, %31] : memref<?x30xf64>
          %42 = affine.apply #map2(%arg9)
          %43 = affine.load %arg5[%arg8, %42] : memref<?x30xf64>
          %44 = affine.load %arg3[%arg8, %42 + 1] : memref<?x30xf64>
          %45 = affine.load %arg3[%arg8, %42] : memref<?x30xf64>
          %46 = arith.subf %44, %45 : f64
          %47 = affine.load %arg4[%arg8 + 1, %42] : memref<?x30xf64>
          %48 = arith.addf %46, %47 : f64
          %49 = affine.load %arg4[%arg8, %42] : memref<?x30xf64>
          %50 = arith.subf %48, %49 : f64
          %51 = arith.mulf %50, %cst : f64
          %52 = arith.subf %43, %51 : f64
          affine.store %52, %arg5[%arg8, %42] : memref<?x30xf64>
        }
        %0 = affine.load %arg5[%arg8, %c28] : memref<?x30xf64>
        %1 = affine.load %arg3[%arg8, %c28 + 1] : memref<?x30xf64>
        %2 = affine.load %arg3[%arg8, %c28] : memref<?x30xf64>
        %3 = arith.subf %1, %2 : f64
        %4 = affine.load %arg4[%arg8 + 1, %c28] : memref<?x30xf64>
        %5 = arith.addf %3, %4 : f64
        %6 = affine.load %arg4[%arg8, %c28] : memref<?x30xf64>
        %7 = arith.subf %5, %6 : f64
        %8 = arith.mulf %7, %cst : f64
        %9 = arith.subf %0, %8 : f64
        affine.store %9, %arg5[%arg8, %c28] : memref<?x30xf64>
      }
    }
    return
  }
}

