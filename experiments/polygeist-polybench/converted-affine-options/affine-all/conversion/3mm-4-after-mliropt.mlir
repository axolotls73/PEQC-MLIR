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
      affine.for %arg13 = 0 to 1 {
        %0 = affine.apply #map(%arg12, %arg13)
        affine.for %arg14 = 0 to 5 {
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
        affine.for %arg14 = 0 to 2 {
          %1 = affine.apply #map5(%arg14)
          affine.store %cst, %arg11[%0, %1] : memref<?x22xf64>
          affine.store %cst, %arg8[%0, %1] : memref<?x22xf64>
        }
      }
    }
    affine.parallel (%arg12) = (0) to (2) {
      %0 = affine.apply #map6(%arg12)
      affine.for %arg13 = 0 to 1 {
        %1 = affine.apply #map(%0, %arg13)
        affine.for %arg14 = 0 to 5 {
          %2 = affine.apply #map1(%arg14)
          affine.store %cst, %arg8[%1, %2] : memref<?x22xf64>
          %3 = affine.apply #map2(%2)
          affine.store %cst, %arg8[%1, %3] : memref<?x22xf64>
          %4 = affine.apply #map3(%2)
          affine.store %cst, %arg8[%1, %4] : memref<?x22xf64>
          %5 = affine.apply #map4(%2)
          affine.store %cst, %arg8[%1, %5] : memref<?x22xf64>
        }
        affine.for %arg14 = 0 to 2 {
          %2 = affine.apply #map5(%arg14)
          affine.store %cst, %arg8[%1, %2] : memref<?x22xf64>
        }
      }
    }
    affine.parallel (%arg12) = (0) to (18) {
      affine.for %arg13 = 0 to 24 {
        affine.for %arg14 = 0 to 1 {
          %0 = affine.apply #map(%arg12, %arg14)
          affine.for %arg15 = 0 to 1 {
            %1 = affine.apply #map(%arg13, %arg15)
            %2 = affine.load %arg9[%0, %1] : memref<?x24xf64>
            %3 = affine.load %arg9[%0, %1] : memref<?x24xf64>
            %4 = affine.load %arg9[%0, %1] : memref<?x24xf64>
            %5 = affine.load %arg9[%0, %1] : memref<?x24xf64>
            affine.for %arg16 = 0 to 5 {
              %7 = affine.apply #map1(%arg16)
              %8 = affine.load %arg8[%0, %7] : memref<?x22xf64>
              %9 = affine.load %arg10[%1, %7] : memref<?x22xf64>
              %10 = arith.mulf %2, %9 : f64
              %11 = arith.addf %8, %10 : f64
              affine.store %11, %arg8[%0, %7] : memref<?x22xf64>
              %12 = affine.apply #map2(%7)
              %13 = affine.load %arg8[%0, %12] : memref<?x22xf64>
              %14 = affine.load %arg10[%1, %12] : memref<?x22xf64>
              %15 = arith.mulf %3, %14 : f64
              %16 = arith.addf %13, %15 : f64
              affine.store %16, %arg8[%0, %12] : memref<?x22xf64>
              %17 = affine.apply #map3(%7)
              %18 = affine.load %arg8[%0, %17] : memref<?x22xf64>
              %19 = affine.load %arg10[%1, %17] : memref<?x22xf64>
              %20 = arith.mulf %4, %19 : f64
              %21 = arith.addf %18, %20 : f64
              affine.store %21, %arg8[%0, %17] : memref<?x22xf64>
              %22 = affine.apply #map4(%7)
              %23 = affine.load %arg8[%0, %22] : memref<?x22xf64>
              %24 = affine.load %arg10[%1, %22] : memref<?x22xf64>
              %25 = arith.mulf %5, %24 : f64
              %26 = arith.addf %23, %25 : f64
              affine.store %26, %arg8[%0, %22] : memref<?x22xf64>
            }
            %6 = affine.load %arg9[%0, %1] : memref<?x24xf64>
            affine.for %arg16 = 0 to 2 {
              %7 = affine.apply #map5(%arg16)
              %8 = affine.load %arg8[%0, %7] : memref<?x22xf64>
              %9 = affine.load %arg10[%1, %7] : memref<?x22xf64>
              %10 = arith.mulf %6, %9 : f64
              %11 = arith.addf %8, %10 : f64
              affine.store %11, %arg8[%0, %7] : memref<?x22xf64>
            }
          }
        }
      }
    }
    affine.parallel (%arg12) = (0) to (16) {
      affine.for %arg13 = 0 to 1 {
        %0 = affine.apply #map(%arg12, %arg13)
        affine.for %arg14 = 0 to 4 {
          %1 = affine.apply #map1(%arg14)
          affine.store %cst, %arg5[%0, %1] : memref<?x18xf64>
          %2 = affine.apply #map2(%1)
          affine.store %cst, %arg5[%0, %2] : memref<?x18xf64>
          %3 = affine.apply #map3(%1)
          affine.store %cst, %arg5[%0, %3] : memref<?x18xf64>
          %4 = affine.apply #map4(%1)
          affine.store %cst, %arg5[%0, %4] : memref<?x18xf64>
        }
        affine.for %arg14 = 0 to 2 {
          %1 = affine.apply #map6(%arg14)
          affine.store %cst, %arg5[%0, %1] : memref<?x18xf64>
        }
      }
    }
    affine.for %arg12 = 0 to 2 {
      affine.parallel (%arg13) = (0) to (1) {
        %0 = affine.apply #map(%arg12, %arg13)
        affine.if #set(%0) {
          affine.for %arg14 = 0 to 16 {
            affine.for %arg15 = 0 to 18 {
              affine.for %arg16 = 0 to 5 {
                %10 = affine.apply #map1(%arg16)
                %11 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %12 = affine.load %arg6[%arg14, %10] : memref<?x20xf64>
                %13 = affine.load %arg7[%10, %arg15] : memref<?x18xf64>
                %14 = arith.mulf %12, %13 : f64
                %15 = arith.addf %11, %14 : f64
                affine.store %15, %arg5[%arg14, %arg15] : memref<?x18xf64>
                %16 = affine.apply #map2(%10)
                %17 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %18 = affine.load %arg6[%arg14, %16] : memref<?x20xf64>
                %19 = affine.load %arg7[%16, %arg15] : memref<?x18xf64>
                %20 = arith.mulf %18, %19 : f64
                %21 = arith.addf %17, %20 : f64
                affine.store %21, %arg5[%arg14, %arg15] : memref<?x18xf64>
                %22 = affine.apply #map3(%10)
                %23 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %24 = affine.load %arg6[%arg14, %22] : memref<?x20xf64>
                %25 = affine.load %arg7[%22, %arg15] : memref<?x18xf64>
                %26 = arith.mulf %24, %25 : f64
                %27 = arith.addf %23, %26 : f64
                affine.store %27, %arg5[%arg14, %arg15] : memref<?x18xf64>
                %28 = affine.apply #map4(%10)
                %29 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %30 = affine.load %arg6[%arg14, %28] : memref<?x20xf64>
                %31 = affine.load %arg7[%28, %arg15] : memref<?x18xf64>
                %32 = arith.mulf %30, %31 : f64
                %33 = arith.addf %29, %32 : f64
                affine.store %33, %arg5[%arg14, %arg15] : memref<?x18xf64>
              }
              %1 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %2 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %3 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %4 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              affine.for %arg16 = 0 to 3 {
                %10 = affine.apply #map7(%arg16)
                %11 = affine.load %arg11[%arg14, %10 - 19] : memref<?x22xf64>
                %12 = affine.load %arg8[%arg15, %10 - 19] : memref<?x22xf64>
                %13 = arith.mulf %1, %12 : f64
                %14 = arith.addf %11, %13 : f64
                affine.store %14, %arg11[%arg14, %10 - 19] : memref<?x22xf64>
                %15 = affine.apply #map2(%10)
                %16 = affine.load %arg11[%arg14, %15 - 19] : memref<?x22xf64>
                %17 = affine.load %arg8[%arg15, %15 - 19] : memref<?x22xf64>
                %18 = arith.mulf %2, %17 : f64
                %19 = arith.addf %16, %18 : f64
                affine.store %19, %arg11[%arg14, %15 - 19] : memref<?x22xf64>
                %20 = affine.apply #map3(%10)
                %21 = affine.load %arg11[%arg14, %20 - 19] : memref<?x22xf64>
                %22 = affine.load %arg8[%arg15, %20 - 19] : memref<?x22xf64>
                %23 = arith.mulf %3, %22 : f64
                %24 = arith.addf %21, %23 : f64
                affine.store %24, %arg11[%arg14, %20 - 19] : memref<?x22xf64>
                %25 = affine.apply #map4(%10)
                %26 = affine.load %arg11[%arg14, %25 - 19] : memref<?x22xf64>
                %27 = affine.load %arg8[%arg15, %25 - 19] : memref<?x22xf64>
                %28 = arith.mulf %4, %27 : f64
                %29 = arith.addf %26, %28 : f64
                affine.store %29, %arg11[%arg14, %25 - 19] : memref<?x22xf64>
              }
              %5 = affine.load %arg11[%arg14, %c31 - 19] : memref<?x22xf64>
              %6 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %7 = affine.load %arg8[%arg15, %c31 - 19] : memref<?x22xf64>
              %8 = arith.mulf %6, %7 : f64
              %9 = arith.addf %5, %8 : f64
              affine.store %9, %arg11[%arg14, %c31 - 19] : memref<?x22xf64>
            }
          }
        }
        affine.if #set1(%0) {
          affine.for %arg14 = 0 to 16 {
            affine.for %arg15 = 0 to 18 {
              %1 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %2 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %3 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %4 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              affine.for %arg16 = 0 to 2 {
                %10 = affine.apply #map8(%arg16)
                %11 = affine.load %arg11[%arg14, %10 - 19] : memref<?x22xf64>
                %12 = affine.load %arg8[%arg15, %10 - 19] : memref<?x22xf64>
                %13 = arith.mulf %1, %12 : f64
                %14 = arith.addf %11, %13 : f64
                affine.store %14, %arg11[%arg14, %10 - 19] : memref<?x22xf64>
                %15 = affine.apply #map2(%10)
                %16 = affine.load %arg11[%arg14, %15 - 19] : memref<?x22xf64>
                %17 = affine.load %arg8[%arg15, %15 - 19] : memref<?x22xf64>
                %18 = arith.mulf %2, %17 : f64
                %19 = arith.addf %16, %18 : f64
                affine.store %19, %arg11[%arg14, %15 - 19] : memref<?x22xf64>
                %20 = affine.apply #map3(%10)
                %21 = affine.load %arg11[%arg14, %20 - 19] : memref<?x22xf64>
                %22 = affine.load %arg8[%arg15, %20 - 19] : memref<?x22xf64>
                %23 = arith.mulf %3, %22 : f64
                %24 = arith.addf %21, %23 : f64
                affine.store %24, %arg11[%arg14, %20 - 19] : memref<?x22xf64>
                %25 = affine.apply #map4(%10)
                %26 = affine.load %arg11[%arg14, %25 - 19] : memref<?x22xf64>
                %27 = affine.load %arg8[%arg15, %25 - 19] : memref<?x22xf64>
                %28 = arith.mulf %4, %27 : f64
                %29 = arith.addf %26, %28 : f64
                affine.store %29, %arg11[%arg14, %25 - 19] : memref<?x22xf64>
              }
              %5 = affine.load %arg11[%arg14, %c40 - 19] : memref<?x22xf64>
              %6 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %7 = affine.load %arg8[%arg15, %c40 - 19] : memref<?x22xf64>
              %8 = arith.mulf %6, %7 : f64
              %9 = arith.addf %5, %8 : f64
              affine.store %9, %arg11[%arg14, %c40 - 19] : memref<?x22xf64>
            }
          }
        }
      }
    }
    return
  }
}

