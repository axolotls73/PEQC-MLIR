#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0 + 2)>
#map2 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_gemm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: f64, %arg4: f64, %arg5: memref<?x25xf64>, %arg6: memref<?x30xf64>, %arg7: memref<?x25xf64>) {
    affine.for %arg8 = 0 to 20 step 4 {
      affine.for %arg9 = 0 to 25 {
        %0 = affine.load %arg5[%arg8, %arg9] : memref<?x25xf64>
        %1 = arith.mulf %0, %arg4 : f64
        affine.store %1, %arg5[%arg8, %arg9] : memref<?x25xf64>
        %2 = affine.apply #map(%arg8)
        %3 = affine.load %arg5[%2, %arg9] : memref<?x25xf64>
        %4 = arith.mulf %3, %arg4 : f64
        affine.store %4, %arg5[%2, %arg9] : memref<?x25xf64>
        %5 = affine.apply #map1(%arg8)
        %6 = affine.load %arg5[%5, %arg9] : memref<?x25xf64>
        %7 = arith.mulf %6, %arg4 : f64
        affine.store %7, %arg5[%5, %arg9] : memref<?x25xf64>
        %8 = affine.apply #map2(%arg8)
        %9 = affine.load %arg5[%8, %arg9] : memref<?x25xf64>
        %10 = arith.mulf %9, %arg4 : f64
        affine.store %10, %arg5[%8, %arg9] : memref<?x25xf64>
      }
      affine.for %arg9 = 0 to 30 {
        affine.for %arg10 = 0 to 25 {
          %0 = affine.load %arg6[%arg8, %arg9] : memref<?x30xf64>
          %1 = arith.mulf %arg3, %0 : f64
          %2 = affine.load %arg7[%arg9, %arg10] : memref<?x25xf64>
          %3 = arith.mulf %1, %2 : f64
          %4 = affine.load %arg5[%arg8, %arg10] : memref<?x25xf64>
          %5 = arith.addf %4, %3 : f64
          affine.store %5, %arg5[%arg8, %arg10] : memref<?x25xf64>
          %6 = affine.apply #map(%arg8)
          %7 = affine.load %arg6[%6, %arg9] : memref<?x30xf64>
          %8 = arith.mulf %arg3, %7 : f64
          %9 = affine.load %arg7[%arg9, %arg10] : memref<?x25xf64>
          %10 = arith.mulf %8, %9 : f64
          %11 = affine.load %arg5[%6, %arg10] : memref<?x25xf64>
          %12 = arith.addf %11, %10 : f64
          affine.store %12, %arg5[%6, %arg10] : memref<?x25xf64>
          %13 = affine.apply #map1(%arg8)
          %14 = affine.load %arg6[%13, %arg9] : memref<?x30xf64>
          %15 = arith.mulf %arg3, %14 : f64
          %16 = affine.load %arg7[%arg9, %arg10] : memref<?x25xf64>
          %17 = arith.mulf %15, %16 : f64
          %18 = affine.load %arg5[%13, %arg10] : memref<?x25xf64>
          %19 = arith.addf %18, %17 : f64
          affine.store %19, %arg5[%13, %arg10] : memref<?x25xf64>
          %20 = affine.apply #map2(%arg8)
          %21 = affine.load %arg6[%20, %arg9] : memref<?x30xf64>
          %22 = arith.mulf %arg3, %21 : f64
          %23 = affine.load %arg7[%arg9, %arg10] : memref<?x25xf64>
          %24 = arith.mulf %22, %23 : f64
          %25 = affine.load %arg5[%20, %arg10] : memref<?x25xf64>
          %26 = arith.addf %25, %24 : f64
          affine.store %26, %arg5[%20, %arg10] : memref<?x25xf64>
        }
      }
    }
    return
  }
}

