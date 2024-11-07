#map = affine_map<(d0) -> (((d0 + 1) floordiv 4) * 4)>
#map1 = affine_map<(d0) -> (d0 + 1)>
#map2 = affine_map<(d0) -> (d0 + 2)>
#map3 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_syr2k(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>, %arg6: memref<?x20xf64>) {
    affine.for %arg7 = 0 to 30 {
      affine.for %arg8 = 0 to #map(%arg7) step 4 {
        %0 = affine.load %arg4[%arg7, %arg8] : memref<?x30xf64>
        %1 = arith.mulf %0, %arg3 : f64
        affine.store %1, %arg4[%arg7, %arg8] : memref<?x30xf64>
        %2 = affine.apply #map1(%arg8)
        %3 = affine.load %arg4[%arg7, %2] : memref<?x30xf64>
        %4 = arith.mulf %3, %arg3 : f64
        affine.store %4, %arg4[%arg7, %2] : memref<?x30xf64>
        %5 = affine.apply #map2(%arg8)
        %6 = affine.load %arg4[%arg7, %5] : memref<?x30xf64>
        %7 = arith.mulf %6, %arg3 : f64
        affine.store %7, %arg4[%arg7, %5] : memref<?x30xf64>
        %8 = affine.apply #map3(%arg8)
        %9 = affine.load %arg4[%arg7, %8] : memref<?x30xf64>
        %10 = arith.mulf %9, %arg3 : f64
        affine.store %10, %arg4[%arg7, %8] : memref<?x30xf64>
      }
      affine.for %arg8 = #map(%arg7) to #map1(%arg7) {
        %0 = affine.load %arg4[%arg7, %arg8] : memref<?x30xf64>
        %1 = arith.mulf %0, %arg3 : f64
        affine.store %1, %arg4[%arg7, %arg8] : memref<?x30xf64>
      }
    }
    affine.for %arg7 = 0 to 30 {
      affine.for %arg8 = 0 to #map1(%arg7) {
        affine.for %arg9 = 0 to 20 step 4 {
          %0 = affine.load %arg4[%arg7, %arg8] : memref<?x30xf64>
          %1 = affine.load %arg5[%arg8, %arg9] : memref<?x20xf64>
          %2 = arith.mulf %1, %arg2 : f64
          %3 = affine.load %arg6[%arg7, %arg9] : memref<?x20xf64>
          %4 = arith.mulf %2, %3 : f64
          %5 = affine.load %arg6[%arg8, %arg9] : memref<?x20xf64>
          %6 = arith.mulf %5, %arg2 : f64
          %7 = affine.load %arg5[%arg7, %arg9] : memref<?x20xf64>
          %8 = arith.mulf %6, %7 : f64
          %9 = arith.addf %4, %8 : f64
          %10 = arith.addf %0, %9 : f64
          affine.store %10, %arg4[%arg7, %arg8] : memref<?x30xf64>
          %11 = affine.apply #map1(%arg9)
          %12 = affine.load %arg4[%arg7, %arg8] : memref<?x30xf64>
          %13 = affine.load %arg5[%arg8, %11] : memref<?x20xf64>
          %14 = arith.mulf %13, %arg2 : f64
          %15 = affine.load %arg6[%arg7, %11] : memref<?x20xf64>
          %16 = arith.mulf %14, %15 : f64
          %17 = affine.load %arg6[%arg8, %11] : memref<?x20xf64>
          %18 = arith.mulf %17, %arg2 : f64
          %19 = affine.load %arg5[%arg7, %11] : memref<?x20xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = arith.addf %16, %20 : f64
          %22 = arith.addf %12, %21 : f64
          affine.store %22, %arg4[%arg7, %arg8] : memref<?x30xf64>
          %23 = affine.apply #map2(%arg9)
          %24 = affine.load %arg4[%arg7, %arg8] : memref<?x30xf64>
          %25 = affine.load %arg5[%arg8, %23] : memref<?x20xf64>
          %26 = arith.mulf %25, %arg2 : f64
          %27 = affine.load %arg6[%arg7, %23] : memref<?x20xf64>
          %28 = arith.mulf %26, %27 : f64
          %29 = affine.load %arg6[%arg8, %23] : memref<?x20xf64>
          %30 = arith.mulf %29, %arg2 : f64
          %31 = affine.load %arg5[%arg7, %23] : memref<?x20xf64>
          %32 = arith.mulf %30, %31 : f64
          %33 = arith.addf %28, %32 : f64
          %34 = arith.addf %24, %33 : f64
          affine.store %34, %arg4[%arg7, %arg8] : memref<?x30xf64>
          %35 = affine.apply #map3(%arg9)
          %36 = affine.load %arg4[%arg7, %arg8] : memref<?x30xf64>
          %37 = affine.load %arg5[%arg8, %35] : memref<?x20xf64>
          %38 = arith.mulf %37, %arg2 : f64
          %39 = affine.load %arg6[%arg7, %35] : memref<?x20xf64>
          %40 = arith.mulf %38, %39 : f64
          %41 = affine.load %arg6[%arg8, %35] : memref<?x20xf64>
          %42 = arith.mulf %41, %arg2 : f64
          %43 = affine.load %arg5[%arg7, %35] : memref<?x20xf64>
          %44 = arith.mulf %42, %43 : f64
          %45 = arith.addf %40, %44 : f64
          %46 = arith.addf %36, %45 : f64
          affine.store %46, %arg4[%arg7, %arg8] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

