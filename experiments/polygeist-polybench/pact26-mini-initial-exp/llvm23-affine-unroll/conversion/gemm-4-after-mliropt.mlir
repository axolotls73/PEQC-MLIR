#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0 + 2)>
#map2 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_gemm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: f64, %arg4: f64, %arg5: memref<?x25xf64>, %arg6: memref<?x30xf64>, %arg7: memref<?x25xf64>) {
    %c24 = arith.constant 24 : index
    %c24_0 = arith.constant 24 : index
    affine.for %arg8 = 0 to 20 {
      affine.for %arg9 = 0 to 24 step 4 {
        %2 = affine.load %arg5[%arg8, %arg9] : memref<?x25xf64>
        %3 = arith.mulf %2, %arg4 : f64
        affine.store %3, %arg5[%arg8, %arg9] : memref<?x25xf64>
        %4 = affine.apply #map(%arg9)
        %5 = affine.load %arg5[%arg8, %4] : memref<?x25xf64>
        %6 = arith.mulf %5, %arg4 : f64
        affine.store %6, %arg5[%arg8, %4] : memref<?x25xf64>
        %7 = affine.apply #map1(%arg9)
        %8 = affine.load %arg5[%arg8, %7] : memref<?x25xf64>
        %9 = arith.mulf %8, %arg4 : f64
        affine.store %9, %arg5[%arg8, %7] : memref<?x25xf64>
        %10 = affine.apply #map2(%arg9)
        %11 = affine.load %arg5[%arg8, %10] : memref<?x25xf64>
        %12 = arith.mulf %11, %arg4 : f64
        affine.store %12, %arg5[%arg8, %10] : memref<?x25xf64>
      }
      %0 = affine.load %arg5[%arg8, %c24_0] : memref<?x25xf64>
      %1 = arith.mulf %0, %arg4 : f64
      affine.store %1, %arg5[%arg8, %c24_0] : memref<?x25xf64>
      affine.for %arg9 = 0 to 30 {
        affine.for %arg10 = 0 to 24 step 4 {
          %8 = affine.load %arg6[%arg8, %arg9] : memref<?x30xf64>
          %9 = arith.mulf %arg3, %8 : f64
          %10 = affine.load %arg7[%arg9, %arg10] : memref<?x25xf64>
          %11 = arith.mulf %9, %10 : f64
          %12 = affine.load %arg5[%arg8, %arg10] : memref<?x25xf64>
          %13 = arith.addf %12, %11 : f64
          affine.store %13, %arg5[%arg8, %arg10] : memref<?x25xf64>
          %14 = affine.apply #map(%arg10)
          %15 = affine.load %arg6[%arg8, %arg9] : memref<?x30xf64>
          %16 = arith.mulf %arg3, %15 : f64
          %17 = affine.load %arg7[%arg9, %14] : memref<?x25xf64>
          %18 = arith.mulf %16, %17 : f64
          %19 = affine.load %arg5[%arg8, %14] : memref<?x25xf64>
          %20 = arith.addf %19, %18 : f64
          affine.store %20, %arg5[%arg8, %14] : memref<?x25xf64>
          %21 = affine.apply #map1(%arg10)
          %22 = affine.load %arg6[%arg8, %arg9] : memref<?x30xf64>
          %23 = arith.mulf %arg3, %22 : f64
          %24 = affine.load %arg7[%arg9, %21] : memref<?x25xf64>
          %25 = arith.mulf %23, %24 : f64
          %26 = affine.load %arg5[%arg8, %21] : memref<?x25xf64>
          %27 = arith.addf %26, %25 : f64
          affine.store %27, %arg5[%arg8, %21] : memref<?x25xf64>
          %28 = affine.apply #map2(%arg10)
          %29 = affine.load %arg6[%arg8, %arg9] : memref<?x30xf64>
          %30 = arith.mulf %arg3, %29 : f64
          %31 = affine.load %arg7[%arg9, %28] : memref<?x25xf64>
          %32 = arith.mulf %30, %31 : f64
          %33 = affine.load %arg5[%arg8, %28] : memref<?x25xf64>
          %34 = arith.addf %33, %32 : f64
          affine.store %34, %arg5[%arg8, %28] : memref<?x25xf64>
        }
        %2 = affine.load %arg6[%arg8, %arg9] : memref<?x30xf64>
        %3 = arith.mulf %arg3, %2 : f64
        %4 = affine.load %arg7[%arg9, %c24] : memref<?x25xf64>
        %5 = arith.mulf %3, %4 : f64
        %6 = affine.load %arg5[%arg8, %c24] : memref<?x25xf64>
        %7 = arith.addf %6, %5 : f64
        affine.store %7, %arg5[%arg8, %c24] : memref<?x25xf64>
      }
    }
    return
  }
}

