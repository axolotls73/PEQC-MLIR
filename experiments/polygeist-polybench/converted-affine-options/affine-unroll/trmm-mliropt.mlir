#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0 + 2)>
#map2 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_trmm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x20xf64>, %arg4: memref<?x30xf64>) {
    affine.for %arg5 = 0 to 19 {
      affine.for %arg6 = #map(%arg5) to 20 {
        affine.for %arg7 = 0 to 28 step 4 {
          %0 = affine.load %arg4[%arg5, %arg7] : memref<?x30xf64>
          %1 = affine.load %arg3[%arg6, %arg5] : memref<?x20xf64>
          %2 = affine.load %arg4[%arg6, %arg7] : memref<?x30xf64>
          %3 = arith.mulf %1, %2 : f64
          %4 = arith.addf %0, %3 : f64
          affine.store %4, %arg4[%arg5, %arg7] : memref<?x30xf64>
          %5 = affine.apply #map(%arg7)
          %6 = affine.load %arg4[%arg5, %5] : memref<?x30xf64>
          %7 = affine.load %arg3[%arg6, %arg5] : memref<?x20xf64>
          %8 = affine.load %arg4[%arg6, %5] : memref<?x30xf64>
          %9 = arith.mulf %7, %8 : f64
          %10 = arith.addf %6, %9 : f64
          affine.store %10, %arg4[%arg5, %5] : memref<?x30xf64>
          %11 = affine.apply #map1(%arg7)
          %12 = affine.load %arg4[%arg5, %11] : memref<?x30xf64>
          %13 = affine.load %arg3[%arg6, %arg5] : memref<?x20xf64>
          %14 = affine.load %arg4[%arg6, %11] : memref<?x30xf64>
          %15 = arith.mulf %13, %14 : f64
          %16 = arith.addf %12, %15 : f64
          affine.store %16, %arg4[%arg5, %11] : memref<?x30xf64>
          %17 = affine.apply #map2(%arg7)
          %18 = affine.load %arg4[%arg5, %17] : memref<?x30xf64>
          %19 = affine.load %arg3[%arg6, %arg5] : memref<?x20xf64>
          %20 = affine.load %arg4[%arg6, %17] : memref<?x30xf64>
          %21 = arith.mulf %19, %20 : f64
          %22 = arith.addf %18, %21 : f64
          affine.store %22, %arg4[%arg5, %17] : memref<?x30xf64>
        }
        affine.for %arg7 = 28 to 30 {
          %0 = affine.load %arg4[%arg5, %arg7] : memref<?x30xf64>
          %1 = affine.load %arg3[%arg6, %arg5] : memref<?x20xf64>
          %2 = affine.load %arg4[%arg6, %arg7] : memref<?x30xf64>
          %3 = arith.mulf %1, %2 : f64
          %4 = arith.addf %0, %3 : f64
          affine.store %4, %arg4[%arg5, %arg7] : memref<?x30xf64>
        }
      }
    }
    affine.for %arg5 = 0 to 20 {
      affine.for %arg6 = 0 to 28 step 4 {
        %0 = affine.load %arg4[%arg5, %arg6] : memref<?x30xf64>
        %1 = arith.mulf %arg2, %0 : f64
        affine.store %1, %arg4[%arg5, %arg6] : memref<?x30xf64>
        %2 = affine.apply #map(%arg6)
        %3 = affine.load %arg4[%arg5, %2] : memref<?x30xf64>
        %4 = arith.mulf %arg2, %3 : f64
        affine.store %4, %arg4[%arg5, %2] : memref<?x30xf64>
        %5 = affine.apply #map1(%arg6)
        %6 = affine.load %arg4[%arg5, %5] : memref<?x30xf64>
        %7 = arith.mulf %arg2, %6 : f64
        affine.store %7, %arg4[%arg5, %5] : memref<?x30xf64>
        %8 = affine.apply #map2(%arg6)
        %9 = affine.load %arg4[%arg5, %8] : memref<?x30xf64>
        %10 = arith.mulf %arg2, %9 : f64
        affine.store %10, %arg4[%arg5, %8] : memref<?x30xf64>
      }
      affine.for %arg6 = 28 to 30 {
        %0 = affine.load %arg4[%arg5, %arg6] : memref<?x30xf64>
        %1 = arith.mulf %arg2, %0 : f64
        affine.store %1, %arg4[%arg5, %arg6] : memref<?x30xf64>
      }
    }
    return
  }
}

