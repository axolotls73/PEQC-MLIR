#map = affine_map<(d0, d1) -> (d0 + d1)>
#map1 = affine_map<(d0) -> (d0 * 4)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0) -> (d0 + 2)>
#map4 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_gemm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: f64, %arg4: f64, %arg5: memref<?x25xf64>, %arg6: memref<?x30xf64>, %arg7: memref<?x25xf64>) {
    %c24 = arith.constant 24 : index
    %c24_0 = arith.constant 24 : index
    affine.parallel (%arg8) = (0) to (20) {
      affine.parallel (%arg9) = (0) to (1) {
        %0 = affine.apply #map(%arg8, %arg9)
        affine.parallel (%arg10) = (0) to (6) {
          %3 = affine.apply #map1(%arg10)
          %4 = affine.load %arg5[%0, %3] : memref<?x25xf64>
          %5 = arith.mulf %4, %arg4 : f64
          affine.store %5, %arg5[%0, %3] : memref<?x25xf64>
          %6 = affine.apply #map2(%3)
          %7 = affine.load %arg5[%0, %6] : memref<?x25xf64>
          %8 = arith.mulf %7, %arg4 : f64
          affine.store %8, %arg5[%0, %6] : memref<?x25xf64>
          %9 = affine.apply #map3(%3)
          %10 = affine.load %arg5[%0, %9] : memref<?x25xf64>
          %11 = arith.mulf %10, %arg4 : f64
          affine.store %11, %arg5[%0, %9] : memref<?x25xf64>
          %12 = affine.apply #map4(%3)
          %13 = affine.load %arg5[%0, %12] : memref<?x25xf64>
          %14 = arith.mulf %13, %arg4 : f64
          affine.store %14, %arg5[%0, %12] : memref<?x25xf64>
        }
        %1 = affine.load %arg5[%0, %c24_0] : memref<?x25xf64>
        %2 = arith.mulf %1, %arg4 : f64
        affine.store %2, %arg5[%0, %c24_0] : memref<?x25xf64>
        affine.for %arg10 = 0 to 30 {
          affine.parallel (%arg11) = (0) to (6) {
            %9 = affine.apply #map1(%arg11)
            %10 = affine.load %arg6[%0, %arg10] : memref<?x30xf64>
            %11 = arith.mulf %arg3, %10 : f64
            %12 = affine.load %arg7[%arg10, %9] : memref<?x25xf64>
            %13 = arith.mulf %11, %12 : f64
            %14 = affine.load %arg5[%0, %9] : memref<?x25xf64>
            %15 = arith.addf %14, %13 : f64
            affine.store %15, %arg5[%0, %9] : memref<?x25xf64>
            %16 = affine.apply #map2(%9)
            %17 = affine.load %arg6[%0, %arg10] : memref<?x30xf64>
            %18 = arith.mulf %arg3, %17 : f64
            %19 = affine.load %arg7[%arg10, %16] : memref<?x25xf64>
            %20 = arith.mulf %18, %19 : f64
            %21 = affine.load %arg5[%0, %16] : memref<?x25xf64>
            %22 = arith.addf %21, %20 : f64
            affine.store %22, %arg5[%0, %16] : memref<?x25xf64>
            %23 = affine.apply #map3(%9)
            %24 = affine.load %arg6[%0, %arg10] : memref<?x30xf64>
            %25 = arith.mulf %arg3, %24 : f64
            %26 = affine.load %arg7[%arg10, %23] : memref<?x25xf64>
            %27 = arith.mulf %25, %26 : f64
            %28 = affine.load %arg5[%0, %23] : memref<?x25xf64>
            %29 = arith.addf %28, %27 : f64
            affine.store %29, %arg5[%0, %23] : memref<?x25xf64>
            %30 = affine.apply #map4(%9)
            %31 = affine.load %arg6[%0, %arg10] : memref<?x30xf64>
            %32 = arith.mulf %arg3, %31 : f64
            %33 = affine.load %arg7[%arg10, %30] : memref<?x25xf64>
            %34 = arith.mulf %32, %33 : f64
            %35 = affine.load %arg5[%0, %30] : memref<?x25xf64>
            %36 = arith.addf %35, %34 : f64
            affine.store %36, %arg5[%0, %30] : memref<?x25xf64>
          }
          %3 = affine.load %arg6[%0, %arg10] : memref<?x30xf64>
          %4 = arith.mulf %arg3, %3 : f64
          %5 = affine.load %arg7[%arg10, %c24] : memref<?x25xf64>
          %6 = arith.mulf %4, %5 : f64
          %7 = affine.load %arg5[%0, %c24] : memref<?x25xf64>
          %8 = arith.addf %7, %6 : f64
          affine.store %8, %arg5[%0, %c24] : memref<?x25xf64>
        }
      }
    }
    return
  }
}

