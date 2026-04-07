#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0 + 2)>
#map2 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_jacobi_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>) {
    %cst = arith.constant 2.000000e-01 : f64
    affine.for %arg4 = 0 to 20 {
      affine.for %arg5 = 1 to 29 {
        affine.for %arg6 = 1 to 29 step 4 {
          %0 = affine.load %arg2[%arg5, %arg6] : memref<?x30xf64>
          %1 = affine.load %arg2[%arg5, %arg6 - 1] : memref<?x30xf64>
          %2 = arith.addf %0, %1 : f64
          %3 = affine.load %arg2[%arg5, %arg6 + 1] : memref<?x30xf64>
          %4 = arith.addf %2, %3 : f64
          %5 = affine.load %arg2[%arg5 + 1, %arg6] : memref<?x30xf64>
          %6 = arith.addf %4, %5 : f64
          %7 = affine.load %arg2[%arg5 - 1, %arg6] : memref<?x30xf64>
          %8 = arith.addf %6, %7 : f64
          %9 = arith.mulf %8, %cst : f64
          affine.store %9, %arg3[%arg5, %arg6] : memref<?x30xf64>
          %10 = affine.apply #map(%arg6)
          %11 = affine.load %arg2[%arg5, %10] : memref<?x30xf64>
          %12 = affine.load %arg2[%arg5, %10 - 1] : memref<?x30xf64>
          %13 = arith.addf %11, %12 : f64
          %14 = affine.load %arg2[%arg5, %10 + 1] : memref<?x30xf64>
          %15 = arith.addf %13, %14 : f64
          %16 = affine.load %arg2[%arg5 + 1, %10] : memref<?x30xf64>
          %17 = arith.addf %15, %16 : f64
          %18 = affine.load %arg2[%arg5 - 1, %10] : memref<?x30xf64>
          %19 = arith.addf %17, %18 : f64
          %20 = arith.mulf %19, %cst : f64
          affine.store %20, %arg3[%arg5, %10] : memref<?x30xf64>
          %21 = affine.apply #map1(%arg6)
          %22 = affine.load %arg2[%arg5, %21] : memref<?x30xf64>
          %23 = affine.load %arg2[%arg5, %21 - 1] : memref<?x30xf64>
          %24 = arith.addf %22, %23 : f64
          %25 = affine.load %arg2[%arg5, %21 + 1] : memref<?x30xf64>
          %26 = arith.addf %24, %25 : f64
          %27 = affine.load %arg2[%arg5 + 1, %21] : memref<?x30xf64>
          %28 = arith.addf %26, %27 : f64
          %29 = affine.load %arg2[%arg5 - 1, %21] : memref<?x30xf64>
          %30 = arith.addf %28, %29 : f64
          %31 = arith.mulf %30, %cst : f64
          affine.store %31, %arg3[%arg5, %21] : memref<?x30xf64>
          %32 = affine.apply #map2(%arg6)
          %33 = affine.load %arg2[%arg5, %32] : memref<?x30xf64>
          %34 = affine.load %arg2[%arg5, %32 - 1] : memref<?x30xf64>
          %35 = arith.addf %33, %34 : f64
          %36 = affine.load %arg2[%arg5, %32 + 1] : memref<?x30xf64>
          %37 = arith.addf %35, %36 : f64
          %38 = affine.load %arg2[%arg5 + 1, %32] : memref<?x30xf64>
          %39 = arith.addf %37, %38 : f64
          %40 = affine.load %arg2[%arg5 - 1, %32] : memref<?x30xf64>
          %41 = arith.addf %39, %40 : f64
          %42 = arith.mulf %41, %cst : f64
          affine.store %42, %arg3[%arg5, %32] : memref<?x30xf64>
        }
      }
      affine.for %arg5 = 1 to 29 {
        affine.for %arg6 = 1 to 29 step 4 {
          %0 = affine.load %arg3[%arg5, %arg6] : memref<?x30xf64>
          %1 = affine.load %arg3[%arg5, %arg6 - 1] : memref<?x30xf64>
          %2 = arith.addf %0, %1 : f64
          %3 = affine.load %arg3[%arg5, %arg6 + 1] : memref<?x30xf64>
          %4 = arith.addf %2, %3 : f64
          %5 = affine.load %arg3[%arg5 + 1, %arg6] : memref<?x30xf64>
          %6 = arith.addf %4, %5 : f64
          %7 = affine.load %arg3[%arg5 - 1, %arg6] : memref<?x30xf64>
          %8 = arith.addf %6, %7 : f64
          %9 = arith.mulf %8, %cst : f64
          affine.store %9, %arg2[%arg5, %arg6] : memref<?x30xf64>
          %10 = affine.apply #map(%arg6)
          %11 = affine.load %arg3[%arg5, %10] : memref<?x30xf64>
          %12 = affine.load %arg3[%arg5, %10 - 1] : memref<?x30xf64>
          %13 = arith.addf %11, %12 : f64
          %14 = affine.load %arg3[%arg5, %10 + 1] : memref<?x30xf64>
          %15 = arith.addf %13, %14 : f64
          %16 = affine.load %arg3[%arg5 + 1, %10] : memref<?x30xf64>
          %17 = arith.addf %15, %16 : f64
          %18 = affine.load %arg3[%arg5 - 1, %10] : memref<?x30xf64>
          %19 = arith.addf %17, %18 : f64
          %20 = arith.mulf %19, %cst : f64
          affine.store %20, %arg2[%arg5, %10] : memref<?x30xf64>
          %21 = affine.apply #map1(%arg6)
          %22 = affine.load %arg3[%arg5, %21] : memref<?x30xf64>
          %23 = affine.load %arg3[%arg5, %21 - 1] : memref<?x30xf64>
          %24 = arith.addf %22, %23 : f64
          %25 = affine.load %arg3[%arg5, %21 + 1] : memref<?x30xf64>
          %26 = arith.addf %24, %25 : f64
          %27 = affine.load %arg3[%arg5 + 1, %21] : memref<?x30xf64>
          %28 = arith.addf %26, %27 : f64
          %29 = affine.load %arg3[%arg5 - 1, %21] : memref<?x30xf64>
          %30 = arith.addf %28, %29 : f64
          %31 = arith.mulf %30, %cst : f64
          affine.store %31, %arg2[%arg5, %21] : memref<?x30xf64>
          %32 = affine.apply #map2(%arg6)
          %33 = affine.load %arg3[%arg5, %32] : memref<?x30xf64>
          %34 = affine.load %arg3[%arg5, %32 - 1] : memref<?x30xf64>
          %35 = arith.addf %33, %34 : f64
          %36 = affine.load %arg3[%arg5, %32 + 1] : memref<?x30xf64>
          %37 = arith.addf %35, %36 : f64
          %38 = affine.load %arg3[%arg5 + 1, %32] : memref<?x30xf64>
          %39 = arith.addf %37, %38 : f64
          %40 = affine.load %arg3[%arg5 - 1, %32] : memref<?x30xf64>
          %41 = arith.addf %39, %40 : f64
          %42 = arith.mulf %41, %cst : f64
          affine.store %42, %arg2[%arg5, %32] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

