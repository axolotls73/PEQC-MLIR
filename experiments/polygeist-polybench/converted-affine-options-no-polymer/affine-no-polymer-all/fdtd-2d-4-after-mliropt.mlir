#map = affine_map<(d0, d1) -> (d0 + d1)>
#map1 = affine_map<(d0) -> (d0 * 4)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0) -> (d0 + 2)>
#map4 = affine_map<(d0) -> (d0 + 3)>
#map5 = affine_map<(d0) -> (d0 + 28)>
#map6 = affine_map<(d0) -> (d0 * 4 + 1)>
module {
  func.func @kernel_fdtd_2d(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?x30xf64>, %arg6: memref<?xf64>) {
    %c28 = arith.constant 28 : index
    %c29 = arith.constant 29 : index
    %cst = arith.constant 0.69999999999999996 : f64
    %cst_0 = arith.constant 5.000000e-01 : f64
    affine.for %arg7 = 0 to 20 {
      affine.parallel (%arg8) = (0) to (1) {
        %0 = affine.apply #map(%arg7, %arg8)
        affine.parallel (%arg9) = (0) to (7) {
          %1 = affine.apply #map1(%arg9)
          %2 = affine.load %arg6[%0] : memref<?xf64>
          affine.store %2, %arg4[0, %1] : memref<?x30xf64>
          %3 = affine.apply #map2(%1)
          %4 = affine.load %arg6[%0] : memref<?xf64>
          affine.store %4, %arg4[0, %3] : memref<?x30xf64>
          %5 = affine.apply #map3(%1)
          %6 = affine.load %arg6[%0] : memref<?xf64>
          affine.store %6, %arg4[0, %5] : memref<?x30xf64>
          %7 = affine.apply #map4(%1)
          %8 = affine.load %arg6[%0] : memref<?xf64>
          affine.store %8, %arg4[0, %7] : memref<?x30xf64>
        }
        affine.parallel (%arg9) = (0) to (2) {
          %1 = affine.apply #map5(%arg9)
          %2 = affine.load %arg6[%0] : memref<?xf64>
          affine.store %2, %arg4[0, %1] : memref<?x30xf64>
        }
        affine.parallel (%arg9) = (0) to (19) {
          %1 = affine.apply #map2(%arg9)
          affine.parallel (%arg10) = (0) to (7) {
            %2 = affine.apply #map1(%arg10)
            %3 = affine.load %arg4[%1, %2] : memref<?x30xf64>
            %4 = affine.load %arg5[%1, %2] : memref<?x30xf64>
            %5 = affine.load %arg5[%1 - 1, %2] : memref<?x30xf64>
            %6 = arith.subf %4, %5 : f64
            %7 = arith.mulf %6, %cst_0 : f64
            %8 = arith.subf %3, %7 : f64
            affine.store %8, %arg4[%1, %2] : memref<?x30xf64>
            %9 = affine.apply #map2(%2)
            %10 = affine.load %arg4[%1, %9] : memref<?x30xf64>
            %11 = affine.load %arg5[%1, %9] : memref<?x30xf64>
            %12 = affine.load %arg5[%1 - 1, %9] : memref<?x30xf64>
            %13 = arith.subf %11, %12 : f64
            %14 = arith.mulf %13, %cst_0 : f64
            %15 = arith.subf %10, %14 : f64
            affine.store %15, %arg4[%1, %9] : memref<?x30xf64>
            %16 = affine.apply #map3(%2)
            %17 = affine.load %arg4[%1, %16] : memref<?x30xf64>
            %18 = affine.load %arg5[%1, %16] : memref<?x30xf64>
            %19 = affine.load %arg5[%1 - 1, %16] : memref<?x30xf64>
            %20 = arith.subf %18, %19 : f64
            %21 = arith.mulf %20, %cst_0 : f64
            %22 = arith.subf %17, %21 : f64
            affine.store %22, %arg4[%1, %16] : memref<?x30xf64>
            %23 = affine.apply #map4(%2)
            %24 = affine.load %arg4[%1, %23] : memref<?x30xf64>
            %25 = affine.load %arg5[%1, %23] : memref<?x30xf64>
            %26 = affine.load %arg5[%1 - 1, %23] : memref<?x30xf64>
            %27 = arith.subf %25, %26 : f64
            %28 = arith.mulf %27, %cst_0 : f64
            %29 = arith.subf %24, %28 : f64
            affine.store %29, %arg4[%1, %23] : memref<?x30xf64>
          }
          affine.parallel (%arg10) = (0) to (2) {
            %2 = affine.apply #map5(%arg10)
            %3 = affine.load %arg4[%1, %2] : memref<?x30xf64>
            %4 = affine.load %arg5[%1, %2] : memref<?x30xf64>
            %5 = affine.load %arg5[%1 - 1, %2] : memref<?x30xf64>
            %6 = arith.subf %4, %5 : f64
            %7 = arith.mulf %6, %cst_0 : f64
            %8 = arith.subf %3, %7 : f64
            affine.store %8, %arg4[%1, %2] : memref<?x30xf64>
          }
        }
        affine.parallel (%arg9) = (0) to (20) {
          affine.parallel (%arg10) = (0) to (7) {
            %7 = affine.apply #map6(%arg10)
            %8 = affine.load %arg3[%arg9, %7] : memref<?x30xf64>
            %9 = affine.load %arg5[%arg9, %7] : memref<?x30xf64>
            %10 = affine.load %arg5[%arg9, %7 - 1] : memref<?x30xf64>
            %11 = arith.subf %9, %10 : f64
            %12 = arith.mulf %11, %cst_0 : f64
            %13 = arith.subf %8, %12 : f64
            affine.store %13, %arg3[%arg9, %7] : memref<?x30xf64>
            %14 = affine.apply #map2(%7)
            %15 = affine.load %arg3[%arg9, %14] : memref<?x30xf64>
            %16 = affine.load %arg5[%arg9, %14] : memref<?x30xf64>
            %17 = affine.load %arg5[%arg9, %14 - 1] : memref<?x30xf64>
            %18 = arith.subf %16, %17 : f64
            %19 = arith.mulf %18, %cst_0 : f64
            %20 = arith.subf %15, %19 : f64
            affine.store %20, %arg3[%arg9, %14] : memref<?x30xf64>
            %21 = affine.apply #map3(%7)
            %22 = affine.load %arg3[%arg9, %21] : memref<?x30xf64>
            %23 = affine.load %arg5[%arg9, %21] : memref<?x30xf64>
            %24 = affine.load %arg5[%arg9, %21 - 1] : memref<?x30xf64>
            %25 = arith.subf %23, %24 : f64
            %26 = arith.mulf %25, %cst_0 : f64
            %27 = arith.subf %22, %26 : f64
            affine.store %27, %arg3[%arg9, %21] : memref<?x30xf64>
            %28 = affine.apply #map4(%7)
            %29 = affine.load %arg3[%arg9, %28] : memref<?x30xf64>
            %30 = affine.load %arg5[%arg9, %28] : memref<?x30xf64>
            %31 = affine.load %arg5[%arg9, %28 - 1] : memref<?x30xf64>
            %32 = arith.subf %30, %31 : f64
            %33 = arith.mulf %32, %cst_0 : f64
            %34 = arith.subf %29, %33 : f64
            affine.store %34, %arg3[%arg9, %28] : memref<?x30xf64>
          }
          %1 = affine.load %arg3[%arg9, %c29] : memref<?x30xf64>
          %2 = affine.load %arg5[%arg9, %c29] : memref<?x30xf64>
          %3 = affine.load %arg5[%arg9, %c29 - 1] : memref<?x30xf64>
          %4 = arith.subf %2, %3 : f64
          %5 = arith.mulf %4, %cst_0 : f64
          %6 = arith.subf %1, %5 : f64
          affine.store %6, %arg3[%arg9, %c29] : memref<?x30xf64>
        }
        affine.parallel (%arg9) = (0) to (19) {
          affine.parallel (%arg10) = (0) to (7) {
            %11 = affine.apply #map1(%arg10)
            %12 = affine.load %arg5[%arg9, %11] : memref<?x30xf64>
            %13 = affine.load %arg3[%arg9, %11 + 1] : memref<?x30xf64>
            %14 = affine.load %arg3[%arg9, %11] : memref<?x30xf64>
            %15 = arith.subf %13, %14 : f64
            %16 = affine.load %arg4[%arg9 + 1, %11] : memref<?x30xf64>
            %17 = arith.addf %15, %16 : f64
            %18 = affine.load %arg4[%arg9, %11] : memref<?x30xf64>
            %19 = arith.subf %17, %18 : f64
            %20 = arith.mulf %19, %cst : f64
            %21 = arith.subf %12, %20 : f64
            affine.store %21, %arg5[%arg9, %11] : memref<?x30xf64>
            %22 = affine.apply #map2(%11)
            %23 = affine.load %arg5[%arg9, %22] : memref<?x30xf64>
            %24 = affine.load %arg3[%arg9, %22 + 1] : memref<?x30xf64>
            %25 = affine.load %arg3[%arg9, %22] : memref<?x30xf64>
            %26 = arith.subf %24, %25 : f64
            %27 = affine.load %arg4[%arg9 + 1, %22] : memref<?x30xf64>
            %28 = arith.addf %26, %27 : f64
            %29 = affine.load %arg4[%arg9, %22] : memref<?x30xf64>
            %30 = arith.subf %28, %29 : f64
            %31 = arith.mulf %30, %cst : f64
            %32 = arith.subf %23, %31 : f64
            affine.store %32, %arg5[%arg9, %22] : memref<?x30xf64>
            %33 = affine.apply #map3(%11)
            %34 = affine.load %arg5[%arg9, %33] : memref<?x30xf64>
            %35 = affine.load %arg3[%arg9, %33 + 1] : memref<?x30xf64>
            %36 = affine.load %arg3[%arg9, %33] : memref<?x30xf64>
            %37 = arith.subf %35, %36 : f64
            %38 = affine.load %arg4[%arg9 + 1, %33] : memref<?x30xf64>
            %39 = arith.addf %37, %38 : f64
            %40 = affine.load %arg4[%arg9, %33] : memref<?x30xf64>
            %41 = arith.subf %39, %40 : f64
            %42 = arith.mulf %41, %cst : f64
            %43 = arith.subf %34, %42 : f64
            affine.store %43, %arg5[%arg9, %33] : memref<?x30xf64>
            %44 = affine.apply #map4(%11)
            %45 = affine.load %arg5[%arg9, %44] : memref<?x30xf64>
            %46 = affine.load %arg3[%arg9, %44 + 1] : memref<?x30xf64>
            %47 = affine.load %arg3[%arg9, %44] : memref<?x30xf64>
            %48 = arith.subf %46, %47 : f64
            %49 = affine.load %arg4[%arg9 + 1, %44] : memref<?x30xf64>
            %50 = arith.addf %48, %49 : f64
            %51 = affine.load %arg4[%arg9, %44] : memref<?x30xf64>
            %52 = arith.subf %50, %51 : f64
            %53 = arith.mulf %52, %cst : f64
            %54 = arith.subf %45, %53 : f64
            affine.store %54, %arg5[%arg9, %44] : memref<?x30xf64>
          }
          %1 = affine.load %arg5[%arg9, %c28] : memref<?x30xf64>
          %2 = affine.load %arg3[%arg9, %c28 + 1] : memref<?x30xf64>
          %3 = affine.load %arg3[%arg9, %c28] : memref<?x30xf64>
          %4 = arith.subf %2, %3 : f64
          %5 = affine.load %arg4[%arg9 + 1, %c28] : memref<?x30xf64>
          %6 = arith.addf %4, %5 : f64
          %7 = affine.load %arg4[%arg9, %c28] : memref<?x30xf64>
          %8 = arith.subf %6, %7 : f64
          %9 = arith.mulf %8, %cst : f64
          %10 = arith.subf %1, %9 : f64
          affine.store %10, %arg5[%arg9, %c28] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

