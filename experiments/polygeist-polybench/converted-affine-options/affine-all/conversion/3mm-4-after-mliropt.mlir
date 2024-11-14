#map = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0, d1) -> (d0 + d1)>
#map2 = affine_map<(d0) -> (d0 * 4)>
#map3 = affine_map<(d0) -> (d0 + 1)>
#map4 = affine_map<(d0) -> (d0 + 2)>
#map5 = affine_map<(d0) -> (d0 + 3)>
#map6 = affine_map<(d0) -> (d0 + 20)>
#map7 = affine_map<(d0) -> (d0 * 32 + 16)>
#map8 = affine_map<(d0) -> (d0 + 16)>
#map9 = affine_map<(d0) -> (d0 * 4 + 19)>
#map10 = affine_map<(d0) -> (d0 * 4 + 32)>
#set = affine_set<(d0) : (d0 == 0)>
#set1 = affine_set<(d0) : (d0 - 1 == 0)>
module {
  func.func @kernel_3mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: memref<?x18xf64>, %arg6: memref<?x20xf64>, %arg7: memref<?x18xf64>, %arg8: memref<?x22xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x22xf64>, %arg11: memref<?x22xf64>) {
    %c40 = arith.constant 40 : index
    %c31 = arith.constant 31 : index
    %cst = arith.constant 0.000000e+00 : f64
    affine.parallel (%arg12) = (0) to (1) {
      %0 = affine.apply #map(%arg12)
      affine.for %arg13 = 0 to 16 {
        %1 = affine.apply #map1(%0, %arg13)
        affine.for %arg14 = 0 to 5 {
          %2 = affine.apply #map2(%arg14)
          affine.store %cst, %arg11[%1, %2] : memref<?x22xf64>
          affine.store %cst, %arg8[%1, %2] : memref<?x22xf64>
          %3 = affine.apply #map3(%2)
          affine.store %cst, %arg11[%1, %3] : memref<?x22xf64>
          affine.store %cst, %arg8[%1, %3] : memref<?x22xf64>
          %4 = affine.apply #map4(%2)
          affine.store %cst, %arg11[%1, %4] : memref<?x22xf64>
          affine.store %cst, %arg8[%1, %4] : memref<?x22xf64>
          %5 = affine.apply #map5(%2)
          affine.store %cst, %arg11[%1, %5] : memref<?x22xf64>
          affine.store %cst, %arg8[%1, %5] : memref<?x22xf64>
        }
        affine.for %arg14 = 0 to 2 {
          %2 = affine.apply #map6(%arg14)
          affine.store %cst, %arg11[%1, %2] : memref<?x22xf64>
          affine.store %cst, %arg8[%1, %2] : memref<?x22xf64>
        }
      }
    }
    affine.parallel (%arg12) = (0) to (1) {
      %0 = affine.apply #map7(%arg12)
      affine.for %arg13 = 0 to 2 {
        %1 = affine.apply #map1(%0, %arg13)
        affine.for %arg14 = 0 to 5 {
          %2 = affine.apply #map2(%arg14)
          affine.store %cst, %arg8[%1, %2] : memref<?x22xf64>
          %3 = affine.apply #map3(%2)
          affine.store %cst, %arg8[%1, %3] : memref<?x22xf64>
          %4 = affine.apply #map4(%2)
          affine.store %cst, %arg8[%1, %4] : memref<?x22xf64>
          %5 = affine.apply #map5(%2)
          affine.store %cst, %arg8[%1, %5] : memref<?x22xf64>
        }
        affine.for %arg14 = 0 to 2 {
          %2 = affine.apply #map6(%arg14)
          affine.store %cst, %arg8[%1, %2] : memref<?x22xf64>
        }
      }
    }
    affine.parallel (%arg12) = (0) to (1) {
      %0 = affine.apply #map(%arg12)
      affine.for %arg13 = 0 to 1 {
        %1 = affine.apply #map(%arg13)
        affine.for %arg14 = 0 to 18 {
          %2 = affine.apply #map1(%0, %arg14)
          affine.for %arg15 = 0 to 24 {
            %3 = affine.apply #map1(%1, %arg15)
            %4 = affine.load %arg9[%2, %3] : memref<?x24xf64>
            %5 = affine.load %arg9[%2, %3] : memref<?x24xf64>
            %6 = affine.load %arg9[%2, %3] : memref<?x24xf64>
            %7 = affine.load %arg9[%2, %3] : memref<?x24xf64>
            affine.for %arg16 = 0 to 5 {
              %9 = affine.apply #map2(%arg16)
              %10 = affine.load %arg8[%2, %9] : memref<?x22xf64>
              %11 = affine.load %arg10[%3, %9] : memref<?x22xf64>
              %12 = arith.mulf %4, %11 : f64
              %13 = arith.addf %10, %12 : f64
              affine.store %13, %arg8[%2, %9] : memref<?x22xf64>
              %14 = affine.apply #map3(%9)
              %15 = affine.load %arg8[%2, %14] : memref<?x22xf64>
              %16 = affine.load %arg10[%3, %14] : memref<?x22xf64>
              %17 = arith.mulf %5, %16 : f64
              %18 = arith.addf %15, %17 : f64
              affine.store %18, %arg8[%2, %14] : memref<?x22xf64>
              %19 = affine.apply #map4(%9)
              %20 = affine.load %arg8[%2, %19] : memref<?x22xf64>
              %21 = affine.load %arg10[%3, %19] : memref<?x22xf64>
              %22 = arith.mulf %6, %21 : f64
              %23 = arith.addf %20, %22 : f64
              affine.store %23, %arg8[%2, %19] : memref<?x22xf64>
              %24 = affine.apply #map5(%9)
              %25 = affine.load %arg8[%2, %24] : memref<?x22xf64>
              %26 = affine.load %arg10[%3, %24] : memref<?x22xf64>
              %27 = arith.mulf %7, %26 : f64
              %28 = arith.addf %25, %27 : f64
              affine.store %28, %arg8[%2, %24] : memref<?x22xf64>
            }
            %8 = affine.load %arg9[%2, %3] : memref<?x24xf64>
            affine.for %arg16 = 0 to 2 {
              %9 = affine.apply #map6(%arg16)
              %10 = affine.load %arg8[%2, %9] : memref<?x22xf64>
              %11 = affine.load %arg10[%3, %9] : memref<?x22xf64>
              %12 = arith.mulf %8, %11 : f64
              %13 = arith.addf %10, %12 : f64
              affine.store %13, %arg8[%2, %9] : memref<?x22xf64>
            }
          }
        }
      }
    }
    affine.parallel (%arg12) = (0) to (1) {
      %0 = affine.apply #map(%arg12)
      affine.for %arg13 = 0 to 16 {
        %1 = affine.apply #map1(%0, %arg13)
        affine.for %arg14 = 0 to 4 {
          %2 = affine.apply #map2(%arg14)
          affine.store %cst, %arg5[%1, %2] : memref<?x18xf64>
          %3 = affine.apply #map3(%2)
          affine.store %cst, %arg5[%1, %3] : memref<?x18xf64>
          %4 = affine.apply #map4(%2)
          affine.store %cst, %arg5[%1, %4] : memref<?x18xf64>
          %5 = affine.apply #map5(%2)
          affine.store %cst, %arg5[%1, %5] : memref<?x18xf64>
        }
        affine.for %arg14 = 0 to 2 {
          %2 = affine.apply #map8(%arg14)
          affine.store %cst, %arg5[%1, %2] : memref<?x18xf64>
        }
      }
    }
    affine.parallel (%arg12) = (0) to (1) {
      %0 = affine.apply #map(%arg12)
      affine.for %arg13 = 0 to 2 {
        %1 = affine.apply #map1(%0, %arg13)
        affine.if #set(%1) {
          affine.for %arg14 = 0 to 16 {
            affine.for %arg15 = 0 to 18 {
              affine.for %arg16 = 0 to 5 {
                %11 = affine.apply #map2(%arg16)
                %12 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %13 = affine.load %arg6[%arg14, %11] : memref<?x20xf64>
                %14 = affine.load %arg7[%11, %arg15] : memref<?x18xf64>
                %15 = arith.mulf %13, %14 : f64
                %16 = arith.addf %12, %15 : f64
                affine.store %16, %arg5[%arg14, %arg15] : memref<?x18xf64>
                %17 = affine.apply #map3(%11)
                %18 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %19 = affine.load %arg6[%arg14, %17] : memref<?x20xf64>
                %20 = affine.load %arg7[%17, %arg15] : memref<?x18xf64>
                %21 = arith.mulf %19, %20 : f64
                %22 = arith.addf %18, %21 : f64
                affine.store %22, %arg5[%arg14, %arg15] : memref<?x18xf64>
                %23 = affine.apply #map4(%11)
                %24 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %25 = affine.load %arg6[%arg14, %23] : memref<?x20xf64>
                %26 = affine.load %arg7[%23, %arg15] : memref<?x18xf64>
                %27 = arith.mulf %25, %26 : f64
                %28 = arith.addf %24, %27 : f64
                affine.store %28, %arg5[%arg14, %arg15] : memref<?x18xf64>
                %29 = affine.apply #map5(%11)
                %30 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %31 = affine.load %arg6[%arg14, %29] : memref<?x20xf64>
                %32 = affine.load %arg7[%29, %arg15] : memref<?x18xf64>
                %33 = arith.mulf %31, %32 : f64
                %34 = arith.addf %30, %33 : f64
                affine.store %34, %arg5[%arg14, %arg15] : memref<?x18xf64>
              }
              %2 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %3 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %4 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %5 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              affine.for %arg16 = 0 to 3 {
                %11 = affine.apply #map9(%arg16)
                %12 = affine.load %arg11[%arg14, %11 - 19] : memref<?x22xf64>
                %13 = affine.load %arg8[%arg15, %11 - 19] : memref<?x22xf64>
                %14 = arith.mulf %2, %13 : f64
                %15 = arith.addf %12, %14 : f64
                affine.store %15, %arg11[%arg14, %11 - 19] : memref<?x22xf64>
                %16 = affine.apply #map3(%11)
                %17 = affine.load %arg11[%arg14, %16 - 19] : memref<?x22xf64>
                %18 = affine.load %arg8[%arg15, %16 - 19] : memref<?x22xf64>
                %19 = arith.mulf %3, %18 : f64
                %20 = arith.addf %17, %19 : f64
                affine.store %20, %arg11[%arg14, %16 - 19] : memref<?x22xf64>
                %21 = affine.apply #map4(%11)
                %22 = affine.load %arg11[%arg14, %21 - 19] : memref<?x22xf64>
                %23 = affine.load %arg8[%arg15, %21 - 19] : memref<?x22xf64>
                %24 = arith.mulf %4, %23 : f64
                %25 = arith.addf %22, %24 : f64
                affine.store %25, %arg11[%arg14, %21 - 19] : memref<?x22xf64>
                %26 = affine.apply #map5(%11)
                %27 = affine.load %arg11[%arg14, %26 - 19] : memref<?x22xf64>
                %28 = affine.load %arg8[%arg15, %26 - 19] : memref<?x22xf64>
                %29 = arith.mulf %5, %28 : f64
                %30 = arith.addf %27, %29 : f64
                affine.store %30, %arg11[%arg14, %26 - 19] : memref<?x22xf64>
              }
              %6 = affine.load %arg11[%arg14, %c31 - 19] : memref<?x22xf64>
              %7 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %8 = affine.load %arg8[%arg15, %c31 - 19] : memref<?x22xf64>
              %9 = arith.mulf %7, %8 : f64
              %10 = arith.addf %6, %9 : f64
              affine.store %10, %arg11[%arg14, %c31 - 19] : memref<?x22xf64>
            }
          }
        }
        affine.if #set1(%1) {
          affine.for %arg14 = 0 to 16 {
            affine.for %arg15 = 0 to 18 {
              %2 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %3 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %4 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %5 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              affine.for %arg16 = 0 to 2 {
                %11 = affine.apply #map10(%arg16)
                %12 = affine.load %arg11[%arg14, %11 - 19] : memref<?x22xf64>
                %13 = affine.load %arg8[%arg15, %11 - 19] : memref<?x22xf64>
                %14 = arith.mulf %2, %13 : f64
                %15 = arith.addf %12, %14 : f64
                affine.store %15, %arg11[%arg14, %11 - 19] : memref<?x22xf64>
                %16 = affine.apply #map3(%11)
                %17 = affine.load %arg11[%arg14, %16 - 19] : memref<?x22xf64>
                %18 = affine.load %arg8[%arg15, %16 - 19] : memref<?x22xf64>
                %19 = arith.mulf %3, %18 : f64
                %20 = arith.addf %17, %19 : f64
                affine.store %20, %arg11[%arg14, %16 - 19] : memref<?x22xf64>
                %21 = affine.apply #map4(%11)
                %22 = affine.load %arg11[%arg14, %21 - 19] : memref<?x22xf64>
                %23 = affine.load %arg8[%arg15, %21 - 19] : memref<?x22xf64>
                %24 = arith.mulf %4, %23 : f64
                %25 = arith.addf %22, %24 : f64
                affine.store %25, %arg11[%arg14, %21 - 19] : memref<?x22xf64>
                %26 = affine.apply #map5(%11)
                %27 = affine.load %arg11[%arg14, %26 - 19] : memref<?x22xf64>
                %28 = affine.load %arg8[%arg15, %26 - 19] : memref<?x22xf64>
                %29 = arith.mulf %5, %28 : f64
                %30 = arith.addf %27, %29 : f64
                affine.store %30, %arg11[%arg14, %26 - 19] : memref<?x22xf64>
              }
              %6 = affine.load %arg11[%arg14, %c40 - 19] : memref<?x22xf64>
              %7 = affine.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %8 = affine.load %arg8[%arg15, %c40 - 19] : memref<?x22xf64>
              %9 = arith.mulf %7, %8 : f64
              %10 = arith.addf %6, %9 : f64
              affine.store %10, %arg11[%arg14, %c40 - 19] : memref<?x22xf64>
            }
          }
        }
      }
    }
    return
  }
}

