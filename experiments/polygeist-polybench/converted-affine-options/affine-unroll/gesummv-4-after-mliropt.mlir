#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0 + 2)>
#map2 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_gesummv(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    affine.for %arg8 = 0 to 28 step 4 {
      affine.store %cst, %arg7[%arg8] : memref<?xf64>
      %0 = affine.apply #map(%arg8)
      affine.store %cst, %arg7[%0] : memref<?xf64>
      %1 = affine.apply #map1(%arg8)
      affine.store %cst, %arg7[%1] : memref<?xf64>
      %2 = affine.apply #map2(%arg8)
      affine.store %cst, %arg7[%2] : memref<?xf64>
    }
    affine.for %arg8 = 28 to 30 {
      affine.store %cst, %arg7[%arg8] : memref<?xf64>
    }
    affine.for %arg8 = 0 to 30 {
      affine.for %arg9 = 0 to 28 step 4 {
        %0 = affine.load %arg4[%arg8, %arg9] : memref<?x30xf64>
        %1 = affine.load %arg6[%arg9] : memref<?xf64>
        %2 = arith.mulf %0, %1 : f64
        %3 = affine.load %arg7[%arg8] : memref<?xf64>
        %4 = arith.addf %2, %3 : f64
        affine.store %4, %arg7[%arg8] : memref<?xf64>
        %5 = affine.apply #map(%arg9)
        %6 = affine.load %arg4[%arg8, %5] : memref<?x30xf64>
        %7 = affine.load %arg6[%5] : memref<?xf64>
        %8 = arith.mulf %6, %7 : f64
        %9 = affine.load %arg7[%arg8] : memref<?xf64>
        %10 = arith.addf %8, %9 : f64
        affine.store %10, %arg7[%arg8] : memref<?xf64>
        %11 = affine.apply #map1(%arg9)
        %12 = affine.load %arg4[%arg8, %11] : memref<?x30xf64>
        %13 = affine.load %arg6[%11] : memref<?xf64>
        %14 = arith.mulf %12, %13 : f64
        %15 = affine.load %arg7[%arg8] : memref<?xf64>
        %16 = arith.addf %14, %15 : f64
        affine.store %16, %arg7[%arg8] : memref<?xf64>
        %17 = affine.apply #map2(%arg9)
        %18 = affine.load %arg4[%arg8, %17] : memref<?x30xf64>
        %19 = affine.load %arg6[%17] : memref<?xf64>
        %20 = arith.mulf %18, %19 : f64
        %21 = affine.load %arg7[%arg8] : memref<?xf64>
        %22 = arith.addf %20, %21 : f64
        affine.store %22, %arg7[%arg8] : memref<?xf64>
      }
      affine.for %arg9 = 28 to 30 {
        %0 = affine.load %arg4[%arg8, %arg9] : memref<?x30xf64>
        %1 = affine.load %arg6[%arg9] : memref<?xf64>
        %2 = arith.mulf %0, %1 : f64
        %3 = affine.load %arg7[%arg8] : memref<?xf64>
        %4 = arith.addf %2, %3 : f64
        affine.store %4, %arg7[%arg8] : memref<?xf64>
      }
    }
    affine.for %arg8 = 0 to 28 step 4 {
      affine.store %cst, %arg5[%arg8] : memref<?xf64>
      %0 = affine.apply #map(%arg8)
      affine.store %cst, %arg5[%0] : memref<?xf64>
      %1 = affine.apply #map1(%arg8)
      affine.store %cst, %arg5[%1] : memref<?xf64>
      %2 = affine.apply #map2(%arg8)
      affine.store %cst, %arg5[%2] : memref<?xf64>
    }
    affine.for %arg8 = 28 to 30 {
      affine.store %cst, %arg5[%arg8] : memref<?xf64>
    }
    affine.for %arg8 = 0 to 30 {
      affine.for %arg9 = 0 to 28 step 4 {
        %0 = affine.load %arg3[%arg8, %arg9] : memref<?x30xf64>
        %1 = affine.load %arg6[%arg9] : memref<?xf64>
        %2 = arith.mulf %0, %1 : f64
        %3 = affine.load %arg5[%arg8] : memref<?xf64>
        %4 = arith.addf %2, %3 : f64
        affine.store %4, %arg5[%arg8] : memref<?xf64>
        %5 = affine.apply #map(%arg9)
        %6 = affine.load %arg3[%arg8, %5] : memref<?x30xf64>
        %7 = affine.load %arg6[%5] : memref<?xf64>
        %8 = arith.mulf %6, %7 : f64
        %9 = affine.load %arg5[%arg8] : memref<?xf64>
        %10 = arith.addf %8, %9 : f64
        affine.store %10, %arg5[%arg8] : memref<?xf64>
        %11 = affine.apply #map1(%arg9)
        %12 = affine.load %arg3[%arg8, %11] : memref<?x30xf64>
        %13 = affine.load %arg6[%11] : memref<?xf64>
        %14 = arith.mulf %12, %13 : f64
        %15 = affine.load %arg5[%arg8] : memref<?xf64>
        %16 = arith.addf %14, %15 : f64
        affine.store %16, %arg5[%arg8] : memref<?xf64>
        %17 = affine.apply #map2(%arg9)
        %18 = affine.load %arg3[%arg8, %17] : memref<?x30xf64>
        %19 = affine.load %arg6[%17] : memref<?xf64>
        %20 = arith.mulf %18, %19 : f64
        %21 = affine.load %arg5[%arg8] : memref<?xf64>
        %22 = arith.addf %20, %21 : f64
        affine.store %22, %arg5[%arg8] : memref<?xf64>
      }
      affine.for %arg9 = 28 to 30 {
        %0 = affine.load %arg3[%arg8, %arg9] : memref<?x30xf64>
        %1 = affine.load %arg6[%arg9] : memref<?xf64>
        %2 = arith.mulf %0, %1 : f64
        %3 = affine.load %arg5[%arg8] : memref<?xf64>
        %4 = arith.addf %2, %3 : f64
        affine.store %4, %arg5[%arg8] : memref<?xf64>
      }
    }
    affine.for %arg8 = 0 to 28 step 4 {
      %0 = affine.load %arg5[%arg8] : memref<?xf64>
      %1 = arith.mulf %arg1, %0 : f64
      %2 = affine.load %arg7[%arg8] : memref<?xf64>
      %3 = arith.mulf %arg2, %2 : f64
      %4 = arith.addf %1, %3 : f64
      affine.store %4, %arg7[%arg8] : memref<?xf64>
      %5 = affine.apply #map(%arg8)
      %6 = affine.load %arg5[%5] : memref<?xf64>
      %7 = arith.mulf %arg1, %6 : f64
      %8 = affine.load %arg7[%5] : memref<?xf64>
      %9 = arith.mulf %arg2, %8 : f64
      %10 = arith.addf %7, %9 : f64
      affine.store %10, %arg7[%5] : memref<?xf64>
      %11 = affine.apply #map1(%arg8)
      %12 = affine.load %arg5[%11] : memref<?xf64>
      %13 = arith.mulf %arg1, %12 : f64
      %14 = affine.load %arg7[%11] : memref<?xf64>
      %15 = arith.mulf %arg2, %14 : f64
      %16 = arith.addf %13, %15 : f64
      affine.store %16, %arg7[%11] : memref<?xf64>
      %17 = affine.apply #map2(%arg8)
      %18 = affine.load %arg5[%17] : memref<?xf64>
      %19 = arith.mulf %arg1, %18 : f64
      %20 = affine.load %arg7[%17] : memref<?xf64>
      %21 = arith.mulf %arg2, %20 : f64
      %22 = arith.addf %19, %21 : f64
      affine.store %22, %arg7[%17] : memref<?xf64>
    }
    affine.for %arg8 = 28 to 30 {
      %0 = affine.load %arg5[%arg8] : memref<?xf64>
      %1 = arith.mulf %arg1, %0 : f64
      %2 = affine.load %arg7[%arg8] : memref<?xf64>
      %3 = arith.mulf %arg2, %2 : f64
      %4 = arith.addf %1, %3 : f64
      affine.store %4, %arg7[%arg8] : memref<?xf64>
    }
    return
  }
}

