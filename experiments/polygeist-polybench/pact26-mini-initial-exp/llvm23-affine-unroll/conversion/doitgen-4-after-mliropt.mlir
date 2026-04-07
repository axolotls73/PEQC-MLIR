#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0 + 2)>
#map2 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_doitgen(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x8x12xf64>, %arg4: memref<?x12xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    affine.for %arg6 = 0 to 10 {
      affine.for %arg7 = 0 to 8 {
        affine.for %arg8 = 0 to 12 {
          affine.store %cst, %arg5[%arg8] : memref<?xf64>
          affine.for %arg9 = 0 to 12 step 4 {
            %0 = affine.load %arg3[%arg6, %arg7, %arg9] : memref<?x8x12xf64>
            %1 = affine.load %arg4[%arg9, %arg8] : memref<?x12xf64>
            %2 = arith.mulf %0, %1 : f64
            %3 = affine.load %arg5[%arg8] : memref<?xf64>
            %4 = arith.addf %3, %2 : f64
            affine.store %4, %arg5[%arg8] : memref<?xf64>
            %5 = affine.apply #map(%arg9)
            %6 = affine.load %arg3[%arg6, %arg7, %5] : memref<?x8x12xf64>
            %7 = affine.load %arg4[%5, %arg8] : memref<?x12xf64>
            %8 = arith.mulf %6, %7 : f64
            %9 = affine.load %arg5[%arg8] : memref<?xf64>
            %10 = arith.addf %9, %8 : f64
            affine.store %10, %arg5[%arg8] : memref<?xf64>
            %11 = affine.apply #map1(%arg9)
            %12 = affine.load %arg3[%arg6, %arg7, %11] : memref<?x8x12xf64>
            %13 = affine.load %arg4[%11, %arg8] : memref<?x12xf64>
            %14 = arith.mulf %12, %13 : f64
            %15 = affine.load %arg5[%arg8] : memref<?xf64>
            %16 = arith.addf %15, %14 : f64
            affine.store %16, %arg5[%arg8] : memref<?xf64>
            %17 = affine.apply #map2(%arg9)
            %18 = affine.load %arg3[%arg6, %arg7, %17] : memref<?x8x12xf64>
            %19 = affine.load %arg4[%17, %arg8] : memref<?x12xf64>
            %20 = arith.mulf %18, %19 : f64
            %21 = affine.load %arg5[%arg8] : memref<?xf64>
            %22 = arith.addf %21, %20 : f64
            affine.store %22, %arg5[%arg8] : memref<?xf64>
          }
        }
        affine.for %arg8 = 0 to 12 step 4 {
          %0 = affine.load %arg5[%arg8] : memref<?xf64>
          affine.store %0, %arg3[%arg6, %arg7, %arg8] : memref<?x8x12xf64>
          %1 = affine.apply #map(%arg8)
          %2 = affine.load %arg5[%1] : memref<?xf64>
          affine.store %2, %arg3[%arg6, %arg7, %1] : memref<?x8x12xf64>
          %3 = affine.apply #map1(%arg8)
          %4 = affine.load %arg5[%3] : memref<?xf64>
          affine.store %4, %arg3[%arg6, %arg7, %3] : memref<?x8x12xf64>
          %5 = affine.apply #map2(%arg8)
          %6 = affine.load %arg5[%5] : memref<?xf64>
          affine.store %6, %arg3[%arg6, %arg7, %5] : memref<?x8x12xf64>
        }
      }
    }
    return
  }
}

