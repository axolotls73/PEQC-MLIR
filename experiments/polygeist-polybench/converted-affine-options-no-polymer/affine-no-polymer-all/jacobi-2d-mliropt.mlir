#map = affine_map<(d0, d1) -> (d0 + d1)>
#map1 = affine_map<(d0) -> (d0 + 1)>
#map2 = affine_map<(d0) -> (d0 * 4 + 1)>
#map3 = affine_map<(d0) -> (d0 + 2)>
#map4 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_jacobi_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>) {
    %cst = arith.constant 2.000000e-01 : f64
    affine.for %arg4 = 0 to 20 {
      affine.parallel (%arg5) = (0) to (1) {
        %0 = affine.apply #map(%arg4, %arg5)
        affine.parallel (%arg6) = (0) to (28) {
          %1 = affine.apply #map1(%arg6)
          affine.parallel (%arg7) = (0) to (7) {
            %2 = affine.apply #map2(%arg7)
            %3 = affine.load %arg2[%1, %2] : memref<?x30xf64>
            %4 = affine.load %arg2[%1, %2 - 1] : memref<?x30xf64>
            %5 = arith.addf %3, %4 : f64
            %6 = affine.load %arg2[%1, %2 + 1] : memref<?x30xf64>
            %7 = arith.addf %5, %6 : f64
            %8 = affine.load %arg2[%1 + 1, %2] : memref<?x30xf64>
            %9 = arith.addf %7, %8 : f64
            %10 = affine.load %arg2[%1 - 1, %2] : memref<?x30xf64>
            %11 = arith.addf %9, %10 : f64
            %12 = arith.mulf %11, %cst : f64
            affine.store %12, %arg3[%1, %2] : memref<?x30xf64>
            %13 = affine.apply #map1(%2)
            %14 = affine.load %arg2[%1, %13] : memref<?x30xf64>
            %15 = affine.load %arg2[%1, %13 - 1] : memref<?x30xf64>
            %16 = arith.addf %14, %15 : f64
            %17 = affine.load %arg2[%1, %13 + 1] : memref<?x30xf64>
            %18 = arith.addf %16, %17 : f64
            %19 = affine.load %arg2[%1 + 1, %13] : memref<?x30xf64>
            %20 = arith.addf %18, %19 : f64
            %21 = affine.load %arg2[%1 - 1, %13] : memref<?x30xf64>
            %22 = arith.addf %20, %21 : f64
            %23 = arith.mulf %22, %cst : f64
            affine.store %23, %arg3[%1, %13] : memref<?x30xf64>
            %24 = affine.apply #map3(%2)
            %25 = affine.load %arg2[%1, %24] : memref<?x30xf64>
            %26 = affine.load %arg2[%1, %24 - 1] : memref<?x30xf64>
            %27 = arith.addf %25, %26 : f64
            %28 = affine.load %arg2[%1, %24 + 1] : memref<?x30xf64>
            %29 = arith.addf %27, %28 : f64
            %30 = affine.load %arg2[%1 + 1, %24] : memref<?x30xf64>
            %31 = arith.addf %29, %30 : f64
            %32 = affine.load %arg2[%1 - 1, %24] : memref<?x30xf64>
            %33 = arith.addf %31, %32 : f64
            %34 = arith.mulf %33, %cst : f64
            affine.store %34, %arg3[%1, %24] : memref<?x30xf64>
            %35 = affine.apply #map4(%2)
            %36 = affine.load %arg2[%1, %35] : memref<?x30xf64>
            %37 = affine.load %arg2[%1, %35 - 1] : memref<?x30xf64>
            %38 = arith.addf %36, %37 : f64
            %39 = affine.load %arg2[%1, %35 + 1] : memref<?x30xf64>
            %40 = arith.addf %38, %39 : f64
            %41 = affine.load %arg2[%1 + 1, %35] : memref<?x30xf64>
            %42 = arith.addf %40, %41 : f64
            %43 = affine.load %arg2[%1 - 1, %35] : memref<?x30xf64>
            %44 = arith.addf %42, %43 : f64
            %45 = arith.mulf %44, %cst : f64
            affine.store %45, %arg3[%1, %35] : memref<?x30xf64>
          }
        }
        affine.parallel (%arg6) = (0) to (28) {
          %1 = affine.apply #map1(%arg6)
          affine.parallel (%arg7) = (0) to (7) {
            %2 = affine.apply #map2(%arg7)
            %3 = affine.load %arg3[%1, %2] : memref<?x30xf64>
            %4 = affine.load %arg3[%1, %2 - 1] : memref<?x30xf64>
            %5 = arith.addf %3, %4 : f64
            %6 = affine.load %arg3[%1, %2 + 1] : memref<?x30xf64>
            %7 = arith.addf %5, %6 : f64
            %8 = affine.load %arg3[%1 + 1, %2] : memref<?x30xf64>
            %9 = arith.addf %7, %8 : f64
            %10 = affine.load %arg3[%1 - 1, %2] : memref<?x30xf64>
            %11 = arith.addf %9, %10 : f64
            %12 = arith.mulf %11, %cst : f64
            affine.store %12, %arg2[%1, %2] : memref<?x30xf64>
            %13 = affine.apply #map1(%2)
            %14 = affine.load %arg3[%1, %13] : memref<?x30xf64>
            %15 = affine.load %arg3[%1, %13 - 1] : memref<?x30xf64>
            %16 = arith.addf %14, %15 : f64
            %17 = affine.load %arg3[%1, %13 + 1] : memref<?x30xf64>
            %18 = arith.addf %16, %17 : f64
            %19 = affine.load %arg3[%1 + 1, %13] : memref<?x30xf64>
            %20 = arith.addf %18, %19 : f64
            %21 = affine.load %arg3[%1 - 1, %13] : memref<?x30xf64>
            %22 = arith.addf %20, %21 : f64
            %23 = arith.mulf %22, %cst : f64
            affine.store %23, %arg2[%1, %13] : memref<?x30xf64>
            %24 = affine.apply #map3(%2)
            %25 = affine.load %arg3[%1, %24] : memref<?x30xf64>
            %26 = affine.load %arg3[%1, %24 - 1] : memref<?x30xf64>
            %27 = arith.addf %25, %26 : f64
            %28 = affine.load %arg3[%1, %24 + 1] : memref<?x30xf64>
            %29 = arith.addf %27, %28 : f64
            %30 = affine.load %arg3[%1 + 1, %24] : memref<?x30xf64>
            %31 = arith.addf %29, %30 : f64
            %32 = affine.load %arg3[%1 - 1, %24] : memref<?x30xf64>
            %33 = arith.addf %31, %32 : f64
            %34 = arith.mulf %33, %cst : f64
            affine.store %34, %arg2[%1, %24] : memref<?x30xf64>
            %35 = affine.apply #map4(%2)
            %36 = affine.load %arg3[%1, %35] : memref<?x30xf64>
            %37 = affine.load %arg3[%1, %35 - 1] : memref<?x30xf64>
            %38 = arith.addf %36, %37 : f64
            %39 = affine.load %arg3[%1, %35 + 1] : memref<?x30xf64>
            %40 = arith.addf %38, %39 : f64
            %41 = affine.load %arg3[%1 + 1, %35] : memref<?x30xf64>
            %42 = arith.addf %40, %41 : f64
            %43 = affine.load %arg3[%1 - 1, %35] : memref<?x30xf64>
            %44 = arith.addf %42, %43 : f64
            %45 = arith.mulf %44, %cst : f64
            affine.store %45, %arg2[%1, %35] : memref<?x30xf64>
          }
        }
      }
    }
    return
  }
}

