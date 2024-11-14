#map = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0, d1) -> (d0 + d1)>
#map2 = affine_map<(d0, d1, d2) -> (1, d0 * 16 - 4, d1 * 16 - 4, d2 * 16 - 4)>
#map3 = affine_map<(d0, d1, d2) -> (21, d0 * 16 + 15, d1 * 16 + 15, d2 * 16 + 15)>
#map4 = affine_map<(d0, d1) -> (d0 * 32, d1 * 2 + 1)>
#map5 = affine_map<(d0, d1) -> (d0 * 32 + 32, d1 * 2 + 9)>
#map6 = affine_map<(d0, d1) -> (d0 * 32, d1 * 2 + 2)>
#map7 = affine_map<(d0, d1) -> (d0 * 32 + 32, d1 * 2 + 10)>
#map8 = affine_map<(d0) -> (31, d0 * 32)>
#map9 = affine_map<(d0) -> (39, d0 * 32 + 32)>
#set = affine_set<(d0, d1) : (d1 floordiv 16 - d0 >= 0)>
#set1 = affine_set<(d0, d1) : (d0 - (d1 - 11) ceildiv 16 >= 0)>
#set2 = affine_set<(d0, d1, d2) : (-d1 - d2 - d0 + 2 >= 0)>
module {
  func.func @kernel_heat_3d(%arg0: i32, %arg1: i32, %arg2: memref<?x10x10xf64>, %arg3: memref<?x10x10xf64>) {
    %cst = arith.constant 2.000000e+00 : f64
    %cst_0 = arith.constant 1.250000e-01 : f64
    affine.parallel (%arg4) = (0) to (1) {
      %0 = affine.apply #map(%arg4)
      affine.for %arg5 = 0 to 1 {
        %1 = affine.apply #map(%arg5)
        affine.for %arg6 = 0 to 1 {
          %2 = affine.apply #map(%arg6)
          affine.for %arg7 = 0 to 2 {
            %3 = affine.apply #map1(%0, %arg7)
            affine.for %arg8 = 0 to 2 {
              %4 = affine.apply #map1(%1, %arg8)
              affine.for %arg9 = 0 to 2 {
                %5 = affine.apply #map1(%2, %arg9)
                affine.for %arg10 = max #map2(%3, %4, %5) to min #map3(%3, %4, %5) {
                  affine.if #set(%3, %arg10) {
                    affine.for %arg11 = max #map4(%4, %arg10) to min #map5(%4, %arg10) {
                      affine.for %arg12 = max #map4(%5, %arg10) to min #map5(%5, %arg10) {
                        %6 = affine.load %arg2[2, %arg10 * -2 + %arg11, %arg10 * -2 + %arg12] : memref<?x10x10xf64>
                        %7 = affine.load %arg2[0, %arg10 * -2 + %arg11, %arg10 * -2 + %arg12] : memref<?x10x10xf64>
                        %8 = affine.load %arg2[1, %arg10 * -2 + %arg11 + 1, %arg10 * -2 + %arg12] : memref<?x10x10xf64>
                        %9 = affine.load %arg2[1, %arg10 * -2 + %arg11 - 1, %arg10 * -2 + %arg12] : memref<?x10x10xf64>
                        %10 = affine.load %arg2[1, %arg10 * -2 + %arg11, %arg10 * -2 + %arg12 + 1] : memref<?x10x10xf64>
                        %11 = affine.load %arg2[1, %arg10 * -2 + %arg11, %arg10 * -2 + %arg12 - 1] : memref<?x10x10xf64>
                        %12 = affine.load %arg2[1, %arg10 * -2 + %arg11, %arg10 * -2 + %arg12] : memref<?x10x10xf64>
                        %13 = arith.mulf %12, %cst : f64
                        %14 = arith.subf %6, %13 : f64
                        %15 = arith.addf %14, %7 : f64
                        %16 = arith.mulf %15, %cst_0 : f64
                        %17 = arith.subf %8, %13 : f64
                        %18 = arith.addf %17, %9 : f64
                        %19 = arith.mulf %18, %cst_0 : f64
                        %20 = arith.addf %16, %19 : f64
                        %21 = arith.subf %10, %13 : f64
                        %22 = arith.addf %21, %11 : f64
                        %23 = arith.mulf %22, %cst_0 : f64
                        %24 = arith.addf %20, %23 : f64
                        %25 = arith.addf %24, %12 : f64
                        affine.store %25, %arg3[1, %arg10 * -2 + %arg11, %arg10 * -2 + %arg12] : memref<?x10x10xf64>
                      }
                    }
                  }
                  affine.for %arg11 = max #map6(%3, %arg10) to min #map5(%3, %arg10) {
                    affine.if #set(%4, %arg10) {
                      affine.for %arg12 = max #map4(%5, %arg10) to min #map5(%5, %arg10) {
                        %6 = affine.load %arg2[%arg10 * -2 + %arg11 + 1, 1, %arg10 * -2 + %arg12] : memref<?x10x10xf64>
                        %7 = affine.load %arg2[%arg10 * -2 + %arg11 - 1, 1, %arg10 * -2 + %arg12] : memref<?x10x10xf64>
                        %8 = affine.load %arg2[%arg10 * -2 + %arg11, 2, %arg10 * -2 + %arg12] : memref<?x10x10xf64>
                        %9 = affine.load %arg2[%arg10 * -2 + %arg11, 0, %arg10 * -2 + %arg12] : memref<?x10x10xf64>
                        %10 = affine.load %arg2[%arg10 * -2 + %arg11, 1, %arg10 * -2 + %arg12 + 1] : memref<?x10x10xf64>
                        %11 = affine.load %arg2[%arg10 * -2 + %arg11, 1, %arg10 * -2 + %arg12 - 1] : memref<?x10x10xf64>
                        %12 = affine.load %arg2[%arg10 * -2 + %arg11, 1, %arg10 * -2 + %arg12] : memref<?x10x10xf64>
                        %13 = arith.mulf %12, %cst : f64
                        %14 = arith.subf %6, %13 : f64
                        %15 = arith.addf %14, %7 : f64
                        %16 = arith.mulf %15, %cst_0 : f64
                        %17 = arith.subf %8, %13 : f64
                        %18 = arith.addf %17, %9 : f64
                        %19 = arith.mulf %18, %cst_0 : f64
                        %20 = arith.addf %16, %19 : f64
                        %21 = arith.subf %10, %13 : f64
                        %22 = arith.addf %21, %11 : f64
                        %23 = arith.mulf %22, %cst_0 : f64
                        %24 = arith.addf %20, %23 : f64
                        %25 = arith.addf %24, %12 : f64
                        affine.store %25, %arg3[%arg10 * -2 + %arg11, 1, %arg10 * -2 + %arg12] : memref<?x10x10xf64>
                      }
                    }
                    affine.for %arg12 = max #map6(%4, %arg10) to min #map5(%4, %arg10) {
                      affine.if #set(%5, %arg10) {
                        %6 = affine.load %arg2[%arg10 * -2 + %arg11 + 1, %arg10 * -2 + %arg12, 1] : memref<?x10x10xf64>
                        %7 = affine.load %arg2[%arg10 * -2 + %arg11 - 1, %arg10 * -2 + %arg12, 1] : memref<?x10x10xf64>
                        %8 = affine.load %arg2[%arg10 * -2 + %arg11, %arg10 * -2 + %arg12 + 1, 1] : memref<?x10x10xf64>
                        %9 = affine.load %arg2[%arg10 * -2 + %arg11, %arg10 * -2 + %arg12 - 1, 1] : memref<?x10x10xf64>
                        %10 = affine.load %arg2[%arg10 * -2 + %arg11, %arg10 * -2 + %arg12, 2] : memref<?x10x10xf64>
                        %11 = affine.load %arg2[%arg10 * -2 + %arg11, %arg10 * -2 + %arg12, 0] : memref<?x10x10xf64>
                        %12 = affine.load %arg2[%arg10 * -2 + %arg11, %arg10 * -2 + %arg12, 1] : memref<?x10x10xf64>
                        %13 = arith.mulf %12, %cst : f64
                        %14 = arith.subf %6, %13 : f64
                        %15 = arith.addf %14, %7 : f64
                        %16 = arith.mulf %15, %cst_0 : f64
                        %17 = arith.subf %8, %13 : f64
                        %18 = arith.addf %17, %9 : f64
                        %19 = arith.mulf %18, %cst_0 : f64
                        %20 = arith.addf %16, %19 : f64
                        %21 = arith.subf %10, %13 : f64
                        %22 = arith.addf %21, %11 : f64
                        %23 = arith.mulf %22, %cst_0 : f64
                        %24 = arith.addf %20, %23 : f64
                        %25 = arith.addf %24, %12 : f64
                        affine.store %25, %arg3[%arg10 * -2 + %arg11, %arg10 * -2 + %arg12, 1] : memref<?x10x10xf64>
                      }
                      affine.for %arg13 = max #map6(%5, %arg10) to min #map5(%5, %arg10) {
                        %6 = affine.load %arg2[%arg10 * -2 + %arg11 + 1, %arg10 * -2 + %arg12, %arg10 * -2 + %arg13] : memref<?x10x10xf64>
                        %7 = affine.load %arg2[%arg10 * -2 + %arg11 - 1, %arg10 * -2 + %arg12, %arg10 * -2 + %arg13] : memref<?x10x10xf64>
                        %8 = affine.load %arg2[%arg10 * -2 + %arg11, %arg10 * -2 + %arg12 + 1, %arg10 * -2 + %arg13] : memref<?x10x10xf64>
                        %9 = affine.load %arg2[%arg10 * -2 + %arg11, %arg10 * -2 + %arg12 - 1, %arg10 * -2 + %arg13] : memref<?x10x10xf64>
                        %10 = affine.load %arg2[%arg10 * -2 + %arg11, %arg10 * -2 + %arg12, %arg10 * -2 + %arg13 + 1] : memref<?x10x10xf64>
                        %11 = affine.load %arg2[%arg10 * -2 + %arg11, %arg10 * -2 + %arg12, %arg10 * -2 + %arg13 - 1] : memref<?x10x10xf64>
                        %12 = affine.load %arg2[%arg10 * -2 + %arg11, %arg10 * -2 + %arg12, %arg10 * -2 + %arg13] : memref<?x10x10xf64>
                        %13 = arith.mulf %12, %cst : f64
                        %14 = arith.subf %6, %13 : f64
                        %15 = arith.addf %14, %7 : f64
                        %16 = arith.mulf %15, %cst_0 : f64
                        %17 = arith.subf %8, %13 : f64
                        %18 = arith.addf %17, %9 : f64
                        %19 = arith.mulf %18, %cst_0 : f64
                        %20 = arith.addf %16, %19 : f64
                        %21 = arith.subf %10, %13 : f64
                        %22 = arith.addf %21, %11 : f64
                        %23 = arith.mulf %22, %cst_0 : f64
                        %24 = arith.addf %20, %23 : f64
                        %25 = arith.addf %24, %12 : f64
                        affine.store %25, %arg3[%arg10 * -2 + %arg11, %arg10 * -2 + %arg12, %arg10 * -2 + %arg13] : memref<?x10x10xf64>
                        %26 = affine.load %arg3[%arg10 * -2 + %arg11, %arg10 * -2 + %arg12 - 1, %arg10 * -2 + %arg13 - 1] : memref<?x10x10xf64>
                        %27 = affine.load %arg3[%arg10 * -2 + %arg11 - 2, %arg10 * -2 + %arg12 - 1, %arg10 * -2 + %arg13 - 1] : memref<?x10x10xf64>
                        %28 = affine.load %arg3[%arg10 * -2 + %arg11 - 1, %arg10 * -2 + %arg12, %arg10 * -2 + %arg13 - 1] : memref<?x10x10xf64>
                        %29 = affine.load %arg3[%arg10 * -2 + %arg11 - 1, %arg10 * -2 + %arg12 - 2, %arg10 * -2 + %arg13 - 1] : memref<?x10x10xf64>
                        %30 = affine.load %arg3[%arg10 * -2 + %arg11 - 1, %arg10 * -2 + %arg12 - 1, %arg10 * -2 + %arg13] : memref<?x10x10xf64>
                        %31 = affine.load %arg3[%arg10 * -2 + %arg11 - 1, %arg10 * -2 + %arg12 - 1, %arg10 * -2 + %arg13 - 2] : memref<?x10x10xf64>
                        %32 = affine.load %arg3[%arg10 * -2 + %arg11 - 1, %arg10 * -2 + %arg12 - 1, %arg10 * -2 + %arg13 - 1] : memref<?x10x10xf64>
                        %33 = arith.mulf %32, %cst : f64
                        %34 = arith.subf %26, %33 : f64
                        %35 = arith.addf %34, %27 : f64
                        %36 = arith.mulf %35, %cst_0 : f64
                        %37 = arith.subf %28, %33 : f64
                        %38 = arith.addf %37, %29 : f64
                        %39 = arith.mulf %38, %cst_0 : f64
                        %40 = arith.addf %36, %39 : f64
                        %41 = arith.subf %30, %33 : f64
                        %42 = arith.addf %41, %31 : f64
                        %43 = arith.mulf %42, %cst_0 : f64
                        %44 = arith.addf %40, %43 : f64
                        %45 = arith.addf %44, %32 : f64
                        affine.store %45, %arg2[%arg10 * -2 + %arg11 - 1, %arg10 * -2 + %arg12 - 1, %arg10 * -2 + %arg13 - 1] : memref<?x10x10xf64>
                      }
                      affine.if #set1(%5, %arg10) {
                        %6 = affine.load %arg3[%arg10 * -2 + %arg11, %arg10 * -2 + %arg12 - 1, 8] : memref<?x10x10xf64>
                        %7 = affine.load %arg3[%arg10 * -2 + %arg11 - 2, %arg10 * -2 + %arg12 - 1, 8] : memref<?x10x10xf64>
                        %8 = affine.load %arg3[%arg10 * -2 + %arg11 - 1, %arg10 * -2 + %arg12, 8] : memref<?x10x10xf64>
                        %9 = affine.load %arg3[%arg10 * -2 + %arg11 - 1, %arg10 * -2 + %arg12 - 2, 8] : memref<?x10x10xf64>
                        %10 = affine.load %arg3[%arg10 * -2 + %arg11 - 1, %arg10 * -2 + %arg12 - 1, 9] : memref<?x10x10xf64>
                        %11 = affine.load %arg3[%arg10 * -2 + %arg11 - 1, %arg10 * -2 + %arg12 - 1, 7] : memref<?x10x10xf64>
                        %12 = affine.load %arg3[%arg10 * -2 + %arg11 - 1, %arg10 * -2 + %arg12 - 1, 8] : memref<?x10x10xf64>
                        %13 = arith.mulf %12, %cst : f64
                        %14 = arith.subf %6, %13 : f64
                        %15 = arith.addf %14, %7 : f64
                        %16 = arith.mulf %15, %cst_0 : f64
                        %17 = arith.subf %8, %13 : f64
                        %18 = arith.addf %17, %9 : f64
                        %19 = arith.mulf %18, %cst_0 : f64
                        %20 = arith.addf %16, %19 : f64
                        %21 = arith.subf %10, %13 : f64
                        %22 = arith.addf %21, %11 : f64
                        %23 = arith.mulf %22, %cst_0 : f64
                        %24 = arith.addf %20, %23 : f64
                        %25 = arith.addf %24, %12 : f64
                        affine.store %25, %arg2[%arg10 * -2 + %arg11 - 1, %arg10 * -2 + %arg12 - 1, 8] : memref<?x10x10xf64>
                      }
                    }
                    affine.if #set1(%4, %arg10) {
                      affine.for %arg12 = max #map6(%5, %arg10) to min #map7(%5, %arg10) {
                        %6 = affine.load %arg3[%arg10 * -2 + %arg11, 8, %arg10 * -2 + %arg12 - 1] : memref<?x10x10xf64>
                        %7 = affine.load %arg3[%arg10 * -2 + %arg11 - 2, 8, %arg10 * -2 + %arg12 - 1] : memref<?x10x10xf64>
                        %8 = affine.load %arg3[%arg10 * -2 + %arg11 - 1, 9, %arg10 * -2 + %arg12 - 1] : memref<?x10x10xf64>
                        %9 = affine.load %arg3[%arg10 * -2 + %arg11 - 1, 7, %arg10 * -2 + %arg12 - 1] : memref<?x10x10xf64>
                        %10 = affine.load %arg3[%arg10 * -2 + %arg11 - 1, 8, %arg10 * -2 + %arg12] : memref<?x10x10xf64>
                        %11 = affine.load %arg3[%arg10 * -2 + %arg11 - 1, 8, %arg10 * -2 + %arg12 - 2] : memref<?x10x10xf64>
                        %12 = affine.load %arg3[%arg10 * -2 + %arg11 - 1, 8, %arg10 * -2 + %arg12 - 1] : memref<?x10x10xf64>
                        %13 = arith.mulf %12, %cst : f64
                        %14 = arith.subf %6, %13 : f64
                        %15 = arith.addf %14, %7 : f64
                        %16 = arith.mulf %15, %cst_0 : f64
                        %17 = arith.subf %8, %13 : f64
                        %18 = arith.addf %17, %9 : f64
                        %19 = arith.mulf %18, %cst_0 : f64
                        %20 = arith.addf %16, %19 : f64
                        %21 = arith.subf %10, %13 : f64
                        %22 = arith.addf %21, %11 : f64
                        %23 = arith.mulf %22, %cst_0 : f64
                        %24 = arith.addf %20, %23 : f64
                        %25 = arith.addf %24, %12 : f64
                        affine.store %25, %arg2[%arg10 * -2 + %arg11 - 1, 8, %arg10 * -2 + %arg12 - 1] : memref<?x10x10xf64>
                      }
                    }
                  }
                  affine.if #set1(%3, %arg10) {
                    affine.for %arg11 = max #map6(%4, %arg10) to min #map7(%4, %arg10) {
                      affine.for %arg12 = max #map6(%5, %arg10) to min #map7(%5, %arg10) {
                        %6 = affine.load %arg3[9, %arg10 * -2 + %arg11 - 1, %arg10 * -2 + %arg12 - 1] : memref<?x10x10xf64>
                        %7 = affine.load %arg3[7, %arg10 * -2 + %arg11 - 1, %arg10 * -2 + %arg12 - 1] : memref<?x10x10xf64>
                        %8 = affine.load %arg3[8, %arg10 * -2 + %arg11, %arg10 * -2 + %arg12 - 1] : memref<?x10x10xf64>
                        %9 = affine.load %arg3[8, %arg10 * -2 + %arg11 - 2, %arg10 * -2 + %arg12 - 1] : memref<?x10x10xf64>
                        %10 = affine.load %arg3[8, %arg10 * -2 + %arg11 - 1, %arg10 * -2 + %arg12] : memref<?x10x10xf64>
                        %11 = affine.load %arg3[8, %arg10 * -2 + %arg11 - 1, %arg10 * -2 + %arg12 - 2] : memref<?x10x10xf64>
                        %12 = affine.load %arg3[8, %arg10 * -2 + %arg11 - 1, %arg10 * -2 + %arg12 - 1] : memref<?x10x10xf64>
                        %13 = arith.mulf %12, %cst : f64
                        %14 = arith.subf %6, %13 : f64
                        %15 = arith.addf %14, %7 : f64
                        %16 = arith.mulf %15, %cst_0 : f64
                        %17 = arith.subf %8, %13 : f64
                        %18 = arith.addf %17, %9 : f64
                        %19 = arith.mulf %18, %cst_0 : f64
                        %20 = arith.addf %16, %19 : f64
                        %21 = arith.subf %10, %13 : f64
                        %22 = arith.addf %21, %11 : f64
                        %23 = arith.mulf %22, %cst_0 : f64
                        %24 = arith.addf %20, %23 : f64
                        %25 = arith.addf %24, %12 : f64
                        affine.store %25, %arg2[8, %arg10 * -2 + %arg11 - 1, %arg10 * -2 + %arg12 - 1] : memref<?x10x10xf64>
                      }
                    }
                  }
                }
                affine.if #set2(%3, %4, %5) {
                  affine.for %arg10 = max #map8(%3) to min #map9(%3) {
                    affine.for %arg11 = max #map8(%4) to min #map9(%4) {
                      affine.for %arg12 = max #map8(%5) to min #map9(%5) {
                        %6 = affine.load %arg2[%arg10 - 29, %arg11 - 30, %arg12 - 30] : memref<?x10x10xf64>
                        %7 = affine.load %arg2[%arg10 - 31, %arg11 - 30, %arg12 - 30] : memref<?x10x10xf64>
                        %8 = affine.load %arg2[%arg10 - 30, %arg11 - 29, %arg12 - 30] : memref<?x10x10xf64>
                        %9 = affine.load %arg2[%arg10 - 30, %arg11 - 31, %arg12 - 30] : memref<?x10x10xf64>
                        %10 = affine.load %arg2[%arg10 - 30, %arg11 - 30, %arg12 - 29] : memref<?x10x10xf64>
                        %11 = affine.load %arg2[%arg10 - 30, %arg11 - 30, %arg12 - 31] : memref<?x10x10xf64>
                        %12 = affine.load %arg2[%arg10 - 30, %arg11 - 30, %arg12 - 30] : memref<?x10x10xf64>
                        %13 = arith.mulf %12, %cst : f64
                        %14 = arith.subf %6, %13 : f64
                        %15 = arith.addf %14, %7 : f64
                        %16 = arith.mulf %15, %cst_0 : f64
                        %17 = arith.subf %8, %13 : f64
                        %18 = arith.addf %17, %9 : f64
                        %19 = arith.mulf %18, %cst_0 : f64
                        %20 = arith.addf %16, %19 : f64
                        %21 = arith.subf %10, %13 : f64
                        %22 = arith.addf %21, %11 : f64
                        %23 = arith.mulf %22, %cst_0 : f64
                        %24 = arith.addf %20, %23 : f64
                        %25 = arith.addf %24, %12 : f64
                        affine.store %25, %arg3[%arg10 - 30, %arg11 - 30, %arg12 - 30] : memref<?x10x10xf64>
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

