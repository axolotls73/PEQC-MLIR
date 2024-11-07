#map = affine_map<(d0, d1) -> (d0 + d1)>
#map1 = affine_map<(d0) -> ((-d0 + 27) floordiv 4)>
#map2 = affine_map<(d0, d1) -> (d0 + d1 * 4 + 1)>
#map3 = affine_map<(d0) -> (d0 + 1)>
#map4 = affine_map<(d0) -> (d0 + 2)>
#map5 = affine_map<(d0) -> (d0 + 3)>
#map6 = affine_map<(d0, d1) -> (d0 + ((-d0 + 27) floordiv 4) * 4 + d1 + 1)>
#map7 = affine_map<(d0) -> (d0 * 4)>
#map8 = affine_map<(d0, d1) -> (d0 + d1 * 4)>
#map9 = affine_map<(d0) -> (d0 + 24)>
module {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %cst = arith.constant 1.000000e-01 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %cst_1 = arith.constant 1.000000e+00 : f64
    %alloca = memref.alloca() {scop.scratchpad} : memref<1xf64>
    affine.store %cst_1, %arg4[27, 27] : memref<?x28xf64>
    affine.parallel (%arg7) = (0) to (27) {
      affine.parallel (%arg8) = (0) to (1) {
        %1 = affine.apply #map(%arg7, %arg8)
        affine.for %arg9 = 0 to #map1(%1) {
          %2 = affine.apply #map2(%1, %arg9)
          affine.store %cst_0, %arg4[%1, %2] : memref<?x28xf64>
          %3 = affine.apply #map3(%2)
          affine.store %cst_0, %arg4[%1, %3] : memref<?x28xf64>
          %4 = affine.apply #map4(%2)
          affine.store %cst_0, %arg4[%1, %4] : memref<?x28xf64>
          %5 = affine.apply #map5(%2)
          affine.store %cst_0, %arg4[%1, %5] : memref<?x28xf64>
        }
        affine.parallel (%arg9) = (0) to (-%1 - ((-%1 + 27) floordiv 4) * 4 + 27) {
          %2 = affine.apply #map6(%1, %arg9)
          affine.store %cst_0, %arg4[%1, %2] : memref<?x28xf64>
        }
      }
    }
    affine.for %arg7 = 0 to 6 {
      %1 = affine.apply #map7(%arg7)
      affine.for %arg8 = 0 to 1 {
        %2 = affine.apply #map8(%1, %arg8)
        affine.store %cst_1, %arg4[%2, %2] : memref<?x28xf64>
        %3 = affine.apply #map3(%2)
        affine.store %cst_1, %arg4[%3, %3] : memref<?x28xf64>
        %4 = affine.apply #map4(%2)
        affine.store %cst_1, %arg4[%4, %4] : memref<?x28xf64>
        %5 = affine.apply #map5(%2)
        affine.store %cst_1, %arg4[%5, %5] : memref<?x28xf64>
      }
    }
    affine.parallel (%arg7) = (0) to (3) {
      %1 = affine.apply #map9(%arg7)
      affine.parallel (%arg8) = (0) to (1) {
        %2 = affine.apply #map(%1, %arg8)
        affine.store %cst_1, %arg4[%2, %2] : memref<?x28xf64>
      }
    }
    %0 = math.sqrt %arg2 : f64
    affine.store %0, %alloca[0] : memref<1xf64>
    affine.for %arg7 = 0 to 7 {
      %1 = affine.apply #map7(%arg7)
      affine.for %arg8 = 0 to 1 {
        %2 = affine.apply #map8(%1, %arg8)
        affine.store %cst_0, %arg6[%2] : memref<?xf64>
        affine.store %cst_0, %arg5[%2] : memref<?xf64>
        %3 = affine.apply #map3(%2)
        affine.store %cst_0, %arg6[%3] : memref<?xf64>
        affine.store %cst_0, %arg5[%3] : memref<?xf64>
        %4 = affine.apply #map4(%2)
        affine.store %cst_0, %arg6[%4] : memref<?xf64>
        affine.store %cst_0, %arg5[%4] : memref<?xf64>
        %5 = affine.apply #map5(%2)
        affine.store %cst_0, %arg6[%5] : memref<?xf64>
        affine.store %cst_0, %arg5[%5] : memref<?xf64>
      }
    }
    affine.for %arg7 = 0 to 32 {
      affine.for %arg8 = 0 to 7 {
        %1 = affine.apply #map7(%arg8)
        affine.parallel (%arg9) = (0) to (1) {
          %2 = affine.apply #map(%arg7, %arg9)
          affine.for %arg10 = 0 to 1 {
            %3 = affine.apply #map8(%1, %arg10)
            %4 = affine.load %arg5[%3] : memref<?xf64>
            %5 = affine.load %arg3[%2, %3] : memref<?x28xf64>
            %6 = arith.addf %4, %5 : f64
            affine.store %6, %arg5[%3] : memref<?xf64>
            %7 = affine.apply #map3(%3)
            %8 = affine.load %arg5[%7] : memref<?xf64>
            %9 = affine.load %arg3[%2, %7] : memref<?x28xf64>
            %10 = arith.addf %8, %9 : f64
            affine.store %10, %arg5[%7] : memref<?xf64>
            %11 = affine.apply #map4(%3)
            %12 = affine.load %arg5[%11] : memref<?xf64>
            %13 = affine.load %arg3[%2, %11] : memref<?x28xf64>
            %14 = arith.addf %12, %13 : f64
            affine.store %14, %arg5[%11] : memref<?xf64>
            %15 = affine.apply #map5(%3)
            %16 = affine.load %arg5[%15] : memref<?xf64>
            %17 = affine.load %arg3[%2, %15] : memref<?x28xf64>
            %18 = arith.addf %16, %17 : f64
            affine.store %18, %arg5[%15] : memref<?xf64>
          }
        }
      }
    }
    affine.for %arg7 = 0 to 7 {
      %1 = affine.apply #map7(%arg7)
      affine.for %arg8 = 0 to 1 {
        %2 = affine.apply #map8(%1, %arg8)
        %3 = affine.load %arg5[%2] : memref<?xf64>
        %4 = arith.divf %3, %arg2 : f64
        affine.store %4, %arg5[%2] : memref<?xf64>
        %5 = affine.apply #map3(%2)
        %6 = affine.load %arg5[%5] : memref<?xf64>
        %7 = arith.divf %6, %arg2 : f64
        affine.store %7, %arg5[%5] : memref<?xf64>
        %8 = affine.apply #map4(%2)
        %9 = affine.load %arg5[%8] : memref<?xf64>
        %10 = arith.divf %9, %arg2 : f64
        affine.store %10, %arg5[%8] : memref<?xf64>
        %11 = affine.apply #map5(%2)
        %12 = affine.load %arg5[%11] : memref<?xf64>
        %13 = arith.divf %12, %arg2 : f64
        affine.store %13, %arg5[%11] : memref<?xf64>
      }
    }
    affine.for %arg7 = 0 to 32 {
      affine.for %arg8 = 0 to 7 {
        %1 = affine.apply #map7(%arg8)
        affine.parallel (%arg9) = (0) to (1) {
          %2 = affine.apply #map(%arg7, %arg9)
          affine.for %arg10 = 0 to 1 {
            %3 = affine.apply #map8(%1, %arg10)
            %4 = affine.load %arg6[%3] : memref<?xf64>
            %5 = affine.load %arg3[%2, %3] : memref<?x28xf64>
            %6 = affine.load %arg5[%3] : memref<?xf64>
            %7 = arith.subf %5, %6 : f64
            %8 = arith.mulf %7, %7 : f64
            %9 = arith.addf %4, %8 : f64
            affine.store %9, %arg6[%3] : memref<?xf64>
            %10 = affine.load %arg3[%2, %3] : memref<?x28xf64>
            %11 = affine.load %arg5[%3] : memref<?xf64>
            %12 = arith.subf %10, %11 : f64
            affine.store %12, %arg3[%2, %3] : memref<?x28xf64>
            %13 = affine.apply #map3(%3)
            %14 = affine.load %arg6[%13] : memref<?xf64>
            %15 = affine.load %arg3[%2, %13] : memref<?x28xf64>
            %16 = affine.load %arg5[%13] : memref<?xf64>
            %17 = arith.subf %15, %16 : f64
            %18 = arith.mulf %17, %17 : f64
            %19 = arith.addf %14, %18 : f64
            affine.store %19, %arg6[%13] : memref<?xf64>
            %20 = affine.load %arg3[%2, %13] : memref<?x28xf64>
            %21 = affine.load %arg5[%13] : memref<?xf64>
            %22 = arith.subf %20, %21 : f64
            affine.store %22, %arg3[%2, %13] : memref<?x28xf64>
            %23 = affine.apply #map4(%3)
            %24 = affine.load %arg6[%23] : memref<?xf64>
            %25 = affine.load %arg3[%2, %23] : memref<?x28xf64>
            %26 = affine.load %arg5[%23] : memref<?xf64>
            %27 = arith.subf %25, %26 : f64
            %28 = arith.mulf %27, %27 : f64
            %29 = arith.addf %24, %28 : f64
            affine.store %29, %arg6[%23] : memref<?xf64>
            %30 = affine.load %arg3[%2, %23] : memref<?x28xf64>
            %31 = affine.load %arg5[%23] : memref<?xf64>
            %32 = arith.subf %30, %31 : f64
            affine.store %32, %arg3[%2, %23] : memref<?x28xf64>
            %33 = affine.apply #map5(%3)
            %34 = affine.load %arg6[%33] : memref<?xf64>
            %35 = affine.load %arg3[%2, %33] : memref<?x28xf64>
            %36 = affine.load %arg5[%33] : memref<?xf64>
            %37 = arith.subf %35, %36 : f64
            %38 = arith.mulf %37, %37 : f64
            %39 = arith.addf %34, %38 : f64
            affine.store %39, %arg6[%33] : memref<?xf64>
            %40 = affine.load %arg3[%2, %33] : memref<?x28xf64>
            %41 = affine.load %arg5[%33] : memref<?xf64>
            %42 = arith.subf %40, %41 : f64
            affine.store %42, %arg3[%2, %33] : memref<?x28xf64>
          }
        }
      }
    }
    affine.for %arg7 = 0 to 7 {
      %1 = affine.apply #map7(%arg7)
      affine.for %arg8 = 0 to 1 {
        %2 = affine.apply #map8(%1, %arg8)
        %3 = affine.load %arg6[%2] : memref<?xf64>
        %4 = arith.divf %3, %arg2 : f64
        %5 = math.sqrt %4 : f64
        %6 = arith.cmpf ole, %5, %cst : f64
        %7 = arith.select %6, %cst_1, %5 : f64
        affine.store %7, %arg6[%2] : memref<?xf64>
        %8 = affine.apply #map3(%2)
        %9 = affine.load %arg6[%8] : memref<?xf64>
        %10 = arith.divf %9, %arg2 : f64
        %11 = math.sqrt %10 : f64
        %12 = arith.cmpf ole, %11, %cst : f64
        %13 = arith.select %12, %cst_1, %11 : f64
        affine.store %13, %arg6[%8] : memref<?xf64>
        %14 = affine.apply #map4(%2)
        %15 = affine.load %arg6[%14] : memref<?xf64>
        %16 = arith.divf %15, %arg2 : f64
        %17 = math.sqrt %16 : f64
        %18 = arith.cmpf ole, %17, %cst : f64
        %19 = arith.select %18, %cst_1, %17 : f64
        affine.store %19, %arg6[%14] : memref<?xf64>
        %20 = affine.apply #map5(%2)
        %21 = affine.load %arg6[%20] : memref<?xf64>
        %22 = arith.divf %21, %arg2 : f64
        %23 = math.sqrt %22 : f64
        %24 = arith.cmpf ole, %23, %cst : f64
        %25 = arith.select %24, %cst_1, %23 : f64
        affine.store %25, %arg6[%20] : memref<?xf64>
      }
    }
    affine.parallel (%arg7) = (0) to (32) {
      affine.for %arg8 = 0 to 7 {
        %1 = affine.apply #map7(%arg8)
        affine.parallel (%arg9) = (0) to (1) {
          %2 = affine.apply #map(%arg7, %arg9)
          %3 = affine.load %alloca[0] : memref<1xf64>
          %4 = affine.load %alloca[0] : memref<1xf64>
          %5 = affine.load %alloca[0] : memref<1xf64>
          %6 = affine.load %alloca[0] : memref<1xf64>
          affine.for %arg10 = 0 to 1 {
            %7 = affine.apply #map8(%1, %arg10)
            %8 = affine.load %arg3[%2, %7] : memref<?x28xf64>
            %9 = affine.load %arg6[%7] : memref<?xf64>
            %10 = arith.mulf %3, %9 : f64
            %11 = arith.divf %8, %10 : f64
            affine.store %11, %arg3[%2, %7] : memref<?x28xf64>
            %12 = affine.apply #map3(%7)
            %13 = affine.load %arg3[%2, %12] : memref<?x28xf64>
            %14 = affine.load %arg6[%12] : memref<?xf64>
            %15 = arith.mulf %4, %14 : f64
            %16 = arith.divf %13, %15 : f64
            affine.store %16, %arg3[%2, %12] : memref<?x28xf64>
            %17 = affine.apply #map4(%7)
            %18 = affine.load %arg3[%2, %17] : memref<?x28xf64>
            %19 = affine.load %arg6[%17] : memref<?xf64>
            %20 = arith.mulf %5, %19 : f64
            %21 = arith.divf %18, %20 : f64
            affine.store %21, %arg3[%2, %17] : memref<?x28xf64>
            %22 = affine.apply #map5(%7)
            %23 = affine.load %arg3[%2, %22] : memref<?x28xf64>
            %24 = affine.load %arg6[%22] : memref<?xf64>
            %25 = arith.mulf %6, %24 : f64
            %26 = arith.divf %23, %25 : f64
            affine.store %26, %arg3[%2, %22] : memref<?x28xf64>
          }
        }
      }
    }
    affine.parallel (%arg7) = (0) to (27) {
      affine.for %arg8 = 0 to 32 {
        affine.parallel (%arg9) = (0) to (1) {
          %1 = affine.apply #map(%arg7, %arg9)
          affine.parallel (%arg10) = (0) to (1) {
            %2 = affine.apply #map(%arg8, %arg10)
            %3 = affine.load %arg3[%2, %1] : memref<?x28xf64>
            %4 = affine.load %arg3[%2, %1] : memref<?x28xf64>
            %5 = affine.load %arg3[%2, %1] : memref<?x28xf64>
            %6 = affine.load %arg3[%2, %1] : memref<?x28xf64>
            affine.for %arg11 = 0 to #map1(%1) {
              %7 = affine.apply #map2(%1, %arg11)
              %8 = affine.load %arg4[%1, %7] : memref<?x28xf64>
              %9 = affine.load %arg3[%2, %7] : memref<?x28xf64>
              %10 = arith.mulf %3, %9 : f64
              %11 = arith.addf %8, %10 : f64
              affine.store %11, %arg4[%1, %7] : memref<?x28xf64>
              %12 = affine.apply #map3(%7)
              %13 = affine.load %arg4[%1, %12] : memref<?x28xf64>
              %14 = affine.load %arg3[%2, %12] : memref<?x28xf64>
              %15 = arith.mulf %4, %14 : f64
              %16 = arith.addf %13, %15 : f64
              affine.store %16, %arg4[%1, %12] : memref<?x28xf64>
              %17 = affine.apply #map4(%7)
              %18 = affine.load %arg4[%1, %17] : memref<?x28xf64>
              %19 = affine.load %arg3[%2, %17] : memref<?x28xf64>
              %20 = arith.mulf %5, %19 : f64
              %21 = arith.addf %18, %20 : f64
              affine.store %21, %arg4[%1, %17] : memref<?x28xf64>
              %22 = affine.apply #map5(%7)
              %23 = affine.load %arg4[%1, %22] : memref<?x28xf64>
              %24 = affine.load %arg3[%2, %22] : memref<?x28xf64>
              %25 = arith.mulf %6, %24 : f64
              %26 = arith.addf %23, %25 : f64
              affine.store %26, %arg4[%1, %22] : memref<?x28xf64>
            }
            affine.parallel (%arg11) = (0) to (-%1 - ((-%1 + 27) floordiv 4) * 4 + 27) {
              %7 = affine.apply #map6(%1, %arg11)
              %8 = affine.load %arg4[%1, %7] : memref<?x28xf64>
              %9 = affine.load %arg3[%2, %1] : memref<?x28xf64>
              %10 = affine.load %arg3[%2, %7] : memref<?x28xf64>
              %11 = arith.mulf %9, %10 : f64
              %12 = arith.addf %8, %11 : f64
              affine.store %12, %arg4[%1, %7] : memref<?x28xf64>
            }
          }
        }
      }
    }
    affine.for %arg7 = 0 to 27 {
      affine.parallel (%arg8) = (0) to (1) {
        %1 = affine.apply #map(%arg7, %arg8)
        affine.for %arg9 = 0 to #map1(%1) {
          %2 = affine.apply #map2(%1, %arg9)
          %3 = affine.load %arg4[%1, %2] : memref<?x28xf64>
          affine.store %3, %arg4[%2, %1] : memref<?x28xf64>
          %4 = affine.apply #map3(%2)
          %5 = affine.load %arg4[%1, %4] : memref<?x28xf64>
          affine.store %5, %arg4[%4, %1] : memref<?x28xf64>
          %6 = affine.apply #map4(%2)
          %7 = affine.load %arg4[%1, %6] : memref<?x28xf64>
          affine.store %7, %arg4[%6, %1] : memref<?x28xf64>
          %8 = affine.apply #map5(%2)
          %9 = affine.load %arg4[%1, %8] : memref<?x28xf64>
          affine.store %9, %arg4[%8, %1] : memref<?x28xf64>
        }
        affine.parallel (%arg9) = (0) to (-%1 - ((-%1 + 27) floordiv 4) * 4 + 27) {
          %2 = affine.apply #map6(%1, %arg9)
          %3 = affine.load %arg4[%1, %2] : memref<?x28xf64>
          affine.store %3, %arg4[%2, %1] : memref<?x28xf64>
        }
      }
    }
    return
  }
}

