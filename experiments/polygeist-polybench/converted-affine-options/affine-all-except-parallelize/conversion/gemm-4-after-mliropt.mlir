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
      }
    }
    affine.for %arg8 = 0 to 20 {
      affine.for %arg9 = 0 to 1 {
        %0 = affine.apply #map(%arg8, %arg9)
        affine.for %arg10 = 0 to 30 {
          affine.for %arg11 = 0 to 1 {
            %1 = affine.apply #map(%arg10, %arg11)
            %2 = affine.load %arg6[%0, %1] : memref<?x30xf64>
            %3 = arith.mulf %arg3, %2 : f64
            %4 = affine.load %arg6[%0, %1] : memref<?x30xf64>
            %5 = arith.mulf %arg3, %4 : f64
            %6 = affine.load %arg6[%0, %1] : memref<?x30xf64>
            %7 = arith.mulf %arg3, %6 : f64
            %8 = affine.load %arg6[%0, %1] : memref<?x30xf64>
            %9 = arith.mulf %arg3, %8 : f64
            affine.for %arg12 = 0 to 6 {
              %16 = affine.apply #map1(%arg12)
              %17 = affine.load %arg5[%0, %16] : memref<?x25xf64>
              %18 = affine.load %arg7[%1, %16] : memref<?x25xf64>
              %19 = arith.mulf %3, %18 : f64
              %20 = arith.addf %17, %19 : f64
              affine.store %20, %arg5[%0, %16] : memref<?x25xf64>
              %21 = affine.apply #map2(%16)
              %22 = affine.load %arg5[%0, %21] : memref<?x25xf64>
              %23 = affine.load %arg7[%1, %21] : memref<?x25xf64>
              %24 = arith.mulf %5, %23 : f64
              %25 = arith.addf %22, %24 : f64
              affine.store %25, %arg5[%0, %21] : memref<?x25xf64>
              %26 = affine.apply #map3(%16)
              %27 = affine.load %arg5[%0, %26] : memref<?x25xf64>
              %28 = affine.load %arg7[%1, %26] : memref<?x25xf64>
              %29 = arith.mulf %7, %28 : f64
              %30 = arith.addf %27, %29 : f64
              affine.store %30, %arg5[%0, %26] : memref<?x25xf64>
              %31 = affine.apply #map4(%16)
              %32 = affine.load %arg5[%0, %31] : memref<?x25xf64>
              %33 = affine.load %arg7[%1, %31] : memref<?x25xf64>
              %34 = arith.mulf %9, %33 : f64
              %35 = arith.addf %32, %34 : f64
              affine.store %35, %arg5[%0, %31] : memref<?x25xf64>
            }
            %10 = affine.load %arg5[%0, %c24] : memref<?x25xf64>
            %11 = affine.load %arg6[%0, %1] : memref<?x30xf64>
            %12 = arith.mulf %arg3, %11 : f64
            %13 = affine.load %arg7[%1, %c24] : memref<?x25xf64>
            %14 = arith.mulf %12, %13 : f64
            %15 = arith.addf %10, %14 : f64
            affine.store %15, %arg5[%0, %c24] : memref<?x25xf64>
          }
        }
      }
    }
    return
  }
}

