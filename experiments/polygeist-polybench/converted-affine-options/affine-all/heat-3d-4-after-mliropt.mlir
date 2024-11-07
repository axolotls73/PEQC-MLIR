#map = affine_map<(d0, d1) -> (d0 + d1)>
#map1 = affine_map<(d0, d1, d2) -> (1, d0 * 16 - 4, d1 * 16 - 4, d2 * 16 - 4)>
#map2 = affine_map<(d0, d1, d2) -> (21, d0 * 16 + 15, d1 * 16 + 15, d2 * 16 + 15)>
#map3 = affine_map<(d0, d1) -> (d0 * 32, d1 * 2 + 2)>
#map4 = affine_map<(d0, d1) -> (d0 * 32 + 32, d1 * 2 + 9)>
#set = affine_set<(d0, d1) : (d1 floordiv 16 - d0 >= 0)>
#set1 = affine_set<(d0, d1) : (d0 - (d1 - 11) ceildiv 16 >= 0)>
#set2 = affine_set<(d0, d1, d2) : (-d1 - d2 - d0 + 2 >= 0)>
module {
  func.func @kernel_heat_3d(%arg0: i32, %arg1: i32, %arg2: memref<?x10x10xf64>, %arg3: memref<?x10x10xf64>) {
    %cst = arith.constant 2.000000e+00 : f64
    %cst_0 = arith.constant 1.250000e-01 : f64
    affine.for %arg4 = 0 to 2 {
      affine.for %arg5 = 0 to 2 {
        affine.for %arg6 = 0 to 2 {
          affine.parallel (%arg7) = (0) to (1) {
            %0 = affine.apply #map(%arg4, %arg7)
            affine.parallel (%arg8) = (0) to (1) {
              %1 = affine.apply #map(%arg5, %arg8)
              affine.parallel (%arg9) = (0) to (1) {
                %2 = affine.apply #map(%arg6, %arg9)
                affine.for %arg10 = max #map1(%0, %1, %2) to min #map2(%0, %1, %2) {
                  affine.if #set(%0, %arg10) {
                    affine.parallel (%arg11) = (max(%1 * 32, %arg10 * 2 + 1)) to (min(%1 * 32 + 32, %arg10 * 2 + 9)) {
                      affine.parallel (%arg12) = (max(%2 * 32, %arg10 * 2 + 1)) to (min(%2 * 32 + 32, %arg10 * 2 + 9)) {
                        %3 = affine.load %arg2[2, %arg10 * -2 + %arg11, %arg10 * -2 + %arg12] : memref<?x10x10xf64>
                        %4 = affine.load %arg2[0, %arg10 * -2 + %arg11, %arg10 * -2 + %arg12] : memref<?x10x10xf64>
                        %5 = affine.load %arg2[1, %arg10 * -2 + %arg11 + 1, %arg10 * -2 + %arg12] : memref<?x10x10xf64>
                        %6 = affine.load %arg2[1, %arg10 * -2 + %arg11 - 1, %arg10 * -2 + %arg12] : memref<?x10x10xf64>
                        %7 = affine.load %arg2[1, %arg10 * -2 + %arg11, %arg10 * -2 + %arg12 + 1] : memref<?x10x10xf64>
                        %8 = affine.load %arg2[1, %arg10 * -2 + %arg11, %arg10 * -2 + %arg12 - 1] : memref<?x10x10xf64>
                        %9 = affine.load %arg2[1, %arg10 * -2 + %arg11, %arg10 * -2 + %arg12] : memref<?x10x10xf64>
                        %10 = arith.mulf %9, %cst : f64
                        %11 = arith.subf %3, %10 : f64
                        %12 = arith.addf %11, %4 : f64
                        %13 = arith.mulf %12, %cst_0 : f64
                        %14 = arith.subf %5, %10 : f64
                        %15 = arith.addf %14, %6 : f64
                        %16 = arith.mulf %15, %cst_0 : f64
                        %17 = arith.addf %13, %16 : f64
                        %18 = arith.subf %7, %10 : f64
                        %19 = arith.addf %18, %8 : f64
                        %20 = arith.mulf %19, %cst_0 : f64
                        %21 = arith.addf %17, %20 : f64
                        %22 = arith.addf %21, %9 : f64
                        affine.store %22, %arg3[1, %arg10 * -2 + %arg11, %arg10 * -2 + %arg12] : memref<?x10x10xf64>
                      }
                    }
                  }
                  affine.for %arg11 = max #map3(%0, %arg10) to min #map4(%0, %arg10) {
                    affine.if #set(%1, %arg10) {
                      affine.parallel (%arg12) = (max(%2 * 32, %arg10 * 2 + 1)) to (min(%2 * 32 + 32, %arg10 * 2 + 9)) {
                        %3 = affine.load %arg2[%arg10 * -2 + %arg11 + 1, 1, %arg10 * -2 + %arg12] : memref<?x10x10xf64>
                        %4 = affine.load %arg2[%arg10 * -2 + %arg11 - 1, 1, %arg10 * -2 + %arg12] : memref<?x10x10xf64>
                        %5 = affine.load %arg2[%arg10 * -2 + %arg11, 2, %arg10 * -2 + %arg12] : memref<?x10x10xf64>
                        %6 = affine.load %arg2[%arg10 * -2 + %arg11, 0, %arg10 * -2 + %arg12] : memref<?x10x10xf64>
                        %7 = affine.load %arg2[%arg10 * -2 + %arg11, 1, %arg10 * -2 + %arg12 + 1] : memref<?x10x10xf64>
                        %8 = affine.load %arg2[%arg10 * -2 + %arg11, 1, %arg10 * -2 + %arg12 - 1] : memref<?x10x10xf64>
                        %9 = affine.load %arg2[%arg10 * -2 + %arg11, 1, %arg10 * -2 + %arg12] : memref<?x10x10xf64>
                        %10 = arith.mulf %9, %cst : f64
                        %11 = arith.subf %3, %10 : f64
                        %12 = arith.addf %11, %4 : f64
                        %13 = arith.mulf %12, %cst_0 : f64
                        %14 = arith.subf %5, %10 : f64
                        %15 = arith.addf %14, %6 : f64
                        %16 = arith.mulf %15, %cst_0 : f64
                        %17 = arith.addf %13, %16 : f64
                        %18 = arith.subf %7, %10 : f64
                        %19 = arith.addf %18, %8 : f64
                        %20 = arith.mulf %19, %cst_0 : f64
                        %21 = arith.addf %17, %20 : f64
                        %22 = arith.addf %21, %9 : f64
                        affine.store %22, %arg3[%arg10 * -2 + %arg11, 1, %arg10 * -2 + %arg12] : memref<?x10x10xf64>
                      }
                    }
                    affine.for %arg12 = max #map3(%1, %arg10) to min #map4(%1, %arg10) {
                      affine.if #set(%2, %arg10) {
                        %3 = affine.load %arg2[%arg10 * -2 + %arg11 + 1, %arg10 * -2 + %arg12, 1] : memref<?x10x10xf64>
                        %4 = affine.load %arg2[%arg10 * -2 + %arg11 - 1, %arg10 * -2 + %arg12, 1] : memref<?x10x10xf64>
                        %5 = affine.load %arg2[%arg10 * -2 + %arg11, %arg10 * -2 + %arg12 + 1, 1] : memref<?x10x10xf64>
                        %6 = affine.load %arg2[%arg10 * -2 + %arg11, %arg10 * -2 + %arg12 - 1, 1] : memref<?x10x10xf64>
                        %7 = affine.load %arg2[%arg10 * -2 + %arg11, %arg10 * -2 + %arg12, 2] : memref<?x10x10xf64>
                        %8 = affine.load %arg2[%arg10 * -2 + %arg11, %arg10 * -2 + %arg12, 0] : memref<?x10x10xf64>
                        %9 = affine.load %arg2[%arg10 * -2 + %arg11, %arg10 * -2 + %arg12, 1] : memref<?x10x10xf64>
                        %10 = arith.mulf %9, %cst : f64
                        %11 = arith.subf %3, %10 : f64
                        %12 = arith.addf %11, %4 : f64
                        %13 = arith.mulf %12, %cst_0 : f64
                        %14 = arith.subf %5, %10 : f64
                        %15 = arith.addf %14, %6 : f64
                        %16 = arith.mulf %15, %cst_0 : f64
                        %17 = arith.addf %13, %16 : f64
                        %18 = arith.subf %7, %10 : f64
                        %19 = arith.addf %18, %8 : f64
                        %20 = arith.mulf %19, %cst_0 : f64
                        %21 = arith.addf %17, %20 : f64
                        %22 = arith.addf %21, %9 : f64
                        affine.store %22, %arg3[%arg10 * -2 + %arg11, %arg10 * -2 + %arg12, 1] : memref<?x10x10xf64>
                      }
                      affine.parallel (%arg13) = (max(%2 * 32, %arg10 * 2 + 2)) to (min(%2 * 32 + 32, %arg10 * 2 + 9)) {
                        %3 = affine.load %arg2[%arg10 * -2 + %arg11 + 1, %arg10 * -2 + %arg12, %arg10 * -2 + %arg13] : memref<?x10x10xf64>
                        %4 = affine.load %arg2[%arg10 * -2 + %arg11 - 1, %arg10 * -2 + %arg12, %arg10 * -2 + %arg13] : memref<?x10x10xf64>
                        %5 = affine.load %arg2[%arg10 * -2 + %arg11, %arg10 * -2 + %arg12 + 1, %arg10 * -2 + %arg13] : memref<?x10x10xf64>
                        %6 = affine.load %arg2[%arg10 * -2 + %arg11, %arg10 * -2 + %arg12 - 1, %arg10 * -2 + %arg13] : memref<?x10x10xf64>
                        %7 = affine.load %arg2[%arg10 * -2 + %arg11, %arg10 * -2 + %arg12, %arg10 * -2 + %arg13 + 1] : memref<?x10x10xf64>
                        %8 = affine.load %arg2[%arg10 * -2 + %arg11, %arg10 * -2 + %arg12, %arg10 * -2 + %arg13 - 1] : memref<?x10x10xf64>
                        %9 = affine.load %arg2[%arg10 * -2 + %arg11, %arg10 * -2 + %arg12, %arg10 * -2 + %arg13] : memref<?x10x10xf64>
                        %10 = arith.mulf %9, %cst : f64
                        %11 = arith.subf %3, %10 : f64
                        %12 = arith.addf %11, %4 : f64
                        %13 = arith.mulf %12, %cst_0 : f64
                        %14 = arith.subf %5, %10 : f64
                        %15 = arith.addf %14, %6 : f64
                        %16 = arith.mulf %15, %cst_0 : f64
                        %17 = arith.addf %13, %16 : f64
                        %18 = arith.subf %7, %10 : f64
                        %19 = arith.addf %18, %8 : f64
                        %20 = arith.mulf %19, %cst_0 : f64
                        %21 = arith.addf %17, %20 : f64
                        %22 = arith.addf %21, %9 : f64
                        affine.store %22, %arg3[%arg10 * -2 + %arg11, %arg10 * -2 + %arg12, %arg10 * -2 + %arg13] : memref<?x10x10xf64>
                        %23 = affine.load %arg3[%arg10 * -2 + %arg11, %arg10 * -2 + %arg12 - 1, %arg10 * -2 + %arg13 - 1] : memref<?x10x10xf64>
                        %24 = affine.load %arg3[%arg10 * -2 + %arg11 - 2, %arg10 * -2 + %arg12 - 1, %arg10 * -2 + %arg13 - 1] : memref<?x10x10xf64>
                        %25 = affine.load %arg3[%arg10 * -2 + %arg11 - 1, %arg10 * -2 + %arg12, %arg10 * -2 + %arg13 - 1] : memref<?x10x10xf64>
                        %26 = affine.load %arg3[%arg10 * -2 + %arg11 - 1, %arg10 * -2 + %arg12 - 2, %arg10 * -2 + %arg13 - 1] : memref<?x10x10xf64>
                        %27 = affine.load %arg3[%arg10 * -2 + %arg11 - 1, %arg10 * -2 + %arg12 - 1, %arg10 * -2 + %arg13] : memref<?x10x10xf64>
                        %28 = affine.load %arg3[%arg10 * -2 + %arg11 - 1, %arg10 * -2 + %arg12 - 1, %arg10 * -2 + %arg13 - 2] : memref<?x10x10xf64>
                        %29 = affine.load %arg3[%arg10 * -2 + %arg11 - 1, %arg10 * -2 + %arg12 - 1, %arg10 * -2 + %arg13 - 1] : memref<?x10x10xf64>
                        %30 = arith.mulf %29, %cst : f64
                        %31 = arith.subf %23, %30 : f64
                        %32 = arith.addf %31, %24 : f64
                        %33 = arith.mulf %32, %cst_0 : f64
                        %34 = arith.subf %25, %30 : f64
                        %35 = arith.addf %34, %26 : f64
                        %36 = arith.mulf %35, %cst_0 : f64
                        %37 = arith.addf %33, %36 : f64
                        %38 = arith.subf %27, %30 : f64
                        %39 = arith.addf %38, %28 : f64
                        %40 = arith.mulf %39, %cst_0 : f64
                        %41 = arith.addf %37, %40 : f64
                        %42 = arith.addf %41, %29 : f64
                        affine.store %42, %arg2[%arg10 * -2 + %arg11 - 1, %arg10 * -2 + %arg12 - 1, %arg10 * -2 + %arg13 - 1] : memref<?x10x10xf64>
                      }
                      affine.if #set1(%2, %arg10) {
                        %3 = affine.load %arg3[%arg10 * -2 + %arg11, %arg10 * -2 + %arg12 - 1, 8] : memref<?x10x10xf64>
                        %4 = affine.load %arg3[%arg10 * -2 + %arg11 - 2, %arg10 * -2 + %arg12 - 1, 8] : memref<?x10x10xf64>
                        %5 = affine.load %arg3[%arg10 * -2 + %arg11 - 1, %arg10 * -2 + %arg12, 8] : memref<?x10x10xf64>
                        %6 = affine.load %arg3[%arg10 * -2 + %arg11 - 1, %arg10 * -2 + %arg12 - 2, 8] : memref<?x10x10xf64>
                        %7 = affine.load %arg3[%arg10 * -2 + %arg11 - 1, %arg10 * -2 + %arg12 - 1, 9] : memref<?x10x10xf64>
                        %8 = affine.load %arg3[%arg10 * -2 + %arg11 - 1, %arg10 * -2 + %arg12 - 1, 7] : memref<?x10x10xf64>
                        %9 = affine.load %arg3[%arg10 * -2 + %arg11 - 1, %arg10 * -2 + %arg12 - 1, 8] : memref<?x10x10xf64>
                        %10 = arith.mulf %9, %cst : f64
                        %11 = arith.subf %3, %10 : f64
                        %12 = arith.addf %11, %4 : f64
                        %13 = arith.mulf %12, %cst_0 : f64
                        %14 = arith.subf %5, %10 : f64
                        %15 = arith.addf %14, %6 : f64
                        %16 = arith.mulf %15, %cst_0 : f64
                        %17 = arith.addf %13, %16 : f64
                        %18 = arith.subf %7, %10 : f64
                        %19 = arith.addf %18, %8 : f64
                        %20 = arith.mulf %19, %cst_0 : f64
                        %21 = arith.addf %17, %20 : f64
                        %22 = arith.addf %21, %9 : f64
                        affine.store %22, %arg2[%arg10 * -2 + %arg11 - 1, %arg10 * -2 + %arg12 - 1, 8] : memref<?x10x10xf64>
                      }
                    }
                    affine.if #set1(%1, %arg10) {
                      affine.parallel (%arg12) = (max(%2 * 32, %arg10 * 2 + 2)) to (min(%2 * 32 + 32, %arg10 * 2 + 10)) {
                        %3 = affine.load %arg3[%arg10 * -2 + %arg11, 8, %arg10 * -2 + %arg12 - 1] : memref<?x10x10xf64>
                        %4 = affine.load %arg3[%arg10 * -2 + %arg11 - 2, 8, %arg10 * -2 + %arg12 - 1] : memref<?x10x10xf64>
                        %5 = affine.load %arg3[%arg10 * -2 + %arg11 - 1, 9, %arg10 * -2 + %arg12 - 1] : memref<?x10x10xf64>
                        %6 = affine.load %arg3[%arg10 * -2 + %arg11 - 1, 7, %arg10 * -2 + %arg12 - 1] : memref<?x10x10xf64>
                        %7 = affine.load %arg3[%arg10 * -2 + %arg11 - 1, 8, %arg10 * -2 + %arg12] : memref<?x10x10xf64>
                        %8 = affine.load %arg3[%arg10 * -2 + %arg11 - 1, 8, %arg10 * -2 + %arg12 - 2] : memref<?x10x10xf64>
                        %9 = affine.load %arg3[%arg10 * -2 + %arg11 - 1, 8, %arg10 * -2 + %arg12 - 1] : memref<?x10x10xf64>
                        %10 = arith.mulf %9, %cst : f64
                        %11 = arith.subf %3, %10 : f64
                        %12 = arith.addf %11, %4 : f64
                        %13 = arith.mulf %12, %cst_0 : f64
                        %14 = arith.subf %5, %10 : f64
                        %15 = arith.addf %14, %6 : f64
                        %16 = arith.mulf %15, %cst_0 : f64
                        %17 = arith.addf %13, %16 : f64
                        %18 = arith.subf %7, %10 : f64
                        %19 = arith.addf %18, %8 : f64
                        %20 = arith.mulf %19, %cst_0 : f64
                        %21 = arith.addf %17, %20 : f64
                        %22 = arith.addf %21, %9 : f64
                        affine.store %22, %arg2[%arg10 * -2 + %arg11 - 1, 8, %arg10 * -2 + %arg12 - 1] : memref<?x10x10xf64>
                      }
                    }
                  }
                  affine.if #set1(%0, %arg10) {
                    affine.parallel (%arg11) = (max(%1 * 32, %arg10 * 2 + 2)) to (min(%1 * 32 + 32, %arg10 * 2 + 10)) {
                      affine.parallel (%arg12) = (max(%2 * 32, %arg10 * 2 + 2)) to (min(%2 * 32 + 32, %arg10 * 2 + 10)) {
                        %3 = affine.load %arg3[9, %arg10 * -2 + %arg11 - 1, %arg10 * -2 + %arg12 - 1] : memref<?x10x10xf64>
                        %4 = affine.load %arg3[7, %arg10 * -2 + %arg11 - 1, %arg10 * -2 + %arg12 - 1] : memref<?x10x10xf64>
                        %5 = affine.load %arg3[8, %arg10 * -2 + %arg11, %arg10 * -2 + %arg12 - 1] : memref<?x10x10xf64>
                        %6 = affine.load %arg3[8, %arg10 * -2 + %arg11 - 2, %arg10 * -2 + %arg12 - 1] : memref<?x10x10xf64>
                        %7 = affine.load %arg3[8, %arg10 * -2 + %arg11 - 1, %arg10 * -2 + %arg12] : memref<?x10x10xf64>
                        %8 = affine.load %arg3[8, %arg10 * -2 + %arg11 - 1, %arg10 * -2 + %arg12 - 2] : memref<?x10x10xf64>
                        %9 = affine.load %arg3[8, %arg10 * -2 + %arg11 - 1, %arg10 * -2 + %arg12 - 1] : memref<?x10x10xf64>
                        %10 = arith.mulf %9, %cst : f64
                        %11 = arith.subf %3, %10 : f64
                        %12 = arith.addf %11, %4 : f64
                        %13 = arith.mulf %12, %cst_0 : f64
                        %14 = arith.subf %5, %10 : f64
                        %15 = arith.addf %14, %6 : f64
                        %16 = arith.mulf %15, %cst_0 : f64
                        %17 = arith.addf %13, %16 : f64
                        %18 = arith.subf %7, %10 : f64
                        %19 = arith.addf %18, %8 : f64
                        %20 = arith.mulf %19, %cst_0 : f64
                        %21 = arith.addf %17, %20 : f64
                        %22 = arith.addf %21, %9 : f64
                        affine.store %22, %arg2[8, %arg10 * -2 + %arg11 - 1, %arg10 * -2 + %arg12 - 1] : memref<?x10x10xf64>
                      }
                    }
                  }
                }
                affine.if #set2(%0, %1, %2) {
                  affine.parallel (%arg10) = (max(31, %0 * 32)) to (min(39, %0 * 32 + 32)) {
                    affine.parallel (%arg11) = (max(31, %1 * 32)) to (min(39, %1 * 32 + 32)) {
                      affine.parallel (%arg12) = (max(31, %2 * 32)) to (min(39, %2 * 32 + 32)) {
                        %3 = affine.load %arg2[%arg10 - 29, %arg11 - 30, %arg12 - 30] : memref<?x10x10xf64>
                        %4 = affine.load %arg2[%arg10 - 31, %arg11 - 30, %arg12 - 30] : memref<?x10x10xf64>
                        %5 = affine.load %arg2[%arg10 - 30, %arg11 - 29, %arg12 - 30] : memref<?x10x10xf64>
                        %6 = affine.load %arg2[%arg10 - 30, %arg11 - 31, %arg12 - 30] : memref<?x10x10xf64>
                        %7 = affine.load %arg2[%arg10 - 30, %arg11 - 30, %arg12 - 29] : memref<?x10x10xf64>
                        %8 = affine.load %arg2[%arg10 - 30, %arg11 - 30, %arg12 - 31] : memref<?x10x10xf64>
                        %9 = affine.load %arg2[%arg10 - 30, %arg11 - 30, %arg12 - 30] : memref<?x10x10xf64>
                        %10 = arith.mulf %9, %cst : f64
                        %11 = arith.subf %3, %10 : f64
                        %12 = arith.addf %11, %4 : f64
                        %13 = arith.mulf %12, %cst_0 : f64
                        %14 = arith.subf %5, %10 : f64
                        %15 = arith.addf %14, %6 : f64
                        %16 = arith.mulf %15, %cst_0 : f64
                        %17 = arith.addf %13, %16 : f64
                        %18 = arith.subf %7, %10 : f64
                        %19 = arith.addf %18, %8 : f64
                        %20 = arith.mulf %19, %cst_0 : f64
                        %21 = arith.addf %17, %20 : f64
                        %22 = arith.addf %21, %9 : f64
                        affine.store %22, %arg3[%arg10 - 30, %arg11 - 30, %arg12 - 30] : memref<?x10x10xf64>
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    return
  }
}

