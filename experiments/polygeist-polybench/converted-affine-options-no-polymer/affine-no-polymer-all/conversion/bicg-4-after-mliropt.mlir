#map = affine_map<(d0) -> (d0 * 4)>
#map1 = affine_map<(d0, d1) -> (d0 + d1 * 4)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0) -> (d0 + 2)>
#map4 = affine_map<(d0) -> (d0 + 3)>
#map5 = affine_map<(d0) -> (d0 + 36)>
#map6 = affine_map<(d0, d1) -> (d0 + d1)>
module {
  func.func @kernel_bicg(%arg0: i32, %arg1: i32, %arg2: memref<?x38xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    affine.for %arg7 = 0 to 9 {
      %0 = affine.apply #map(%arg7)
      affine.for %arg8 = 0 to 1 {
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
    affine.parallel (%arg7) = (0) to (2) {
      %0 = affine.apply #map5(%arg7)
      affine.for %arg8 = 0 to 1 {
        %1 = affine.apply #map6(%0, %arg8)
        affine.store %cst, %arg3[%1] : memref<?xf64>
      }
    }
    affine.for %arg7 = 0 to 42 {
      affine.parallel (%arg8) = (0) to (1) {
        %0 = affine.apply #map6(%arg7, %arg8)
        affine.store %cst, %arg4[%0] : memref<?xf64>
        %1 = affine.load %arg6[%0] : memref<?xf64>
        %2 = affine.load %arg6[%0] : memref<?xf64>
        %3 = affine.load %arg6[%0] : memref<?xf64>
        %4 = affine.load %arg6[%0] : memref<?xf64>
        affine.for %arg9 = 0 to 9 {
          %6 = affine.apply #map(%arg9)
          %7 = affine.load %arg3[%6] : memref<?xf64>
          %8 = affine.load %arg2[%0, %6] : memref<?x38xf64>
          %9 = arith.mulf %1, %8 : f64
          %10 = arith.addf %7, %9 : f64
          affine.store %10, %arg3[%6] : memref<?xf64>
          %11 = affine.load %arg4[%0] : memref<?xf64>
          %12 = affine.load %arg2[%0, %6] : memref<?x38xf64>
          %13 = affine.load %arg5[%6] : memref<?xf64>
          %14 = arith.mulf %12, %13 : f64
          %15 = arith.addf %11, %14 : f64
          affine.store %15, %arg4[%0] : memref<?xf64>
          %16 = affine.apply #map2(%6)
          %17 = affine.load %arg3[%16] : memref<?xf64>
          %18 = affine.load %arg2[%0, %16] : memref<?x38xf64>
          %19 = arith.mulf %2, %18 : f64
          %20 = arith.addf %17, %19 : f64
          affine.store %20, %arg3[%16] : memref<?xf64>
          %21 = affine.load %arg4[%0] : memref<?xf64>
          %22 = affine.load %arg2[%0, %16] : memref<?x38xf64>
          %23 = affine.load %arg5[%16] : memref<?xf64>
          %24 = arith.mulf %22, %23 : f64
          %25 = arith.addf %21, %24 : f64
          affine.store %25, %arg4[%0] : memref<?xf64>
          %26 = affine.apply #map3(%6)
          %27 = affine.load %arg3[%26] : memref<?xf64>
          %28 = affine.load %arg2[%0, %26] : memref<?x38xf64>
          %29 = arith.mulf %3, %28 : f64
          %30 = arith.addf %27, %29 : f64
          affine.store %30, %arg3[%26] : memref<?xf64>
          %31 = affine.load %arg4[%0] : memref<?xf64>
          %32 = affine.load %arg2[%0, %26] : memref<?x38xf64>
          %33 = affine.load %arg5[%26] : memref<?xf64>
          %34 = arith.mulf %32, %33 : f64
          %35 = arith.addf %31, %34 : f64
          affine.store %35, %arg4[%0] : memref<?xf64>
          %36 = affine.apply #map4(%6)
          %37 = affine.load %arg3[%36] : memref<?xf64>
          %38 = affine.load %arg2[%0, %36] : memref<?x38xf64>
          %39 = arith.mulf %4, %38 : f64
          %40 = arith.addf %37, %39 : f64
          affine.store %40, %arg3[%36] : memref<?xf64>
          %41 = affine.load %arg4[%0] : memref<?xf64>
          %42 = affine.load %arg2[%0, %36] : memref<?x38xf64>
          %43 = affine.load %arg5[%36] : memref<?xf64>
          %44 = arith.mulf %42, %43 : f64
          %45 = arith.addf %41, %44 : f64
          affine.store %45, %arg4[%0] : memref<?xf64>
        }
        %5 = affine.load %arg6[%0] : memref<?xf64>
        affine.for %arg9 = 0 to 2 {
          %6 = affine.apply #map5(%arg9)
          %7 = affine.load %arg3[%6] : memref<?xf64>
          %8 = affine.load %arg2[%0, %6] : memref<?x38xf64>
          %9 = arith.mulf %5, %8 : f64
          %10 = arith.addf %7, %9 : f64
          affine.store %10, %arg3[%6] : memref<?xf64>
          %11 = affine.load %arg4[%0] : memref<?xf64>
          %12 = affine.load %arg2[%0, %6] : memref<?x38xf64>
          %13 = affine.load %arg5[%6] : memref<?xf64>
          %14 = arith.mulf %12, %13 : f64
          %15 = arith.addf %11, %14 : f64
          affine.store %15, %arg4[%0] : memref<?xf64>
        }
      }
    }
    return
  }
}

