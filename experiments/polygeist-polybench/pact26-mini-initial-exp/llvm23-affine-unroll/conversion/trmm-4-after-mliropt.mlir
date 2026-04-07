#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0 + ((-d0 + 19) floordiv 4) * 4 + 1)>
#map2 = affine_map<(d0) -> (d0 + 2)>
#map3 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_trmm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x20xf64>, %arg4: memref<?x30xf64>) {
    affine.for %arg5 = 0 to 20 {
      affine.for %arg6 = 0 to 30 {
        affine.for %arg7 = #map(%arg5) to #map1(%arg5) step 4 {
          %2 = affine.load %arg3[%arg7, %arg5] : memref<?x20xf64>
          %3 = affine.load %arg4[%arg7, %arg6] : memref<?x30xf64>
          %4 = arith.mulf %2, %3 : f64
          %5 = affine.load %arg4[%arg5, %arg6] : memref<?x30xf64>
          %6 = arith.addf %5, %4 : f64
          affine.store %6, %arg4[%arg5, %arg6] : memref<?x30xf64>
          %7 = affine.apply #map(%arg7)
          %8 = affine.load %arg3[%7, %arg5] : memref<?x20xf64>
          %9 = affine.load %arg4[%7, %arg6] : memref<?x30xf64>
          %10 = arith.mulf %8, %9 : f64
          %11 = affine.load %arg4[%arg5, %arg6] : memref<?x30xf64>
          %12 = arith.addf %11, %10 : f64
          affine.store %12, %arg4[%arg5, %arg6] : memref<?x30xf64>
          %13 = affine.apply #map2(%arg7)
          %14 = affine.load %arg3[%13, %arg5] : memref<?x20xf64>
          %15 = affine.load %arg4[%13, %arg6] : memref<?x30xf64>
          %16 = arith.mulf %14, %15 : f64
          %17 = affine.load %arg4[%arg5, %arg6] : memref<?x30xf64>
          %18 = arith.addf %17, %16 : f64
          affine.store %18, %arg4[%arg5, %arg6] : memref<?x30xf64>
          %19 = affine.apply #map3(%arg7)
          %20 = affine.load %arg3[%19, %arg5] : memref<?x20xf64>
          %21 = affine.load %arg4[%19, %arg6] : memref<?x30xf64>
          %22 = arith.mulf %20, %21 : f64
          %23 = affine.load %arg4[%arg5, %arg6] : memref<?x30xf64>
          %24 = arith.addf %23, %22 : f64
          affine.store %24, %arg4[%arg5, %arg6] : memref<?x30xf64>
        }
        affine.for %arg7 = #map1(%arg5) to 20 {
          %2 = affine.load %arg3[%arg7, %arg5] : memref<?x20xf64>
          %3 = affine.load %arg4[%arg7, %arg6] : memref<?x30xf64>
          %4 = arith.mulf %2, %3 : f64
          %5 = affine.load %arg4[%arg5, %arg6] : memref<?x30xf64>
          %6 = arith.addf %5, %4 : f64
          affine.store %6, %arg4[%arg5, %arg6] : memref<?x30xf64>
        }
        %0 = affine.load %arg4[%arg5, %arg6] : memref<?x30xf64>
        %1 = arith.mulf %arg2, %0 : f64
        affine.store %1, %arg4[%arg5, %arg6] : memref<?x30xf64>
      }
    }
    return
  }
}

