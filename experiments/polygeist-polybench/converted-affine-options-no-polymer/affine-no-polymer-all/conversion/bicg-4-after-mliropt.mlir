#map = affine_map<(d0) -> (d0 * 128)>
#map1 = affine_map<(d0, d1) -> (d0 + d1 * 4)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0) -> (d0 + 2)>
#map4 = affine_map<(d0) -> (d0 + 3)>
#map5 = affine_map<(d0) -> (d0 * 32 + 36)>
#map6 = affine_map<(d0, d1) -> (d0 + d1)>
#map7 = affine_map<(d0) -> (d0 * 32)>
#map8 = affine_map<(d0) -> (32, -d0 + 42)>
#map9 = affine_map<(d0) -> (d0 * 4)>
#map10 = affine_map<(d0) -> (d0 + 36)>
module {
  func.func @kernel_bicg(%arg0: i32, %arg1: i32, %arg2: memref<?x38xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    affine.parallel (%arg7) = (0) to (1) {
      %0 = affine.apply #map(%arg7)
      affine.for %arg8 = 0 to 9 {
        %1 = affine.apply #map1(%0, %arg8)
        affine.store %cst, %arg3[%1] : memref<?xf64>
        %2 = affine.apply #map2(%1)
        affine.store %cst, %arg3[%2] : memref<?xf64>
        %3 = affine.apply #map3(%1)
        affine.store %cst, %arg3[%3] : memref<?xf64>
        %4 = affine.apply #map4(%1)
        affine.store %cst, %arg3[%4] : memref<?xf64>
      }
    }
    affine.parallel (%arg7) = (0) to (1) {
      %0 = affine.apply #map5(%arg7)
      affine.for %arg8 = 0 to 2 {
        %1 = affine.apply #map6(%0, %arg8)
        affine.store %cst, %arg3[%1] : memref<?xf64>
      }
    }
    affine.for %arg7 = 0 to 2 {
      %0 = affine.apply #map7(%arg7)
      affine.for %arg8 = 0 to min #map8(%0) {
        %1 = affine.apply #map6(%0, %arg8)
        affine.store %cst, %arg4[%1] : memref<?xf64>
        %2 = affine.load %arg6[%1] : memref<?xf64>
        %3 = affine.load %arg6[%1] : memref<?xf64>
        %4 = affine.load %arg6[%1] : memref<?xf64>
        %5 = affine.load %arg6[%1] : memref<?xf64>
        affine.for %arg9 = 0 to 9 {
          %7 = affine.apply #map9(%arg9)
          %8 = affine.load %arg3[%7] : memref<?xf64>
          %9 = affine.load %arg2[%1, %7] : memref<?x38xf64>
          %10 = arith.mulf %2, %9 : f64
          %11 = arith.addf %8, %10 : f64
          affine.store %11, %arg3[%7] : memref<?xf64>
          %12 = affine.load %arg4[%1] : memref<?xf64>
          %13 = affine.load %arg2[%1, %7] : memref<?x38xf64>
          %14 = affine.load %arg5[%7] : memref<?xf64>
          %15 = arith.mulf %13, %14 : f64
          %16 = arith.addf %12, %15 : f64
          affine.store %16, %arg4[%1] : memref<?xf64>
          %17 = affine.apply #map2(%7)
          %18 = affine.load %arg3[%17] : memref<?xf64>
          %19 = affine.load %arg2[%1, %17] : memref<?x38xf64>
          %20 = arith.mulf %3, %19 : f64
          %21 = arith.addf %18, %20 : f64
          affine.store %21, %arg3[%17] : memref<?xf64>
          %22 = affine.load %arg4[%1] : memref<?xf64>
          %23 = affine.load %arg2[%1, %17] : memref<?x38xf64>
          %24 = affine.load %arg5[%17] : memref<?xf64>
          %25 = arith.mulf %23, %24 : f64
          %26 = arith.addf %22, %25 : f64
          affine.store %26, %arg4[%1] : memref<?xf64>
          %27 = affine.apply #map3(%7)
          %28 = affine.load %arg3[%27] : memref<?xf64>
          %29 = affine.load %arg2[%1, %27] : memref<?x38xf64>
          %30 = arith.mulf %4, %29 : f64
          %31 = arith.addf %28, %30 : f64
          affine.store %31, %arg3[%27] : memref<?xf64>
          %32 = affine.load %arg4[%1] : memref<?xf64>
          %33 = affine.load %arg2[%1, %27] : memref<?x38xf64>
          %34 = affine.load %arg5[%27] : memref<?xf64>
          %35 = arith.mulf %33, %34 : f64
          %36 = arith.addf %32, %35 : f64
          affine.store %36, %arg4[%1] : memref<?xf64>
          %37 = affine.apply #map4(%7)
          %38 = affine.load %arg3[%37] : memref<?xf64>
          %39 = affine.load %arg2[%1, %37] : memref<?x38xf64>
          %40 = arith.mulf %5, %39 : f64
          %41 = arith.addf %38, %40 : f64
          affine.store %41, %arg3[%37] : memref<?xf64>
          %42 = affine.load %arg4[%1] : memref<?xf64>
          %43 = affine.load %arg2[%1, %37] : memref<?x38xf64>
          %44 = affine.load %arg5[%37] : memref<?xf64>
          %45 = arith.mulf %43, %44 : f64
          %46 = arith.addf %42, %45 : f64
          affine.store %46, %arg4[%1] : memref<?xf64>
        }
        %6 = affine.load %arg6[%1] : memref<?xf64>
        affine.for %arg9 = 0 to 2 {
          %7 = affine.apply #map10(%arg9)
          %8 = affine.load %arg3[%7] : memref<?xf64>
          %9 = affine.load %arg2[%1, %7] : memref<?x38xf64>
          %10 = arith.mulf %6, %9 : f64
          %11 = arith.addf %8, %10 : f64
          affine.store %11, %arg3[%7] : memref<?xf64>
          %12 = affine.load %arg4[%1] : memref<?xf64>
          %13 = affine.load %arg2[%1, %7] : memref<?x38xf64>
          %14 = affine.load %arg5[%7] : memref<?xf64>
          %15 = arith.mulf %13, %14 : f64
          %16 = arith.addf %12, %15 : f64
          affine.store %16, %arg4[%1] : memref<?xf64>
        }
      }
    }
    return
  }
}

