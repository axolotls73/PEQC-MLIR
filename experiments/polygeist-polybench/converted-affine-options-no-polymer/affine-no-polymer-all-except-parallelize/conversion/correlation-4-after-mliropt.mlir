#map = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0, d1) -> (d0 + d1)>
#map2 = affine_map<(d0) -> (d0 * 4)>
#map3 = affine_map<(d0) -> (d0 + 1)>
#map4 = affine_map<(d0) -> (d0 + 2)>
#map5 = affine_map<(d0) -> (d0 + 3)>
#map6 = affine_map<(d0) -> (d0 * 128)>
#map7 = affine_map<(d0, d1) -> (d0 + d1 * 4)>
#map8 = affine_map<(d0) -> (-d0 + 27)>
#map9 = affine_map<(d0, d1) -> (d0 + d1 + 1)>
module {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %cst_1 = arith.constant 1.000000e-01 : f64
    affine.for %arg7 = 0 to 1 {
      %1 = affine.apply #map(%arg7)
      affine.for %arg8 = 0 to 28 {
        %2 = affine.apply #map1(%1, %arg8)
        affine.store %cst_0, %arg5[%2] : memref<?xf64>
        affine.for %arg9 = 0 to 8 {
          %5 = affine.apply #map2(%arg9)
          %6 = affine.load %arg3[%5, %2] : memref<?x28xf64>
          %7 = affine.load %arg5[%2] : memref<?xf64>
          %8 = arith.addf %7, %6 : f64
          affine.store %8, %arg5[%2] : memref<?xf64>
          %9 = affine.apply #map3(%5)
          %10 = affine.load %arg3[%9, %2] : memref<?x28xf64>
          %11 = affine.load %arg5[%2] : memref<?xf64>
          %12 = arith.addf %11, %10 : f64
          affine.store %12, %arg5[%2] : memref<?xf64>
          %13 = affine.apply #map4(%5)
          %14 = affine.load %arg3[%13, %2] : memref<?x28xf64>
          %15 = affine.load %arg5[%2] : memref<?xf64>
          %16 = arith.addf %15, %14 : f64
          affine.store %16, %arg5[%2] : memref<?xf64>
          %17 = affine.apply #map5(%5)
          %18 = affine.load %arg3[%17, %2] : memref<?x28xf64>
          %19 = affine.load %arg5[%2] : memref<?xf64>
          %20 = arith.addf %19, %18 : f64
          affine.store %20, %arg5[%2] : memref<?xf64>
        }
        %3 = affine.load %arg5[%2] : memref<?xf64>
        %4 = arith.divf %3, %arg2 : f64
        affine.store %4, %arg5[%2] : memref<?xf64>
      }
    }
    affine.for %arg7 = 0 to 1 {
      %1 = affine.apply #map(%arg7)
      affine.for %arg8 = 0 to 28 {
        %2 = affine.apply #map1(%1, %arg8)
        affine.store %cst_0, %arg6[%2] : memref<?xf64>
        %3 = affine.load %arg5[%2] : memref<?xf64>
        %4 = affine.load %arg5[%2] : memref<?xf64>
        %5 = affine.load %arg5[%2] : memref<?xf64>
        %6 = affine.load %arg5[%2] : memref<?xf64>
        affine.for %arg9 = 0 to 8 {
          %12 = affine.apply #map2(%arg9)
          %13 = affine.load %arg3[%12, %2] : memref<?x28xf64>
          %14 = arith.subf %13, %3 : f64
          %15 = arith.mulf %14, %14 : f64
          %16 = affine.load %arg6[%2] : memref<?xf64>
          %17 = arith.addf %16, %15 : f64
          affine.store %17, %arg6[%2] : memref<?xf64>
          %18 = affine.apply #map3(%12)
          %19 = affine.load %arg3[%18, %2] : memref<?x28xf64>
          %20 = arith.subf %19, %4 : f64
          %21 = arith.mulf %20, %20 : f64
          %22 = affine.load %arg6[%2] : memref<?xf64>
          %23 = arith.addf %22, %21 : f64
          affine.store %23, %arg6[%2] : memref<?xf64>
          %24 = affine.apply #map4(%12)
          %25 = affine.load %arg3[%24, %2] : memref<?x28xf64>
          %26 = arith.subf %25, %5 : f64
          %27 = arith.mulf %26, %26 : f64
          %28 = affine.load %arg6[%2] : memref<?xf64>
          %29 = arith.addf %28, %27 : f64
          affine.store %29, %arg6[%2] : memref<?xf64>
          %30 = affine.apply #map5(%12)
          %31 = affine.load %arg3[%30, %2] : memref<?x28xf64>
          %32 = arith.subf %31, %6 : f64
          %33 = arith.mulf %32, %32 : f64
          %34 = affine.load %arg6[%2] : memref<?xf64>
          %35 = arith.addf %34, %33 : f64
          affine.store %35, %arg6[%2] : memref<?xf64>
        }
        %7 = affine.load %arg6[%2] : memref<?xf64>
        %8 = arith.divf %7, %arg2 : f64
        %9 = math.sqrt %8 : f64
        %10 = arith.cmpf ole, %9, %cst_1 : f64
        %11 = arith.select %10, %cst, %9 : f64
        affine.store %11, %arg6[%2] : memref<?xf64>
      }
    }
    %0 = math.sqrt %arg2 : f64
    affine.for %arg7 = 0 to 1 {
      %1 = affine.apply #map(%arg7)
      affine.for %arg8 = 0 to 1 {
        %2 = affine.apply #map6(%arg8)
        affine.for %arg9 = 0 to 32 {
          %3 = affine.apply #map1(%1, %arg9)
          affine.for %arg10 = 0 to 7 {
            %4 = affine.apply #map7(%2, %arg10)
            %5 = affine.load %arg5[%4] : memref<?xf64>
            %6 = affine.load %arg3[%3, %4] : memref<?x28xf64>
            %7 = arith.subf %6, %5 : f64
            affine.store %7, %arg3[%3, %4] : memref<?x28xf64>
            %8 = affine.load %arg6[%4] : memref<?xf64>
            %9 = arith.mulf %0, %8 : f64
            %10 = arith.divf %7, %9 : f64
            affine.store %10, %arg3[%3, %4] : memref<?x28xf64>
            %11 = affine.apply #map3(%4)
            %12 = affine.load %arg5[%11] : memref<?xf64>
            %13 = affine.load %arg3[%3, %11] : memref<?x28xf64>
            %14 = arith.subf %13, %12 : f64
            affine.store %14, %arg3[%3, %11] : memref<?x28xf64>
            %15 = affine.load %arg6[%11] : memref<?xf64>
            %16 = arith.mulf %0, %15 : f64
            %17 = arith.divf %14, %16 : f64
            affine.store %17, %arg3[%3, %11] : memref<?x28xf64>
            %18 = affine.apply #map4(%4)
            %19 = affine.load %arg5[%18] : memref<?xf64>
            %20 = affine.load %arg3[%3, %18] : memref<?x28xf64>
            %21 = arith.subf %20, %19 : f64
            affine.store %21, %arg3[%3, %18] : memref<?x28xf64>
            %22 = affine.load %arg6[%18] : memref<?xf64>
            %23 = arith.mulf %0, %22 : f64
            %24 = arith.divf %21, %23 : f64
            affine.store %24, %arg3[%3, %18] : memref<?x28xf64>
            %25 = affine.apply #map5(%4)
            %26 = affine.load %arg5[%25] : memref<?xf64>
            %27 = affine.load %arg3[%3, %25] : memref<?x28xf64>
            %28 = arith.subf %27, %26 : f64
            affine.store %28, %arg3[%3, %25] : memref<?x28xf64>
            %29 = affine.load %arg6[%25] : memref<?xf64>
            %30 = arith.mulf %0, %29 : f64
            %31 = arith.divf %28, %30 : f64
            affine.store %31, %arg3[%3, %25] : memref<?x28xf64>
          }
        }
      }
    }
    affine.for %arg7 = 0 to 1 {
      %1 = affine.apply #map(%arg7)
      affine.for %arg8 = 0 to 27 {
        %2 = affine.apply #map1(%1, %arg8)
        affine.store %cst, %arg4[%2, %2] : memref<?x28xf64>
        affine.for %arg9 = 0 to #map8(%2) {
          %3 = affine.apply #map9(%2, %arg9)
          affine.store %cst_0, %arg4[%2, %3] : memref<?x28xf64>
          affine.for %arg10 = 0 to 8 {
            %5 = affine.apply #map2(%arg10)
            %6 = affine.load %arg3[%5, %2] : memref<?x28xf64>
            %7 = affine.load %arg3[%5, %3] : memref<?x28xf64>
            %8 = arith.mulf %6, %7 : f64
            %9 = affine.load %arg4[%2, %3] : memref<?x28xf64>
            %10 = arith.addf %9, %8 : f64
            affine.store %10, %arg4[%2, %3] : memref<?x28xf64>
            %11 = affine.apply #map3(%5)
            %12 = affine.load %arg3[%11, %2] : memref<?x28xf64>
            %13 = affine.load %arg3[%11, %3] : memref<?x28xf64>
            %14 = arith.mulf %12, %13 : f64
            %15 = affine.load %arg4[%2, %3] : memref<?x28xf64>
            %16 = arith.addf %15, %14 : f64
            affine.store %16, %arg4[%2, %3] : memref<?x28xf64>
            %17 = affine.apply #map4(%5)
            %18 = affine.load %arg3[%17, %2] : memref<?x28xf64>
            %19 = affine.load %arg3[%17, %3] : memref<?x28xf64>
            %20 = arith.mulf %18, %19 : f64
            %21 = affine.load %arg4[%2, %3] : memref<?x28xf64>
            %22 = arith.addf %21, %20 : f64
            affine.store %22, %arg4[%2, %3] : memref<?x28xf64>
            %23 = affine.apply #map5(%5)
            %24 = affine.load %arg3[%23, %2] : memref<?x28xf64>
            %25 = affine.load %arg3[%23, %3] : memref<?x28xf64>
            %26 = arith.mulf %24, %25 : f64
            %27 = affine.load %arg4[%2, %3] : memref<?x28xf64>
            %28 = arith.addf %27, %26 : f64
            affine.store %28, %arg4[%2, %3] : memref<?x28xf64>
          }
          %4 = affine.load %arg4[%2, %3] : memref<?x28xf64>
          affine.store %4, %arg4[%3, %2] : memref<?x28xf64>
        }
      }
    }
    affine.store %cst, %arg4[27, 27] : memref<?x28xf64>
    return
  }
}

