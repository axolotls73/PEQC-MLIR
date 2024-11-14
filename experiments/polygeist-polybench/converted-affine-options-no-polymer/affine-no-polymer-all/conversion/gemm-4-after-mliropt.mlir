#map = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0, d1) -> (d0 + d1)>
#map2 = affine_map<(d0) -> (d0 * 4)>
#map3 = affine_map<(d0) -> (d0 + 1)>
#map4 = affine_map<(d0) -> (d0 + 2)>
#map5 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_gemm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: f64, %arg4: f64, %arg5: memref<?x25xf64>, %arg6: memref<?x30xf64>, %arg7: memref<?x25xf64>) {
    %c24 = arith.constant 24 : index
    %c24_0 = arith.constant 24 : index
    affine.parallel (%arg8) = (0) to (1) {
      %0 = affine.apply #map(%arg8)
      affine.for %arg9 = 0 to 20 {
        %1 = affine.apply #map1(%0, %arg9)
        affine.for %arg10 = 0 to 6 {
          %4 = affine.apply #map2(%arg10)
          %5 = affine.load %arg5[%1, %4] : memref<?x25xf64>
          %6 = arith.mulf %5, %arg4 : f64
          affine.store %6, %arg5[%1, %4] : memref<?x25xf64>
          %7 = affine.apply #map3(%4)
          %8 = affine.load %arg5[%1, %7] : memref<?x25xf64>
          %9 = arith.mulf %8, %arg4 : f64
          affine.store %9, %arg5[%1, %7] : memref<?x25xf64>
          %10 = affine.apply #map4(%4)
          %11 = affine.load %arg5[%1, %10] : memref<?x25xf64>
          %12 = arith.mulf %11, %arg4 : f64
          affine.store %12, %arg5[%1, %10] : memref<?x25xf64>
          %13 = affine.apply #map5(%4)
          %14 = affine.load %arg5[%1, %13] : memref<?x25xf64>
          %15 = arith.mulf %14, %arg4 : f64
          affine.store %15, %arg5[%1, %13] : memref<?x25xf64>
        }
        %2 = affine.load %arg5[%1, %c24_0] : memref<?x25xf64>
        %3 = arith.mulf %2, %arg4 : f64
        affine.store %3, %arg5[%1, %c24_0] : memref<?x25xf64>
        affine.for %arg10 = 0 to 30 {
          %4 = affine.load %arg6[%1, %arg10] : memref<?x30xf64>
          %5 = arith.mulf %arg3, %4 : f64
          %6 = affine.load %arg6[%1, %arg10] : memref<?x30xf64>
          %7 = arith.mulf %arg3, %6 : f64
          %8 = affine.load %arg6[%1, %arg10] : memref<?x30xf64>
          %9 = arith.mulf %arg3, %8 : f64
          %10 = affine.load %arg6[%1, %arg10] : memref<?x30xf64>
          %11 = arith.mulf %arg3, %10 : f64
          affine.for %arg11 = 0 to 6 {
            %18 = affine.apply #map2(%arg11)
            %19 = affine.load %arg7[%arg10, %18] : memref<?x25xf64>
            %20 = arith.mulf %5, %19 : f64
            %21 = affine.load %arg5[%1, %18] : memref<?x25xf64>
            %22 = arith.addf %21, %20 : f64
            affine.store %22, %arg5[%1, %18] : memref<?x25xf64>
            %23 = affine.apply #map3(%18)
            %24 = affine.load %arg7[%arg10, %23] : memref<?x25xf64>
            %25 = arith.mulf %7, %24 : f64
            %26 = affine.load %arg5[%1, %23] : memref<?x25xf64>
            %27 = arith.addf %26, %25 : f64
            affine.store %27, %arg5[%1, %23] : memref<?x25xf64>
            %28 = affine.apply #map4(%18)
            %29 = affine.load %arg7[%arg10, %28] : memref<?x25xf64>
            %30 = arith.mulf %9, %29 : f64
            %31 = affine.load %arg5[%1, %28] : memref<?x25xf64>
            %32 = arith.addf %31, %30 : f64
            affine.store %32, %arg5[%1, %28] : memref<?x25xf64>
            %33 = affine.apply #map5(%18)
            %34 = affine.load %arg7[%arg10, %33] : memref<?x25xf64>
            %35 = arith.mulf %11, %34 : f64
            %36 = affine.load %arg5[%1, %33] : memref<?x25xf64>
            %37 = arith.addf %36, %35 : f64
            affine.store %37, %arg5[%1, %33] : memref<?x25xf64>
          }
          %12 = affine.load %arg6[%1, %arg10] : memref<?x30xf64>
          %13 = arith.mulf %arg3, %12 : f64
          %14 = affine.load %arg7[%arg10, %c24] : memref<?x25xf64>
          %15 = arith.mulf %13, %14 : f64
          %16 = affine.load %arg5[%1, %c24] : memref<?x25xf64>
          %17 = arith.addf %16, %15 : f64
          affine.store %17, %arg5[%1, %c24] : memref<?x25xf64>
        }
      }
    }
    return
  }
}

