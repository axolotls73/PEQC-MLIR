#map = affine_map<(d0, d1) -> (d0 + d1)>
#map1 = affine_map<(d0) -> (d0 * 4)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0) -> (d0 + 2)>
#map4 = affine_map<(d0) -> (d0 + 3)>
#map5 = affine_map<(d0, d1) -> (((d0 + 1) floordiv 4) * 4 + d1)>
module {
  func.func @kernel_syr2k(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>, %arg6: memref<?x20xf64>) {
    affine.parallel (%arg7) = (0) to (30) {
      affine.parallel (%arg8) = (0) to (1) {
        %0 = affine.apply #map(%arg7, %arg8)
        affine.parallel (%arg9) = (0) to ((%0 + 1) floordiv 4) {
          %1 = affine.apply #map1(%arg9)
          %2 = affine.load %arg4[%0, %1] : memref<?x30xf64>
          %3 = arith.mulf %2, %arg3 : f64
          affine.store %3, %arg4[%0, %1] : memref<?x30xf64>
          %4 = affine.apply #map2(%1)
          %5 = affine.load %arg4[%0, %4] : memref<?x30xf64>
          %6 = arith.mulf %5, %arg3 : f64
          affine.store %6, %arg4[%0, %4] : memref<?x30xf64>
          %7 = affine.apply #map3(%1)
          %8 = affine.load %arg4[%0, %7] : memref<?x30xf64>
          %9 = arith.mulf %8, %arg3 : f64
          affine.store %9, %arg4[%0, %7] : memref<?x30xf64>
          %10 = affine.apply #map4(%1)
          %11 = affine.load %arg4[%0, %10] : memref<?x30xf64>
          %12 = arith.mulf %11, %arg3 : f64
          affine.store %12, %arg4[%0, %10] : memref<?x30xf64>
        }
        affine.parallel (%arg9) = (0) to (%0 - ((%0 + 1) floordiv 4) * 4 + 1) {
          %1 = affine.apply #map5(%0, %arg9)
          %2 = affine.load %arg4[%0, %1] : memref<?x30xf64>
          %3 = arith.mulf %2, %arg3 : f64
          affine.store %3, %arg4[%0, %1] : memref<?x30xf64>
        }
        affine.for %arg9 = 0 to 20 {
          affine.parallel (%arg10) = (0) to ((%0 + 1) floordiv 4) {
            %1 = affine.apply #map1(%arg10)
            %2 = affine.load %arg5[%1, %arg9] : memref<?x20xf64>
            %3 = arith.mulf %2, %arg2 : f64
            %4 = affine.load %arg6[%0, %arg9] : memref<?x20xf64>
            %5 = arith.mulf %3, %4 : f64
            %6 = affine.load %arg6[%1, %arg9] : memref<?x20xf64>
            %7 = arith.mulf %6, %arg2 : f64
            %8 = affine.load %arg5[%0, %arg9] : memref<?x20xf64>
            %9 = arith.mulf %7, %8 : f64
            %10 = arith.addf %5, %9 : f64
            %11 = affine.load %arg4[%0, %1] : memref<?x30xf64>
            %12 = arith.addf %11, %10 : f64
            affine.store %12, %arg4[%0, %1] : memref<?x30xf64>
            %13 = affine.apply #map2(%1)
            %14 = affine.load %arg5[%13, %arg9] : memref<?x20xf64>
            %15 = arith.mulf %14, %arg2 : f64
            %16 = affine.load %arg6[%0, %arg9] : memref<?x20xf64>
            %17 = arith.mulf %15, %16 : f64
            %18 = affine.load %arg6[%13, %arg9] : memref<?x20xf64>
            %19 = arith.mulf %18, %arg2 : f64
            %20 = affine.load %arg5[%0, %arg9] : memref<?x20xf64>
            %21 = arith.mulf %19, %20 : f64
            %22 = arith.addf %17, %21 : f64
            %23 = affine.load %arg4[%0, %13] : memref<?x30xf64>
            %24 = arith.addf %23, %22 : f64
            affine.store %24, %arg4[%0, %13] : memref<?x30xf64>
            %25 = affine.apply #map3(%1)
            %26 = affine.load %arg5[%25, %arg9] : memref<?x20xf64>
            %27 = arith.mulf %26, %arg2 : f64
            %28 = affine.load %arg6[%0, %arg9] : memref<?x20xf64>
            %29 = arith.mulf %27, %28 : f64
            %30 = affine.load %arg6[%25, %arg9] : memref<?x20xf64>
            %31 = arith.mulf %30, %arg2 : f64
            %32 = affine.load %arg5[%0, %arg9] : memref<?x20xf64>
            %33 = arith.mulf %31, %32 : f64
            %34 = arith.addf %29, %33 : f64
            %35 = affine.load %arg4[%0, %25] : memref<?x30xf64>
            %36 = arith.addf %35, %34 : f64
            affine.store %36, %arg4[%0, %25] : memref<?x30xf64>
            %37 = affine.apply #map4(%1)
            %38 = affine.load %arg5[%37, %arg9] : memref<?x20xf64>
            %39 = arith.mulf %38, %arg2 : f64
            %40 = affine.load %arg6[%0, %arg9] : memref<?x20xf64>
            %41 = arith.mulf %39, %40 : f64
            %42 = affine.load %arg6[%37, %arg9] : memref<?x20xf64>
            %43 = arith.mulf %42, %arg2 : f64
            %44 = affine.load %arg5[%0, %arg9] : memref<?x20xf64>
            %45 = arith.mulf %43, %44 : f64
            %46 = arith.addf %41, %45 : f64
            %47 = affine.load %arg4[%0, %37] : memref<?x30xf64>
            %48 = arith.addf %47, %46 : f64
            affine.store %48, %arg4[%0, %37] : memref<?x30xf64>
          }
          affine.parallel (%arg10) = (0) to (%0 - ((%0 + 1) floordiv 4) * 4 + 1) {
            %1 = affine.apply #map5(%0, %arg10)
            %2 = affine.load %arg5[%1, %arg9] : memref<?x20xf64>
            %3 = arith.mulf %2, %arg2 : f64
            %4 = affine.load %arg6[%0, %arg9] : memref<?x20xf64>
            %5 = arith.mulf %3, %4 : f64
            %6 = affine.load %arg6[%1, %arg9] : memref<?x20xf64>
            %7 = arith.mulf %6, %arg2 : f64
            %8 = affine.load %arg5[%0, %arg9] : memref<?x20xf64>
            %9 = arith.mulf %7, %8 : f64
            %10 = arith.addf %5, %9 : f64
            %11 = affine.load %arg4[%0, %1] : memref<?x30xf64>
            %12 = arith.addf %11, %10 : f64
            affine.store %12, %arg4[%0, %1] : memref<?x30xf64>
          }
        }
      }
    }
    return
  }
}

