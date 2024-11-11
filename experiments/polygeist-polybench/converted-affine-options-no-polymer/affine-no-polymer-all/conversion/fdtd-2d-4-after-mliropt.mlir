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
        %1 = affine.load %arg6[%0] : memref<?xf64>
        %2 = affine.load %arg6[%0] : memref<?xf64>
        %3 = affine.load %arg6[%0] : memref<?xf64>
        %4 = affine.load %arg6[%0] : memref<?xf64>
        affine.for %arg9 = 0 to 7 {
          %6 = affine.apply #map1(%arg9)
          affine.store %1, %arg4[0, %6] : memref<?x30xf64>
          %7 = affine.apply #map2(%6)
          affine.store %2, %arg4[0, %7] : memref<?x30xf64>
          %8 = affine.apply #map3(%6)
          affine.store %3, %arg4[0, %8] : memref<?x30xf64>
          %9 = affine.apply #map4(%6)
          affine.store %4, %arg4[0, %9] : memref<?x30xf64>
        }
        %5 = affine.load %arg6[%0] : memref<?xf64>
        affine.for %arg9 = 0 to 2 {
          %6 = affine.apply #map5(%arg9)
          affine.store %5, %arg4[0, %6] : memref<?x30xf64>
        }
        affine.for %arg9 = 0 to 19 {
          %6 = affine.apply #map2(%arg9)
          affine.for %arg10 = 0 to 7 {
            %7 = affine.apply #map1(%arg10)
            %8 = affine.load %arg4[%6, %7] : memref<?x30xf64>
            %9 = affine.load %arg5[%6, %7] : memref<?x30xf64>
            %10 = affine.load %arg5[%6 - 1, %7] : memref<?x30xf64>
            %11 = arith.subf %9, %10 : f64
            %12 = arith.mulf %11, %cst_0 : f64
            %13 = arith.subf %8, %12 : f64
            affine.store %13, %arg4[%6, %7] : memref<?x30xf64>
            %14 = affine.apply #map2(%7)
            %15 = affine.load %arg4[%6, %14] : memref<?x30xf64>
            %16 = affine.load %arg5[%6, %14] : memref<?x30xf64>
            %17 = affine.load %arg5[%6 - 1, %14] : memref<?x30xf64>
            %18 = arith.subf %16, %17 : f64
            %19 = arith.mulf %18, %cst_0 : f64
            %20 = arith.subf %15, %19 : f64
            affine.store %20, %arg4[%6, %14] : memref<?x30xf64>
            %21 = affine.apply #map3(%7)
            %22 = affine.load %arg4[%6, %21] : memref<?x30xf64>
            %23 = affine.load %arg5[%6, %21] : memref<?x30xf64>
            %24 = affine.load %arg5[%6 - 1, %21] : memref<?x30xf64>
            %25 = arith.subf %23, %24 : f64
            %26 = arith.mulf %25, %cst_0 : f64
            %27 = arith.subf %22, %26 : f64
            affine.store %27, %arg4[%6, %21] : memref<?x30xf64>
            %28 = affine.apply #map4(%7)
            %29 = affine.load %arg4[%6, %28] : memref<?x30xf64>
            %30 = affine.load %arg5[%6, %28] : memref<?x30xf64>
            %31 = affine.load %arg5[%6 - 1, %28] : memref<?x30xf64>
            %32 = arith.subf %30, %31 : f64
            %33 = arith.mulf %32, %cst_0 : f64
            %34 = arith.subf %29, %33 : f64
            affine.store %34, %arg4[%6, %28] : memref<?x30xf64>
          }
          affine.for %arg10 = 0 to 2 {
            %7 = affine.apply #map5(%arg10)
            %8 = affine.load %arg4[%6, %7] : memref<?x30xf64>
            %9 = affine.load %arg5[%6, %7] : memref<?x30xf64>
            %10 = affine.load %arg5[%6 - 1, %7] : memref<?x30xf64>
            %11 = arith.subf %9, %10 : f64
            %12 = arith.mulf %11, %cst_0 : f64
            %13 = arith.subf %8, %12 : f64
            affine.store %13, %arg4[%6, %7] : memref<?x30xf64>
          }
        }
        affine.for %arg9 = 0 to 20 {
          affine.for %arg10 = 0 to 7 {
            %12 = affine.apply #map6(%arg10)
            %13 = affine.load %arg3[%arg9, %12] : memref<?x30xf64>
            %14 = affine.load %arg5[%arg9, %12] : memref<?x30xf64>
            %15 = affine.load %arg5[%arg9, %12 - 1] : memref<?x30xf64>
            %16 = arith.subf %14, %15 : f64
            %17 = arith.mulf %16, %cst_0 : f64
            %18 = arith.subf %13, %17 : f64
            affine.store %18, %arg3[%arg9, %12] : memref<?x30xf64>
            %19 = affine.apply #map2(%12)
            %20 = affine.load %arg3[%arg9, %19] : memref<?x30xf64>
            %21 = affine.load %arg5[%arg9, %19] : memref<?x30xf64>
            %22 = affine.load %arg5[%arg9, %19 - 1] : memref<?x30xf64>
            %23 = arith.subf %21, %22 : f64
            %24 = arith.mulf %23, %cst_0 : f64
            %25 = arith.subf %20, %24 : f64
            affine.store %25, %arg3[%arg9, %19] : memref<?x30xf64>
            %26 = affine.apply #map3(%12)
            %27 = affine.load %arg3[%arg9, %26] : memref<?x30xf64>
            %28 = affine.load %arg5[%arg9, %26] : memref<?x30xf64>
            %29 = affine.load %arg5[%arg9, %26 - 1] : memref<?x30xf64>
            %30 = arith.subf %28, %29 : f64
            %31 = arith.mulf %30, %cst_0 : f64
            %32 = arith.subf %27, %31 : f64
            affine.store %32, %arg3[%arg9, %26] : memref<?x30xf64>
            %33 = affine.apply #map4(%12)
            %34 = affine.load %arg3[%arg9, %33] : memref<?x30xf64>
            %35 = affine.load %arg5[%arg9, %33] : memref<?x30xf64>
            %36 = affine.load %arg5[%arg9, %33 - 1] : memref<?x30xf64>
            %37 = arith.subf %35, %36 : f64
            %38 = arith.mulf %37, %cst_0 : f64
            %39 = arith.subf %34, %38 : f64
            affine.store %39, %arg3[%arg9, %33] : memref<?x30xf64>
          }
          %6 = affine.load %arg3[%arg9, %c29] : memref<?x30xf64>
          %7 = affine.load %arg5[%arg9, %c29] : memref<?x30xf64>
          %8 = affine.load %arg5[%arg9, %c29 - 1] : memref<?x30xf64>
          %9 = arith.subf %7, %8 : f64
          %10 = arith.mulf %9, %cst_0 : f64
          %11 = arith.subf %6, %10 : f64
          affine.store %11, %arg3[%arg9, %c29] : memref<?x30xf64>
        }
        affine.for %arg9 = 0 to 19 {
          affine.for %arg10 = 0 to 7 {
            %16 = affine.apply #map1(%arg10)
            %17 = affine.load %arg5[%arg9, %16] : memref<?x30xf64>
            %18 = affine.load %arg3[%arg9, %16 + 1] : memref<?x30xf64>
            %19 = affine.load %arg3[%arg9, %16] : memref<?x30xf64>
            %20 = arith.subf %18, %19 : f64
            %21 = affine.load %arg4[%arg9 + 1, %16] : memref<?x30xf64>
            %22 = arith.addf %20, %21 : f64
            %23 = affine.load %arg4[%arg9, %16] : memref<?x30xf64>
            %24 = arith.subf %22, %23 : f64
            %25 = arith.mulf %24, %cst : f64
            %26 = arith.subf %17, %25 : f64
            affine.store %26, %arg5[%arg9, %16] : memref<?x30xf64>
            %27 = affine.apply #map2(%16)
            %28 = affine.load %arg5[%arg9, %27] : memref<?x30xf64>
            %29 = affine.load %arg3[%arg9, %27 + 1] : memref<?x30xf64>
            %30 = affine.load %arg3[%arg9, %27] : memref<?x30xf64>
            %31 = arith.subf %29, %30 : f64
            %32 = affine.load %arg4[%arg9 + 1, %27] : memref<?x30xf64>
            %33 = arith.addf %31, %32 : f64
            %34 = affine.load %arg4[%arg9, %27] : memref<?x30xf64>
            %35 = arith.subf %33, %34 : f64
            %36 = arith.mulf %35, %cst : f64
            %37 = arith.subf %28, %36 : f64
            affine.store %37, %arg5[%arg9, %27] : memref<?x30xf64>
            %38 = affine.apply #map3(%16)
            %39 = affine.load %arg5[%arg9, %38] : memref<?x30xf64>
            %40 = affine.load %arg3[%arg9, %38 + 1] : memref<?x30xf64>
            %41 = affine.load %arg3[%arg9, %38] : memref<?x30xf64>
            %42 = arith.subf %40, %41 : f64
            %43 = affine.load %arg4[%arg9 + 1, %38] : memref<?x30xf64>
            %44 = arith.addf %42, %43 : f64
            %45 = affine.load %arg4[%arg9, %38] : memref<?x30xf64>
            %46 = arith.subf %44, %45 : f64
            %47 = arith.mulf %46, %cst : f64
            %48 = arith.subf %39, %47 : f64
            affine.store %48, %arg5[%arg9, %38] : memref<?x30xf64>
            %49 = affine.apply #map4(%16)
            %50 = affine.load %arg5[%arg9, %49] : memref<?x30xf64>
            %51 = affine.load %arg3[%arg9, %49 + 1] : memref<?x30xf64>
            %52 = affine.load %arg3[%arg9, %49] : memref<?x30xf64>
            %53 = arith.subf %51, %52 : f64
            %54 = affine.load %arg4[%arg9 + 1, %49] : memref<?x30xf64>
            %55 = arith.addf %53, %54 : f64
            %56 = affine.load %arg4[%arg9, %49] : memref<?x30xf64>
            %57 = arith.subf %55, %56 : f64
            %58 = arith.mulf %57, %cst : f64
            %59 = arith.subf %50, %58 : f64
            affine.store %59, %arg5[%arg9, %49] : memref<?x30xf64>
          }
          %6 = affine.load %arg5[%arg9, %c28] : memref<?x30xf64>
          %7 = affine.load %arg3[%arg9, %c28 + 1] : memref<?x30xf64>
          %8 = affine.load %arg3[%arg9, %c28] : memref<?x30xf64>
          %9 = arith.subf %7, %8 : f64
          %10 = affine.load %arg4[%arg9 + 1, %c28] : memref<?x30xf64>
          %11 = arith.addf %9, %10 : f64
          %12 = affine.load %arg4[%arg9, %c28] : memref<?x30xf64>
          %13 = arith.subf %11, %12 : f64
          %14 = arith.mulf %13, %cst : f64
          %15 = arith.subf %6, %14 : f64
          affine.store %15, %arg5[%arg9, %c28] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

