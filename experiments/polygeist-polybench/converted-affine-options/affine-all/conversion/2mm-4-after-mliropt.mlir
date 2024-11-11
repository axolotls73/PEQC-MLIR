#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0 + 2)>
#map2 = affine_map<(d0) -> (d0 + 3)>
#map3 = affine_map<(d0, d1) -> (d0 + d1)>
#map4 = affine_map<(d0) -> (d0 * 4)>
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
      %0 = affine.apply #map(%c18)
      %1 = affine.apply #map1(%c18)
      %2 = affine.apply #map2(%c18)
      affine.for %arg12 = 0 to 1 {
        %3 = affine.apply #map3(%arg11, %arg12)
        affine.for %arg13 = 0 to 4 {
          %12 = affine.apply #map4(%arg13)
          %13 = affine.load %arg10[%3, %12] : memref<?x24xf64>
          %14 = arith.mulf %13, %arg5 : f64
          affine.store %14, %arg10[%3, %12] : memref<?x24xf64>
          affine.store %cst, %arg6[%3, %12] : memref<?x18xf64>
          %15 = affine.apply #map(%12)
          %16 = affine.load %arg10[%3, %15] : memref<?x24xf64>
          %17 = arith.mulf %16, %arg5 : f64
          affine.store %17, %arg10[%3, %15] : memref<?x24xf64>
          affine.store %cst, %arg6[%3, %15] : memref<?x18xf64>
          %18 = affine.apply #map1(%12)
          %19 = affine.load %arg10[%3, %18] : memref<?x24xf64>
          %20 = arith.mulf %19, %arg5 : f64
          affine.store %20, %arg10[%3, %18] : memref<?x24xf64>
          affine.store %cst, %arg6[%3, %18] : memref<?x18xf64>
          %21 = affine.apply #map2(%12)
          %22 = affine.load %arg10[%3, %21] : memref<?x24xf64>
          %23 = arith.mulf %22, %arg5 : f64
          affine.store %23, %arg10[%3, %21] : memref<?x24xf64>
          affine.store %cst, %arg6[%3, %21] : memref<?x18xf64>
        }
        affine.for %arg13 = 0 to 2 {
          %12 = affine.apply #map5(%arg13)
          %13 = affine.load %arg10[%3, %12] : memref<?x24xf64>
          %14 = arith.mulf %13, %arg5 : f64
          affine.store %14, %arg10[%3, %12] : memref<?x24xf64>
          affine.store %cst, %arg6[%3, %12] : memref<?x18xf64>
        }
        %4 = affine.load %arg10[%3, %c18] : memref<?x24xf64>
        %5 = arith.mulf %4, %arg5 : f64
        affine.store %5, %arg10[%3, %c18] : memref<?x24xf64>
        %6 = affine.load %arg10[%3, %0] : memref<?x24xf64>
        %7 = arith.mulf %6, %arg5 : f64
        affine.store %7, %arg10[%3, %0] : memref<?x24xf64>
        %8 = affine.load %arg10[%3, %1] : memref<?x24xf64>
        %9 = arith.mulf %8, %arg5 : f64
        affine.store %9, %arg10[%3, %1] : memref<?x24xf64>
        %10 = affine.load %arg10[%3, %2] : memref<?x24xf64>
        %11 = arith.mulf %10, %arg5 : f64
        affine.store %11, %arg10[%3, %2] : memref<?x24xf64>
        affine.for %arg13 = 0 to 2 {
          %12 = affine.apply #map6(%arg13)
          %13 = affine.load %arg10[%3, %12] : memref<?x24xf64>
          %14 = arith.mulf %13, %arg5 : f64
          affine.store %14, %arg10[%3, %12] : memref<?x24xf64>
        }
      }
    }
    affine.for %arg11 = 0 to 2 {
      affine.parallel (%arg12) = (0) to (1) {
        %0 = affine.apply #map3(%arg11, %arg12)
        affine.if #set(%0) {
          affine.for %arg13 = 0 to 16 {
            affine.for %arg14 = 0 to 18 {
              affine.for %arg15 = 0 to 5 {
                %6 = affine.apply #map4(%arg15)
                %7 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %8 = affine.load %arg7[%arg13, %6] : memref<?x22xf64>
                %9 = arith.mulf %arg4, %8 : f64
                %10 = affine.load %arg8[%6, %arg14] : memref<?x18xf64>
                %11 = arith.mulf %9, %10 : f64
                %12 = arith.addf %7, %11 : f64
                affine.store %12, %arg6[%arg13, %arg14] : memref<?x18xf64>
                %13 = affine.apply #map(%6)
                %14 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %15 = affine.load %arg7[%arg13, %13] : memref<?x22xf64>
                %16 = arith.mulf %arg4, %15 : f64
                %17 = affine.load %arg8[%13, %arg14] : memref<?x18xf64>
                %18 = arith.mulf %16, %17 : f64
                %19 = arith.addf %14, %18 : f64
                affine.store %19, %arg6[%arg13, %arg14] : memref<?x18xf64>
                %20 = affine.apply #map1(%6)
                %21 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %22 = affine.load %arg7[%arg13, %20] : memref<?x22xf64>
                %23 = arith.mulf %arg4, %22 : f64
                %24 = affine.load %arg8[%20, %arg14] : memref<?x18xf64>
                %25 = arith.mulf %23, %24 : f64
                %26 = arith.addf %21, %25 : f64
                affine.store %26, %arg6[%arg13, %arg14] : memref<?x18xf64>
                %27 = affine.apply #map2(%6)
                %28 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %29 = affine.load %arg7[%arg13, %27] : memref<?x22xf64>
                %30 = arith.mulf %arg4, %29 : f64
                %31 = affine.load %arg8[%27, %arg14] : memref<?x18xf64>
                %32 = arith.mulf %30, %31 : f64
                %33 = arith.addf %28, %32 : f64
                affine.store %33, %arg6[%arg13, %arg14] : memref<?x18xf64>
              }
              affine.for %arg15 = 0 to 2 {
                %6 = affine.apply #map7(%arg15)
                %7 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %8 = affine.load %arg7[%arg13, %6] : memref<?x22xf64>
                %9 = arith.mulf %arg4, %8 : f64
                %10 = affine.load %arg8[%6, %arg14] : memref<?x18xf64>
                %11 = arith.mulf %9, %10 : f64
                %12 = arith.addf %7, %11 : f64
                affine.store %12, %arg6[%arg13, %arg14] : memref<?x18xf64>
              }
              %1 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %2 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %3 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %4 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              affine.for %arg15 = 0 to 2 {
                %6 = affine.apply #map8(%arg15)
                %7 = affine.load %arg10[%arg13, %6 - 21] : memref<?x24xf64>
                %8 = affine.load %arg9[%arg14, %6 - 21] : memref<?x24xf64>
                %9 = arith.mulf %1, %8 : f64
                %10 = arith.addf %7, %9 : f64
                affine.store %10, %arg10[%arg13, %6 - 21] : memref<?x24xf64>
                %11 = affine.apply #map(%6)
                %12 = affine.load %arg10[%arg13, %11 - 21] : memref<?x24xf64>
                %13 = affine.load %arg9[%arg14, %11 - 21] : memref<?x24xf64>
                %14 = arith.mulf %2, %13 : f64
                %15 = arith.addf %12, %14 : f64
                affine.store %15, %arg10[%arg13, %11 - 21] : memref<?x24xf64>
                %16 = affine.apply #map1(%6)
                %17 = affine.load %arg10[%arg13, %16 - 21] : memref<?x24xf64>
                %18 = affine.load %arg9[%arg14, %16 - 21] : memref<?x24xf64>
                %19 = arith.mulf %3, %18 : f64
                %20 = arith.addf %17, %19 : f64
                affine.store %20, %arg10[%arg13, %16 - 21] : memref<?x24xf64>
                %21 = affine.apply #map2(%6)
                %22 = affine.load %arg10[%arg13, %21 - 21] : memref<?x24xf64>
                %23 = affine.load %arg9[%arg14, %21 - 21] : memref<?x24xf64>
                %24 = arith.mulf %4, %23 : f64
                %25 = arith.addf %22, %24 : f64
                affine.store %25, %arg10[%arg13, %21 - 21] : memref<?x24xf64>
              }
              %5 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              affine.for %arg15 = 0 to 3 {
                %6 = affine.apply #map9(%arg15)
                %7 = affine.load %arg10[%arg13, %6 - 21] : memref<?x24xf64>
                %8 = affine.load %arg9[%arg14, %6 - 21] : memref<?x24xf64>
                %9 = arith.mulf %5, %8 : f64
                %10 = arith.addf %7, %9 : f64
                affine.store %10, %arg10[%arg13, %6 - 21] : memref<?x24xf64>
              }
            }
          }
        }
        affine.if #set1(%0) {
          affine.for %arg13 = 0 to 16 {
            affine.for %arg14 = 0 to 18 {
              %1 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %2 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %3 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %4 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              affine.for %arg15 = 0 to 3 {
                %10 = affine.apply #map10(%arg15)
                %11 = affine.load %arg10[%arg13, %10 - 21] : memref<?x24xf64>
                %12 = affine.load %arg9[%arg14, %10 - 21] : memref<?x24xf64>
                %13 = arith.mulf %1, %12 : f64
                %14 = arith.addf %11, %13 : f64
                affine.store %14, %arg10[%arg13, %10 - 21] : memref<?x24xf64>
                %15 = affine.apply #map(%10)
                %16 = affine.load %arg10[%arg13, %15 - 21] : memref<?x24xf64>
                %17 = affine.load %arg9[%arg14, %15 - 21] : memref<?x24xf64>
                %18 = arith.mulf %2, %17 : f64
                %19 = arith.addf %16, %18 : f64
                affine.store %19, %arg10[%arg13, %15 - 21] : memref<?x24xf64>
                %20 = affine.apply #map1(%10)
                %21 = affine.load %arg10[%arg13, %20 - 21] : memref<?x24xf64>
                %22 = affine.load %arg9[%arg14, %20 - 21] : memref<?x24xf64>
                %23 = arith.mulf %3, %22 : f64
                %24 = arith.addf %21, %23 : f64
                affine.store %24, %arg10[%arg13, %20 - 21] : memref<?x24xf64>
                %25 = affine.apply #map2(%10)
                %26 = affine.load %arg10[%arg13, %25 - 21] : memref<?x24xf64>
                %27 = affine.load %arg9[%arg14, %25 - 21] : memref<?x24xf64>
                %28 = arith.mulf %4, %27 : f64
                %29 = arith.addf %26, %28 : f64
                affine.store %29, %arg10[%arg13, %25 - 21] : memref<?x24xf64>
              }
              %5 = affine.load %arg10[%arg13, %c44 - 21] : memref<?x24xf64>
              %6 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %7 = affine.load %arg9[%arg14, %c44 - 21] : memref<?x24xf64>
              %8 = arith.mulf %6, %7 : f64
              %9 = arith.addf %5, %8 : f64
              affine.store %9, %arg10[%arg13, %c44 - 21] : memref<?x24xf64>
            }
          }
        }
      }
    }
    return
  }
}

