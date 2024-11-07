#map = affine_map<(d0, d1, d2) -> (1, d0 * 16 - 4, d1 * 16 - 4, d2 * 16 - 4)>
#map1 = affine_map<(d0, d1, d2) -> (21, d0 * 16 + 15, d1 * 16 + 15, d2 * 16 + 15)>
#map2 = affine_map<(d0, d1) -> (d0 * 32, d1 * 2 + 1)>
#map3 = affine_map<(d0, d1) -> (d0 * 32 + 32, d1 * 2 + 9)>
#map4 = affine_map<(d0, d1) -> (d0 * 32, d1 * 2 + 2)>
#map5 = affine_map<(d0, d1) -> (d0 * 32 + 32, d1 * 2 + 10)>
#map6 = affine_map<(d0) -> (31, d0 * 32)>
#map7 = affine_map<(d0) -> (39, d0 * 32 + 32)>
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
          affine.for %arg7 = max #map(%arg4, %arg5, %arg6) to min #map1(%arg4, %arg5, %arg6) {
            affine.if #set(%arg4, %arg7) {
              affine.for %arg8 = max #map2(%arg5, %arg7) to min #map3(%arg5, %arg7) {
                affine.for %arg9 = max #map2(%arg6, %arg7) to min #map3(%arg6, %arg7) {
                  %0 = affine.load %arg2[2, %arg7 * -2 + %arg8, %arg7 * -2 + %arg9] : memref<?x10x10xf64>
                  %1 = affine.load %arg2[0, %arg7 * -2 + %arg8, %arg7 * -2 + %arg9] : memref<?x10x10xf64>
                  %2 = affine.load %arg2[1, %arg7 * -2 + %arg8 + 1, %arg7 * -2 + %arg9] : memref<?x10x10xf64>
                  %3 = affine.load %arg2[1, %arg7 * -2 + %arg8 - 1, %arg7 * -2 + %arg9] : memref<?x10x10xf64>
                  %4 = affine.load %arg2[1, %arg7 * -2 + %arg8, %arg7 * -2 + %arg9 + 1] : memref<?x10x10xf64>
                  %5 = affine.load %arg2[1, %arg7 * -2 + %arg8, %arg7 * -2 + %arg9 - 1] : memref<?x10x10xf64>
                  %6 = affine.load %arg2[1, %arg7 * -2 + %arg8, %arg7 * -2 + %arg9] : memref<?x10x10xf64>
                  %7 = arith.mulf %6, %cst : f64
                  %8 = arith.subf %0, %7 : f64
                  %9 = arith.addf %8, %1 : f64
                  %10 = arith.mulf %9, %cst_0 : f64
                  %11 = arith.subf %2, %7 : f64
                  %12 = arith.addf %11, %3 : f64
                  %13 = arith.mulf %12, %cst_0 : f64
                  %14 = arith.addf %10, %13 : f64
                  %15 = arith.subf %4, %7 : f64
                  %16 = arith.addf %15, %5 : f64
                  %17 = arith.mulf %16, %cst_0 : f64
                  %18 = arith.addf %14, %17 : f64
                  %19 = arith.addf %18, %6 : f64
                  affine.store %19, %arg3[1, %arg7 * -2 + %arg8, %arg7 * -2 + %arg9] : memref<?x10x10xf64>
                }
              }
            }
            affine.for %arg8 = max #map4(%arg4, %arg7) to min #map3(%arg4, %arg7) {
              affine.if #set(%arg5, %arg7) {
                affine.for %arg9 = max #map2(%arg6, %arg7) to min #map3(%arg6, %arg7) {
                  %0 = affine.load %arg2[%arg7 * -2 + %arg8 + 1, 1, %arg7 * -2 + %arg9] : memref<?x10x10xf64>
                  %1 = affine.load %arg2[%arg7 * -2 + %arg8 - 1, 1, %arg7 * -2 + %arg9] : memref<?x10x10xf64>
                  %2 = affine.load %arg2[%arg7 * -2 + %arg8, 2, %arg7 * -2 + %arg9] : memref<?x10x10xf64>
                  %3 = affine.load %arg2[%arg7 * -2 + %arg8, 0, %arg7 * -2 + %arg9] : memref<?x10x10xf64>
                  %4 = affine.load %arg2[%arg7 * -2 + %arg8, 1, %arg7 * -2 + %arg9 + 1] : memref<?x10x10xf64>
                  %5 = affine.load %arg2[%arg7 * -2 + %arg8, 1, %arg7 * -2 + %arg9 - 1] : memref<?x10x10xf64>
                  %6 = affine.load %arg2[%arg7 * -2 + %arg8, 1, %arg7 * -2 + %arg9] : memref<?x10x10xf64>
                  %7 = arith.mulf %6, %cst : f64
                  %8 = arith.subf %0, %7 : f64
                  %9 = arith.addf %8, %1 : f64
                  %10 = arith.mulf %9, %cst_0 : f64
                  %11 = arith.subf %2, %7 : f64
                  %12 = arith.addf %11, %3 : f64
                  %13 = arith.mulf %12, %cst_0 : f64
                  %14 = arith.addf %10, %13 : f64
                  %15 = arith.subf %4, %7 : f64
                  %16 = arith.addf %15, %5 : f64
                  %17 = arith.mulf %16, %cst_0 : f64
                  %18 = arith.addf %14, %17 : f64
                  %19 = arith.addf %18, %6 : f64
                  affine.store %19, %arg3[%arg7 * -2 + %arg8, 1, %arg7 * -2 + %arg9] : memref<?x10x10xf64>
                }
              }
              affine.for %arg9 = max #map4(%arg5, %arg7) to min #map3(%arg5, %arg7) {
                affine.if #set(%arg6, %arg7) {
                  %0 = affine.load %arg2[%arg7 * -2 + %arg8 + 1, %arg7 * -2 + %arg9, 1] : memref<?x10x10xf64>
                  %1 = affine.load %arg2[%arg7 * -2 + %arg8 - 1, %arg7 * -2 + %arg9, 1] : memref<?x10x10xf64>
                  %2 = affine.load %arg2[%arg7 * -2 + %arg8, %arg7 * -2 + %arg9 + 1, 1] : memref<?x10x10xf64>
                  %3 = affine.load %arg2[%arg7 * -2 + %arg8, %arg7 * -2 + %arg9 - 1, 1] : memref<?x10x10xf64>
                  %4 = affine.load %arg2[%arg7 * -2 + %arg8, %arg7 * -2 + %arg9, 2] : memref<?x10x10xf64>
                  %5 = affine.load %arg2[%arg7 * -2 + %arg8, %arg7 * -2 + %arg9, 0] : memref<?x10x10xf64>
                  %6 = affine.load %arg2[%arg7 * -2 + %arg8, %arg7 * -2 + %arg9, 1] : memref<?x10x10xf64>
                  %7 = arith.mulf %6, %cst : f64
                  %8 = arith.subf %0, %7 : f64
                  %9 = arith.addf %8, %1 : f64
                  %10 = arith.mulf %9, %cst_0 : f64
                  %11 = arith.subf %2, %7 : f64
                  %12 = arith.addf %11, %3 : f64
                  %13 = arith.mulf %12, %cst_0 : f64
                  %14 = arith.addf %10, %13 : f64
                  %15 = arith.subf %4, %7 : f64
                  %16 = arith.addf %15, %5 : f64
                  %17 = arith.mulf %16, %cst_0 : f64
                  %18 = arith.addf %14, %17 : f64
                  %19 = arith.addf %18, %6 : f64
                  affine.store %19, %arg3[%arg7 * -2 + %arg8, %arg7 * -2 + %arg9, 1] : memref<?x10x10xf64>
                }
                affine.for %arg10 = max #map4(%arg6, %arg7) to min #map3(%arg6, %arg7) {
                  %0 = affine.load %arg2[%arg7 * -2 + %arg8 + 1, %arg7 * -2 + %arg9, %arg7 * -2 + %arg10] : memref<?x10x10xf64>
                  %1 = affine.load %arg2[%arg7 * -2 + %arg8 - 1, %arg7 * -2 + %arg9, %arg7 * -2 + %arg10] : memref<?x10x10xf64>
                  %2 = affine.load %arg2[%arg7 * -2 + %arg8, %arg7 * -2 + %arg9 + 1, %arg7 * -2 + %arg10] : memref<?x10x10xf64>
                  %3 = affine.load %arg2[%arg7 * -2 + %arg8, %arg7 * -2 + %arg9 - 1, %arg7 * -2 + %arg10] : memref<?x10x10xf64>
                  %4 = affine.load %arg2[%arg7 * -2 + %arg8, %arg7 * -2 + %arg9, %arg7 * -2 + %arg10 + 1] : memref<?x10x10xf64>
                  %5 = affine.load %arg2[%arg7 * -2 + %arg8, %arg7 * -2 + %arg9, %arg7 * -2 + %arg10 - 1] : memref<?x10x10xf64>
                  %6 = affine.load %arg2[%arg7 * -2 + %arg8, %arg7 * -2 + %arg9, %arg7 * -2 + %arg10] : memref<?x10x10xf64>
                  %7 = arith.mulf %6, %cst : f64
                  %8 = arith.subf %0, %7 : f64
                  %9 = arith.addf %8, %1 : f64
                  %10 = arith.mulf %9, %cst_0 : f64
                  %11 = arith.subf %2, %7 : f64
                  %12 = arith.addf %11, %3 : f64
                  %13 = arith.mulf %12, %cst_0 : f64
                  %14 = arith.addf %10, %13 : f64
                  %15 = arith.subf %4, %7 : f64
                  %16 = arith.addf %15, %5 : f64
                  %17 = arith.mulf %16, %cst_0 : f64
                  %18 = arith.addf %14, %17 : f64
                  %19 = arith.addf %18, %6 : f64
                  affine.store %19, %arg3[%arg7 * -2 + %arg8, %arg7 * -2 + %arg9, %arg7 * -2 + %arg10] : memref<?x10x10xf64>
                  %20 = affine.load %arg3[%arg7 * -2 + %arg8, %arg7 * -2 + %arg9 - 1, %arg7 * -2 + %arg10 - 1] : memref<?x10x10xf64>
                  %21 = affine.load %arg3[%arg7 * -2 + %arg8 - 2, %arg7 * -2 + %arg9 - 1, %arg7 * -2 + %arg10 - 1] : memref<?x10x10xf64>
                  %22 = affine.load %arg3[%arg7 * -2 + %arg8 - 1, %arg7 * -2 + %arg9, %arg7 * -2 + %arg10 - 1] : memref<?x10x10xf64>
                  %23 = affine.load %arg3[%arg7 * -2 + %arg8 - 1, %arg7 * -2 + %arg9 - 2, %arg7 * -2 + %arg10 - 1] : memref<?x10x10xf64>
                  %24 = affine.load %arg3[%arg7 * -2 + %arg8 - 1, %arg7 * -2 + %arg9 - 1, %arg7 * -2 + %arg10] : memref<?x10x10xf64>
                  %25 = affine.load %arg3[%arg7 * -2 + %arg8 - 1, %arg7 * -2 + %arg9 - 1, %arg7 * -2 + %arg10 - 2] : memref<?x10x10xf64>
                  %26 = affine.load %arg3[%arg7 * -2 + %arg8 - 1, %arg7 * -2 + %arg9 - 1, %arg7 * -2 + %arg10 - 1] : memref<?x10x10xf64>
                  %27 = arith.mulf %26, %cst : f64
                  %28 = arith.subf %20, %27 : f64
                  %29 = arith.addf %28, %21 : f64
                  %30 = arith.mulf %29, %cst_0 : f64
                  %31 = arith.subf %22, %27 : f64
                  %32 = arith.addf %31, %23 : f64
                  %33 = arith.mulf %32, %cst_0 : f64
                  %34 = arith.addf %30, %33 : f64
                  %35 = arith.subf %24, %27 : f64
                  %36 = arith.addf %35, %25 : f64
                  %37 = arith.mulf %36, %cst_0 : f64
                  %38 = arith.addf %34, %37 : f64
                  %39 = arith.addf %38, %26 : f64
                  affine.store %39, %arg2[%arg7 * -2 + %arg8 - 1, %arg7 * -2 + %arg9 - 1, %arg7 * -2 + %arg10 - 1] : memref<?x10x10xf64>
                }
                affine.if #set1(%arg6, %arg7) {
                  %0 = affine.load %arg3[%arg7 * -2 + %arg8, %arg7 * -2 + %arg9 - 1, 8] : memref<?x10x10xf64>
                  %1 = affine.load %arg3[%arg7 * -2 + %arg8 - 2, %arg7 * -2 + %arg9 - 1, 8] : memref<?x10x10xf64>
                  %2 = affine.load %arg3[%arg7 * -2 + %arg8 - 1, %arg7 * -2 + %arg9, 8] : memref<?x10x10xf64>
                  %3 = affine.load %arg3[%arg7 * -2 + %arg8 - 1, %arg7 * -2 + %arg9 - 2, 8] : memref<?x10x10xf64>
                  %4 = affine.load %arg3[%arg7 * -2 + %arg8 - 1, %arg7 * -2 + %arg9 - 1, 9] : memref<?x10x10xf64>
                  %5 = affine.load %arg3[%arg7 * -2 + %arg8 - 1, %arg7 * -2 + %arg9 - 1, 7] : memref<?x10x10xf64>
                  %6 = affine.load %arg3[%arg7 * -2 + %arg8 - 1, %arg7 * -2 + %arg9 - 1, 8] : memref<?x10x10xf64>
                  %7 = arith.mulf %6, %cst : f64
                  %8 = arith.subf %0, %7 : f64
                  %9 = arith.addf %8, %1 : f64
                  %10 = arith.mulf %9, %cst_0 : f64
                  %11 = arith.subf %2, %7 : f64
                  %12 = arith.addf %11, %3 : f64
                  %13 = arith.mulf %12, %cst_0 : f64
                  %14 = arith.addf %10, %13 : f64
                  %15 = arith.subf %4, %7 : f64
                  %16 = arith.addf %15, %5 : f64
                  %17 = arith.mulf %16, %cst_0 : f64
                  %18 = arith.addf %14, %17 : f64
                  %19 = arith.addf %18, %6 : f64
                  affine.store %19, %arg2[%arg7 * -2 + %arg8 - 1, %arg7 * -2 + %arg9 - 1, 8] : memref<?x10x10xf64>
                }
              }
              affine.if #set1(%arg5, %arg7) {
                affine.for %arg9 = max #map4(%arg6, %arg7) to min #map5(%arg6, %arg7) {
                  %0 = affine.load %arg3[%arg7 * -2 + %arg8, 8, %arg7 * -2 + %arg9 - 1] : memref<?x10x10xf64>
                  %1 = affine.load %arg3[%arg7 * -2 + %arg8 - 2, 8, %arg7 * -2 + %arg9 - 1] : memref<?x10x10xf64>
                  %2 = affine.load %arg3[%arg7 * -2 + %arg8 - 1, 9, %arg7 * -2 + %arg9 - 1] : memref<?x10x10xf64>
                  %3 = affine.load %arg3[%arg7 * -2 + %arg8 - 1, 7, %arg7 * -2 + %arg9 - 1] : memref<?x10x10xf64>
                  %4 = affine.load %arg3[%arg7 * -2 + %arg8 - 1, 8, %arg7 * -2 + %arg9] : memref<?x10x10xf64>
                  %5 = affine.load %arg3[%arg7 * -2 + %arg8 - 1, 8, %arg7 * -2 + %arg9 - 2] : memref<?x10x10xf64>
                  %6 = affine.load %arg3[%arg7 * -2 + %arg8 - 1, 8, %arg7 * -2 + %arg9 - 1] : memref<?x10x10xf64>
                  %7 = arith.mulf %6, %cst : f64
                  %8 = arith.subf %0, %7 : f64
                  %9 = arith.addf %8, %1 : f64
                  %10 = arith.mulf %9, %cst_0 : f64
                  %11 = arith.subf %2, %7 : f64
                  %12 = arith.addf %11, %3 : f64
                  %13 = arith.mulf %12, %cst_0 : f64
                  %14 = arith.addf %10, %13 : f64
                  %15 = arith.subf %4, %7 : f64
                  %16 = arith.addf %15, %5 : f64
                  %17 = arith.mulf %16, %cst_0 : f64
                  %18 = arith.addf %14, %17 : f64
                  %19 = arith.addf %18, %6 : f64
                  affine.store %19, %arg2[%arg7 * -2 + %arg8 - 1, 8, %arg7 * -2 + %arg9 - 1] : memref<?x10x10xf64>
                }
              }
            }
            affine.if #set1(%arg4, %arg7) {
              affine.for %arg8 = max #map4(%arg5, %arg7) to min #map5(%arg5, %arg7) {
                affine.for %arg9 = max #map4(%arg6, %arg7) to min #map5(%arg6, %arg7) {
                  %0 = affine.load %arg3[9, %arg7 * -2 + %arg8 - 1, %arg7 * -2 + %arg9 - 1] : memref<?x10x10xf64>
                  %1 = affine.load %arg3[7, %arg7 * -2 + %arg8 - 1, %arg7 * -2 + %arg9 - 1] : memref<?x10x10xf64>
                  %2 = affine.load %arg3[8, %arg7 * -2 + %arg8, %arg7 * -2 + %arg9 - 1] : memref<?x10x10xf64>
                  %3 = affine.load %arg3[8, %arg7 * -2 + %arg8 - 2, %arg7 * -2 + %arg9 - 1] : memref<?x10x10xf64>
                  %4 = affine.load %arg3[8, %arg7 * -2 + %arg8 - 1, %arg7 * -2 + %arg9] : memref<?x10x10xf64>
                  %5 = affine.load %arg3[8, %arg7 * -2 + %arg8 - 1, %arg7 * -2 + %arg9 - 2] : memref<?x10x10xf64>
                  %6 = affine.load %arg3[8, %arg7 * -2 + %arg8 - 1, %arg7 * -2 + %arg9 - 1] : memref<?x10x10xf64>
                  %7 = arith.mulf %6, %cst : f64
                  %8 = arith.subf %0, %7 : f64
                  %9 = arith.addf %8, %1 : f64
                  %10 = arith.mulf %9, %cst_0 : f64
                  %11 = arith.subf %2, %7 : f64
                  %12 = arith.addf %11, %3 : f64
                  %13 = arith.mulf %12, %cst_0 : f64
                  %14 = arith.addf %10, %13 : f64
                  %15 = arith.subf %4, %7 : f64
                  %16 = arith.addf %15, %5 : f64
                  %17 = arith.mulf %16, %cst_0 : f64
                  %18 = arith.addf %14, %17 : f64
                  %19 = arith.addf %18, %6 : f64
                  affine.store %19, %arg2[8, %arg7 * -2 + %arg8 - 1, %arg7 * -2 + %arg9 - 1] : memref<?x10x10xf64>
                }
              }
            }
          }
          affine.if #set2(%arg4, %arg5, %arg6) {
            affine.for %arg7 = max #map6(%arg4) to min #map7(%arg4) {
              affine.for %arg8 = max #map6(%arg5) to min #map7(%arg5) {
                affine.for %arg9 = max #map6(%arg6) to min #map7(%arg6) {
                  %0 = affine.load %arg2[%arg7 - 29, %arg8 - 30, %arg9 - 30] : memref<?x10x10xf64>
                  %1 = affine.load %arg2[%arg7 - 31, %arg8 - 30, %arg9 - 30] : memref<?x10x10xf64>
                  %2 = affine.load %arg2[%arg7 - 30, %arg8 - 29, %arg9 - 30] : memref<?x10x10xf64>
                  %3 = affine.load %arg2[%arg7 - 30, %arg8 - 31, %arg9 - 30] : memref<?x10x10xf64>
                  %4 = affine.load %arg2[%arg7 - 30, %arg8 - 30, %arg9 - 29] : memref<?x10x10xf64>
                  %5 = affine.load %arg2[%arg7 - 30, %arg8 - 30, %arg9 - 31] : memref<?x10x10xf64>
                  %6 = affine.load %arg2[%arg7 - 30, %arg8 - 30, %arg9 - 30] : memref<?x10x10xf64>
                  %7 = arith.mulf %6, %cst : f64
                  %8 = arith.subf %0, %7 : f64
                  %9 = arith.addf %8, %1 : f64
                  %10 = arith.mulf %9, %cst_0 : f64
                  %11 = arith.subf %2, %7 : f64
                  %12 = arith.addf %11, %3 : f64
                  %13 = arith.mulf %12, %cst_0 : f64
                  %14 = arith.addf %10, %13 : f64
                  %15 = arith.subf %4, %7 : f64
                  %16 = arith.addf %15, %5 : f64
                  %17 = arith.mulf %16, %cst_0 : f64
                  %18 = arith.addf %14, %17 : f64
                  %19 = arith.addf %18, %6 : f64
                  affine.store %19, %arg3[%arg7 - 30, %arg8 - 30, %arg9 - 30] : memref<?x10x10xf64>
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

