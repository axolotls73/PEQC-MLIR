#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0 + 2)>
#map2 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_gemver(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x40xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>, %arg8: memref<?xf64>, %arg9: memref<?xf64>, %arg10: memref<?xf64>, %arg11: memref<?xf64>) {
    affine.for %arg12 = 0 to 40 step 4 {
      affine.for %arg13 = 0 to 40 {
        %0 = affine.load %arg3[%arg12, %arg13] : memref<?x40xf64>
        %1 = affine.load %arg4[%arg12] : memref<?xf64>
        %2 = affine.load %arg5[%arg13] : memref<?xf64>
        %3 = arith.mulf %1, %2 : f64
        %4 = arith.addf %0, %3 : f64
        %5 = affine.load %arg6[%arg12] : memref<?xf64>
        %6 = affine.load %arg7[%arg13] : memref<?xf64>
        %7 = arith.mulf %5, %6 : f64
        %8 = arith.addf %4, %7 : f64
        affine.store %8, %arg3[%arg12, %arg13] : memref<?x40xf64>
        %9 = affine.apply #map(%arg12)
        %10 = affine.load %arg3[%9, %arg13] : memref<?x40xf64>
        %11 = affine.load %arg4[%9] : memref<?xf64>
        %12 = affine.load %arg5[%arg13] : memref<?xf64>
        %13 = arith.mulf %11, %12 : f64
        %14 = arith.addf %10, %13 : f64
        %15 = affine.load %arg6[%9] : memref<?xf64>
        %16 = affine.load %arg7[%arg13] : memref<?xf64>
        %17 = arith.mulf %15, %16 : f64
        %18 = arith.addf %14, %17 : f64
        affine.store %18, %arg3[%9, %arg13] : memref<?x40xf64>
        %19 = affine.apply #map1(%arg12)
        %20 = affine.load %arg3[%19, %arg13] : memref<?x40xf64>
        %21 = affine.load %arg4[%19] : memref<?xf64>
        %22 = affine.load %arg5[%arg13] : memref<?xf64>
        %23 = arith.mulf %21, %22 : f64
        %24 = arith.addf %20, %23 : f64
        %25 = affine.load %arg6[%19] : memref<?xf64>
        %26 = affine.load %arg7[%arg13] : memref<?xf64>
        %27 = arith.mulf %25, %26 : f64
        %28 = arith.addf %24, %27 : f64
        affine.store %28, %arg3[%19, %arg13] : memref<?x40xf64>
        %29 = affine.apply #map2(%arg12)
        %30 = affine.load %arg3[%29, %arg13] : memref<?x40xf64>
        %31 = affine.load %arg4[%29] : memref<?xf64>
        %32 = affine.load %arg5[%arg13] : memref<?xf64>
        %33 = arith.mulf %31, %32 : f64
        %34 = arith.addf %30, %33 : f64
        %35 = affine.load %arg6[%29] : memref<?xf64>
        %36 = affine.load %arg7[%arg13] : memref<?xf64>
        %37 = arith.mulf %35, %36 : f64
        %38 = arith.addf %34, %37 : f64
        affine.store %38, %arg3[%29, %arg13] : memref<?x40xf64>
      }
    }
    affine.for %arg12 = 0 to 40 {
      affine.for %arg13 = 0 to 40 {
        %0 = affine.load %arg9[%arg12] : memref<?xf64>
        %1 = affine.load %arg3[%arg13, %arg12] : memref<?x40xf64>
        %2 = arith.mulf %arg2, %1 : f64
        %3 = affine.load %arg10[%arg13] : memref<?xf64>
        %4 = arith.mulf %2, %3 : f64
        %5 = arith.addf %0, %4 : f64
        affine.store %5, %arg9[%arg12] : memref<?xf64>
      }
    }
    affine.for %arg12 = 0 to 40 {
      %0 = affine.load %arg9[%arg12] : memref<?xf64>
      %1 = affine.load %arg11[%arg12] : memref<?xf64>
      %2 = arith.addf %0, %1 : f64
      affine.store %2, %arg9[%arg12] : memref<?xf64>
    }
    affine.for %arg12 = 0 to 40 {
      affine.for %arg13 = 0 to 40 {
        %0 = affine.load %arg8[%arg12] : memref<?xf64>
        %1 = affine.load %arg3[%arg12, %arg13] : memref<?x40xf64>
        %2 = arith.mulf %arg1, %1 : f64
        %3 = affine.load %arg9[%arg13] : memref<?xf64>
        %4 = arith.mulf %2, %3 : f64
        %5 = arith.addf %0, %4 : f64
        affine.store %5, %arg8[%arg12] : memref<?xf64>
      }
    }
    return
  }
}

