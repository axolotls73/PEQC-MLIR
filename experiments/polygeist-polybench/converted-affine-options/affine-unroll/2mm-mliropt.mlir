#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0 + 2)>
#map2 = affine_map<(d0) -> (d0 + 3)>
#set = affine_set<(d0) : (d0 == 0)>
#set1 = affine_set<(d0) : (d0 - 1 == 0)>
module {
  func.func @kernel_2mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: f64, %arg5: f64, %arg6: memref<?x18xf64>, %arg7: memref<?x22xf64>, %arg8: memref<?x18xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x24xf64>) {
    %c44 = arith.constant 44 : index
    %c18 = arith.constant 18 : index
    %cst = arith.constant 0.000000e+00 : f64
    affine.for %arg11 = 0 to 16 {
      affine.for %arg12 = 0 to 16 step 4 {
        %11 = affine.load %arg10[%arg11, %arg12] : memref<?x24xf64>
        %12 = arith.mulf %11, %arg5 : f64
        affine.store %12, %arg10[%arg11, %arg12] : memref<?x24xf64>
        affine.store %cst, %arg6[%arg11, %arg12] : memref<?x18xf64>
        %13 = affine.apply #map(%arg12)
        %14 = affine.load %arg10[%arg11, %13] : memref<?x24xf64>
        %15 = arith.mulf %14, %arg5 : f64
        affine.store %15, %arg10[%arg11, %13] : memref<?x24xf64>
        affine.store %cst, %arg6[%arg11, %13] : memref<?x18xf64>
        %16 = affine.apply #map1(%arg12)
        %17 = affine.load %arg10[%arg11, %16] : memref<?x24xf64>
        %18 = arith.mulf %17, %arg5 : f64
        affine.store %18, %arg10[%arg11, %16] : memref<?x24xf64>
        affine.store %cst, %arg6[%arg11, %16] : memref<?x18xf64>
        %19 = affine.apply #map2(%arg12)
        %20 = affine.load %arg10[%arg11, %19] : memref<?x24xf64>
        %21 = arith.mulf %20, %arg5 : f64
        affine.store %21, %arg10[%arg11, %19] : memref<?x24xf64>
        affine.store %cst, %arg6[%arg11, %19] : memref<?x18xf64>
      }
      affine.for %arg12 = 16 to 18 {
        %11 = affine.load %arg10[%arg11, %arg12] : memref<?x24xf64>
        %12 = arith.mulf %11, %arg5 : f64
        affine.store %12, %arg10[%arg11, %arg12] : memref<?x24xf64>
        affine.store %cst, %arg6[%arg11, %arg12] : memref<?x18xf64>
      }
      %0 = affine.load %arg10[%arg11, %c18] : memref<?x24xf64>
      %1 = arith.mulf %0, %arg5 : f64
      affine.store %1, %arg10[%arg11, %c18] : memref<?x24xf64>
      %2 = affine.apply #map(%c18)
      %3 = affine.load %arg10[%arg11, %2] : memref<?x24xf64>
      %4 = arith.mulf %3, %arg5 : f64
      affine.store %4, %arg10[%arg11, %2] : memref<?x24xf64>
      %5 = affine.apply #map1(%c18)
      %6 = affine.load %arg10[%arg11, %5] : memref<?x24xf64>
      %7 = arith.mulf %6, %arg5 : f64
      affine.store %7, %arg10[%arg11, %5] : memref<?x24xf64>
      %8 = affine.apply #map2(%c18)
      %9 = affine.load %arg10[%arg11, %8] : memref<?x24xf64>
      %10 = arith.mulf %9, %arg5 : f64
      affine.store %10, %arg10[%arg11, %8] : memref<?x24xf64>
      affine.for %arg12 = 22 to 24 {
        %11 = affine.load %arg10[%arg11, %arg12] : memref<?x24xf64>
        %12 = arith.mulf %11, %arg5 : f64
        affine.store %12, %arg10[%arg11, %arg12] : memref<?x24xf64>
      }
    }
    affine.for %arg11 = 0 to 2 {
      affine.if #set(%arg11) {
        affine.for %arg12 = 0 to 16 {
          affine.for %arg13 = 0 to 18 {
            affine.for %arg14 = 0 to 20 step 4 {
              %0 = affine.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %1 = affine.load %arg7[%arg12, %arg14] : memref<?x22xf64>
              %2 = arith.mulf %arg4, %1 : f64
              %3 = affine.load %arg8[%arg14, %arg13] : memref<?x18xf64>
              %4 = arith.mulf %2, %3 : f64
              %5 = arith.addf %0, %4 : f64
              affine.store %5, %arg6[%arg12, %arg13] : memref<?x18xf64>
              %6 = affine.apply #map(%arg14)
              %7 = affine.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %8 = affine.load %arg7[%arg12, %6] : memref<?x22xf64>
              %9 = arith.mulf %arg4, %8 : f64
              %10 = affine.load %arg8[%6, %arg13] : memref<?x18xf64>
              %11 = arith.mulf %9, %10 : f64
              %12 = arith.addf %7, %11 : f64
              affine.store %12, %arg6[%arg12, %arg13] : memref<?x18xf64>
              %13 = affine.apply #map1(%arg14)
              %14 = affine.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %15 = affine.load %arg7[%arg12, %13] : memref<?x22xf64>
              %16 = arith.mulf %arg4, %15 : f64
              %17 = affine.load %arg8[%13, %arg13] : memref<?x18xf64>
              %18 = arith.mulf %16, %17 : f64
              %19 = arith.addf %14, %18 : f64
              affine.store %19, %arg6[%arg12, %arg13] : memref<?x18xf64>
              %20 = affine.apply #map2(%arg14)
              %21 = affine.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %22 = affine.load %arg7[%arg12, %20] : memref<?x22xf64>
              %23 = arith.mulf %arg4, %22 : f64
              %24 = affine.load %arg8[%20, %arg13] : memref<?x18xf64>
              %25 = arith.mulf %23, %24 : f64
              %26 = arith.addf %21, %25 : f64
              affine.store %26, %arg6[%arg12, %arg13] : memref<?x18xf64>
            }
            affine.for %arg14 = 20 to 22 {
              %0 = affine.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %1 = affine.load %arg7[%arg12, %arg14] : memref<?x22xf64>
              %2 = arith.mulf %arg4, %1 : f64
              %3 = affine.load %arg8[%arg14, %arg13] : memref<?x18xf64>
              %4 = arith.mulf %2, %3 : f64
              %5 = arith.addf %0, %4 : f64
              affine.store %5, %arg6[%arg12, %arg13] : memref<?x18xf64>
            }
            affine.for %arg14 = 21 to 29 step 4 {
              %0 = affine.load %arg10[%arg12, %arg14 - 21] : memref<?x24xf64>
              %1 = affine.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %2 = affine.load %arg9[%arg13, %arg14 - 21] : memref<?x24xf64>
              %3 = arith.mulf %1, %2 : f64
              %4 = arith.addf %0, %3 : f64
              affine.store %4, %arg10[%arg12, %arg14 - 21] : memref<?x24xf64>
              %5 = affine.apply #map(%arg14)
              %6 = affine.load %arg10[%arg12, %5 - 21] : memref<?x24xf64>
              %7 = affine.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %8 = affine.load %arg9[%arg13, %5 - 21] : memref<?x24xf64>
              %9 = arith.mulf %7, %8 : f64
              %10 = arith.addf %6, %9 : f64
              affine.store %10, %arg10[%arg12, %5 - 21] : memref<?x24xf64>
              %11 = affine.apply #map1(%arg14)
              %12 = affine.load %arg10[%arg12, %11 - 21] : memref<?x24xf64>
              %13 = affine.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %14 = affine.load %arg9[%arg13, %11 - 21] : memref<?x24xf64>
              %15 = arith.mulf %13, %14 : f64
              %16 = arith.addf %12, %15 : f64
              affine.store %16, %arg10[%arg12, %11 - 21] : memref<?x24xf64>
              %17 = affine.apply #map2(%arg14)
              %18 = affine.load %arg10[%arg12, %17 - 21] : memref<?x24xf64>
              %19 = affine.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %20 = affine.load %arg9[%arg13, %17 - 21] : memref<?x24xf64>
              %21 = arith.mulf %19, %20 : f64
              %22 = arith.addf %18, %21 : f64
              affine.store %22, %arg10[%arg12, %17 - 21] : memref<?x24xf64>
            }
            affine.for %arg14 = 29 to 32 {
              %0 = affine.load %arg10[%arg12, %arg14 - 21] : memref<?x24xf64>
              %1 = affine.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %2 = affine.load %arg9[%arg13, %arg14 - 21] : memref<?x24xf64>
              %3 = arith.mulf %1, %2 : f64
              %4 = arith.addf %0, %3 : f64
              affine.store %4, %arg10[%arg12, %arg14 - 21] : memref<?x24xf64>
            }
          }
        }
      }
      affine.if #set1(%arg11) {
        affine.for %arg12 = 0 to 16 {
          affine.for %arg13 = 0 to 18 {
            affine.for %arg14 = 32 to 44 step 4 {
              %5 = affine.load %arg10[%arg12, %arg14 - 21] : memref<?x24xf64>
              %6 = affine.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %7 = affine.load %arg9[%arg13, %arg14 - 21] : memref<?x24xf64>
              %8 = arith.mulf %6, %7 : f64
              %9 = arith.addf %5, %8 : f64
              affine.store %9, %arg10[%arg12, %arg14 - 21] : memref<?x24xf64>
              %10 = affine.apply #map(%arg14)
              %11 = affine.load %arg10[%arg12, %10 - 21] : memref<?x24xf64>
              %12 = affine.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %13 = affine.load %arg9[%arg13, %10 - 21] : memref<?x24xf64>
              %14 = arith.mulf %12, %13 : f64
              %15 = arith.addf %11, %14 : f64
              affine.store %15, %arg10[%arg12, %10 - 21] : memref<?x24xf64>
              %16 = affine.apply #map1(%arg14)
              %17 = affine.load %arg10[%arg12, %16 - 21] : memref<?x24xf64>
              %18 = affine.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %19 = affine.load %arg9[%arg13, %16 - 21] : memref<?x24xf64>
              %20 = arith.mulf %18, %19 : f64
              %21 = arith.addf %17, %20 : f64
              affine.store %21, %arg10[%arg12, %16 - 21] : memref<?x24xf64>
              %22 = affine.apply #map2(%arg14)
              %23 = affine.load %arg10[%arg12, %22 - 21] : memref<?x24xf64>
              %24 = affine.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %25 = affine.load %arg9[%arg13, %22 - 21] : memref<?x24xf64>
              %26 = arith.mulf %24, %25 : f64
              %27 = arith.addf %23, %26 : f64
              affine.store %27, %arg10[%arg12, %22 - 21] : memref<?x24xf64>
            }
            %0 = affine.load %arg10[%arg12, %c44 - 21] : memref<?x24xf64>
            %1 = affine.load %arg6[%arg12, %arg13] : memref<?x18xf64>
            %2 = affine.load %arg9[%arg13, %c44 - 21] : memref<?x24xf64>
            %3 = arith.mulf %1, %2 : f64
            %4 = arith.addf %0, %3 : f64
            affine.store %4, %arg10[%arg12, %c44 - 21] : memref<?x24xf64>
          }
        }
      }
    }
    return
  }
}

