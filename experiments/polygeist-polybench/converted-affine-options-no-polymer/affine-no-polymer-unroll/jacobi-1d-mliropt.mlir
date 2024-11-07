#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0 + 2)>
#map2 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_jacobi_1d(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %cst = arith.constant 3.333300e-01 : f64
    affine.for %arg4 = 0 to 20 {
      affine.for %arg5 = 1 to 29 step 4 {
        %0 = affine.load %arg2[%arg5 - 1] : memref<?xf64>
        %1 = affine.load %arg2[%arg5] : memref<?xf64>
        %2 = arith.addf %0, %1 : f64
        %3 = affine.load %arg2[%arg5 + 1] : memref<?xf64>
        %4 = arith.addf %2, %3 : f64
        %5 = arith.mulf %4, %cst : f64
        affine.store %5, %arg3[%arg5] : memref<?xf64>
        %6 = affine.apply #map(%arg5)
        %7 = affine.load %arg2[%6 - 1] : memref<?xf64>
        %8 = affine.load %arg2[%6] : memref<?xf64>
        %9 = arith.addf %7, %8 : f64
        %10 = affine.load %arg2[%6 + 1] : memref<?xf64>
        %11 = arith.addf %9, %10 : f64
        %12 = arith.mulf %11, %cst : f64
        affine.store %12, %arg3[%6] : memref<?xf64>
        %13 = affine.apply #map1(%arg5)
        %14 = affine.load %arg2[%13 - 1] : memref<?xf64>
        %15 = affine.load %arg2[%13] : memref<?xf64>
        %16 = arith.addf %14, %15 : f64
        %17 = affine.load %arg2[%13 + 1] : memref<?xf64>
        %18 = arith.addf %16, %17 : f64
        %19 = arith.mulf %18, %cst : f64
        affine.store %19, %arg3[%13] : memref<?xf64>
        %20 = affine.apply #map2(%arg5)
        %21 = affine.load %arg2[%20 - 1] : memref<?xf64>
        %22 = affine.load %arg2[%20] : memref<?xf64>
        %23 = arith.addf %21, %22 : f64
        %24 = affine.load %arg2[%20 + 1] : memref<?xf64>
        %25 = arith.addf %23, %24 : f64
        %26 = arith.mulf %25, %cst : f64
        affine.store %26, %arg3[%20] : memref<?xf64>
      }
      affine.for %arg5 = 1 to 29 step 4 {
        %0 = affine.load %arg3[%arg5 - 1] : memref<?xf64>
        %1 = affine.load %arg3[%arg5] : memref<?xf64>
        %2 = arith.addf %0, %1 : f64
        %3 = affine.load %arg3[%arg5 + 1] : memref<?xf64>
        %4 = arith.addf %2, %3 : f64
        %5 = arith.mulf %4, %cst : f64
        affine.store %5, %arg2[%arg5] : memref<?xf64>
        %6 = affine.apply #map(%arg5)
        %7 = affine.load %arg3[%6 - 1] : memref<?xf64>
        %8 = affine.load %arg3[%6] : memref<?xf64>
        %9 = arith.addf %7, %8 : f64
        %10 = affine.load %arg3[%6 + 1] : memref<?xf64>
        %11 = arith.addf %9, %10 : f64
        %12 = arith.mulf %11, %cst : f64
        affine.store %12, %arg2[%6] : memref<?xf64>
        %13 = affine.apply #map1(%arg5)
        %14 = affine.load %arg3[%13 - 1] : memref<?xf64>
        %15 = affine.load %arg3[%13] : memref<?xf64>
        %16 = arith.addf %14, %15 : f64
        %17 = affine.load %arg3[%13 + 1] : memref<?xf64>
        %18 = arith.addf %16, %17 : f64
        %19 = arith.mulf %18, %cst : f64
        affine.store %19, %arg2[%13] : memref<?xf64>
        %20 = affine.apply #map2(%arg5)
        %21 = affine.load %arg3[%20 - 1] : memref<?xf64>
        %22 = affine.load %arg3[%20] : memref<?xf64>
        %23 = arith.addf %21, %22 : f64
        %24 = affine.load %arg3[%20 + 1] : memref<?xf64>
        %25 = arith.addf %23, %24 : f64
        %26 = arith.mulf %25, %cst : f64
        affine.store %26, %arg2[%20] : memref<?xf64>
      }
    }
    return
  }
}

