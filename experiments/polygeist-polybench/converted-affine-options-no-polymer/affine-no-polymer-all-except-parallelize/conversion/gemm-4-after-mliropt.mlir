#map = affine_map<(d0, d1) -> (d0 + d1)>
#map1 = affine_map<(d0) -> (d0 * 4)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0) -> (d0 + 2)>
#map4 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_gemm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: f64, %arg4: f64, %arg5: memref<?x25xf64>, %arg6: memref<?x30xf64>, %arg7: memref<?x25xf64>) {
    %c24 = arith.constant 24 : index
    %c24_0 = arith.constant 24 : index
    affine.for %arg8 = 0 to 20 {
      affine.for %arg9 = 0 to 1 {
        %0 = affine.apply #map(%arg8, %arg9)
        affine.for %arg10 = 0 to 6 {
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
          %3 = affine.load %arg6[%0, %arg10] : memref<?x30xf64>
          %4 = arith.mulf %arg3, %3 : f64
          %5 = affine.load %arg6[%0, %arg10] : memref<?x30xf64>
          %6 = arith.mulf %arg3, %5 : f64
          %7 = affine.load %arg6[%0, %arg10] : memref<?x30xf64>
          %8 = arith.mulf %arg3, %7 : f64
          %9 = affine.load %arg6[%0, %arg10] : memref<?x30xf64>
          %10 = arith.mulf %arg3, %9 : f64
          affine.for %arg11 = 0 to 6 {
            %17 = affine.apply #map1(%arg11)
            %18 = affine.load %arg7[%arg10, %17] : memref<?x25xf64>
            %19 = arith.mulf %4, %18 : f64
            %20 = affine.load %arg5[%0, %17] : memref<?x25xf64>
            %21 = arith.addf %20, %19 : f64
            affine.store %21, %arg5[%0, %17] : memref<?x25xf64>
            %22 = affine.apply #map2(%17)
            %23 = affine.load %arg7[%arg10, %22] : memref<?x25xf64>
            %24 = arith.mulf %6, %23 : f64
            %25 = affine.load %arg5[%0, %22] : memref<?x25xf64>
            %26 = arith.addf %25, %24 : f64
            affine.store %26, %arg5[%0, %22] : memref<?x25xf64>
            %27 = affine.apply #map3(%17)
            %28 = affine.load %arg7[%arg10, %27] : memref<?x25xf64>
            %29 = arith.mulf %8, %28 : f64
            %30 = affine.load %arg5[%0, %27] : memref<?x25xf64>
            %31 = arith.addf %30, %29 : f64
            affine.store %31, %arg5[%0, %27] : memref<?x25xf64>
            %32 = affine.apply #map4(%17)
            %33 = affine.load %arg7[%arg10, %32] : memref<?x25xf64>
            %34 = arith.mulf %10, %33 : f64
            %35 = affine.load %arg5[%0, %32] : memref<?x25xf64>
            %36 = arith.addf %35, %34 : f64
            affine.store %36, %arg5[%0, %32] : memref<?x25xf64>
          }
          %11 = affine.load %arg6[%0, %arg10] : memref<?x30xf64>
          %12 = arith.mulf %arg3, %11 : f64
          %13 = affine.load %arg7[%arg10, %c24] : memref<?x25xf64>
          %14 = arith.mulf %12, %13 : f64
          %15 = affine.load %arg5[%0, %c24] : memref<?x25xf64>
          %16 = arith.addf %15, %14 : f64
          affine.store %16, %arg5[%0, %c24] : memref<?x25xf64>
        }
      }
    }
    return
  }
}

