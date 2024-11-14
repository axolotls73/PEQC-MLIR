#map = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0, d1) -> (d0 + d1)>
#map2 = affine_map<(d0) -> (0, d0 * 32 - 29)>
#map3 = affine_map<(d0, d1) -> (d0 * 32, d1 + 1)>
#map4 = affine_map<(d0, d1) -> (d0 * 32 + 32, d1 + 30)>
#map5 = affine_map<(d0) -> (-d0 + 31, 19)>
#map6 = affine_map<(d0, d1) -> (d0 + d1 + 1)>
#map7 = affine_map<(d0) -> (d0 + 13)>
#map8 = affine_map<(d0) -> (d0 - 12)>
#map9 = affine_map<(d0) -> (d0 + 32)>
#set = affine_set<(d0) : (d0 == 0)>
#set1 = affine_set<(d0) : (d0 - 1 == 0)>
module {
  func.func @kernel_fdtd_2d(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?x30xf64>, %arg6: memref<?xf64>) {
    %cst = arith.constant 0.69999999999999996 : f64
    %cst_0 = arith.constant 5.000000e-01 : f64
    affine.for %arg7 = 0 to 1 {
      %0 = affine.apply #map(%arg7)
      affine.for %arg8 = 0 to 1 {
        %1 = affine.apply #map(%arg8)
        affine.for %arg9 = 0 to 2 {
          %2 = affine.apply #map1(%0, %arg9)
          affine.for %arg10 = 0 to 2 {
            %3 = affine.apply #map1(%1, %arg10)
            affine.if #set(%3) {
              affine.for %arg11 = max #map2(%2) to 20 {
                affine.if #set(%2) {
                  %5 = affine.load %arg6[%arg11] : memref<?xf64>
                  affine.store %5, %arg4[0, 0] : memref<?x30xf64>
                }
                %4 = affine.load %arg6[%arg11] : memref<?xf64>
                affine.for %arg12 = max #map3(%2, %arg11) to min #map4(%2, %arg11) {
                  affine.store %4, %arg4[0, -%arg11 + %arg12] : memref<?x30xf64>
                  %5 = affine.load %arg3[0, -%arg11 + %arg12] : memref<?x30xf64>
                  %6 = affine.load %arg5[0, -%arg11 + %arg12] : memref<?x30xf64>
                  %7 = affine.load %arg5[0, -%arg11 + %arg12 - 1] : memref<?x30xf64>
                  %8 = arith.subf %6, %7 : f64
                  %9 = arith.mulf %8, %cst_0 : f64
                  %10 = arith.subf %5, %9 : f64
                  affine.store %10, %arg3[0, -%arg11 + %arg12] : memref<?x30xf64>
                }
                affine.for %arg12 = 0 to min #map5(%arg11) {
                  %5 = affine.apply #map6(%arg11, %arg12)
                  affine.if #set(%2) {
                    %6 = affine.load %arg4[-%5 + %arg11, 0] : memref<?x30xf64>
                    %7 = affine.load %arg5[-%5 + %arg11, 0] : memref<?x30xf64>
                    %8 = affine.load %arg5[-%5 + %arg11 - 1, 0] : memref<?x30xf64>
                    %9 = arith.subf %7, %8 : f64
                    %10 = arith.mulf %9, %cst_0 : f64
                    %11 = arith.subf %6, %10 : f64
                    affine.store %11, %arg4[-%5 + %arg11, 0] : memref<?x30xf64>
                  }
                  affine.for %arg13 = max #map3(%2, %arg11) to min #map4(%2, %arg11) {
                    %6 = affine.load %arg4[-%5 + %arg11, -%arg11 + %arg13] : memref<?x30xf64>
                    %7 = affine.load %arg5[-%5 + %arg11, -%arg11 + %arg13] : memref<?x30xf64>
                    %8 = affine.load %arg5[-%5 + %arg11 - 1, -%arg11 + %arg13] : memref<?x30xf64>
                    %9 = arith.subf %7, %8 : f64
                    %10 = arith.mulf %9, %cst_0 : f64
                    %11 = arith.subf %6, %10 : f64
                    affine.store %11, %arg4[-%5 + %arg11, -%arg11 + %arg13] : memref<?x30xf64>
                    %12 = affine.load %arg3[-%5 + %arg11, -%arg11 + %arg13] : memref<?x30xf64>
                    %13 = affine.load %arg5[-%5 + %arg11, -%arg11 + %arg13] : memref<?x30xf64>
                    %14 = affine.load %arg5[-%5 + %arg11, -%arg11 + %arg13 - 1] : memref<?x30xf64>
                    %15 = arith.subf %13, %14 : f64
                    %16 = arith.mulf %15, %cst_0 : f64
                    %17 = arith.subf %12, %16 : f64
                    affine.store %17, %arg3[-%5 + %arg11, -%arg11 + %arg13] : memref<?x30xf64>
                    %18 = affine.load %arg5[-%5 + %arg11 - 1, -%arg11 + %arg13 - 1] : memref<?x30xf64>
                    %19 = affine.load %arg3[-%5 + %arg11 - 1, -%arg11 + %arg13] : memref<?x30xf64>
                    %20 = affine.load %arg3[-%5 + %arg11 - 1, -%arg11 + %arg13 - 1] : memref<?x30xf64>
                    %21 = arith.subf %19, %20 : f64
                    %22 = affine.load %arg4[-%5 + %arg11, -%arg11 + %arg13 - 1] : memref<?x30xf64>
                    %23 = arith.addf %21, %22 : f64
                    %24 = affine.load %arg4[-%5 + %arg11 - 1, -%arg11 + %arg13 - 1] : memref<?x30xf64>
                    %25 = arith.subf %23, %24 : f64
                    %26 = arith.mulf %25, %cst : f64
                    %27 = arith.subf %18, %26 : f64
                    affine.store %27, %arg5[-%5 + %arg11 - 1, -%arg11 + %arg13 - 1] : memref<?x30xf64>
                  }
                }
              }
            }
            affine.if #set1(%3) {
              affine.for %arg11 = 0 to 7 {
                %4 = affine.apply #map7(%arg11)
                affine.for %arg12 = 0 to #map8(%4) {
                  %5 = affine.apply #map9(%arg12)
                  affine.if #set(%2) {
                    %6 = affine.load %arg4[-%5 + %4, 0] : memref<?x30xf64>
                    %7 = affine.load %arg5[-%5 + %4, 0] : memref<?x30xf64>
                    %8 = affine.load %arg5[-%5 + %4 - 1, 0] : memref<?x30xf64>
                    %9 = arith.subf %7, %8 : f64
                    %10 = arith.mulf %9, %cst_0 : f64
                    %11 = arith.subf %6, %10 : f64
                    affine.store %11, %arg4[-%5 + %4, 0] : memref<?x30xf64>
                  }
                  affine.for %arg13 = max #map3(%2, %4) to min #map4(%2, %4) {
                    %6 = affine.load %arg4[-%5 + %4, -%4 + %arg13] : memref<?x30xf64>
                    %7 = affine.load %arg5[-%5 + %4, -%4 + %arg13] : memref<?x30xf64>
                    %8 = affine.load %arg5[-%5 + %4 - 1, -%4 + %arg13] : memref<?x30xf64>
                    %9 = arith.subf %7, %8 : f64
                    %10 = arith.mulf %9, %cst_0 : f64
                    %11 = arith.subf %6, %10 : f64
                    affine.store %11, %arg4[-%5 + %4, -%4 + %arg13] : memref<?x30xf64>
                    %12 = affine.load %arg3[-%5 + %4, -%4 + %arg13] : memref<?x30xf64>
                    %13 = affine.load %arg5[-%5 + %4, -%4 + %arg13] : memref<?x30xf64>
                    %14 = affine.load %arg5[-%5 + %4, -%4 + %arg13 - 1] : memref<?x30xf64>
                    %15 = arith.subf %13, %14 : f64
                    %16 = arith.mulf %15, %cst_0 : f64
                    %17 = arith.subf %12, %16 : f64
                    affine.store %17, %arg3[-%5 + %4, -%4 + %arg13] : memref<?x30xf64>
                    %18 = affine.load %arg5[-%5 + %4 - 1, -%4 + %arg13 - 1] : memref<?x30xf64>
                    %19 = affine.load %arg3[-%5 + %4 - 1, -%4 + %arg13] : memref<?x30xf64>
                    %20 = affine.load %arg3[-%5 + %4 - 1, -%4 + %arg13 - 1] : memref<?x30xf64>
                    %21 = arith.subf %19, %20 : f64
                    %22 = affine.load %arg4[-%5 + %4, -%4 + %arg13 - 1] : memref<?x30xf64>
                    %23 = arith.addf %21, %22 : f64
                    %24 = affine.load %arg4[-%5 + %4 - 1, -%4 + %arg13 - 1] : memref<?x30xf64>
                    %25 = arith.subf %23, %24 : f64
                    %26 = arith.mulf %25, %cst : f64
                    %27 = arith.subf %18, %26 : f64
                    affine.store %27, %arg5[-%5 + %4 - 1, -%4 + %arg13 - 1] : memref<?x30xf64>
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

