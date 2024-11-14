#map = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0, d1) -> (d0 + d1)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0) -> (d0 * 4 + 1)>
#map4 = affine_map<(d0) -> (d0 + 2)>
#map5 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_jacobi_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>) {
    %cst = arith.constant 2.000000e-01 : f64
    affine.parallel (%arg4) = (0) to (1) {
      %0 = affine.apply #map(%arg4)
      affine.for %arg5 = 0 to 20 {
        %1 = affine.apply #map1(%0, %arg5)
        affine.for %arg6 = 0 to 28 {
          %2 = affine.apply #map2(%arg6)
          affine.for %arg7 = 0 to 7 {
            %3 = affine.apply #map3(%arg7)
            %4 = affine.load %arg2[%2, %3] : memref<?x30xf64>
            %5 = affine.load %arg2[%2, %3 - 1] : memref<?x30xf64>
            %6 = arith.addf %4, %5 : f64
            %7 = affine.load %arg2[%2, %3 + 1] : memref<?x30xf64>
            %8 = arith.addf %6, %7 : f64
            %9 = affine.load %arg2[%2 + 1, %3] : memref<?x30xf64>
            %10 = arith.addf %8, %9 : f64
            %11 = affine.load %arg2[%2 - 1, %3] : memref<?x30xf64>
            %12 = arith.addf %10, %11 : f64
            %13 = arith.mulf %12, %cst : f64
            affine.store %13, %arg3[%2, %3] : memref<?x30xf64>
            %14 = affine.apply #map2(%3)
            %15 = affine.load %arg2[%2, %14] : memref<?x30xf64>
            %16 = affine.load %arg2[%2, %14 - 1] : memref<?x30xf64>
            %17 = arith.addf %15, %16 : f64
            %18 = affine.load %arg2[%2, %14 + 1] : memref<?x30xf64>
            %19 = arith.addf %17, %18 : f64
            %20 = affine.load %arg2[%2 + 1, %14] : memref<?x30xf64>
            %21 = arith.addf %19, %20 : f64
            %22 = affine.load %arg2[%2 - 1, %14] : memref<?x30xf64>
            %23 = arith.addf %21, %22 : f64
            %24 = arith.mulf %23, %cst : f64
            affine.store %24, %arg3[%2, %14] : memref<?x30xf64>
            %25 = affine.apply #map4(%3)
            %26 = affine.load %arg2[%2, %25] : memref<?x30xf64>
            %27 = affine.load %arg2[%2, %25 - 1] : memref<?x30xf64>
            %28 = arith.addf %26, %27 : f64
            %29 = affine.load %arg2[%2, %25 + 1] : memref<?x30xf64>
            %30 = arith.addf %28, %29 : f64
            %31 = affine.load %arg2[%2 + 1, %25] : memref<?x30xf64>
            %32 = arith.addf %30, %31 : f64
            %33 = affine.load %arg2[%2 - 1, %25] : memref<?x30xf64>
            %34 = arith.addf %32, %33 : f64
            %35 = arith.mulf %34, %cst : f64
            affine.store %35, %arg3[%2, %25] : memref<?x30xf64>
            %36 = affine.apply #map5(%3)
            %37 = affine.load %arg2[%2, %36] : memref<?x30xf64>
            %38 = affine.load %arg2[%2, %36 - 1] : memref<?x30xf64>
            %39 = arith.addf %37, %38 : f64
            %40 = affine.load %arg2[%2, %36 + 1] : memref<?x30xf64>
            %41 = arith.addf %39, %40 : f64
            %42 = affine.load %arg2[%2 + 1, %36] : memref<?x30xf64>
            %43 = arith.addf %41, %42 : f64
            %44 = affine.load %arg2[%2 - 1, %36] : memref<?x30xf64>
            %45 = arith.addf %43, %44 : f64
            %46 = arith.mulf %45, %cst : f64
            affine.store %46, %arg3[%2, %36] : memref<?x30xf64>
          }
        }
        affine.for %arg6 = 0 to 28 {
          %2 = affine.apply #map2(%arg6)
          affine.for %arg7 = 0 to 7 {
            %3 = affine.apply #map3(%arg7)
            %4 = affine.load %arg3[%2, %3] : memref<?x30xf64>
            %5 = affine.load %arg3[%2, %3 - 1] : memref<?x30xf64>
            %6 = arith.addf %4, %5 : f64
            %7 = affine.load %arg3[%2, %3 + 1] : memref<?x30xf64>
            %8 = arith.addf %6, %7 : f64
            %9 = affine.load %arg3[%2 + 1, %3] : memref<?x30xf64>
            %10 = arith.addf %8, %9 : f64
            %11 = affine.load %arg3[%2 - 1, %3] : memref<?x30xf64>
            %12 = arith.addf %10, %11 : f64
            %13 = arith.mulf %12, %cst : f64
            affine.store %13, %arg2[%2, %3] : memref<?x30xf64>
            %14 = affine.apply #map2(%3)
            %15 = affine.load %arg3[%2, %14] : memref<?x30xf64>
            %16 = affine.load %arg3[%2, %14 - 1] : memref<?x30xf64>
            %17 = arith.addf %15, %16 : f64
            %18 = affine.load %arg3[%2, %14 + 1] : memref<?x30xf64>
            %19 = arith.addf %17, %18 : f64
            %20 = affine.load %arg3[%2 + 1, %14] : memref<?x30xf64>
            %21 = arith.addf %19, %20 : f64
            %22 = affine.load %arg3[%2 - 1, %14] : memref<?x30xf64>
            %23 = arith.addf %21, %22 : f64
            %24 = arith.mulf %23, %cst : f64
            affine.store %24, %arg2[%2, %14] : memref<?x30xf64>
            %25 = affine.apply #map4(%3)
            %26 = affine.load %arg3[%2, %25] : memref<?x30xf64>
            %27 = affine.load %arg3[%2, %25 - 1] : memref<?x30xf64>
            %28 = arith.addf %26, %27 : f64
            %29 = affine.load %arg3[%2, %25 + 1] : memref<?x30xf64>
            %30 = arith.addf %28, %29 : f64
            %31 = affine.load %arg3[%2 + 1, %25] : memref<?x30xf64>
            %32 = arith.addf %30, %31 : f64
            %33 = affine.load %arg3[%2 - 1, %25] : memref<?x30xf64>
            %34 = arith.addf %32, %33 : f64
            %35 = arith.mulf %34, %cst : f64
            affine.store %35, %arg2[%2, %25] : memref<?x30xf64>
            %36 = affine.apply #map5(%3)
            %37 = affine.load %arg3[%2, %36] : memref<?x30xf64>
            %38 = affine.load %arg3[%2, %36 - 1] : memref<?x30xf64>
            %39 = arith.addf %37, %38 : f64
            %40 = affine.load %arg3[%2, %36 + 1] : memref<?x30xf64>
            %41 = arith.addf %39, %40 : f64
            %42 = affine.load %arg3[%2 + 1, %36] : memref<?x30xf64>
            %43 = arith.addf %41, %42 : f64
            %44 = affine.load %arg3[%2 - 1, %36] : memref<?x30xf64>
            %45 = arith.addf %43, %44 : f64
            %46 = arith.mulf %45, %cst : f64
            affine.store %46, %arg2[%2, %36] : memref<?x30xf64>
          }
        }
      }
    }
    return
  }
}

