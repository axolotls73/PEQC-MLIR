#map = affine_map<(d0, d1) -> (d0 + d1)>
#map1 = affine_map<(d0) -> (0, d0 * 32 - 29)>
#map2 = affine_map<(d0, d1) -> (d0 * 32, d1 + 1)>
#map3 = affine_map<(d0, d1) -> (d0 * 32 + 32, d1 + 30)>
#map4 = affine_map<(d0) -> (-d0 + 31, 19)>
#map5 = affine_map<(d0, d1) -> (d0 + d1 + 1)>
#map6 = affine_map<(d0) -> (d0 + 13)>
#map7 = affine_map<(d0) -> (d0 - 12)>
#map8 = affine_map<(d0) -> (d0 + 32)>
#set = affine_set<(d0) : (d0 == 0)>
#set1 = affine_set<(d0) : (d0 - 1 == 0)>
module {
  func.func @kernel_fdtd_2d(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?x30xf64>, %arg6: memref<?xf64>) {
    %cst = arith.constant 0.69999999999999996 : f64
    %cst_0 = arith.constant 5.000000e-01 : f64
    affine.for %arg7 = 0 to 2 {
      affine.for %arg8 = 0 to 2 {
        affine.for %arg9 = 0 to 1 {
          %0 = affine.apply #map(%arg7, %arg9)
          affine.for %arg10 = 0 to 1 {
            %1 = affine.apply #map(%arg8, %arg10)
            affine.if #set(%1) {
              affine.for %arg11 = max #map1(%0) to 20 {
                affine.if #set(%0) {
                  %3 = affine.load %arg6[%arg11] : memref<?xf64>
                  affine.store %3, %arg4[0, 0] : memref<?x30xf64>
                }
                %2 = affine.load %arg6[%arg11] : memref<?xf64>
                affine.for %arg12 = max #map2(%0, %arg11) to min #map3(%0, %arg11) {
                  affine.store %2, %arg4[0, -%arg11 + %arg12] : memref<?x30xf64>
                  %3 = affine.load %arg3[0, -%arg11 + %arg12] : memref<?x30xf64>
                  %4 = affine.load %arg5[0, -%arg11 + %arg12] : memref<?x30xf64>
                  %5 = affine.load %arg5[0, -%arg11 + %arg12 - 1] : memref<?x30xf64>
                  %6 = arith.subf %4, %5 : f64
                  %7 = arith.mulf %6, %cst_0 : f64
                  %8 = arith.subf %3, %7 : f64
                  affine.store %8, %arg3[0, -%arg11 + %arg12] : memref<?x30xf64>
                }
                affine.for %arg12 = 0 to min #map4(%arg11) {
                  %3 = affine.apply #map5(%arg11, %arg12)
                  affine.if #set(%0) {
                    %4 = affine.load %arg4[-%3 + %arg11, 0] : memref<?x30xf64>
                    %5 = affine.load %arg5[-%3 + %arg11, 0] : memref<?x30xf64>
                    %6 = affine.load %arg5[-%3 + %arg11 - 1, 0] : memref<?x30xf64>
                    %7 = arith.subf %5, %6 : f64
                    %8 = arith.mulf %7, %cst_0 : f64
                    %9 = arith.subf %4, %8 : f64
                    affine.store %9, %arg4[-%3 + %arg11, 0] : memref<?x30xf64>
                  }
                  affine.for %arg13 = max #map2(%0, %arg11) to min #map3(%0, %arg11) {
                    %4 = affine.load %arg4[-%3 + %arg11, -%arg11 + %arg13] : memref<?x30xf64>
                    %5 = affine.load %arg5[-%3 + %arg11, -%arg11 + %arg13] : memref<?x30xf64>
                    %6 = affine.load %arg5[-%3 + %arg11 - 1, -%arg11 + %arg13] : memref<?x30xf64>
                    %7 = arith.subf %5, %6 : f64
                    %8 = arith.mulf %7, %cst_0 : f64
                    %9 = arith.subf %4, %8 : f64
                    affine.store %9, %arg4[-%3 + %arg11, -%arg11 + %arg13] : memref<?x30xf64>
                    %10 = affine.load %arg3[-%3 + %arg11, -%arg11 + %arg13] : memref<?x30xf64>
                    %11 = affine.load %arg5[-%3 + %arg11, -%arg11 + %arg13] : memref<?x30xf64>
                    %12 = affine.load %arg5[-%3 + %arg11, -%arg11 + %arg13 - 1] : memref<?x30xf64>
                    %13 = arith.subf %11, %12 : f64
                    %14 = arith.mulf %13, %cst_0 : f64
                    %15 = arith.subf %10, %14 : f64
                    affine.store %15, %arg3[-%3 + %arg11, -%arg11 + %arg13] : memref<?x30xf64>
                    %16 = affine.load %arg5[-%3 + %arg11 - 1, -%arg11 + %arg13 - 1] : memref<?x30xf64>
                    %17 = affine.load %arg3[-%3 + %arg11 - 1, -%arg11 + %arg13] : memref<?x30xf64>
                    %18 = affine.load %arg3[-%3 + %arg11 - 1, -%arg11 + %arg13 - 1] : memref<?x30xf64>
                    %19 = arith.subf %17, %18 : f64
                    %20 = affine.load %arg4[-%3 + %arg11, -%arg11 + %arg13 - 1] : memref<?x30xf64>
                    %21 = arith.addf %19, %20 : f64
                    %22 = affine.load %arg4[-%3 + %arg11 - 1, -%arg11 + %arg13 - 1] : memref<?x30xf64>
                    %23 = arith.subf %21, %22 : f64
                    %24 = arith.mulf %23, %cst : f64
                    %25 = arith.subf %16, %24 : f64
                    affine.store %25, %arg5[-%3 + %arg11 - 1, -%arg11 + %arg13 - 1] : memref<?x30xf64>
                  }
                }
              }
            }
            affine.if #set1(%1) {
              affine.for %arg11 = 0 to 7 {
                %2 = affine.apply #map6(%arg11)
                affine.for %arg12 = 0 to #map7(%2) {
                  %3 = affine.apply #map8(%arg12)
                  affine.if #set(%0) {
                    %4 = affine.load %arg4[-%3 + %2, 0] : memref<?x30xf64>
                    %5 = affine.load %arg5[-%3 + %2, 0] : memref<?x30xf64>
                    %6 = affine.load %arg5[-%3 + %2 - 1, 0] : memref<?x30xf64>
                    %7 = arith.subf %5, %6 : f64
                    %8 = arith.mulf %7, %cst_0 : f64
                    %9 = arith.subf %4, %8 : f64
                    affine.store %9, %arg4[-%3 + %2, 0] : memref<?x30xf64>
                  }
                  affine.for %arg13 = max #map2(%0, %2) to min #map3(%0, %2) {
                    %4 = affine.load %arg4[-%3 + %2, -%2 + %arg13] : memref<?x30xf64>
                    %5 = affine.load %arg5[-%3 + %2, -%2 + %arg13] : memref<?x30xf64>
                    %6 = affine.load %arg5[-%3 + %2 - 1, -%2 + %arg13] : memref<?x30xf64>
                    %7 = arith.subf %5, %6 : f64
                    %8 = arith.mulf %7, %cst_0 : f64
                    %9 = arith.subf %4, %8 : f64
                    affine.store %9, %arg4[-%3 + %2, -%2 + %arg13] : memref<?x30xf64>
                    %10 = affine.load %arg3[-%3 + %2, -%2 + %arg13] : memref<?x30xf64>
                    %11 = affine.load %arg5[-%3 + %2, -%2 + %arg13] : memref<?x30xf64>
                    %12 = affine.load %arg5[-%3 + %2, -%2 + %arg13 - 1] : memref<?x30xf64>
                    %13 = arith.subf %11, %12 : f64
                    %14 = arith.mulf %13, %cst_0 : f64
                    %15 = arith.subf %10, %14 : f64
                    affine.store %15, %arg3[-%3 + %2, -%2 + %arg13] : memref<?x30xf64>
                    %16 = affine.load %arg5[-%3 + %2 - 1, -%2 + %arg13 - 1] : memref<?x30xf64>
                    %17 = affine.load %arg3[-%3 + %2 - 1, -%2 + %arg13] : memref<?x30xf64>
                    %18 = affine.load %arg3[-%3 + %2 - 1, -%2 + %arg13 - 1] : memref<?x30xf64>
                    %19 = arith.subf %17, %18 : f64
                    %20 = affine.load %arg4[-%3 + %2, -%2 + %arg13 - 1] : memref<?x30xf64>
                    %21 = arith.addf %19, %20 : f64
                    %22 = affine.load %arg4[-%3 + %2 - 1, -%2 + %arg13 - 1] : memref<?x30xf64>
                    %23 = arith.subf %21, %22 : f64
                    %24 = arith.mulf %23, %cst : f64
                    %25 = arith.subf %16, %24 : f64
                    affine.store %25, %arg5[-%3 + %2 - 1, -%2 + %arg13 - 1] : memref<?x30xf64>
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

