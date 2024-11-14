#map = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0, d1) -> (d0 + d1)>
#map2 = affine_map<(d0) -> (d0 * 4)>
#map3 = affine_map<(d0) -> (d0 + 1)>
#map4 = affine_map<(d0) -> (d0 + 2)>
#map5 = affine_map<(d0) -> (d0 + 3)>
#map6 = affine_map<(d0) -> (d0 + 28)>
module {
  func.func @kernel_gesummv(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    affine.for %arg8 = 0 to 1 {
      %0 = affine.apply #map(%arg8)
      affine.for %arg9 = 0 to 30 {
        %1 = affine.apply #map1(%0, %arg9)
        affine.store %cst, %arg5[%1] : memref<?xf64>
        affine.store %cst, %arg7[%1] : memref<?xf64>
        affine.for %arg10 = 0 to 7 {
          %7 = affine.apply #map2(%arg10)
          %8 = affine.load %arg3[%1, %7] : memref<?x30xf64>
          %9 = affine.load %arg6[%7] : memref<?xf64>
          %10 = arith.mulf %8, %9 : f64
          %11 = affine.load %arg5[%1] : memref<?xf64>
          %12 = arith.addf %10, %11 : f64
          affine.store %12, %arg5[%1] : memref<?xf64>
          %13 = affine.load %arg4[%1, %7] : memref<?x30xf64>
          %14 = affine.load %arg6[%7] : memref<?xf64>
          %15 = arith.mulf %13, %14 : f64
          %16 = affine.load %arg7[%1] : memref<?xf64>
          %17 = arith.addf %15, %16 : f64
          affine.store %17, %arg7[%1] : memref<?xf64>
          %18 = affine.apply #map3(%7)
          %19 = affine.load %arg3[%1, %18] : memref<?x30xf64>
          %20 = affine.load %arg6[%18] : memref<?xf64>
          %21 = arith.mulf %19, %20 : f64
          %22 = affine.load %arg5[%1] : memref<?xf64>
          %23 = arith.addf %21, %22 : f64
          affine.store %23, %arg5[%1] : memref<?xf64>
          %24 = affine.load %arg4[%1, %18] : memref<?x30xf64>
          %25 = affine.load %arg6[%18] : memref<?xf64>
          %26 = arith.mulf %24, %25 : f64
          %27 = affine.load %arg7[%1] : memref<?xf64>
          %28 = arith.addf %26, %27 : f64
          affine.store %28, %arg7[%1] : memref<?xf64>
          %29 = affine.apply #map4(%7)
          %30 = affine.load %arg3[%1, %29] : memref<?x30xf64>
          %31 = affine.load %arg6[%29] : memref<?xf64>
          %32 = arith.mulf %30, %31 : f64
          %33 = affine.load %arg5[%1] : memref<?xf64>
          %34 = arith.addf %32, %33 : f64
          affine.store %34, %arg5[%1] : memref<?xf64>
          %35 = affine.load %arg4[%1, %29] : memref<?x30xf64>
          %36 = affine.load %arg6[%29] : memref<?xf64>
          %37 = arith.mulf %35, %36 : f64
          %38 = affine.load %arg7[%1] : memref<?xf64>
          %39 = arith.addf %37, %38 : f64
          affine.store %39, %arg7[%1] : memref<?xf64>
          %40 = affine.apply #map5(%7)
          %41 = affine.load %arg3[%1, %40] : memref<?x30xf64>
          %42 = affine.load %arg6[%40] : memref<?xf64>
          %43 = arith.mulf %41, %42 : f64
          %44 = affine.load %arg5[%1] : memref<?xf64>
          %45 = arith.addf %43, %44 : f64
          affine.store %45, %arg5[%1] : memref<?xf64>
          %46 = affine.load %arg4[%1, %40] : memref<?x30xf64>
          %47 = affine.load %arg6[%40] : memref<?xf64>
          %48 = arith.mulf %46, %47 : f64
          %49 = affine.load %arg7[%1] : memref<?xf64>
          %50 = arith.addf %48, %49 : f64
          affine.store %50, %arg7[%1] : memref<?xf64>
        }
        affine.for %arg10 = 0 to 2 {
          %7 = affine.apply #map6(%arg10)
          %8 = affine.load %arg3[%1, %7] : memref<?x30xf64>
          %9 = affine.load %arg6[%7] : memref<?xf64>
          %10 = arith.mulf %8, %9 : f64
          %11 = affine.load %arg5[%1] : memref<?xf64>
          %12 = arith.addf %10, %11 : f64
          affine.store %12, %arg5[%1] : memref<?xf64>
          %13 = affine.load %arg4[%1, %7] : memref<?x30xf64>
          %14 = affine.load %arg6[%7] : memref<?xf64>
          %15 = arith.mulf %13, %14 : f64
          %16 = affine.load %arg7[%1] : memref<?xf64>
          %17 = arith.addf %15, %16 : f64
          affine.store %17, %arg7[%1] : memref<?xf64>
        }
        %2 = affine.load %arg5[%1] : memref<?xf64>
        %3 = arith.mulf %arg1, %2 : f64
        %4 = affine.load %arg7[%1] : memref<?xf64>
        %5 = arith.mulf %arg2, %4 : f64
        %6 = arith.addf %3, %5 : f64
        affine.store %6, %arg7[%1] : memref<?xf64>
      }
    }
    return
  }
}

