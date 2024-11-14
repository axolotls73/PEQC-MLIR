#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0 + 2)>
#map2 = affine_map<(d0) -> (d0 + 3)>
#map3 = affine_map<(d0) -> (d0 * 32)>
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
    %0 = affine.apply #map(%c18)
    %1 = affine.apply #map1(%c18)
    %2 = affine.apply #map2(%c18)
    affine.for %arg11 = 0 to 1 {
      %3 = affine.apply #map3(%arg11)
      affine.for %arg12 = 0 to 16 {
        %4 = affine.apply #map4(%3, %arg12)
        affine.for %arg13 = 0 to 4 {
          %13 = affine.apply #map5(%arg13)
          %14 = affine.load %arg10[%4, %13] : memref<?x24xf64>
          %15 = arith.mulf %14, %arg5 : f64
          affine.store %15, %arg10[%4, %13] : memref<?x24xf64>
          affine.store %cst, %arg6[%4, %13] : memref<?x18xf64>
          %16 = affine.apply #map(%13)
          %17 = affine.load %arg10[%4, %16] : memref<?x24xf64>
          %18 = arith.mulf %17, %arg5 : f64
          affine.store %18, %arg10[%4, %16] : memref<?x24xf64>
          affine.store %cst, %arg6[%4, %16] : memref<?x18xf64>
          %19 = affine.apply #map1(%13)
          %20 = affine.load %arg10[%4, %19] : memref<?x24xf64>
          %21 = arith.mulf %20, %arg5 : f64
          affine.store %21, %arg10[%4, %19] : memref<?x24xf64>
          affine.store %cst, %arg6[%4, %19] : memref<?x18xf64>
          %22 = affine.apply #map2(%13)
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
        %7 = affine.load %arg10[%4, %0] : memref<?x24xf64>
        %8 = arith.mulf %7, %arg5 : f64
        affine.store %8, %arg10[%4, %0] : memref<?x24xf64>
        %9 = affine.load %arg10[%4, %1] : memref<?x24xf64>
        %10 = arith.mulf %9, %arg5 : f64
        affine.store %10, %arg10[%4, %1] : memref<?x24xf64>
        %11 = affine.load %arg10[%4, %2] : memref<?x24xf64>
        %12 = arith.mulf %11, %arg5 : f64
        affine.store %12, %arg10[%4, %2] : memref<?x24xf64>
        affine.for %arg13 = 0 to 2 {
          %13 = affine.apply #map7(%arg13)
          %14 = affine.load %arg10[%4, %13] : memref<?x24xf64>
          %15 = arith.mulf %14, %arg5 : f64
          affine.store %15, %arg10[%4, %13] : memref<?x24xf64>
        }
      }
    }
    affine.for %arg11 = 0 to 1 {
      %3 = affine.apply #map3(%arg11)
      affine.for %arg12 = 0 to 2 {
        %4 = affine.apply #map4(%3, %arg12)
        affine.if #set(%4) {
          affine.for %arg13 = 0 to 16 {
            affine.for %arg14 = 0 to 18 {
              affine.for %arg15 = 0 to 5 {
                %10 = affine.apply #map5(%arg15)
                %11 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %12 = affine.load %arg7[%arg13, %10] : memref<?x22xf64>
                %13 = arith.mulf %arg4, %12 : f64
                %14 = affine.load %arg8[%10, %arg14] : memref<?x18xf64>
                %15 = arith.mulf %13, %14 : f64
                %16 = arith.addf %11, %15 : f64
                affine.store %16, %arg6[%arg13, %arg14] : memref<?x18xf64>
                %17 = affine.apply #map(%10)
                %18 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %19 = affine.load %arg7[%arg13, %17] : memref<?x22xf64>
                %20 = arith.mulf %arg4, %19 : f64
                %21 = affine.load %arg8[%17, %arg14] : memref<?x18xf64>
                %22 = arith.mulf %20, %21 : f64
                %23 = arith.addf %18, %22 : f64
                affine.store %23, %arg6[%arg13, %arg14] : memref<?x18xf64>
                %24 = affine.apply #map1(%10)
                %25 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %26 = affine.load %arg7[%arg13, %24] : memref<?x22xf64>
                %27 = arith.mulf %arg4, %26 : f64
                %28 = affine.load %arg8[%24, %arg14] : memref<?x18xf64>
                %29 = arith.mulf %27, %28 : f64
                %30 = arith.addf %25, %29 : f64
                affine.store %30, %arg6[%arg13, %arg14] : memref<?x18xf64>
                %31 = affine.apply #map2(%10)
                %32 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %33 = affine.load %arg7[%arg13, %31] : memref<?x22xf64>
                %34 = arith.mulf %arg4, %33 : f64
                %35 = affine.load %arg8[%31, %arg14] : memref<?x18xf64>
                %36 = arith.mulf %34, %35 : f64
                %37 = arith.addf %32, %36 : f64
                affine.store %37, %arg6[%arg13, %arg14] : memref<?x18xf64>
              }
              affine.for %arg15 = 0 to 2 {
                %10 = affine.apply #map8(%arg15)
                %11 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %12 = affine.load %arg7[%arg13, %10] : memref<?x22xf64>
                %13 = arith.mulf %arg4, %12 : f64
                %14 = affine.load %arg8[%10, %arg14] : memref<?x18xf64>
                %15 = arith.mulf %13, %14 : f64
                %16 = arith.addf %11, %15 : f64
                affine.store %16, %arg6[%arg13, %arg14] : memref<?x18xf64>
              }
              %5 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %6 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %7 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %8 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              affine.for %arg15 = 0 to 2 {
                %10 = affine.apply #map9(%arg15)
                %11 = affine.load %arg10[%arg13, %10 - 21] : memref<?x24xf64>
                %12 = affine.load %arg9[%arg14, %10 - 21] : memref<?x24xf64>
                %13 = arith.mulf %5, %12 : f64
                %14 = arith.addf %11, %13 : f64
                affine.store %14, %arg10[%arg13, %10 - 21] : memref<?x24xf64>
                %15 = affine.apply #map(%10)
                %16 = affine.load %arg10[%arg13, %15 - 21] : memref<?x24xf64>
                %17 = affine.load %arg9[%arg14, %15 - 21] : memref<?x24xf64>
                %18 = arith.mulf %6, %17 : f64
                %19 = arith.addf %16, %18 : f64
                affine.store %19, %arg10[%arg13, %15 - 21] : memref<?x24xf64>
                %20 = affine.apply #map1(%10)
                %21 = affine.load %arg10[%arg13, %20 - 21] : memref<?x24xf64>
                %22 = affine.load %arg9[%arg14, %20 - 21] : memref<?x24xf64>
                %23 = arith.mulf %7, %22 : f64
                %24 = arith.addf %21, %23 : f64
                affine.store %24, %arg10[%arg13, %20 - 21] : memref<?x24xf64>
                %25 = affine.apply #map2(%10)
                %26 = affine.load %arg10[%arg13, %25 - 21] : memref<?x24xf64>
                %27 = affine.load %arg9[%arg14, %25 - 21] : memref<?x24xf64>
                %28 = arith.mulf %8, %27 : f64
                %29 = arith.addf %26, %28 : f64
                affine.store %29, %arg10[%arg13, %25 - 21] : memref<?x24xf64>
              }
              %9 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              affine.for %arg15 = 0 to 3 {
                %10 = affine.apply #map10(%arg15)
                %11 = affine.load %arg10[%arg13, %10 - 21] : memref<?x24xf64>
                %12 = affine.load %arg9[%arg14, %10 - 21] : memref<?x24xf64>
                %13 = arith.mulf %9, %12 : f64
                %14 = arith.addf %11, %13 : f64
                affine.store %14, %arg10[%arg13, %10 - 21] : memref<?x24xf64>
              }
            }
          }
        }
        affine.if #set1(%4) {
          affine.for %arg13 = 0 to 16 {
            affine.for %arg14 = 0 to 18 {
              %5 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %6 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %7 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %8 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              affine.for %arg15 = 0 to 3 {
                %14 = affine.apply #map11(%arg15)
                %15 = affine.load %arg10[%arg13, %14 - 21] : memref<?x24xf64>
                %16 = affine.load %arg9[%arg14, %14 - 21] : memref<?x24xf64>
                %17 = arith.mulf %5, %16 : f64
                %18 = arith.addf %15, %17 : f64
                affine.store %18, %arg10[%arg13, %14 - 21] : memref<?x24xf64>
                %19 = affine.apply #map(%14)
                %20 = affine.load %arg10[%arg13, %19 - 21] : memref<?x24xf64>
                %21 = affine.load %arg9[%arg14, %19 - 21] : memref<?x24xf64>
                %22 = arith.mulf %6, %21 : f64
                %23 = arith.addf %20, %22 : f64
                affine.store %23, %arg10[%arg13, %19 - 21] : memref<?x24xf64>
                %24 = affine.apply #map1(%14)
                %25 = affine.load %arg10[%arg13, %24 - 21] : memref<?x24xf64>
                %26 = affine.load %arg9[%arg14, %24 - 21] : memref<?x24xf64>
                %27 = arith.mulf %7, %26 : f64
                %28 = arith.addf %25, %27 : f64
                affine.store %28, %arg10[%arg13, %24 - 21] : memref<?x24xf64>
                %29 = affine.apply #map2(%14)
                %30 = affine.load %arg10[%arg13, %29 - 21] : memref<?x24xf64>
                %31 = affine.load %arg9[%arg14, %29 - 21] : memref<?x24xf64>
                %32 = arith.mulf %8, %31 : f64
                %33 = arith.addf %30, %32 : f64
                affine.store %33, %arg10[%arg13, %29 - 21] : memref<?x24xf64>
              }
              %9 = affine.load %arg10[%arg13, %c44 - 21] : memref<?x24xf64>
              %10 = affine.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %11 = affine.load %arg9[%arg14, %c44 - 21] : memref<?x24xf64>
              %12 = arith.mulf %10, %11 : f64
              %13 = arith.addf %9, %12 : f64
              affine.store %13, %arg10[%arg13, %c44 - 21] : memref<?x24xf64>
            }
          }
        }
      }
    }
    return
  }
}

