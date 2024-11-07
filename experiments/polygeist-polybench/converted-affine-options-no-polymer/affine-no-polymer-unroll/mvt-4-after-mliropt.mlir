#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0 + 2)>
#map2 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_mvt(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?x40xf64>) {
    affine.for %arg6 = 0 to 40 {
      affine.for %arg7 = 0 to 40 step 4 {
        %0 = affine.load %arg1[%arg6] : memref<?xf64>
        %1 = affine.load %arg5[%arg6, %arg7] : memref<?x40xf64>
        %2 = affine.load %arg3[%arg7] : memref<?xf64>
        %3 = arith.mulf %1, %2 : f64
        %4 = arith.addf %0, %3 : f64
        affine.store %4, %arg1[%arg6] : memref<?xf64>
        %5 = affine.apply #map(%arg7)
        %6 = affine.load %arg1[%arg6] : memref<?xf64>
        %7 = affine.load %arg5[%arg6, %5] : memref<?x40xf64>
        %8 = affine.load %arg3[%5] : memref<?xf64>
        %9 = arith.mulf %7, %8 : f64
        %10 = arith.addf %6, %9 : f64
        affine.store %10, %arg1[%arg6] : memref<?xf64>
        %11 = affine.apply #map1(%arg7)
        %12 = affine.load %arg1[%arg6] : memref<?xf64>
        %13 = affine.load %arg5[%arg6, %11] : memref<?x40xf64>
        %14 = affine.load %arg3[%11] : memref<?xf64>
        %15 = arith.mulf %13, %14 : f64
        %16 = arith.addf %12, %15 : f64
        affine.store %16, %arg1[%arg6] : memref<?xf64>
        %17 = affine.apply #map2(%arg7)
        %18 = affine.load %arg1[%arg6] : memref<?xf64>
        %19 = affine.load %arg5[%arg6, %17] : memref<?x40xf64>
        %20 = affine.load %arg3[%17] : memref<?xf64>
        %21 = arith.mulf %19, %20 : f64
        %22 = arith.addf %18, %21 : f64
        affine.store %22, %arg1[%arg6] : memref<?xf64>
      }
    }
    affine.for %arg6 = 0 to 40 {
      affine.for %arg7 = 0 to 40 step 4 {
        %0 = affine.load %arg2[%arg6] : memref<?xf64>
        %1 = affine.load %arg5[%arg7, %arg6] : memref<?x40xf64>
        %2 = affine.load %arg4[%arg7] : memref<?xf64>
        %3 = arith.mulf %1, %2 : f64
        %4 = arith.addf %0, %3 : f64
        affine.store %4, %arg2[%arg6] : memref<?xf64>
        %5 = affine.apply #map(%arg7)
        %6 = affine.load %arg2[%arg6] : memref<?xf64>
        %7 = affine.load %arg5[%5, %arg6] : memref<?x40xf64>
        %8 = affine.load %arg4[%5] : memref<?xf64>
        %9 = arith.mulf %7, %8 : f64
        %10 = arith.addf %6, %9 : f64
        affine.store %10, %arg2[%arg6] : memref<?xf64>
        %11 = affine.apply #map1(%arg7)
        %12 = affine.load %arg2[%arg6] : memref<?xf64>
        %13 = affine.load %arg5[%11, %arg6] : memref<?x40xf64>
        %14 = affine.load %arg4[%11] : memref<?xf64>
        %15 = arith.mulf %13, %14 : f64
        %16 = arith.addf %12, %15 : f64
        affine.store %16, %arg2[%arg6] : memref<?xf64>
        %17 = affine.apply #map2(%arg7)
        %18 = affine.load %arg2[%arg6] : memref<?xf64>
        %19 = affine.load %arg5[%17, %arg6] : memref<?x40xf64>
        %20 = affine.load %arg4[%17] : memref<?xf64>
        %21 = arith.mulf %19, %20 : f64
        %22 = arith.addf %18, %21 : f64
        affine.store %22, %arg2[%arg6] : memref<?xf64>
      }
    }
    return
  }
}

