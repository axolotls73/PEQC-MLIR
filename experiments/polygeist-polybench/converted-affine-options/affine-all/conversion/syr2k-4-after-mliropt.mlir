#map = affine_map<(d0, d1) -> (d0 + d1)>
#map1 = affine_map<(d0) -> ((d0 + 1) floordiv 4)>
#map2 = affine_map<(d0) -> (d0 * 4)>
#map3 = affine_map<(d0) -> (d0 + 1)>
#map4 = affine_map<(d0) -> (d0 + 2)>
#map5 = affine_map<(d0) -> (d0 + 3)>
#map6 = affine_map<(d0) -> (d0 - ((d0 + 1) floordiv 4) * 4 + 1)>
#map7 = affine_map<(d0, d1) -> (d1 + ((d0 + 1) floordiv 4) * 4)>
module {
  func.func @kernel_syr2k(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>, %arg6: memref<?x20xf64>) {
    affine.parallel (%arg7) = (0) to (30) {
      affine.for %arg8 = 0 to 1 {
        %0 = affine.apply #map(%arg7, %arg8)
        affine.for %arg9 = 0 to #map1(%0) {
          %1 = affine.apply #map2(%arg9)
          %2 = affine.load %arg4[%0, %1] : memref<?x30xf64>
          %3 = arith.mulf %2, %arg3 : f64
          affine.store %3, %arg4[%0, %1] : memref<?x30xf64>
          %4 = affine.apply #map3(%1)
          %5 = affine.load %arg4[%0, %4] : memref<?x30xf64>
          %6 = arith.mulf %5, %arg3 : f64
          affine.store %6, %arg4[%0, %4] : memref<?x30xf64>
          %7 = affine.apply #map4(%1)
          %8 = affine.load %arg4[%0, %7] : memref<?x30xf64>
          %9 = arith.mulf %8, %arg3 : f64
          affine.store %9, %arg4[%0, %7] : memref<?x30xf64>
          %10 = affine.apply #map5(%1)
          %11 = affine.load %arg4[%0, %10] : memref<?x30xf64>
          %12 = arith.mulf %11, %arg3 : f64
          affine.store %12, %arg4[%0, %10] : memref<?x30xf64>
        }
        affine.for %arg9 = 0 to #map6(%0) {
          %1 = affine.apply #map7(%0, %arg9)
          %2 = affine.load %arg4[%0, %1] : memref<?x30xf64>
          %3 = arith.mulf %2, %arg3 : f64
          affine.store %3, %arg4[%0, %1] : memref<?x30xf64>
        }
      }
    }
    affine.parallel (%arg7) = (0) to (30) {
      affine.for %arg8 = 0 to #map3(%arg7) {
        affine.for %arg9 = 0 to 5 {
          %0 = affine.apply #map2(%arg9)
          %1 = affine.load %arg4[%arg7, %arg8] : memref<?x30xf64>
          %2 = affine.load %arg5[%arg8, %0] : memref<?x20xf64>
          %3 = arith.mulf %2, %arg2 : f64
          %4 = affine.load %arg6[%arg7, %0] : memref<?x20xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = affine.load %arg6[%arg8, %0] : memref<?x20xf64>
          %7 = arith.mulf %6, %arg2 : f64
          %8 = affine.load %arg5[%arg7, %0] : memref<?x20xf64>
          %9 = arith.mulf %7, %8 : f64
          %10 = arith.addf %5, %9 : f64
          %11 = arith.addf %1, %10 : f64
          affine.store %11, %arg4[%arg7, %arg8] : memref<?x30xf64>
          %12 = affine.apply #map3(%0)
          %13 = affine.load %arg4[%arg7, %arg8] : memref<?x30xf64>
          %14 = affine.load %arg5[%arg8, %12] : memref<?x20xf64>
          %15 = arith.mulf %14, %arg2 : f64
          %16 = affine.load %arg6[%arg7, %12] : memref<?x20xf64>
          %17 = arith.mulf %15, %16 : f64
          %18 = affine.load %arg6[%arg8, %12] : memref<?x20xf64>
          %19 = arith.mulf %18, %arg2 : f64
          %20 = affine.load %arg5[%arg7, %12] : memref<?x20xf64>
          %21 = arith.mulf %19, %20 : f64
          %22 = arith.addf %17, %21 : f64
          %23 = arith.addf %13, %22 : f64
          affine.store %23, %arg4[%arg7, %arg8] : memref<?x30xf64>
          %24 = affine.apply #map4(%0)
          %25 = affine.load %arg4[%arg7, %arg8] : memref<?x30xf64>
          %26 = affine.load %arg5[%arg8, %24] : memref<?x20xf64>
          %27 = arith.mulf %26, %arg2 : f64
          %28 = affine.load %arg6[%arg7, %24] : memref<?x20xf64>
          %29 = arith.mulf %27, %28 : f64
          %30 = affine.load %arg6[%arg8, %24] : memref<?x20xf64>
          %31 = arith.mulf %30, %arg2 : f64
          %32 = affine.load %arg5[%arg7, %24] : memref<?x20xf64>
          %33 = arith.mulf %31, %32 : f64
          %34 = arith.addf %29, %33 : f64
          %35 = arith.addf %25, %34 : f64
          affine.store %35, %arg4[%arg7, %arg8] : memref<?x30xf64>
          %36 = affine.apply #map5(%0)
          %37 = affine.load %arg4[%arg7, %arg8] : memref<?x30xf64>
          %38 = affine.load %arg5[%arg8, %36] : memref<?x20xf64>
          %39 = arith.mulf %38, %arg2 : f64
          %40 = affine.load %arg6[%arg7, %36] : memref<?x20xf64>
          %41 = arith.mulf %39, %40 : f64
          %42 = affine.load %arg6[%arg8, %36] : memref<?x20xf64>
          %43 = arith.mulf %42, %arg2 : f64
          %44 = affine.load %arg5[%arg7, %36] : memref<?x20xf64>
          %45 = arith.mulf %43, %44 : f64
          %46 = arith.addf %41, %45 : f64
          %47 = arith.addf %37, %46 : f64
          affine.store %47, %arg4[%arg7, %arg8] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

