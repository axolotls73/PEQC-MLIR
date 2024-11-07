#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0 + 2)>
#map2 = affine_map<(d0) -> (d0 + 3)>
#set = affine_set<(d0) : (d0 == 0)>
#set1 = affine_set<(d0) : (d0 - 1 == 0)>
module {
  func.func @kernel_3mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: memref<?x18xf64>, %arg6: memref<?x20xf64>, %arg7: memref<?x18xf64>, %arg8: memref<?x22xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x22xf64>, %arg11: memref<?x22xf64>) {
    %c40 = arith.constant 40 : index
    %c31 = arith.constant 31 : index
    %cst = arith.constant 0.000000e+00 : f64
    affine.for %arg12 = 0 to 16 {
      affine.for %arg13 = 0 to 20 step 4 {
        affine.store %cst, %arg11[%arg12, %arg13] : memref<?x22xf64>
        affine.store %cst, %arg8[%arg12, %arg13] : memref<?x22xf64>
        %0 = affine.apply #map(%arg13)
        affine.store %cst, %arg11[%arg12, %0] : memref<?x22xf64>
        affine.store %cst, %arg8[%arg12, %0] : memref<?x22xf64>
        %1 = affine.apply #map1(%arg13)
        affine.store %cst, %arg11[%arg12, %1] : memref<?x22xf64>
        affine.store %cst, %arg8[%arg12, %1] : memref<?x22xf64>
        %2 = affine.apply #map2(%arg13)
        affine.store %cst, %arg11[%arg12, %2] : memref<?x22xf64>
        affine.store %cst, %arg8[%arg12, %2] : memref<?x22xf64>
      }
      affine.for %arg13 = 20 to 22 {
        affine.store %cst, %arg11[%arg12, %arg13] : memref<?x22xf64>
        affine.store %cst, %arg8[%arg12, %arg13] : memref<?x22xf64>
      }
    }
    affine.for %arg12 = 16 to 18 {
      affine.for %arg13 = 0 to 20 step 4 {
        affine.store %cst, %arg8[%arg12, %arg13] : memref<?x22xf64>
        %0 = affine.apply #map(%arg13)
        affine.store %cst, %arg8[%arg12, %0] : memref<?x22xf64>
        %1 = affine.apply #map1(%arg13)
        affine.store %cst, %arg8[%arg12, %1] : memref<?x22xf64>
        %2 = affine.apply #map2(%arg13)
        affine.store %cst, %arg8[%arg12, %2] : memref<?x22xf64>
      }
      affine.for %arg13 = 20 to 22 {
        affine.store %cst, %arg8[%arg12, %arg13] : memref<?x22xf64>
      }
    }
    affine.for %arg12 = 0 to 18 {
      affine.for %arg13 = 0 to 24 {
        affine.for %arg14 = 0 to 20 step 4 {
          %0 = affine.load %arg8[%arg12, %arg14] : memref<?x22xf64>
          %1 = affine.load %arg9[%arg12, %arg13] : memref<?x24xf64>
          %2 = affine.load %arg10[%arg13, %arg14] : memref<?x22xf64>
          %3 = arith.mulf %1, %2 : f64
          %4 = arith.addf %0, %3 : f64
          affine.store %4, %arg8[%arg12, %arg14] : memref<?x22xf64>
          %5 = affine.apply #map(%arg14)
          %6 = affine.load %arg8[%arg12, %5] : memref<?x22xf64>
          %7 = affine.load %arg9[%arg12, %arg13] : memref<?x24xf64>
          %8 = affine.load %arg10[%arg13, %5] : memref<?x22xf64>
          %9 = arith.mulf %7, %8 : f64
          %10 = arith.addf %6, %9 : f64
          affine.store %10, %arg8[%arg12, %5] : memref<?x22xf64>
          %11 = affine.apply #map1(%arg14)
          %12 = affine.load %arg8[%arg12, %11] : memref<?x22xf64>
          %13 = affine.load %arg9[%arg12, %arg13] : memref<?x24xf64>
          %14 = affine.load %arg10[%arg13, %11] : memref<?x22xf64>
          %15 = arith.mulf %13, %14 : f64
          %16 = arith.addf %12, %15 : f64
          affine.store %16, %arg8[%arg12, %11] : memref<?x22xf64>
          %17 = affine.apply #map2(%arg14)
          %18 = affine.load %arg8[%arg12, %17] : memref<?x22xf64>
          %19 = affine.load %arg9[%arg12, %arg13] : memref<?x24xf64>
          %20 = affine.load %arg10[%arg13, %17] : memref<?x22xf64>
          %21 = arith.mulf %19, %20 : f64
          %22 = arith.addf %18, %21 : f64
          affine.store %22, %arg8[%arg12, %17] : memref<?x22xf64>
        }
        affine.for %arg14 = 20 to 22 {
          %0 = affine.load %arg8[%arg12, %arg14] : memref<?x22xf64>
          %1 = affine.load %arg9[%arg12, %arg13] : memref<?x24xf64>
          %2 = affine.load %arg10[%arg13, %arg14] : memref<?x22xf64>
          %3 = arith.mulf %1, %2 : f64
          %4 = arith.addf %0, %3 : f64
          affine.store %4, %arg8[%arg12, %arg14] : memref<?x22xf64>
        }
      }
    }
    affine.for %arg12 = 0 to 16 {
      affine.for %arg13 = 0 to 16 step 4 {
        affine.store %cst, %arg5[%arg12, %arg13] : memref<?x18xf64>
        %0 = affine.apply #map(%arg13)
        affine.store %cst, %arg5[%arg12, %0] : memref<?x18xf64>
        %1 = affine.apply #map1(%arg13)
        affine.store %cst, %arg5[%arg12, %1] : memref<?x18xf64>
        %2 = affine.apply #map2(%arg13)
        affine.store %cst, %arg5[%arg12, %2] : memref<?x18xf64>
      }
      affine.for %arg13 = 16 to 18 {
        affine.store %cst, %arg5[%arg12, %arg13] : memref<?x18xf64>
      }
    }
    affine.for %arg12 = 0 to 2 {
      affine.if #set(%arg12) {
        affine.for %arg13 = 0 to 16 {
          affine.for %arg14 = 0 to 18 {
            affine.for %arg15 = 0 to 20 step 4 {
              %5 = affine.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %6 = affine.load %arg6[%arg13, %arg15] : memref<?x20xf64>
              %7 = affine.load %arg7[%arg15, %arg14] : memref<?x18xf64>
              %8 = arith.mulf %6, %7 : f64
              %9 = arith.addf %5, %8 : f64
              affine.store %9, %arg5[%arg13, %arg14] : memref<?x18xf64>
              %10 = affine.apply #map(%arg15)
              %11 = affine.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %12 = affine.load %arg6[%arg13, %10] : memref<?x20xf64>
              %13 = affine.load %arg7[%10, %arg14] : memref<?x18xf64>
              %14 = arith.mulf %12, %13 : f64
              %15 = arith.addf %11, %14 : f64
              affine.store %15, %arg5[%arg13, %arg14] : memref<?x18xf64>
              %16 = affine.apply #map1(%arg15)
              %17 = affine.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %18 = affine.load %arg6[%arg13, %16] : memref<?x20xf64>
              %19 = affine.load %arg7[%16, %arg14] : memref<?x18xf64>
              %20 = arith.mulf %18, %19 : f64
              %21 = arith.addf %17, %20 : f64
              affine.store %21, %arg5[%arg13, %arg14] : memref<?x18xf64>
              %22 = affine.apply #map2(%arg15)
              %23 = affine.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %24 = affine.load %arg6[%arg13, %22] : memref<?x20xf64>
              %25 = affine.load %arg7[%22, %arg14] : memref<?x18xf64>
              %26 = arith.mulf %24, %25 : f64
              %27 = arith.addf %23, %26 : f64
              affine.store %27, %arg5[%arg13, %arg14] : memref<?x18xf64>
            }
            affine.for %arg15 = 19 to 31 step 4 {
              %5 = affine.load %arg11[%arg13, %arg15 - 19] : memref<?x22xf64>
              %6 = affine.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %7 = affine.load %arg8[%arg14, %arg15 - 19] : memref<?x22xf64>
              %8 = arith.mulf %6, %7 : f64
              %9 = arith.addf %5, %8 : f64
              affine.store %9, %arg11[%arg13, %arg15 - 19] : memref<?x22xf64>
              %10 = affine.apply #map(%arg15)
              %11 = affine.load %arg11[%arg13, %10 - 19] : memref<?x22xf64>
              %12 = affine.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %13 = affine.load %arg8[%arg14, %10 - 19] : memref<?x22xf64>
              %14 = arith.mulf %12, %13 : f64
              %15 = arith.addf %11, %14 : f64
              affine.store %15, %arg11[%arg13, %10 - 19] : memref<?x22xf64>
              %16 = affine.apply #map1(%arg15)
              %17 = affine.load %arg11[%arg13, %16 - 19] : memref<?x22xf64>
              %18 = affine.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %19 = affine.load %arg8[%arg14, %16 - 19] : memref<?x22xf64>
              %20 = arith.mulf %18, %19 : f64
              %21 = arith.addf %17, %20 : f64
              affine.store %21, %arg11[%arg13, %16 - 19] : memref<?x22xf64>
              %22 = affine.apply #map2(%arg15)
              %23 = affine.load %arg11[%arg13, %22 - 19] : memref<?x22xf64>
              %24 = affine.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %25 = affine.load %arg8[%arg14, %22 - 19] : memref<?x22xf64>
              %26 = arith.mulf %24, %25 : f64
              %27 = arith.addf %23, %26 : f64
              affine.store %27, %arg11[%arg13, %22 - 19] : memref<?x22xf64>
            }
            %0 = affine.load %arg11[%arg13, %c31 - 19] : memref<?x22xf64>
            %1 = affine.load %arg5[%arg13, %arg14] : memref<?x18xf64>
            %2 = affine.load %arg8[%arg14, %c31 - 19] : memref<?x22xf64>
            %3 = arith.mulf %1, %2 : f64
            %4 = arith.addf %0, %3 : f64
            affine.store %4, %arg11[%arg13, %c31 - 19] : memref<?x22xf64>
          }
        }
      }
      affine.if #set1(%arg12) {
        affine.for %arg13 = 0 to 16 {
          affine.for %arg14 = 0 to 18 {
            affine.for %arg15 = 32 to 40 step 4 {
              %5 = affine.load %arg11[%arg13, %arg15 - 19] : memref<?x22xf64>
              %6 = affine.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %7 = affine.load %arg8[%arg14, %arg15 - 19] : memref<?x22xf64>
              %8 = arith.mulf %6, %7 : f64
              %9 = arith.addf %5, %8 : f64
              affine.store %9, %arg11[%arg13, %arg15 - 19] : memref<?x22xf64>
              %10 = affine.apply #map(%arg15)
              %11 = affine.load %arg11[%arg13, %10 - 19] : memref<?x22xf64>
              %12 = affine.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %13 = affine.load %arg8[%arg14, %10 - 19] : memref<?x22xf64>
              %14 = arith.mulf %12, %13 : f64
              %15 = arith.addf %11, %14 : f64
              affine.store %15, %arg11[%arg13, %10 - 19] : memref<?x22xf64>
              %16 = affine.apply #map1(%arg15)
              %17 = affine.load %arg11[%arg13, %16 - 19] : memref<?x22xf64>
              %18 = affine.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %19 = affine.load %arg8[%arg14, %16 - 19] : memref<?x22xf64>
              %20 = arith.mulf %18, %19 : f64
              %21 = arith.addf %17, %20 : f64
              affine.store %21, %arg11[%arg13, %16 - 19] : memref<?x22xf64>
              %22 = affine.apply #map2(%arg15)
              %23 = affine.load %arg11[%arg13, %22 - 19] : memref<?x22xf64>
              %24 = affine.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %25 = affine.load %arg8[%arg14, %22 - 19] : memref<?x22xf64>
              %26 = arith.mulf %24, %25 : f64
              %27 = arith.addf %23, %26 : f64
              affine.store %27, %arg11[%arg13, %22 - 19] : memref<?x22xf64>
            }
            %0 = affine.load %arg11[%arg13, %c40 - 19] : memref<?x22xf64>
            %1 = affine.load %arg5[%arg13, %arg14] : memref<?x18xf64>
            %2 = affine.load %arg8[%arg14, %c40 - 19] : memref<?x22xf64>
            %3 = arith.mulf %1, %2 : f64
            %4 = arith.addf %0, %3 : f64
            affine.store %4, %arg11[%arg13, %c40 - 19] : memref<?x22xf64>
          }
        }
      }
    }
    return
  }
}

