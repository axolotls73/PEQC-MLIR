#map = affine_map<(d0, d1) -> (d0 + d1)>
#map1 = affine_map<(d0) -> (d0 * 4)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0) -> (d0 + 2)>
#map4 = affine_map<(d0) -> (d0 + 3)>
#map5 = affine_map<(d0) -> (d0 + 16)>
#map6 = affine_map<(d0) -> (d0 + 22)>
#map7 = affine_map<(d0) -> (d0 + 20)>
#map8 = affine_map<(d0) -> (d0 * 4 + 21)>
#map9 = affine_map<(d0) -> (d0 + 29)>
#map10 = affine_map<(d0) -> (d0 * 4 + 32)>
#set = affine_set<(d0) : (d0 == 0)>
#set1 = affine_set<(d0) : (d0 - 1 == 0)>
module {
  func.func @kernel_2mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: f64, %arg5: f64, %arg6: memref<?x18xf64>, %arg7: memref<?x22xf64>, %arg8: memref<?x18xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x24xf64>) {
    %c44 = arith.constant 44 : index
    %c18 = arith.constant 18 : index
    %cst = arith.constant 0.000000e+00 : f64
    affine.parallel (%arg11) = (0) to (16) {
      affine.parallel (%arg12) = (0) to (1) {
        %0 = affine.apply #map(%arg11, %arg12)
        affine.parallel (%arg13) = (0) to (4) {
          %12 = affine.apply #map1(%arg13)
          %13 = affine.load %arg10[%0, %12] : memref<?x24xf64>
          %14 = arith.mulf %13, %arg5 : f64
          affine.store %14, %arg10[%0, %12] : memref<?x24xf64>
          affine.store %cst, %arg6[%0, %12] : memref<?x18xf64>
          %15 = affine.apply #map2(%12)
          %16 = affine.load %arg10[%0, %15] : memref<?x24xf64>
          %17 = arith.mulf %16, %arg5 : f64
          affine.store %17, %arg10[%0, %15] : memref<?x24xf64>
          affine.store %cst, %arg6[%0, %15] : memref<?x18xf64>
          %18 = affine.apply #map3(%12)
          %19 = affine.load %arg10[%0, %18] : memref<?x24xf64>
          %20 = arith.mulf %19, %arg5 : f64
          affine.store %20, %arg10[%0, %18] : memref<?x24xf64>
          affine.store %cst, %arg6[%0, %18] : memref<?x18xf64>
          %21 = affine.apply #map4(%12)
          %22 = affine.load %arg10[%0, %21] : memref<?x24xf64>
          %23 = arith.mulf %22, %arg5 : f64
          affine.store %23, %arg10[%0, %21] : memref<?x24xf64>
          affine.store %cst, %arg6[%0, %21] : memref<?x18xf64>
        }
        affine.parallel (%arg13) = (0) to (2) {
          %12 = affine.apply #map5(%arg13)
          %13 = affine.load %arg10[%0, %12] : memref<?x24xf64>
          %14 = arith.mulf %13, %arg5 : f64
          affine.store %14, %arg10[%0, %12] : memref<?x24xf64>
          affine.store %cst, %arg6[%0, %12] : memref<?x18xf64>
        }
        %1 = affine.load %arg10[%0, %c18] : memref<?x24xf64>
        %2 = arith.mulf %1, %arg5 : f64
        affine.store %2, %arg10[%0, %c18] : memref<?x24xf64>
        %3 = affine.apply #map2(%c18)
        %4 = affine.load %arg10[%0, %3] : memref<?x24xf64>
        %5 = arith.mulf %4, %arg5 : f64
        affine.store %5, %arg10[%0, %3] : memref<?x24xf64>
        %6 = affine.apply #map3(%c18)
        %7 = affine.load %arg10[%0, %6] : memref<?x24xf64>
        %8 = arith.mulf %7, %arg5 : f64
        affine.store %8, %arg10[%0, %6] : memref<?x24xf64>
        %9 = affine.apply #map4(%c18)
        %10 = affine.load %arg10[%0, %9] : memref<?x24xf64>
        %11 = arith.mulf %10, %arg5 : f64
        affine.store %11, %arg10[%0, %9] : memref<?x24xf64>
        affine.parallel (%arg13) = (0) to (2) {
          %12 = affine.apply #map6(%arg13)
          %13 = affine.load %arg10[%0, %12] : memref<?x24xf64>
          %14 = arith.mulf %13, %arg5 : f64
          affine.store %14, %arg10[%0, %12] : memref<?x24xf64>
        }
      }
    }
    affine.for %arg11 = 0 to 2 {
      affine.parallel (%arg12) = (0) to (1) {
        %0 = affine.apply #map(%arg11, %arg12)
        affine.if #set(%0) {
          affine.parallel (%arg13) = (0) to (16) {
            affine.for %arg14 = 0 to 18 {
              affine.for %arg15 = 0 to 5 {
                %1 = affine.apply #map1(%arg15)
                %2 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %3 = affine.load %arg7[%arg13, %1] : memref<?x22xf64>
                %4 = arith.mulf %arg4, %3 : f64
                %5 = affine.load %arg8[%1, %arg14] : memref<?x18xf64>
                %6 = arith.mulf %4, %5 : f64
                %7 = arith.addf %2, %6 : f64
                affine.store %7, %arg6[%arg13, %arg14] : memref<?x18xf64>
                %8 = affine.apply #map2(%1)
                %9 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %10 = affine.load %arg7[%arg13, %8] : memref<?x22xf64>
                %11 = arith.mulf %arg4, %10 : f64
                %12 = affine.load %arg8[%8, %arg14] : memref<?x18xf64>
                %13 = arith.mulf %11, %12 : f64
                %14 = arith.addf %9, %13 : f64
                affine.store %14, %arg6[%arg13, %arg14] : memref<?x18xf64>
                %15 = affine.apply #map3(%1)
                %16 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %17 = affine.load %arg7[%arg13, %15] : memref<?x22xf64>
                %18 = arith.mulf %arg4, %17 : f64
                %19 = affine.load %arg8[%15, %arg14] : memref<?x18xf64>
                %20 = arith.mulf %18, %19 : f64
                %21 = arith.addf %16, %20 : f64
                affine.store %21, %arg6[%arg13, %arg14] : memref<?x18xf64>
                %22 = affine.apply #map4(%1)
                %23 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %24 = affine.load %arg7[%arg13, %22] : memref<?x22xf64>
                %25 = arith.mulf %arg4, %24 : f64
                %26 = affine.load %arg8[%22, %arg14] : memref<?x18xf64>
                %27 = arith.mulf %25, %26 : f64
                %28 = arith.addf %23, %27 : f64
                affine.store %28, %arg6[%arg13, %arg14] : memref<?x18xf64>
              }
              affine.for %arg15 = 0 to 2 {
                %1 = affine.apply #map7(%arg15)
                %2 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %3 = affine.load %arg7[%arg13, %1] : memref<?x22xf64>
                %4 = arith.mulf %arg4, %3 : f64
                %5 = affine.load %arg8[%1, %arg14] : memref<?x18xf64>
                %6 = arith.mulf %4, %5 : f64
                %7 = arith.addf %2, %6 : f64
                affine.store %7, %arg6[%arg13, %arg14] : memref<?x18xf64>
              }
              affine.parallel (%arg15) = (0) to (2) {
                %1 = affine.apply #map8(%arg15)
                %2 = affine.load %arg10[%arg13, %1 - 21] : memref<?x24xf64>
                %3 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %4 = affine.load %arg9[%arg14, %1 - 21] : memref<?x24xf64>
                %5 = arith.mulf %3, %4 : f64
                %6 = arith.addf %2, %5 : f64
                affine.store %6, %arg10[%arg13, %1 - 21] : memref<?x24xf64>
                %7 = affine.apply #map2(%1)
                %8 = affine.load %arg10[%arg13, %7 - 21] : memref<?x24xf64>
                %9 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %10 = affine.load %arg9[%arg14, %7 - 21] : memref<?x24xf64>
                %11 = arith.mulf %9, %10 : f64
                %12 = arith.addf %8, %11 : f64
                affine.store %12, %arg10[%arg13, %7 - 21] : memref<?x24xf64>
                %13 = affine.apply #map3(%1)
                %14 = affine.load %arg10[%arg13, %13 - 21] : memref<?x24xf64>
                %15 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %16 = affine.load %arg9[%arg14, %13 - 21] : memref<?x24xf64>
                %17 = arith.mulf %15, %16 : f64
                %18 = arith.addf %14, %17 : f64
                affine.store %18, %arg10[%arg13, %13 - 21] : memref<?x24xf64>
                %19 = affine.apply #map4(%1)
                %20 = affine.load %arg10[%arg13, %19 - 21] : memref<?x24xf64>
                %21 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %22 = affine.load %arg9[%arg14, %19 - 21] : memref<?x24xf64>
                %23 = arith.mulf %21, %22 : f64
                %24 = arith.addf %20, %23 : f64
                affine.store %24, %arg10[%arg13, %19 - 21] : memref<?x24xf64>
              }
              affine.parallel (%arg15) = (0) to (3) {
                %1 = affine.apply #map9(%arg15)
                %2 = affine.load %arg10[%arg13, %1 - 21] : memref<?x24xf64>
                %3 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %4 = affine.load %arg9[%arg14, %1 - 21] : memref<?x24xf64>
                %5 = arith.mulf %3, %4 : f64
                %6 = arith.addf %2, %5 : f64
                affine.store %6, %arg10[%arg13, %1 - 21] : memref<?x24xf64>
              }
            }
          }
        }
        affine.if #set1(%0) {
          affine.parallel (%arg13) = (0) to (16) {
            affine.for %arg14 = 0 to 18 {
              affine.parallel (%arg15) = (0) to (3) {
                %6 = affine.apply #map10(%arg15)
                %7 = affine.load %arg10[%arg13, %6 - 21] : memref<?x24xf64>
                %8 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %9 = affine.load %arg9[%arg14, %6 - 21] : memref<?x24xf64>
                %10 = arith.mulf %8, %9 : f64
                %11 = arith.addf %7, %10 : f64
                affine.store %11, %arg10[%arg13, %6 - 21] : memref<?x24xf64>
                %12 = affine.apply #map2(%6)
                %13 = affine.load %arg10[%arg13, %12 - 21] : memref<?x24xf64>
                %14 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %15 = affine.load %arg9[%arg14, %12 - 21] : memref<?x24xf64>
                %16 = arith.mulf %14, %15 : f64
                %17 = arith.addf %13, %16 : f64
                affine.store %17, %arg10[%arg13, %12 - 21] : memref<?x24xf64>
                %18 = affine.apply #map3(%6)
                %19 = affine.load %arg10[%arg13, %18 - 21] : memref<?x24xf64>
                %20 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %21 = affine.load %arg9[%arg14, %18 - 21] : memref<?x24xf64>
                %22 = arith.mulf %20, %21 : f64
                %23 = arith.addf %19, %22 : f64
                affine.store %23, %arg10[%arg13, %18 - 21] : memref<?x24xf64>
                %24 = affine.apply #map4(%6)
                %25 = affine.load %arg10[%arg13, %24 - 21] : memref<?x24xf64>
                %26 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %27 = affine.load %arg9[%arg14, %24 - 21] : memref<?x24xf64>
                %28 = arith.mulf %26, %27 : f64
                %29 = arith.addf %25, %28 : f64
                affine.store %29, %arg10[%arg13, %24 - 21] : memref<?x24xf64>
              }
              %1 = affine.load %arg10[%arg13, %c44 - 21] : memref<?x24xf64>
              %2 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %3 = affine.load %arg9[%arg14, %c44 - 21] : memref<?x24xf64>
              %4 = arith.mulf %2, %3 : f64
              %5 = arith.addf %1, %4 : f64
              affine.store %5, %arg10[%arg13, %c44 - 21] : memref<?x24xf64>
            }
          }
        }
      }
    }
    return
  }
}

