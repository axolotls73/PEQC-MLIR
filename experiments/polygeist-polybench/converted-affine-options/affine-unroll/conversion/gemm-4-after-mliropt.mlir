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
    }
    affine.for %arg8 = 0 to 20 {
      affine.for %arg9 = 0 to 30 {
        affine.for %arg10 = 0 to 24 step 4 {
          %6 = affine.load %arg5[%arg8, %arg10] : memref<?x25xf64>
          %7 = affine.load %arg6[%arg8, %arg9] : memref<?x30xf64>
          %8 = arith.mulf %arg3, %7 : f64
          %9 = affine.load %arg7[%arg9, %arg10] : memref<?x25xf64>
          %10 = arith.mulf %8, %9 : f64
          %11 = arith.addf %6, %10 : f64
          affine.store %11, %arg5[%arg8, %arg10] : memref<?x25xf64>
          %12 = affine.apply #map(%arg10)
          %13 = affine.load %arg5[%arg8, %12] : memref<?x25xf64>
          %14 = affine.load %arg6[%arg8, %arg9] : memref<?x30xf64>
          %15 = arith.mulf %arg3, %14 : f64
          %16 = affine.load %arg7[%arg9, %12] : memref<?x25xf64>
          %17 = arith.mulf %15, %16 : f64
          %18 = arith.addf %13, %17 : f64
          affine.store %18, %arg5[%arg8, %12] : memref<?x25xf64>
          %19 = affine.apply #map1(%arg10)
          %20 = affine.load %arg5[%arg8, %19] : memref<?x25xf64>
          %21 = affine.load %arg6[%arg8, %arg9] : memref<?x30xf64>
          %22 = arith.mulf %arg3, %21 : f64
          %23 = affine.load %arg7[%arg9, %19] : memref<?x25xf64>
          %24 = arith.mulf %22, %23 : f64
          %25 = arith.addf %20, %24 : f64
          affine.store %25, %arg5[%arg8, %19] : memref<?x25xf64>
          %26 = affine.apply #map2(%arg10)
          %27 = affine.load %arg5[%arg8, %26] : memref<?x25xf64>
          %28 = affine.load %arg6[%arg8, %arg9] : memref<?x30xf64>
          %29 = arith.mulf %arg3, %28 : f64
          %30 = affine.load %arg7[%arg9, %26] : memref<?x25xf64>
          %31 = arith.mulf %29, %30 : f64
          %32 = arith.addf %27, %31 : f64
          affine.store %32, %arg5[%arg8, %26] : memref<?x25xf64>
        }
        %0 = affine.load %arg5[%arg8, %c24] : memref<?x25xf64>
        %1 = affine.load %arg6[%arg8, %arg9] : memref<?x30xf64>
        %2 = arith.mulf %arg3, %1 : f64
        %3 = affine.load %arg7[%arg9, %c24] : memref<?x25xf64>
        %4 = arith.mulf %2, %3 : f64
        %5 = arith.addf %0, %4 : f64
        affine.store %5, %arg5[%arg8, %c24] : memref<?x25xf64>
      }
    }
    return
  }
}

