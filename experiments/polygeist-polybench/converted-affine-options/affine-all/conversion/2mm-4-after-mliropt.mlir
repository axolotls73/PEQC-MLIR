#map = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0) -> (d0 + 1)>
#map2 = affine_map<(d0) -> (d0 + 2)>
#map3 = affine_map<(d0) -> (d0 + 3)>
#map4 = affine_map<(d0, d1) -> (d0 + d1)>
#map5 = affine_map<(d0) -> (d0 * 4)>
#map6 = affine_map<(d0) -> (d0 + 16)>
#map7 = affine_map<(d0) -> (d0 + 22)>
#map8 = affine_map<(d0) -> (d0 + 20)>
#map9 = affine_map<(d0) -> (d0 * 4 + 21)>
#map10 = affine_map<(d0) -> (d0 + 29)>
#map11 = affine_map<(d0) -> (d0 * 4 + 32)>
#set = affine_set<(d0) : (d0 == 0)>
#set1 = affine_set<(d0) : (d0 - 1 == 0)>
module {
  func.func @kernel_2mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: f64, %arg5: f64, %arg6: memref<?x18xf64>, %arg7: memref<?x22xf64>, %arg8: memref<?x18xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x24xf64>) {
    %c44 = arith.constant 44 : index
    %c18 = arith.constant 18 : index
    %cst = arith.constant 0.000000e+00 : f64
    affine.parallel (%arg11) = (0) to (1) {
      %0 = affine.apply #map(%arg11)
      %1 = affine.apply #map1(%c18)
      %2 = affine.apply #map2(%c18)
      %3 = affine.apply #map3(%c18)
      affine.for %arg12 = 0 to 16 {
        %4 = affine.apply #map4(%0, %arg12)
        affine.for %arg13 = 0 to 4 {
          %13 = affine.apply #map5(%arg13)
          %14 = affine.load %arg10[%4, %13] : memref<?x24xf64>
          %15 = arith.mulf %14, %arg5 : f64
          affine.store %15, %arg10[%4, %13] : memref<?x24xf64>
          affine.store %cst, %arg6[%4, %13] : memref<?x18xf64>
          %16 = affine.apply #map1(%13)
          %17 = affine.load %arg10[%4, %16] : memref<?x24xf64>
          %18 = arith.mulf %17, %arg5 : f64
          affine.store %18, %arg10[%4, %16] : memref<?x24xf64>
          affine.store %cst, %arg6[%4, %16] : memref<?x18xf64>
          %19 = affine.apply #map2(%13)
          %20 = affine.load %arg10[%4, %19] : memref<?x24xf64>
          %21 = arith.mulf %20, %arg5 : f64
          affine.store %21, %arg10[%4, %19] : memref<?x24xf64>
          affine.store %cst, %arg6[%4, %19] : memref<?x18xf64>
          %22 = affine.apply #map3(%13)
          %23 = affine.load %arg10[%4, %22] : memref<?x24xf64>
          %24 = arith.mulf %23, %arg5 : f64
          affine.store %24, %arg10[%4, %22] : memref<?x24xf64>
          affine.store %cst, %arg6[%4, %22] : memref<?x18xf64>
        }
        affine.for %arg13 = 0 to 2 {
          %13 = affine.apply #map6(%arg13)
          %14 = affine.load %arg10[%4, %13] : memref<?x24xf64>
          %15 = arith.mulf %14, %arg5 : f64
          affine.store %15, %arg10[%4, %13] : memref<?x24xf64>
          affine.store %cst, %arg6[%4, %13] : memref<?x18xf64>
        }
        %5 = affine.load %arg10[%4, %c18] : memref<?x24xf64>
        %6 = arith.mulf %5, %arg5 : f64
        affine.store %6, %arg10[%4, %c18] : memref<?x24xf64>
        %7 = affine.load %arg10[%4, %1] : memref<?x24xf64>
        %8 = arith.mulf %7, %arg5 : f64
        affine.store %8, %arg10[%4, %1] : memref<?x24xf64>
        %9 = affine.load %arg10[%4, %2] : memref<?x24xf64>
        %10 = arith.mulf %9, %arg5 : f64
        affine.store %10, %arg10[%4, %2] : memref<?x24xf64>
        %11 = affine.load %arg10[%4, %3] : memref<?x24xf64>
        %12 = arith.mulf %11, %arg5 : f64
        affine.store %12, %arg10[%4, %3] : memref<?x24xf64>
        affine.for %arg13 = 0 to 2 {
          %13 = affine.apply #map7(%arg13)
          %14 = affine.load %arg10[%4, %13] : memref<?x24xf64>
          %15 = arith.mulf %14, %arg5 : f64
          affine.store %15, %arg10[%4, %13] : memref<?x24xf64>
        }
      }
    }
    affine.parallel (%arg11) = (0) to (1) {
      %0 = affine.apply #map(%arg11)
      affine.for %arg12 = 0 to 2 {
        %1 = affine.apply #map4(%0, %arg12)
        affine.if #set(%1) {
          affine.for %arg13 = 0 to 16 {
            affine.for %arg14 = 0 to 18 {
              affine.for %arg15 = 0 to 5 {
                %7 = affine.apply #map5(%arg15)
                %8 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %9 = affine.load %arg7[%arg13, %7] : memref<?x22xf64>
                %10 = arith.mulf %arg4, %9 : f64
                %11 = affine.load %arg8[%7, %arg14] : memref<?x18xf64>
                %12 = arith.mulf %10, %11 : f64
                %13 = arith.addf %8, %12 : f64
                affine.store %13, %arg6[%arg13, %arg14] : memref<?x18xf64>
                %14 = affine.apply #map1(%7)
                %15 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %16 = affine.load %arg7[%arg13, %14] : memref<?x22xf64>
                %17 = arith.mulf %arg4, %16 : f64
                %18 = affine.load %arg8[%14, %arg14] : memref<?x18xf64>
                %19 = arith.mulf %17, %18 : f64
                %20 = arith.addf %15, %19 : f64
                affine.store %20, %arg6[%arg13, %arg14] : memref<?x18xf64>
                %21 = affine.apply #map2(%7)
                %22 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %23 = affine.load %arg7[%arg13, %21] : memref<?x22xf64>
                %24 = arith.mulf %arg4, %23 : f64
                %25 = affine.load %arg8[%21, %arg14] : memref<?x18xf64>
                %26 = arith.mulf %24, %25 : f64
                %27 = arith.addf %22, %26 : f64
                affine.store %27, %arg6[%arg13, %arg14] : memref<?x18xf64>
                %28 = affine.apply #map3(%7)
                %29 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %30 = affine.load %arg7[%arg13, %28] : memref<?x22xf64>
                %31 = arith.mulf %arg4, %30 : f64
                %32 = affine.load %arg8[%28, %arg14] : memref<?x18xf64>
                %33 = arith.mulf %31, %32 : f64
                %34 = arith.addf %29, %33 : f64
                affine.store %34, %arg6[%arg13, %arg14] : memref<?x18xf64>
              }
              affine.for %arg15 = 0 to 2 {
                %7 = affine.apply #map8(%arg15)
                %8 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %9 = affine.load %arg7[%arg13, %7] : memref<?x22xf64>
                %10 = arith.mulf %arg4, %9 : f64
                %11 = affine.load %arg8[%7, %arg14] : memref<?x18xf64>
                %12 = arith.mulf %10, %11 : f64
                %13 = arith.addf %8, %12 : f64
                affine.store %13, %arg6[%arg13, %arg14] : memref<?x18xf64>
              }
              %2 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %3 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %4 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %5 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              affine.for %arg15 = 0 to 2 {
                %7 = affine.apply #map9(%arg15)
                %8 = affine.load %arg10[%arg13, %7 - 21] : memref<?x24xf64>
                %9 = affine.load %arg9[%arg14, %7 - 21] : memref<?x24xf64>
                %10 = arith.mulf %2, %9 : f64
                %11 = arith.addf %8, %10 : f64
                affine.store %11, %arg10[%arg13, %7 - 21] : memref<?x24xf64>
                %12 = affine.apply #map1(%7)
                %13 = affine.load %arg10[%arg13, %12 - 21] : memref<?x24xf64>
                %14 = affine.load %arg9[%arg14, %12 - 21] : memref<?x24xf64>
                %15 = arith.mulf %3, %14 : f64
                %16 = arith.addf %13, %15 : f64
                affine.store %16, %arg10[%arg13, %12 - 21] : memref<?x24xf64>
                %17 = affine.apply #map2(%7)
                %18 = affine.load %arg10[%arg13, %17 - 21] : memref<?x24xf64>
                %19 = affine.load %arg9[%arg14, %17 - 21] : memref<?x24xf64>
                %20 = arith.mulf %4, %19 : f64
                %21 = arith.addf %18, %20 : f64
                affine.store %21, %arg10[%arg13, %17 - 21] : memref<?x24xf64>
                %22 = affine.apply #map3(%7)
                %23 = affine.load %arg10[%arg13, %22 - 21] : memref<?x24xf64>
                %24 = affine.load %arg9[%arg14, %22 - 21] : memref<?x24xf64>
                %25 = arith.mulf %5, %24 : f64
                %26 = arith.addf %23, %25 : f64
                affine.store %26, %arg10[%arg13, %22 - 21] : memref<?x24xf64>
              }
              %6 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              affine.for %arg15 = 0 to 3 {
                %7 = affine.apply #map10(%arg15)
                %8 = affine.load %arg10[%arg13, %7 - 21] : memref<?x24xf64>
                %9 = affine.load %arg9[%arg14, %7 - 21] : memref<?x24xf64>
                %10 = arith.mulf %6, %9 : f64
                %11 = arith.addf %8, %10 : f64
                affine.store %11, %arg10[%arg13, %7 - 21] : memref<?x24xf64>
              }
            }
          }
        }
        affine.if #set1(%1) {
          affine.for %arg13 = 0 to 16 {
            affine.for %arg14 = 0 to 18 {
              %2 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %3 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %4 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %5 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              affine.for %arg15 = 0 to 3 {
                %11 = affine.apply #map11(%arg15)
                %12 = affine.load %arg10[%arg13, %11 - 21] : memref<?x24xf64>
                %13 = affine.load %arg9[%arg14, %11 - 21] : memref<?x24xf64>
                %14 = arith.mulf %2, %13 : f64
                %15 = arith.addf %12, %14 : f64
                affine.store %15, %arg10[%arg13, %11 - 21] : memref<?x24xf64>
                %16 = affine.apply #map1(%11)
                %17 = affine.load %arg10[%arg13, %16 - 21] : memref<?x24xf64>
                %18 = affine.load %arg9[%arg14, %16 - 21] : memref<?x24xf64>
                %19 = arith.mulf %3, %18 : f64
                %20 = arith.addf %17, %19 : f64
                affine.store %20, %arg10[%arg13, %16 - 21] : memref<?x24xf64>
                %21 = affine.apply #map2(%11)
                %22 = affine.load %arg10[%arg13, %21 - 21] : memref<?x24xf64>
                %23 = affine.load %arg9[%arg14, %21 - 21] : memref<?x24xf64>
                %24 = arith.mulf %4, %23 : f64
                %25 = arith.addf %22, %24 : f64
                affine.store %25, %arg10[%arg13, %21 - 21] : memref<?x24xf64>
                %26 = affine.apply #map3(%11)
                %27 = affine.load %arg10[%arg13, %26 - 21] : memref<?x24xf64>
                %28 = affine.load %arg9[%arg14, %26 - 21] : memref<?x24xf64>
                %29 = arith.mulf %5, %28 : f64
                %30 = arith.addf %27, %29 : f64
                affine.store %30, %arg10[%arg13, %26 - 21] : memref<?x24xf64>
              }
              %6 = affine.load %arg10[%arg13, %c44 - 21] : memref<?x24xf64>
              %7 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %8 = affine.load %arg9[%arg14, %c44 - 21] : memref<?x24xf64>
              %9 = arith.mulf %7, %8 : f64
              %10 = arith.addf %6, %9 : f64
              affine.store %10, %arg10[%arg13, %c44 - 21] : memref<?x24xf64>
            }
          }
        }
      }
    }
    return
  }
}

