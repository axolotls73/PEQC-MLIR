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
      affine.for %arg8 = 0 to 20 {
        affine.for %arg9 = 0 to #map(%arg7) step 4 {
          %0 = affine.load %arg5[%arg9, %arg8] : memref<?x20xf64>
          %1 = arith.mulf %0, %arg2 : f64
          %2 = affine.load %arg6[%arg7, %arg8] : memref<?x20xf64>
          %3 = arith.mulf %1, %2 : f64
          %4 = affine.load %arg6[%arg9, %arg8] : memref<?x20xf64>
          %5 = arith.mulf %4, %arg2 : f64
          %6 = affine.load %arg5[%arg7, %arg8] : memref<?x20xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = arith.addf %3, %7 : f64
          %9 = affine.load %arg4[%arg7, %arg9] : memref<?x30xf64>
          %10 = arith.addf %9, %8 : f64
          affine.store %10, %arg4[%arg7, %arg9] : memref<?x30xf64>
          %11 = affine.apply #map1(%arg9)
          %12 = affine.load %arg5[%11, %arg8] : memref<?x20xf64>
          %13 = arith.mulf %12, %arg2 : f64
          %14 = affine.load %arg6[%arg7, %arg8] : memref<?x20xf64>
          %15 = arith.mulf %13, %14 : f64
          %16 = affine.load %arg6[%11, %arg8] : memref<?x20xf64>
          %17 = arith.mulf %16, %arg2 : f64
          %18 = affine.load %arg5[%arg7, %arg8] : memref<?x20xf64>
          %19 = arith.mulf %17, %18 : f64
          %20 = arith.addf %15, %19 : f64
          %21 = affine.load %arg4[%arg7, %11] : memref<?x30xf64>
          %22 = arith.addf %21, %20 : f64
          affine.store %22, %arg4[%arg7, %11] : memref<?x30xf64>
          %23 = affine.apply #map2(%arg9)
          %24 = affine.load %arg5[%23, %arg8] : memref<?x20xf64>
          %25 = arith.mulf %24, %arg2 : f64
          %26 = affine.load %arg6[%arg7, %arg8] : memref<?x20xf64>
          %27 = arith.mulf %25, %26 : f64
          %28 = affine.load %arg6[%23, %arg8] : memref<?x20xf64>
          %29 = arith.mulf %28, %arg2 : f64
          %30 = affine.load %arg5[%arg7, %arg8] : memref<?x20xf64>
          %31 = arith.mulf %29, %30 : f64
          %32 = arith.addf %27, %31 : f64
          %33 = affine.load %arg4[%arg7, %23] : memref<?x30xf64>
          %34 = arith.addf %33, %32 : f64
          affine.store %34, %arg4[%arg7, %23] : memref<?x30xf64>
          %35 = affine.apply #map3(%arg9)
          %36 = affine.load %arg5[%35, %arg8] : memref<?x20xf64>
          %37 = arith.mulf %36, %arg2 : f64
          %38 = affine.load %arg6[%arg7, %arg8] : memref<?x20xf64>
          %39 = arith.mulf %37, %38 : f64
          %40 = affine.load %arg6[%35, %arg8] : memref<?x20xf64>
          %41 = arith.mulf %40, %arg2 : f64
          %42 = affine.load %arg5[%arg7, %arg8] : memref<?x20xf64>
          %43 = arith.mulf %41, %42 : f64
          %44 = arith.addf %39, %43 : f64
          %45 = affine.load %arg4[%arg7, %35] : memref<?x30xf64>
          %46 = arith.addf %45, %44 : f64
          affine.store %46, %arg4[%arg7, %35] : memref<?x30xf64>
        }
        affine.for %arg9 = #map(%arg7) to #map1(%arg7) {
          %0 = affine.load %arg5[%arg9, %arg8] : memref<?x20xf64>
          %1 = arith.mulf %0, %arg2 : f64
          %2 = affine.load %arg6[%arg7, %arg8] : memref<?x20xf64>
          %3 = arith.mulf %1, %2 : f64
          %4 = affine.load %arg6[%arg9, %arg8] : memref<?x20xf64>
          %5 = arith.mulf %4, %arg2 : f64
          %6 = affine.load %arg5[%arg7, %arg8] : memref<?x20xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = arith.addf %3, %7 : f64
          %9 = affine.load %arg4[%arg7, %arg9] : memref<?x30xf64>
          %10 = arith.addf %9, %8 : f64
          affine.store %10, %arg4[%arg7, %arg9] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

