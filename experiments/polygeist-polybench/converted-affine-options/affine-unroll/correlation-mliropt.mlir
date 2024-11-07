#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0 + ((-d0 + 27) floordiv 4) * 4 + 1)>
#map2 = affine_map<(d0) -> (d0 + 2)>
#map3 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %cst = arith.constant 1.000000e-01 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %cst_1 = arith.constant 1.000000e+00 : f64
    %alloca = memref.alloca() {scop.scratchpad} : memref<1xf64>
    affine.store %cst_1, %arg4[27, 27] : memref<?x28xf64>
    affine.for %arg7 = 0 to 27 {
      affine.for %arg8 = #map(%arg7) to #map1(%arg7) step 4 {
        affine.store %cst_0, %arg4[%arg7, %arg8] : memref<?x28xf64>
        %1 = affine.apply #map(%arg8)
        affine.store %cst_0, %arg4[%arg7, %1] : memref<?x28xf64>
        %2 = affine.apply #map2(%arg8)
        affine.store %cst_0, %arg4[%arg7, %2] : memref<?x28xf64>
        %3 = affine.apply #map3(%arg8)
        affine.store %cst_0, %arg4[%arg7, %3] : memref<?x28xf64>
      }
      affine.for %arg8 = #map1(%arg7) to 28 {
        affine.store %cst_0, %arg4[%arg7, %arg8] : memref<?x28xf64>
      }
    }
    affine.for %arg7 = 0 to 24 step 4 {
      affine.store %cst_1, %arg4[%arg7, %arg7] : memref<?x28xf64>
      %1 = affine.apply #map(%arg7)
      affine.store %cst_1, %arg4[%1, %1] : memref<?x28xf64>
      %2 = affine.apply #map2(%arg7)
      affine.store %cst_1, %arg4[%2, %2] : memref<?x28xf64>
      %3 = affine.apply #map3(%arg7)
      affine.store %cst_1, %arg4[%3, %3] : memref<?x28xf64>
    }
    affine.for %arg7 = 24 to 27 {
      affine.store %cst_1, %arg4[%arg7, %arg7] : memref<?x28xf64>
    }
    %0 = math.sqrt %arg2 : f64
    affine.store %0, %alloca[0] : memref<1xf64>
    affine.for %arg7 = 0 to 28 step 4 {
      affine.store %cst_0, %arg6[%arg7] : memref<?xf64>
      affine.store %cst_0, %arg5[%arg7] : memref<?xf64>
      %1 = affine.apply #map(%arg7)
      affine.store %cst_0, %arg6[%1] : memref<?xf64>
      affine.store %cst_0, %arg5[%1] : memref<?xf64>
      %2 = affine.apply #map2(%arg7)
      affine.store %cst_0, %arg6[%2] : memref<?xf64>
      affine.store %cst_0, %arg5[%2] : memref<?xf64>
      %3 = affine.apply #map3(%arg7)
      affine.store %cst_0, %arg6[%3] : memref<?xf64>
      affine.store %cst_0, %arg5[%3] : memref<?xf64>
    }
    affine.for %arg7 = 0 to 32 {
      affine.for %arg8 = 0 to 28 step 4 {
        %1 = affine.load %arg5[%arg8] : memref<?xf64>
        %2 = affine.load %arg3[%arg7, %arg8] : memref<?x28xf64>
        %3 = arith.addf %1, %2 : f64
        affine.store %3, %arg5[%arg8] : memref<?xf64>
        %4 = affine.apply #map(%arg8)
        %5 = affine.load %arg5[%4] : memref<?xf64>
        %6 = affine.load %arg3[%arg7, %4] : memref<?x28xf64>
        %7 = arith.addf %5, %6 : f64
        affine.store %7, %arg5[%4] : memref<?xf64>
        %8 = affine.apply #map2(%arg8)
        %9 = affine.load %arg5[%8] : memref<?xf64>
        %10 = affine.load %arg3[%arg7, %8] : memref<?x28xf64>
        %11 = arith.addf %9, %10 : f64
        affine.store %11, %arg5[%8] : memref<?xf64>
        %12 = affine.apply #map3(%arg8)
        %13 = affine.load %arg5[%12] : memref<?xf64>
        %14 = affine.load %arg3[%arg7, %12] : memref<?x28xf64>
        %15 = arith.addf %13, %14 : f64
        affine.store %15, %arg5[%12] : memref<?xf64>
      }
    }
    affine.for %arg7 = 0 to 28 step 4 {
      %1 = affine.load %arg5[%arg7] : memref<?xf64>
      %2 = arith.divf %1, %arg2 : f64
      affine.store %2, %arg5[%arg7] : memref<?xf64>
      %3 = affine.apply #map(%arg7)
      %4 = affine.load %arg5[%3] : memref<?xf64>
      %5 = arith.divf %4, %arg2 : f64
      affine.store %5, %arg5[%3] : memref<?xf64>
      %6 = affine.apply #map2(%arg7)
      %7 = affine.load %arg5[%6] : memref<?xf64>
      %8 = arith.divf %7, %arg2 : f64
      affine.store %8, %arg5[%6] : memref<?xf64>
      %9 = affine.apply #map3(%arg7)
      %10 = affine.load %arg5[%9] : memref<?xf64>
      %11 = arith.divf %10, %arg2 : f64
      affine.store %11, %arg5[%9] : memref<?xf64>
    }
    affine.for %arg7 = 0 to 32 {
      affine.for %arg8 = 0 to 28 step 4 {
        %1 = affine.load %arg6[%arg8] : memref<?xf64>
        %2 = affine.load %arg3[%arg7, %arg8] : memref<?x28xf64>
        %3 = affine.load %arg5[%arg8] : memref<?xf64>
        %4 = arith.subf %2, %3 : f64
        %5 = arith.mulf %4, %4 : f64
        %6 = arith.addf %1, %5 : f64
        affine.store %6, %arg6[%arg8] : memref<?xf64>
        %7 = affine.load %arg3[%arg7, %arg8] : memref<?x28xf64>
        %8 = affine.load %arg5[%arg8] : memref<?xf64>
        %9 = arith.subf %7, %8 : f64
        affine.store %9, %arg3[%arg7, %arg8] : memref<?x28xf64>
        %10 = affine.apply #map(%arg8)
        %11 = affine.load %arg6[%10] : memref<?xf64>
        %12 = affine.load %arg3[%arg7, %10] : memref<?x28xf64>
        %13 = affine.load %arg5[%10] : memref<?xf64>
        %14 = arith.subf %12, %13 : f64
        %15 = arith.mulf %14, %14 : f64
        %16 = arith.addf %11, %15 : f64
        affine.store %16, %arg6[%10] : memref<?xf64>
        %17 = affine.load %arg3[%arg7, %10] : memref<?x28xf64>
        %18 = affine.load %arg5[%10] : memref<?xf64>
        %19 = arith.subf %17, %18 : f64
        affine.store %19, %arg3[%arg7, %10] : memref<?x28xf64>
        %20 = affine.apply #map2(%arg8)
        %21 = affine.load %arg6[%20] : memref<?xf64>
        %22 = affine.load %arg3[%arg7, %20] : memref<?x28xf64>
        %23 = affine.load %arg5[%20] : memref<?xf64>
        %24 = arith.subf %22, %23 : f64
        %25 = arith.mulf %24, %24 : f64
        %26 = arith.addf %21, %25 : f64
        affine.store %26, %arg6[%20] : memref<?xf64>
        %27 = affine.load %arg3[%arg7, %20] : memref<?x28xf64>
        %28 = affine.load %arg5[%20] : memref<?xf64>
        %29 = arith.subf %27, %28 : f64
        affine.store %29, %arg3[%arg7, %20] : memref<?x28xf64>
        %30 = affine.apply #map3(%arg8)
        %31 = affine.load %arg6[%30] : memref<?xf64>
        %32 = affine.load %arg3[%arg7, %30] : memref<?x28xf64>
        %33 = affine.load %arg5[%30] : memref<?xf64>
        %34 = arith.subf %32, %33 : f64
        %35 = arith.mulf %34, %34 : f64
        %36 = arith.addf %31, %35 : f64
        affine.store %36, %arg6[%30] : memref<?xf64>
        %37 = affine.load %arg3[%arg7, %30] : memref<?x28xf64>
        %38 = affine.load %arg5[%30] : memref<?xf64>
        %39 = arith.subf %37, %38 : f64
        affine.store %39, %arg3[%arg7, %30] : memref<?x28xf64>
      }
    }
    affine.for %arg7 = 0 to 28 step 4 {
      %1 = affine.load %arg6[%arg7] : memref<?xf64>
      %2 = arith.divf %1, %arg2 : f64
      %3 = math.sqrt %2 : f64
      %4 = arith.cmpf ole, %3, %cst : f64
      %5 = arith.select %4, %cst_1, %3 : f64
      affine.store %5, %arg6[%arg7] : memref<?xf64>
      %6 = affine.apply #map(%arg7)
      %7 = affine.load %arg6[%6] : memref<?xf64>
      %8 = arith.divf %7, %arg2 : f64
      %9 = math.sqrt %8 : f64
      %10 = arith.cmpf ole, %9, %cst : f64
      %11 = arith.select %10, %cst_1, %9 : f64
      affine.store %11, %arg6[%6] : memref<?xf64>
      %12 = affine.apply #map2(%arg7)
      %13 = affine.load %arg6[%12] : memref<?xf64>
      %14 = arith.divf %13, %arg2 : f64
      %15 = math.sqrt %14 : f64
      %16 = arith.cmpf ole, %15, %cst : f64
      %17 = arith.select %16, %cst_1, %15 : f64
      affine.store %17, %arg6[%12] : memref<?xf64>
      %18 = affine.apply #map3(%arg7)
      %19 = affine.load %arg6[%18] : memref<?xf64>
      %20 = arith.divf %19, %arg2 : f64
      %21 = math.sqrt %20 : f64
      %22 = arith.cmpf ole, %21, %cst : f64
      %23 = arith.select %22, %cst_1, %21 : f64
      affine.store %23, %arg6[%18] : memref<?xf64>
    }
    affine.for %arg7 = 0 to 32 {
      affine.for %arg8 = 0 to 28 step 4 {
        %1 = affine.load %arg3[%arg7, %arg8] : memref<?x28xf64>
        %2 = affine.load %alloca[0] : memref<1xf64>
        %3 = affine.load %arg6[%arg8] : memref<?xf64>
        %4 = arith.mulf %2, %3 : f64
        %5 = arith.divf %1, %4 : f64
        affine.store %5, %arg3[%arg7, %arg8] : memref<?x28xf64>
        %6 = affine.apply #map(%arg8)
        %7 = affine.load %arg3[%arg7, %6] : memref<?x28xf64>
        %8 = affine.load %alloca[0] : memref<1xf64>
        %9 = affine.load %arg6[%6] : memref<?xf64>
        %10 = arith.mulf %8, %9 : f64
        %11 = arith.divf %7, %10 : f64
        affine.store %11, %arg3[%arg7, %6] : memref<?x28xf64>
        %12 = affine.apply #map2(%arg8)
        %13 = affine.load %arg3[%arg7, %12] : memref<?x28xf64>
        %14 = affine.load %alloca[0] : memref<1xf64>
        %15 = affine.load %arg6[%12] : memref<?xf64>
        %16 = arith.mulf %14, %15 : f64
        %17 = arith.divf %13, %16 : f64
        affine.store %17, %arg3[%arg7, %12] : memref<?x28xf64>
        %18 = affine.apply #map3(%arg8)
        %19 = affine.load %arg3[%arg7, %18] : memref<?x28xf64>
        %20 = affine.load %alloca[0] : memref<1xf64>
        %21 = affine.load %arg6[%18] : memref<?xf64>
        %22 = arith.mulf %20, %21 : f64
        %23 = arith.divf %19, %22 : f64
        affine.store %23, %arg3[%arg7, %18] : memref<?x28xf64>
      }
    }
    affine.for %arg7 = 0 to 27 {
      affine.for %arg8 = 0 to 32 {
        affine.for %arg9 = #map(%arg7) to #map1(%arg7) step 4 {
          %1 = affine.load %arg4[%arg7, %arg9] : memref<?x28xf64>
          %2 = affine.load %arg3[%arg8, %arg7] : memref<?x28xf64>
          %3 = affine.load %arg3[%arg8, %arg9] : memref<?x28xf64>
          %4 = arith.mulf %2, %3 : f64
          %5 = arith.addf %1, %4 : f64
          affine.store %5, %arg4[%arg7, %arg9] : memref<?x28xf64>
          %6 = affine.apply #map(%arg9)
          %7 = affine.load %arg4[%arg7, %6] : memref<?x28xf64>
          %8 = affine.load %arg3[%arg8, %arg7] : memref<?x28xf64>
          %9 = affine.load %arg3[%arg8, %6] : memref<?x28xf64>
          %10 = arith.mulf %8, %9 : f64
          %11 = arith.addf %7, %10 : f64
          affine.store %11, %arg4[%arg7, %6] : memref<?x28xf64>
          %12 = affine.apply #map2(%arg9)
          %13 = affine.load %arg4[%arg7, %12] : memref<?x28xf64>
          %14 = affine.load %arg3[%arg8, %arg7] : memref<?x28xf64>
          %15 = affine.load %arg3[%arg8, %12] : memref<?x28xf64>
          %16 = arith.mulf %14, %15 : f64
          %17 = arith.addf %13, %16 : f64
          affine.store %17, %arg4[%arg7, %12] : memref<?x28xf64>
          %18 = affine.apply #map3(%arg9)
          %19 = affine.load %arg4[%arg7, %18] : memref<?x28xf64>
          %20 = affine.load %arg3[%arg8, %arg7] : memref<?x28xf64>
          %21 = affine.load %arg3[%arg8, %18] : memref<?x28xf64>
          %22 = arith.mulf %20, %21 : f64
          %23 = arith.addf %19, %22 : f64
          affine.store %23, %arg4[%arg7, %18] : memref<?x28xf64>
        }
        affine.for %arg9 = #map1(%arg7) to 28 {
          %1 = affine.load %arg4[%arg7, %arg9] : memref<?x28xf64>
          %2 = affine.load %arg3[%arg8, %arg7] : memref<?x28xf64>
          %3 = affine.load %arg3[%arg8, %arg9] : memref<?x28xf64>
          %4 = arith.mulf %2, %3 : f64
          %5 = arith.addf %1, %4 : f64
          affine.store %5, %arg4[%arg7, %arg9] : memref<?x28xf64>
        }
      }
    }
    affine.for %arg7 = 0 to 27 {
      affine.for %arg8 = #map(%arg7) to #map1(%arg7) step 4 {
        %1 = affine.load %arg4[%arg7, %arg8] : memref<?x28xf64>
        affine.store %1, %arg4[%arg8, %arg7] : memref<?x28xf64>
        %2 = affine.apply #map(%arg8)
        %3 = affine.load %arg4[%arg7, %2] : memref<?x28xf64>
        affine.store %3, %arg4[%2, %arg7] : memref<?x28xf64>
        %4 = affine.apply #map2(%arg8)
        %5 = affine.load %arg4[%arg7, %4] : memref<?x28xf64>
        affine.store %5, %arg4[%4, %arg7] : memref<?x28xf64>
        %6 = affine.apply #map3(%arg8)
        %7 = affine.load %arg4[%arg7, %6] : memref<?x28xf64>
        affine.store %7, %arg4[%6, %arg7] : memref<?x28xf64>
      }
      affine.for %arg8 = #map1(%arg7) to 28 {
        %1 = affine.load %arg4[%arg7, %arg8] : memref<?x28xf64>
        affine.store %1, %arg4[%arg8, %arg7] : memref<?x28xf64>
      }
    }
    return
  }
}

