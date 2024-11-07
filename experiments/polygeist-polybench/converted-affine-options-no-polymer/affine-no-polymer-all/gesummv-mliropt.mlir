#map = affine_map<(d0, d1) -> (d0 + d1)>
#map1 = affine_map<(d0) -> (d0 * 4)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0) -> (d0 + 2)>
#map4 = affine_map<(d0) -> (d0 + 3)>
#map5 = affine_map<(d0) -> (d0 + 28)>
module {
  func.func @kernel_gesummv(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    affine.parallel (%arg8) = (0) to (30) {
      affine.parallel (%arg9) = (0) to (1) {
        %0 = affine.apply #map(%arg8, %arg9)
        affine.store %cst, %arg5[%0] : memref<?xf64>
        affine.store %cst, %arg7[%0] : memref<?xf64>
        affine.for %arg10 = 0 to 7 {
          %6 = affine.apply #map1(%arg10)
          %7 = affine.load %arg3[%0, %6] : memref<?x30xf64>
          %8 = affine.load %arg6[%6] : memref<?xf64>
          %9 = arith.mulf %7, %8 : f64
          %10 = affine.load %arg5[%0] : memref<?xf64>
          %11 = arith.addf %9, %10 : f64
          affine.store %11, %arg5[%0] : memref<?xf64>
          %12 = affine.load %arg4[%0, %6] : memref<?x30xf64>
          %13 = affine.load %arg6[%6] : memref<?xf64>
          %14 = arith.mulf %12, %13 : f64
          %15 = affine.load %arg7[%0] : memref<?xf64>
          %16 = arith.addf %14, %15 : f64
          affine.store %16, %arg7[%0] : memref<?xf64>
          %17 = affine.apply #map2(%6)
          %18 = affine.load %arg3[%0, %17] : memref<?x30xf64>
          %19 = affine.load %arg6[%17] : memref<?xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = affine.load %arg5[%0] : memref<?xf64>
          %22 = arith.addf %20, %21 : f64
          affine.store %22, %arg5[%0] : memref<?xf64>
          %23 = affine.load %arg4[%0, %17] : memref<?x30xf64>
          %24 = affine.load %arg6[%17] : memref<?xf64>
          %25 = arith.mulf %23, %24 : f64
          %26 = affine.load %arg7[%0] : memref<?xf64>
          %27 = arith.addf %25, %26 : f64
          affine.store %27, %arg7[%0] : memref<?xf64>
          %28 = affine.apply #map3(%6)
          %29 = affine.load %arg3[%0, %28] : memref<?x30xf64>
          %30 = affine.load %arg6[%28] : memref<?xf64>
          %31 = arith.mulf %29, %30 : f64
          %32 = affine.load %arg5[%0] : memref<?xf64>
          %33 = arith.addf %31, %32 : f64
          affine.store %33, %arg5[%0] : memref<?xf64>
          %34 = affine.load %arg4[%0, %28] : memref<?x30xf64>
          %35 = affine.load %arg6[%28] : memref<?xf64>
          %36 = arith.mulf %34, %35 : f64
          %37 = affine.load %arg7[%0] : memref<?xf64>
          %38 = arith.addf %36, %37 : f64
          affine.store %38, %arg7[%0] : memref<?xf64>
          %39 = affine.apply #map4(%6)
          %40 = affine.load %arg3[%0, %39] : memref<?x30xf64>
          %41 = affine.load %arg6[%39] : memref<?xf64>
          %42 = arith.mulf %40, %41 : f64
          %43 = affine.load %arg5[%0] : memref<?xf64>
          %44 = arith.addf %42, %43 : f64
          affine.store %44, %arg5[%0] : memref<?xf64>
          %45 = affine.load %arg4[%0, %39] : memref<?x30xf64>
          %46 = affine.load %arg6[%39] : memref<?xf64>
          %47 = arith.mulf %45, %46 : f64
          %48 = affine.load %arg7[%0] : memref<?xf64>
          %49 = arith.addf %47, %48 : f64
          affine.store %49, %arg7[%0] : memref<?xf64>
        }
        affine.for %arg10 = 0 to 2 {
          %6 = affine.apply #map5(%arg10)
          %7 = affine.load %arg3[%0, %6] : memref<?x30xf64>
          %8 = affine.load %arg6[%6] : memref<?xf64>
          %9 = arith.mulf %7, %8 : f64
          %10 = affine.load %arg5[%0] : memref<?xf64>
          %11 = arith.addf %9, %10 : f64
          affine.store %11, %arg5[%0] : memref<?xf64>
          %12 = affine.load %arg4[%0, %6] : memref<?x30xf64>
          %13 = affine.load %arg6[%6] : memref<?xf64>
          %14 = arith.mulf %12, %13 : f64
          %15 = affine.load %arg7[%0] : memref<?xf64>
          %16 = arith.addf %14, %15 : f64
          affine.store %16, %arg7[%0] : memref<?xf64>
        }
        %1 = affine.load %arg5[%0] : memref<?xf64>
        %2 = arith.mulf %arg1, %1 : f64
        %3 = affine.load %arg7[%0] : memref<?xf64>
        %4 = arith.mulf %arg2, %3 : f64
        %5 = arith.addf %2, %4 : f64
        affine.store %5, %arg7[%0] : memref<?xf64>
      }
    }
    return
  }
}

