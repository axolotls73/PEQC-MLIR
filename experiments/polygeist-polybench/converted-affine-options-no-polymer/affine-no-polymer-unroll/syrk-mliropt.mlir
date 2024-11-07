#map = affine_map<(d0) -> (((d0 + 1) floordiv 4) * 4)>
#map1 = affine_map<(d0) -> (d0 + 1)>
#map2 = affine_map<(d0) -> (d0 + 2)>
#map3 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_syrk(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>) {
    affine.for %arg6 = 0 to 30 {
      affine.for %arg7 = 0 to #map(%arg6) step 4 {
        %0 = affine.load %arg4[%arg6, %arg7] : memref<?x30xf64>
        %1 = arith.mulf %0, %arg3 : f64
        affine.store %1, %arg4[%arg6, %arg7] : memref<?x30xf64>
        %2 = affine.apply #map1(%arg7)
        %3 = affine.load %arg4[%arg6, %2] : memref<?x30xf64>
        %4 = arith.mulf %3, %arg3 : f64
        affine.store %4, %arg4[%arg6, %2] : memref<?x30xf64>
        %5 = affine.apply #map2(%arg7)
        %6 = affine.load %arg4[%arg6, %5] : memref<?x30xf64>
        %7 = arith.mulf %6, %arg3 : f64
        affine.store %7, %arg4[%arg6, %5] : memref<?x30xf64>
        %8 = affine.apply #map3(%arg7)
        %9 = affine.load %arg4[%arg6, %8] : memref<?x30xf64>
        %10 = arith.mulf %9, %arg3 : f64
        affine.store %10, %arg4[%arg6, %8] : memref<?x30xf64>
      }
      affine.for %arg7 = #map(%arg6) to #map1(%arg6) {
        %0 = affine.load %arg4[%arg6, %arg7] : memref<?x30xf64>
        %1 = arith.mulf %0, %arg3 : f64
        affine.store %1, %arg4[%arg6, %arg7] : memref<?x30xf64>
      }
      affine.for %arg7 = 0 to 20 {
        affine.for %arg8 = 0 to #map(%arg6) step 4 {
          %0 = affine.load %arg5[%arg6, %arg7] : memref<?x20xf64>
          %1 = arith.mulf %arg2, %0 : f64
          %2 = affine.load %arg5[%arg8, %arg7] : memref<?x20xf64>
          %3 = arith.mulf %1, %2 : f64
          %4 = affine.load %arg4[%arg6, %arg8] : memref<?x30xf64>
          %5 = arith.addf %4, %3 : f64
          affine.store %5, %arg4[%arg6, %arg8] : memref<?x30xf64>
          %6 = affine.apply #map1(%arg8)
          %7 = affine.load %arg5[%arg6, %arg7] : memref<?x20xf64>
          %8 = arith.mulf %arg2, %7 : f64
          %9 = affine.load %arg5[%6, %arg7] : memref<?x20xf64>
          %10 = arith.mulf %8, %9 : f64
          %11 = affine.load %arg4[%arg6, %6] : memref<?x30xf64>
          %12 = arith.addf %11, %10 : f64
          affine.store %12, %arg4[%arg6, %6] : memref<?x30xf64>
          %13 = affine.apply #map2(%arg8)
          %14 = affine.load %arg5[%arg6, %arg7] : memref<?x20xf64>
          %15 = arith.mulf %arg2, %14 : f64
          %16 = affine.load %arg5[%13, %arg7] : memref<?x20xf64>
          %17 = arith.mulf %15, %16 : f64
          %18 = affine.load %arg4[%arg6, %13] : memref<?x30xf64>
          %19 = arith.addf %18, %17 : f64
          affine.store %19, %arg4[%arg6, %13] : memref<?x30xf64>
          %20 = affine.apply #map3(%arg8)
          %21 = affine.load %arg5[%arg6, %arg7] : memref<?x20xf64>
          %22 = arith.mulf %arg2, %21 : f64
          %23 = affine.load %arg5[%20, %arg7] : memref<?x20xf64>
          %24 = arith.mulf %22, %23 : f64
          %25 = affine.load %arg4[%arg6, %20] : memref<?x30xf64>
          %26 = arith.addf %25, %24 : f64
          affine.store %26, %arg4[%arg6, %20] : memref<?x30xf64>
        }
        affine.for %arg8 = #map(%arg6) to #map1(%arg6) {
          %0 = affine.load %arg5[%arg6, %arg7] : memref<?x20xf64>
          %1 = arith.mulf %arg2, %0 : f64
          %2 = affine.load %arg5[%arg8, %arg7] : memref<?x20xf64>
          %3 = arith.mulf %1, %2 : f64
          %4 = affine.load %arg4[%arg6, %arg8] : memref<?x30xf64>
          %5 = arith.addf %4, %3 : f64
          affine.store %5, %arg4[%arg6, %arg8] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

