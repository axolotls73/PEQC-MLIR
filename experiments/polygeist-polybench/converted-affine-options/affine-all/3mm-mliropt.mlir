#map = affine_map<(d0, d1) -> (d0 + d1)>
#map1 = affine_map<(d0) -> (d0 * 4)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0) -> (d0 + 2)>
#map4 = affine_map<(d0) -> (d0 + 3)>
#map5 = affine_map<(d0) -> (d0 + 20)>
#map6 = affine_map<(d0) -> (d0 + 16)>
#map7 = affine_map<(d0) -> (d0 * 4 + 19)>
#map8 = affine_map<(d0) -> (d0 * 4 + 32)>
#set = affine_set<(d0) : (d0 == 0)>
#set1 = affine_set<(d0) : (d0 - 1 == 0)>
module {
  func.func @kernel_3mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: memref<?x18xf64>, %arg6: memref<?x20xf64>, %arg7: memref<?x18xf64>, %arg8: memref<?x22xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x22xf64>, %arg11: memref<?x22xf64>) {
    %c40 = arith.constant 40 : index
    %c31 = arith.constant 31 : index
    %cst = arith.constant 0.000000e+00 : f64
    affine.parallel (%arg12) = (0) to (16) {
      affine.parallel (%arg13) = (0) to (1) {
        %0 = affine.apply #map(%arg12, %arg13)
        affine.parallel (%arg14) = (0) to (5) {
          %1 = affine.apply #map1(%arg14)
          affine.store %cst, %arg11[%0, %1] : memref<?x22xf64>
          affine.store %cst, %arg8[%0, %1] : memref<?x22xf64>
          %2 = affine.apply #map2(%1)
          affine.store %cst, %arg11[%0, %2] : memref<?x22xf64>
          affine.store %cst, %arg8[%0, %2] : memref<?x22xf64>
          %3 = affine.apply #map3(%1)
          affine.store %cst, %arg11[%0, %3] : memref<?x22xf64>
          affine.store %cst, %arg8[%0, %3] : memref<?x22xf64>
          %4 = affine.apply #map4(%1)
          affine.store %cst, %arg11[%0, %4] : memref<?x22xf64>
          affine.store %cst, %arg8[%0, %4] : memref<?x22xf64>
        }
        affine.parallel (%arg14) = (0) to (2) {
          %1 = affine.apply #map5(%arg14)
          affine.store %cst, %arg11[%0, %1] : memref<?x22xf64>
          affine.store %cst, %arg8[%0, %1] : memref<?x22xf64>
        }
      }
    }
    affine.parallel (%arg12) = (0) to (2) {
      %0 = affine.apply #map6(%arg12)
      affine.parallel (%arg13) = (0) to (1) {
        %1 = affine.apply #map(%0, %arg13)
        affine.parallel (%arg14) = (0) to (5) {
          %2 = affine.apply #map1(%arg14)
          affine.store %cst, %arg8[%1, %2] : memref<?x22xf64>
          %3 = affine.apply #map2(%2)
          affine.store %cst, %arg8[%1, %3] : memref<?x22xf64>
          %4 = affine.apply #map3(%2)
          affine.store %cst, %arg8[%1, %4] : memref<?x22xf64>
          %5 = affine.apply #map4(%2)
          affine.store %cst, %arg8[%1, %5] : memref<?x22xf64>
        }
        affine.parallel (%arg14) = (0) to (2) {
          %2 = affine.apply #map5(%arg14)
          affine.store %cst, %arg8[%1, %2] : memref<?x22xf64>
        }
      }
    }
    affine.parallel (%arg12) = (0) to (18) {
      affine.for %arg13 = 0 to 24 {
        affine.parallel (%arg14) = (0) to (1) {
          %0 = affine.apply #map(%arg12, %arg14)
          affine.parallel (%arg15) = (0) to (1) {
            %1 = affine.apply #map(%arg13, %arg15)
            affine.parallel (%arg16) = (0) to (5) {
              %2 = affine.apply #map1(%arg16)
              %3 = affine.load %arg8[%0, %2] : memref<?x22xf64>
              %4 = affine.load %arg9[%0, %1] : memref<?x24xf64>
              %5 = affine.load %arg10[%1, %2] : memref<?x22xf64>
              %6 = arith.mulf %4, %5 : f64
              %7 = arith.addf %3, %6 : f64
              affine.store %7, %arg8[%0, %2] : memref<?x22xf64>
              %8 = affine.apply #map2(%2)
              %9 = affine.load %arg8[%0, %8] : memref<?x22xf64>
              %10 = affine.load %arg9[%0, %1] : memref<?x24xf64>
              %11 = affine.load %arg10[%1, %8] : memref<?x22xf64>
              %12 = arith.mulf %10, %11 : f64
              %13 = arith.addf %9, %12 : f64
              affine.store %13, %arg8[%0, %8] : memref<?x22xf64>
              %14 = affine.apply #map3(%2)
              %15 = affine.load %arg8[%0, %14] : memref<?x22xf64>
              %16 = affine.load %arg9[%0, %1] : memref<?x24xf64>
              %17 = affine.load %arg10[%1, %14] : memref<?x22xf64>
              %18 = arith.mulf %16, %17 : f64
              %19 = arith.addf %15, %18 : f64
              affine.store %19, %arg8[%0, %14] : memref<?x22xf64>
              %20 = affine.apply #map4(%2)
              %21 = affine.load %arg8[%0, %20] : memref<?x22xf64>
              %22 = affine.load %arg9[%0, %1] : memref<?x24xf64>
              %23 = affine.load %arg10[%1, %20] : memref<?x22xf64>
              %24 = arith.mulf %22, %23 : f64
              %25 = arith.addf %21, %24 : f64
              affine.store %25, %arg8[%0, %20] : memref<?x22xf64>
            }
            affine.parallel (%arg16) = (0) to (2) {
              %2 = affine.apply #map5(%arg16)
              %3 = affine.load %arg8[%0, %2] : memref<?x22xf64>
              %4 = affine.load %arg9[%0, %1] : memref<?x24xf64>
              %5 = affine.load %arg10[%1, %2] : memref<?x22xf64>
              %6 = arith.mulf %4, %5 : f64
              %7 = arith.addf %3, %6 : f64
              affine.store %7, %arg8[%0, %2] : memref<?x22xf64>
            }
          }
        }
      }
    }
    affine.parallel (%arg12) = (0) to (16) {
      affine.parallel (%arg13) = (0) to (1) {
        %0 = affine.apply #map(%arg12, %arg13)
        affine.parallel (%arg14) = (0) to (4) {
          %1 = affine.apply #map1(%arg14)
          affine.store %cst, %arg5[%0, %1] : memref<?x18xf64>
          %2 = affine.apply #map2(%1)
          affine.store %cst, %arg5[%0, %2] : memref<?x18xf64>
          %3 = affine.apply #map3(%1)
          affine.store %cst, %arg5[%0, %3] : memref<?x18xf64>
          %4 = affine.apply #map4(%1)
          affine.store %cst, %arg5[%0, %4] : memref<?x18xf64>
        }
        affine.parallel (%arg14) = (0) to (2) {
          %1 = affine.apply #map6(%arg14)
          affine.store %cst, %arg5[%0, %1] : memref<?x18xf64>
        }
      }
    }
    affine.for %arg12 = 0 to 2 {
      affine.parallel (%arg13) = (0) to (1) {
        %0 = affine.apply #map(%arg12, %arg13)
        affine.if #set(%0) {
          affine.parallel (%arg14) = (0) to (16) {
            affine.for %arg15 = 0 to 18 {
              affine.for %arg16 = 0 to 5 {
                %6 = affine.apply #map1(%arg16)
                %7 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %8 = affine.load %arg6[%arg14, %6] : memref<?x20xf64>
                %9 = affine.load %arg7[%6, %arg15] : memref<?x18xf64>
                %10 = arith.mulf %8, %9 : f64
                %11 = arith.addf %7, %10 : f64
                affine.store %11, %arg5[%arg14, %arg15] : memref<?x18xf64>
                %12 = affine.apply #map2(%6)
                %13 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %14 = affine.load %arg6[%arg14, %12] : memref<?x20xf64>
                %15 = affine.load %arg7[%12, %arg15] : memref<?x18xf64>
                %16 = arith.mulf %14, %15 : f64
                %17 = arith.addf %13, %16 : f64
                affine.store %17, %arg5[%arg14, %arg15] : memref<?x18xf64>
                %18 = affine.apply #map3(%6)
                %19 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %20 = affine.load %arg6[%arg14, %18] : memref<?x20xf64>
                %21 = affine.load %arg7[%18, %arg15] : memref<?x18xf64>
                %22 = arith.mulf %20, %21 : f64
                %23 = arith.addf %19, %22 : f64
                affine.store %23, %arg5[%arg14, %arg15] : memref<?x18xf64>
                %24 = affine.apply #map4(%6)
                %25 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %26 = affine.load %arg6[%arg14, %24] : memref<?x20xf64>
                %27 = affine.load %arg7[%24, %arg15] : memref<?x18xf64>
                %28 = arith.mulf %26, %27 : f64
                %29 = arith.addf %25, %28 : f64
                affine.store %29, %arg5[%arg14, %arg15] : memref<?x18xf64>
              }
              affine.parallel (%arg16) = (0) to (3) {
                %6 = affine.apply #map7(%arg16)
                %7 = affine.load %arg11[%arg14, %6 - 19] : memref<?x22xf64>
                %8 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %9 = affine.load %arg8[%arg15, %6 - 19] : memref<?x22xf64>
                %10 = arith.mulf %8, %9 : f64
                %11 = arith.addf %7, %10 : f64
                affine.store %11, %arg11[%arg14, %6 - 19] : memref<?x22xf64>
                %12 = affine.apply #map2(%6)
                %13 = affine.load %arg11[%arg14, %12 - 19] : memref<?x22xf64>
                %14 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %15 = affine.load %arg8[%arg15, %12 - 19] : memref<?x22xf64>
                %16 = arith.mulf %14, %15 : f64
                %17 = arith.addf %13, %16 : f64
                affine.store %17, %arg11[%arg14, %12 - 19] : memref<?x22xf64>
                %18 = affine.apply #map3(%6)
                %19 = affine.load %arg11[%arg14, %18 - 19] : memref<?x22xf64>
                %20 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %21 = affine.load %arg8[%arg15, %18 - 19] : memref<?x22xf64>
                %22 = arith.mulf %20, %21 : f64
                %23 = arith.addf %19, %22 : f64
                affine.store %23, %arg11[%arg14, %18 - 19] : memref<?x22xf64>
                %24 = affine.apply #map4(%6)
                %25 = affine.load %arg11[%arg14, %24 - 19] : memref<?x22xf64>
                %26 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %27 = affine.load %arg8[%arg15, %24 - 19] : memref<?x22xf64>
                %28 = arith.mulf %26, %27 : f64
                %29 = arith.addf %25, %28 : f64
                affine.store %29, %arg11[%arg14, %24 - 19] : memref<?x22xf64>
              }
              %1 = affine.load %arg11[%arg14, %c31 - 19] : memref<?x22xf64>
              %2 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %3 = affine.load %arg8[%arg15, %c31 - 19] : memref<?x22xf64>
              %4 = arith.mulf %2, %3 : f64
              %5 = arith.addf %1, %4 : f64
              affine.store %5, %arg11[%arg14, %c31 - 19] : memref<?x22xf64>
            }
          }
        }
        affine.if #set1(%0) {
          affine.parallel (%arg14) = (0) to (16) {
            affine.for %arg15 = 0 to 18 {
              affine.parallel (%arg16) = (0) to (2) {
                %6 = affine.apply #map8(%arg16)
                %7 = affine.load %arg11[%arg14, %6 - 19] : memref<?x22xf64>
                %8 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %9 = affine.load %arg8[%arg15, %6 - 19] : memref<?x22xf64>
                %10 = arith.mulf %8, %9 : f64
                %11 = arith.addf %7, %10 : f64
                affine.store %11, %arg11[%arg14, %6 - 19] : memref<?x22xf64>
                %12 = affine.apply #map2(%6)
                %13 = affine.load %arg11[%arg14, %12 - 19] : memref<?x22xf64>
                %14 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %15 = affine.load %arg8[%arg15, %12 - 19] : memref<?x22xf64>
                %16 = arith.mulf %14, %15 : f64
                %17 = arith.addf %13, %16 : f64
                affine.store %17, %arg11[%arg14, %12 - 19] : memref<?x22xf64>
                %18 = affine.apply #map3(%6)
                %19 = affine.load %arg11[%arg14, %18 - 19] : memref<?x22xf64>
                %20 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %21 = affine.load %arg8[%arg15, %18 - 19] : memref<?x22xf64>
                %22 = arith.mulf %20, %21 : f64
                %23 = arith.addf %19, %22 : f64
                affine.store %23, %arg11[%arg14, %18 - 19] : memref<?x22xf64>
                %24 = affine.apply #map4(%6)
                %25 = affine.load %arg11[%arg14, %24 - 19] : memref<?x22xf64>
                %26 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %27 = affine.load %arg8[%arg15, %24 - 19] : memref<?x22xf64>
                %28 = arith.mulf %26, %27 : f64
                %29 = arith.addf %25, %28 : f64
                affine.store %29, %arg11[%arg14, %24 - 19] : memref<?x22xf64>
              }
              %1 = affine.load %arg11[%arg14, %c40 - 19] : memref<?x22xf64>
              %2 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %3 = affine.load %arg8[%arg15, %c40 - 19] : memref<?x22xf64>
              %4 = arith.mulf %2, %3 : f64
              %5 = arith.addf %1, %4 : f64
              affine.store %5, %arg11[%arg14, %c40 - 19] : memref<?x22xf64>
            }
          }
        }
      }
    }
    return
  }
}

