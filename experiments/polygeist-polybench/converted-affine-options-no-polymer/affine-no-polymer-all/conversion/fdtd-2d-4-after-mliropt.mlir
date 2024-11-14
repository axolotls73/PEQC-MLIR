#map = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0, d1) -> (d0 + d1)>
#map2 = affine_map<(d0) -> (d0 * 4)>
#map3 = affine_map<(d0) -> (d0 + 1)>
#map4 = affine_map<(d0) -> (d0 + 2)>
#map5 = affine_map<(d0) -> (d0 + 3)>
#map6 = affine_map<(d0) -> (d0 + 28)>
#map7 = affine_map<(d0) -> (d0 * 4 + 1)>
module {
  func.func @kernel_fdtd_2d(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?x30xf64>, %arg6: memref<?xf64>) {
    %c28 = arith.constant 28 : index
    %c29 = arith.constant 29 : index
    %cst = arith.constant 0.69999999999999996 : f64
    %cst_0 = arith.constant 5.000000e-01 : f64
    affine.parallel (%arg7) = (0) to (1) {
      %0 = affine.apply #map(%arg7)
      affine.for %arg8 = 0 to 20 {
        %1 = affine.apply #map1(%0, %arg8)
        %2 = affine.load %arg6[%1] : memref<?xf64>
        %3 = affine.load %arg6[%1] : memref<?xf64>
        %4 = affine.load %arg6[%1] : memref<?xf64>
        %5 = affine.load %arg6[%1] : memref<?xf64>
        affine.for %arg9 = 0 to 7 {
          %7 = affine.apply #map2(%arg9)
          affine.store %2, %arg4[0, %7] : memref<?x30xf64>
          %8 = affine.apply #map3(%7)
          affine.store %3, %arg4[0, %8] : memref<?x30xf64>
          %9 = affine.apply #map4(%7)
          affine.store %4, %arg4[0, %9] : memref<?x30xf64>
          %10 = affine.apply #map5(%7)
          affine.store %5, %arg4[0, %10] : memref<?x30xf64>
        }
        %6 = affine.load %arg6[%1] : memref<?xf64>
        affine.for %arg9 = 0 to 2 {
          %7 = affine.apply #map6(%arg9)
          affine.store %6, %arg4[0, %7] : memref<?x30xf64>
        }
        affine.for %arg9 = 0 to 19 {
          %7 = affine.apply #map3(%arg9)
          affine.for %arg10 = 0 to 7 {
            %8 = affine.apply #map2(%arg10)
            %9 = affine.load %arg4[%7, %8] : memref<?x30xf64>
            %10 = affine.load %arg5[%7, %8] : memref<?x30xf64>
            %11 = affine.load %arg5[%7 - 1, %8] : memref<?x30xf64>
            %12 = arith.subf %10, %11 : f64
            %13 = arith.mulf %12, %cst_0 : f64
            %14 = arith.subf %9, %13 : f64
            affine.store %14, %arg4[%7, %8] : memref<?x30xf64>
            %15 = affine.apply #map3(%8)
            %16 = affine.load %arg4[%7, %15] : memref<?x30xf64>
            %17 = affine.load %arg5[%7, %15] : memref<?x30xf64>
            %18 = affine.load %arg5[%7 - 1, %15] : memref<?x30xf64>
            %19 = arith.subf %17, %18 : f64
            %20 = arith.mulf %19, %cst_0 : f64
            %21 = arith.subf %16, %20 : f64
            affine.store %21, %arg4[%7, %15] : memref<?x30xf64>
            %22 = affine.apply #map4(%8)
            %23 = affine.load %arg4[%7, %22] : memref<?x30xf64>
            %24 = affine.load %arg5[%7, %22] : memref<?x30xf64>
            %25 = affine.load %arg5[%7 - 1, %22] : memref<?x30xf64>
            %26 = arith.subf %24, %25 : f64
            %27 = arith.mulf %26, %cst_0 : f64
            %28 = arith.subf %23, %27 : f64
            affine.store %28, %arg4[%7, %22] : memref<?x30xf64>
            %29 = affine.apply #map5(%8)
            %30 = affine.load %arg4[%7, %29] : memref<?x30xf64>
            %31 = affine.load %arg5[%7, %29] : memref<?x30xf64>
            %32 = affine.load %arg5[%7 - 1, %29] : memref<?x30xf64>
            %33 = arith.subf %31, %32 : f64
            %34 = arith.mulf %33, %cst_0 : f64
            %35 = arith.subf %30, %34 : f64
            affine.store %35, %arg4[%7, %29] : memref<?x30xf64>
          }
          affine.for %arg10 = 0 to 2 {
            %8 = affine.apply #map6(%arg10)
            %9 = affine.load %arg4[%7, %8] : memref<?x30xf64>
            %10 = affine.load %arg5[%7, %8] : memref<?x30xf64>
            %11 = affine.load %arg5[%7 - 1, %8] : memref<?x30xf64>
            %12 = arith.subf %10, %11 : f64
            %13 = arith.mulf %12, %cst_0 : f64
            %14 = arith.subf %9, %13 : f64
            affine.store %14, %arg4[%7, %8] : memref<?x30xf64>
          }
        }
        affine.for %arg9 = 0 to 20 {
          affine.for %arg10 = 0 to 7 {
            %13 = affine.apply #map7(%arg10)
            %14 = affine.load %arg3[%arg9, %13] : memref<?x30xf64>
            %15 = affine.load %arg5[%arg9, %13] : memref<?x30xf64>
            %16 = affine.load %arg5[%arg9, %13 - 1] : memref<?x30xf64>
            %17 = arith.subf %15, %16 : f64
            %18 = arith.mulf %17, %cst_0 : f64
            %19 = arith.subf %14, %18 : f64
            affine.store %19, %arg3[%arg9, %13] : memref<?x30xf64>
            %20 = affine.apply #map3(%13)
            %21 = affine.load %arg3[%arg9, %20] : memref<?x30xf64>
            %22 = affine.load %arg5[%arg9, %20] : memref<?x30xf64>
            %23 = affine.load %arg5[%arg9, %20 - 1] : memref<?x30xf64>
            %24 = arith.subf %22, %23 : f64
            %25 = arith.mulf %24, %cst_0 : f64
            %26 = arith.subf %21, %25 : f64
            affine.store %26, %arg3[%arg9, %20] : memref<?x30xf64>
            %27 = affine.apply #map4(%13)
            %28 = affine.load %arg3[%arg9, %27] : memref<?x30xf64>
            %29 = affine.load %arg5[%arg9, %27] : memref<?x30xf64>
            %30 = affine.load %arg5[%arg9, %27 - 1] : memref<?x30xf64>
            %31 = arith.subf %29, %30 : f64
            %32 = arith.mulf %31, %cst_0 : f64
            %33 = arith.subf %28, %32 : f64
            affine.store %33, %arg3[%arg9, %27] : memref<?x30xf64>
            %34 = affine.apply #map5(%13)
            %35 = affine.load %arg3[%arg9, %34] : memref<?x30xf64>
            %36 = affine.load %arg5[%arg9, %34] : memref<?x30xf64>
            %37 = affine.load %arg5[%arg9, %34 - 1] : memref<?x30xf64>
            %38 = arith.subf %36, %37 : f64
            %39 = arith.mulf %38, %cst_0 : f64
            %40 = arith.subf %35, %39 : f64
            affine.store %40, %arg3[%arg9, %34] : memref<?x30xf64>
          }
          %7 = affine.load %arg3[%arg9, %c29] : memref<?x30xf64>
          %8 = affine.load %arg5[%arg9, %c29] : memref<?x30xf64>
          %9 = affine.load %arg5[%arg9, %c29 - 1] : memref<?x30xf64>
          %10 = arith.subf %8, %9 : f64
          %11 = arith.mulf %10, %cst_0 : f64
          %12 = arith.subf %7, %11 : f64
          affine.store %12, %arg3[%arg9, %c29] : memref<?x30xf64>
        }
        affine.for %arg9 = 0 to 19 {
          affine.for %arg10 = 0 to 7 {
            %17 = affine.apply #map2(%arg10)
            %18 = affine.load %arg5[%arg9, %17] : memref<?x30xf64>
            %19 = affine.load %arg3[%arg9, %17 + 1] : memref<?x30xf64>
            %20 = affine.load %arg3[%arg9, %17] : memref<?x30xf64>
            %21 = arith.subf %19, %20 : f64
            %22 = affine.load %arg4[%arg9 + 1, %17] : memref<?x30xf64>
            %23 = arith.addf %21, %22 : f64
            %24 = affine.load %arg4[%arg9, %17] : memref<?x30xf64>
            %25 = arith.subf %23, %24 : f64
            %26 = arith.mulf %25, %cst : f64
            %27 = arith.subf %18, %26 : f64
            affine.store %27, %arg5[%arg9, %17] : memref<?x30xf64>
            %28 = affine.apply #map3(%17)
            %29 = affine.load %arg5[%arg9, %28] : memref<?x30xf64>
            %30 = affine.load %arg3[%arg9, %28 + 1] : memref<?x30xf64>
            %31 = affine.load %arg3[%arg9, %28] : memref<?x30xf64>
            %32 = arith.subf %30, %31 : f64
            %33 = affine.load %arg4[%arg9 + 1, %28] : memref<?x30xf64>
            %34 = arith.addf %32, %33 : f64
            %35 = affine.load %arg4[%arg9, %28] : memref<?x30xf64>
            %36 = arith.subf %34, %35 : f64
            %37 = arith.mulf %36, %cst : f64
            %38 = arith.subf %29, %37 : f64
            affine.store %38, %arg5[%arg9, %28] : memref<?x30xf64>
            %39 = affine.apply #map4(%17)
            %40 = affine.load %arg5[%arg9, %39] : memref<?x30xf64>
            %41 = affine.load %arg3[%arg9, %39 + 1] : memref<?x30xf64>
            %42 = affine.load %arg3[%arg9, %39] : memref<?x30xf64>
            %43 = arith.subf %41, %42 : f64
            %44 = affine.load %arg4[%arg9 + 1, %39] : memref<?x30xf64>
            %45 = arith.addf %43, %44 : f64
            %46 = affine.load %arg4[%arg9, %39] : memref<?x30xf64>
            %47 = arith.subf %45, %46 : f64
            %48 = arith.mulf %47, %cst : f64
            %49 = arith.subf %40, %48 : f64
            affine.store %49, %arg5[%arg9, %39] : memref<?x30xf64>
            %50 = affine.apply #map5(%17)
            %51 = affine.load %arg5[%arg9, %50] : memref<?x30xf64>
            %52 = affine.load %arg3[%arg9, %50 + 1] : memref<?x30xf64>
            %53 = affine.load %arg3[%arg9, %50] : memref<?x30xf64>
            %54 = arith.subf %52, %53 : f64
            %55 = affine.load %arg4[%arg9 + 1, %50] : memref<?x30xf64>
            %56 = arith.addf %54, %55 : f64
            %57 = affine.load %arg4[%arg9, %50] : memref<?x30xf64>
            %58 = arith.subf %56, %57 : f64
            %59 = arith.mulf %58, %cst : f64
            %60 = arith.subf %51, %59 : f64
            affine.store %60, %arg5[%arg9, %50] : memref<?x30xf64>
          }
          %7 = affine.load %arg5[%arg9, %c28] : memref<?x30xf64>
          %8 = affine.load %arg3[%arg9, %c28 + 1] : memref<?x30xf64>
          %9 = affine.load %arg3[%arg9, %c28] : memref<?x30xf64>
          %10 = arith.subf %8, %9 : f64
          %11 = affine.load %arg4[%arg9 + 1, %c28] : memref<?x30xf64>
          %12 = arith.addf %10, %11 : f64
          %13 = affine.load %arg4[%arg9, %c28] : memref<?x30xf64>
          %14 = arith.subf %12, %13 : f64
          %15 = arith.mulf %14, %cst : f64
          %16 = arith.subf %7, %15 : f64
          affine.store %16, %arg5[%arg9, %c28] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

