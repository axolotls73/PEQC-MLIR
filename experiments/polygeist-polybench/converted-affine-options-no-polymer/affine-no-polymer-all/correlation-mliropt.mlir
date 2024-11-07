#map = affine_map<(d0, d1) -> (d0 + d1)>
#map1 = affine_map<(d0) -> (d0 * 4)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0) -> (d0 + 2)>
#map4 = affine_map<(d0) -> (d0 + 3)>
#map5 = affine_map<(d0, d1) -> (d0 + d1 * 4)>
#map6 = affine_map<(d0, d1) -> (d0 + d1 + 1)>
module {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %cst_1 = arith.constant 1.000000e-01 : f64
    affine.parallel (%arg7) = (0) to (28) {
      affine.parallel (%arg8) = (0) to (1) {
        %1 = affine.apply #map(%arg7, %arg8)
        affine.store %cst_0, %arg5[%1] : memref<?xf64>
        affine.for %arg9 = 0 to 8 {
          %4 = affine.apply #map1(%arg9)
          %5 = affine.load %arg3[%4, %1] : memref<?x28xf64>
          %6 = affine.load %arg5[%1] : memref<?xf64>
          %7 = arith.addf %6, %5 : f64
          affine.store %7, %arg5[%1] : memref<?xf64>
          %8 = affine.apply #map2(%4)
          %9 = affine.load %arg3[%8, %1] : memref<?x28xf64>
          %10 = affine.load %arg5[%1] : memref<?xf64>
          %11 = arith.addf %10, %9 : f64
          affine.store %11, %arg5[%1] : memref<?xf64>
          %12 = affine.apply #map3(%4)
          %13 = affine.load %arg3[%12, %1] : memref<?x28xf64>
          %14 = affine.load %arg5[%1] : memref<?xf64>
          %15 = arith.addf %14, %13 : f64
          affine.store %15, %arg5[%1] : memref<?xf64>
          %16 = affine.apply #map4(%4)
          %17 = affine.load %arg3[%16, %1] : memref<?x28xf64>
          %18 = affine.load %arg5[%1] : memref<?xf64>
          %19 = arith.addf %18, %17 : f64
          affine.store %19, %arg5[%1] : memref<?xf64>
        }
        %2 = affine.load %arg5[%1] : memref<?xf64>
        %3 = arith.divf %2, %arg2 : f64
        affine.store %3, %arg5[%1] : memref<?xf64>
      }
    }
    affine.parallel (%arg7) = (0) to (28) {
      affine.parallel (%arg8) = (0) to (1) {
        %1 = affine.apply #map(%arg7, %arg8)
        affine.store %cst_0, %arg6[%1] : memref<?xf64>
        %2 = affine.load %arg5[%1] : memref<?xf64>
        %3 = affine.load %arg5[%1] : memref<?xf64>
        %4 = affine.load %arg5[%1] : memref<?xf64>
        %5 = affine.load %arg5[%1] : memref<?xf64>
        affine.for %arg9 = 0 to 8 {
          %11 = affine.apply #map1(%arg9)
          %12 = affine.load %arg3[%11, %1] : memref<?x28xf64>
          %13 = arith.subf %12, %2 : f64
          %14 = arith.mulf %13, %13 : f64
          %15 = affine.load %arg6[%1] : memref<?xf64>
          %16 = arith.addf %15, %14 : f64
          affine.store %16, %arg6[%1] : memref<?xf64>
          %17 = affine.apply #map2(%11)
          %18 = affine.load %arg3[%17, %1] : memref<?x28xf64>
          %19 = arith.subf %18, %3 : f64
          %20 = arith.mulf %19, %19 : f64
          %21 = affine.load %arg6[%1] : memref<?xf64>
          %22 = arith.addf %21, %20 : f64
          affine.store %22, %arg6[%1] : memref<?xf64>
          %23 = affine.apply #map3(%11)
          %24 = affine.load %arg3[%23, %1] : memref<?x28xf64>
          %25 = arith.subf %24, %4 : f64
          %26 = arith.mulf %25, %25 : f64
          %27 = affine.load %arg6[%1] : memref<?xf64>
          %28 = arith.addf %27, %26 : f64
          affine.store %28, %arg6[%1] : memref<?xf64>
          %29 = affine.apply #map4(%11)
          %30 = affine.load %arg3[%29, %1] : memref<?x28xf64>
          %31 = arith.subf %30, %5 : f64
          %32 = arith.mulf %31, %31 : f64
          %33 = affine.load %arg6[%1] : memref<?xf64>
          %34 = arith.addf %33, %32 : f64
          affine.store %34, %arg6[%1] : memref<?xf64>
        }
        %6 = affine.load %arg6[%1] : memref<?xf64>
        %7 = arith.divf %6, %arg2 : f64
        %8 = math.sqrt %7 : f64
        %9 = arith.cmpf ole, %8, %cst_1 : f64
        %10 = arith.select %9, %cst, %8 : f64
        affine.store %10, %arg6[%1] : memref<?xf64>
      }
    }
    %0 = math.sqrt %arg2 : f64
    affine.parallel (%arg7) = (0) to (32) {
      affine.for %arg8 = 0 to 7 {
        %1 = affine.apply #map1(%arg8)
        affine.parallel (%arg9) = (0) to (1) {
          %2 = affine.apply #map(%arg7, %arg9)
          affine.for %arg10 = 0 to 1 {
            %3 = affine.apply #map5(%1, %arg10)
            %4 = affine.load %arg5[%3] : memref<?xf64>
            %5 = affine.load %arg3[%2, %3] : memref<?x28xf64>
            %6 = arith.subf %5, %4 : f64
            affine.store %6, %arg3[%2, %3] : memref<?x28xf64>
            %7 = affine.load %arg6[%3] : memref<?xf64>
            %8 = arith.mulf %0, %7 : f64
            %9 = arith.divf %6, %8 : f64
            affine.store %9, %arg3[%2, %3] : memref<?x28xf64>
            %10 = affine.apply #map2(%3)
            %11 = affine.load %arg5[%10] : memref<?xf64>
            %12 = affine.load %arg3[%2, %10] : memref<?x28xf64>
            %13 = arith.subf %12, %11 : f64
            affine.store %13, %arg3[%2, %10] : memref<?x28xf64>
            %14 = affine.load %arg6[%10] : memref<?xf64>
            %15 = arith.mulf %0, %14 : f64
            %16 = arith.divf %13, %15 : f64
            affine.store %16, %arg3[%2, %10] : memref<?x28xf64>
            %17 = affine.apply #map3(%3)
            %18 = affine.load %arg5[%17] : memref<?xf64>
            %19 = affine.load %arg3[%2, %17] : memref<?x28xf64>
            %20 = arith.subf %19, %18 : f64
            affine.store %20, %arg3[%2, %17] : memref<?x28xf64>
            %21 = affine.load %arg6[%17] : memref<?xf64>
            %22 = arith.mulf %0, %21 : f64
            %23 = arith.divf %20, %22 : f64
            affine.store %23, %arg3[%2, %17] : memref<?x28xf64>
            %24 = affine.apply #map4(%3)
            %25 = affine.load %arg5[%24] : memref<?xf64>
            %26 = affine.load %arg3[%2, %24] : memref<?x28xf64>
            %27 = arith.subf %26, %25 : f64
            affine.store %27, %arg3[%2, %24] : memref<?x28xf64>
            %28 = affine.load %arg6[%24] : memref<?xf64>
            %29 = arith.mulf %0, %28 : f64
            %30 = arith.divf %27, %29 : f64
            affine.store %30, %arg3[%2, %24] : memref<?x28xf64>
          }
        }
      }
    }
    affine.parallel (%arg7) = (0) to (27) {
      affine.parallel (%arg8) = (0) to (1) {
        %1 = affine.apply #map(%arg7, %arg8)
        affine.store %cst, %arg4[%1, %1] : memref<?x28xf64>
        affine.parallel (%arg9) = (0) to (-%1 + 27) {
          %2 = affine.apply #map6(%1, %arg9)
          affine.store %cst_0, %arg4[%1, %2] : memref<?x28xf64>
          affine.for %arg10 = 0 to 8 {
            %4 = affine.apply #map1(%arg10)
            %5 = affine.load %arg3[%4, %1] : memref<?x28xf64>
            %6 = affine.load %arg3[%4, %2] : memref<?x28xf64>
            %7 = arith.mulf %5, %6 : f64
            %8 = affine.load %arg4[%1, %2] : memref<?x28xf64>
            %9 = arith.addf %8, %7 : f64
            affine.store %9, %arg4[%1, %2] : memref<?x28xf64>
            %10 = affine.apply #map2(%4)
            %11 = affine.load %arg3[%10, %1] : memref<?x28xf64>
            %12 = affine.load %arg3[%10, %2] : memref<?x28xf64>
            %13 = arith.mulf %11, %12 : f64
            %14 = affine.load %arg4[%1, %2] : memref<?x28xf64>
            %15 = arith.addf %14, %13 : f64
            affine.store %15, %arg4[%1, %2] : memref<?x28xf64>
            %16 = affine.apply #map3(%4)
            %17 = affine.load %arg3[%16, %1] : memref<?x28xf64>
            %18 = affine.load %arg3[%16, %2] : memref<?x28xf64>
            %19 = arith.mulf %17, %18 : f64
            %20 = affine.load %arg4[%1, %2] : memref<?x28xf64>
            %21 = arith.addf %20, %19 : f64
            affine.store %21, %arg4[%1, %2] : memref<?x28xf64>
            %22 = affine.apply #map4(%4)
            %23 = affine.load %arg3[%22, %1] : memref<?x28xf64>
            %24 = affine.load %arg3[%22, %2] : memref<?x28xf64>
            %25 = arith.mulf %23, %24 : f64
            %26 = affine.load %arg4[%1, %2] : memref<?x28xf64>
            %27 = arith.addf %26, %25 : f64
            affine.store %27, %arg4[%1, %2] : memref<?x28xf64>
          }
          %3 = affine.load %arg4[%1, %2] : memref<?x28xf64>
          affine.store %3, %arg4[%2, %1] : memref<?x28xf64>
        }
      }
    }
    affine.store %cst, %arg4[27, 27] : memref<?x28xf64>
    return
  }
}

