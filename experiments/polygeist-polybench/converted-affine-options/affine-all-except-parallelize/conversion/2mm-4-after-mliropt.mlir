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
    %0 = affine.apply #map(%c18)
    %1 = affine.apply #map1(%c18)
    %2 = affine.apply #map2(%c18)
    affine.for %arg11 = 0 to 16 {
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
      affine.for %arg12 = 0 to 1 {
        %3 = affine.apply #map3(%arg11, %arg12)
        affine.if #set(%3) {
          affine.for %arg13 = 0 to 16 {
            affine.for %arg14 = 0 to 18 {
              affine.for %arg15 = 0 to 5 {
                %9 = affine.apply #map4(%arg15)
                %10 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %11 = affine.load %arg7[%arg13, %9] : memref<?x22xf64>
                %12 = arith.mulf %arg4, %11 : f64
                %13 = affine.load %arg8[%9, %arg14] : memref<?x18xf64>
                %14 = arith.mulf %12, %13 : f64
                %15 = arith.addf %10, %14 : f64
                affine.store %15, %arg6[%arg13, %arg14] : memref<?x18xf64>
                %16 = affine.apply #map(%9)
                %17 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %18 = affine.load %arg7[%arg13, %16] : memref<?x22xf64>
                %19 = arith.mulf %arg4, %18 : f64
                %20 = affine.load %arg8[%16, %arg14] : memref<?x18xf64>
                %21 = arith.mulf %19, %20 : f64
                %22 = arith.addf %17, %21 : f64
                affine.store %22, %arg6[%arg13, %arg14] : memref<?x18xf64>
                %23 = affine.apply #map1(%9)
                %24 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %25 = affine.load %arg7[%arg13, %23] : memref<?x22xf64>
                %26 = arith.mulf %arg4, %25 : f64
                %27 = affine.load %arg8[%23, %arg14] : memref<?x18xf64>
                %28 = arith.mulf %26, %27 : f64
                %29 = arith.addf %24, %28 : f64
                affine.store %29, %arg6[%arg13, %arg14] : memref<?x18xf64>
                %30 = affine.apply #map2(%9)
                %31 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %32 = affine.load %arg7[%arg13, %30] : memref<?x22xf64>
                %33 = arith.mulf %arg4, %32 : f64
                %34 = affine.load %arg8[%30, %arg14] : memref<?x18xf64>
                %35 = arith.mulf %33, %34 : f64
                %36 = arith.addf %31, %35 : f64
                affine.store %36, %arg6[%arg13, %arg14] : memref<?x18xf64>
              }
              affine.for %arg15 = 0 to 2 {
                %9 = affine.apply #map7(%arg15)
                %10 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %11 = affine.load %arg7[%arg13, %9] : memref<?x22xf64>
                %12 = arith.mulf %arg4, %11 : f64
                %13 = affine.load %arg8[%9, %arg14] : memref<?x18xf64>
                %14 = arith.mulf %12, %13 : f64
                %15 = arith.addf %10, %14 : f64
                affine.store %15, %arg6[%arg13, %arg14] : memref<?x18xf64>
              }
              %4 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %5 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %6 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %7 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              affine.for %arg15 = 0 to 2 {
                %9 = affine.apply #map8(%arg15)
                %10 = affine.load %arg10[%arg13, %9 - 21] : memref<?x24xf64>
                %11 = affine.load %arg9[%arg14, %9 - 21] : memref<?x24xf64>
                %12 = arith.mulf %4, %11 : f64
                %13 = arith.addf %10, %12 : f64
                affine.store %13, %arg10[%arg13, %9 - 21] : memref<?x24xf64>
                %14 = affine.apply #map(%9)
                %15 = affine.load %arg10[%arg13, %14 - 21] : memref<?x24xf64>
                %16 = affine.load %arg9[%arg14, %14 - 21] : memref<?x24xf64>
                %17 = arith.mulf %5, %16 : f64
                %18 = arith.addf %15, %17 : f64
                affine.store %18, %arg10[%arg13, %14 - 21] : memref<?x24xf64>
                %19 = affine.apply #map1(%9)
                %20 = affine.load %arg10[%arg13, %19 - 21] : memref<?x24xf64>
                %21 = affine.load %arg9[%arg14, %19 - 21] : memref<?x24xf64>
                %22 = arith.mulf %6, %21 : f64
                %23 = arith.addf %20, %22 : f64
                affine.store %23, %arg10[%arg13, %19 - 21] : memref<?x24xf64>
                %24 = affine.apply #map2(%9)
                %25 = affine.load %arg10[%arg13, %24 - 21] : memref<?x24xf64>
                %26 = affine.load %arg9[%arg14, %24 - 21] : memref<?x24xf64>
                %27 = arith.mulf %7, %26 : f64
                %28 = arith.addf %25, %27 : f64
                affine.store %28, %arg10[%arg13, %24 - 21] : memref<?x24xf64>
              }
              %8 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              affine.for %arg15 = 0 to 3 {
                %9 = affine.apply #map9(%arg15)
                %10 = affine.load %arg10[%arg13, %9 - 21] : memref<?x24xf64>
                %11 = affine.load %arg9[%arg14, %9 - 21] : memref<?x24xf64>
                %12 = arith.mulf %8, %11 : f64
                %13 = arith.addf %10, %12 : f64
                affine.store %13, %arg10[%arg13, %9 - 21] : memref<?x24xf64>
              }
            }
          }
        }
        affine.if #set1(%3) {
          affine.for %arg13 = 0 to 16 {
            affine.for %arg14 = 0 to 18 {
              %4 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %5 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %6 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %7 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              affine.for %arg15 = 0 to 3 {
                %13 = affine.apply #map10(%arg15)
                %14 = affine.load %arg10[%arg13, %13 - 21] : memref<?x24xf64>
                %15 = affine.load %arg9[%arg14, %13 - 21] : memref<?x24xf64>
                %16 = arith.mulf %4, %15 : f64
                %17 = arith.addf %14, %16 : f64
                affine.store %17, %arg10[%arg13, %13 - 21] : memref<?x24xf64>
                %18 = affine.apply #map(%13)
                %19 = affine.load %arg10[%arg13, %18 - 21] : memref<?x24xf64>
                %20 = affine.load %arg9[%arg14, %18 - 21] : memref<?x24xf64>
                %21 = arith.mulf %5, %20 : f64
                %22 = arith.addf %19, %21 : f64
                affine.store %22, %arg10[%arg13, %18 - 21] : memref<?x24xf64>
                %23 = affine.apply #map1(%13)
                %24 = affine.load %arg10[%arg13, %23 - 21] : memref<?x24xf64>
                %25 = affine.load %arg9[%arg14, %23 - 21] : memref<?x24xf64>
                %26 = arith.mulf %6, %25 : f64
                %27 = arith.addf %24, %26 : f64
                affine.store %27, %arg10[%arg13, %23 - 21] : memref<?x24xf64>
                %28 = affine.apply #map2(%13)
                %29 = affine.load %arg10[%arg13, %28 - 21] : memref<?x24xf64>
                %30 = affine.load %arg9[%arg14, %28 - 21] : memref<?x24xf64>
                %31 = arith.mulf %7, %30 : f64
                %32 = arith.addf %29, %31 : f64
                affine.store %32, %arg10[%arg13, %28 - 21] : memref<?x24xf64>
              }
              %8 = affine.load %arg10[%arg13, %c44 - 21] : memref<?x24xf64>
              %9 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %10 = affine.load %arg9[%arg14, %c44 - 21] : memref<?x24xf64>
              %11 = arith.mulf %9, %10 : f64
              %12 = arith.addf %8, %11 : f64
              affine.store %12, %arg10[%arg13, %c44 - 21] : memref<?x24xf64>
            }
          }
        }
      }
    }
    return
  }
}

