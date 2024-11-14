#map = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0, d1) -> (d0 + d1)>
#map2 = affine_map<(d0) -> ((-d0 + 27) floordiv 4)>
#map3 = affine_map<(d0, d1) -> (d0 + d1 * 4 + 1)>
#map4 = affine_map<(d0) -> (d0 + 1)>
#map5 = affine_map<(d0) -> (d0 + 2)>
#map6 = affine_map<(d0) -> (d0 + 3)>
#map7 = affine_map<(d0) -> (-d0 - ((-d0 + 27) floordiv 4) * 4 + 27)>
#map8 = affine_map<(d0, d1) -> (d0 + d1 + ((-d0 + 27) floordiv 4) * 4 + 1)>
#map9 = affine_map<(d0) -> (d0 * 128)>
#map10 = affine_map<(d0, d1) -> (d0 + d1 * 4)>
#map11 = affine_map<(d0) -> (d0 * 32 + 24)>
module {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %cst = arith.constant 1.000000e-01 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %cst_1 = arith.constant 1.000000e+00 : f64
    %alloca = memref.alloca() {scop.scratchpad} : memref<1xf64>
    affine.store %cst_1, %arg4[27, 27] : memref<?x28xf64>
    affine.parallel (%arg7) = (0) to (1) {
      %1 = affine.apply #map(%arg7)
      affine.for %arg8 = 0 to 27 {
        %2 = affine.apply #map1(%1, %arg8)
        affine.for %arg9 = 0 to #map2(%2) {
          %3 = affine.apply #map3(%2, %arg9)
          affine.store %cst_0, %arg4[%2, %3] : memref<?x28xf64>
          %4 = affine.apply #map4(%3)
          affine.store %cst_0, %arg4[%2, %4] : memref<?x28xf64>
          %5 = affine.apply #map5(%3)
          affine.store %cst_0, %arg4[%2, %5] : memref<?x28xf64>
          %6 = affine.apply #map6(%3)
          affine.store %cst_0, %arg4[%2, %6] : memref<?x28xf64>
        }
        affine.for %arg9 = 0 to #map7(%2) {
          %3 = affine.apply #map8(%2, %arg9)
          affine.store %cst_0, %arg4[%2, %3] : memref<?x28xf64>
        }
      }
    }
    affine.parallel (%arg7) = (0) to (1) {
      %1 = affine.apply #map9(%arg7)
      affine.for %arg8 = 0 to 6 {
        %2 = affine.apply #map10(%1, %arg8)
        affine.store %cst_1, %arg4[%2, %2] : memref<?x28xf64>
        %3 = affine.apply #map4(%2)
        affine.store %cst_1, %arg4[%3, %3] : memref<?x28xf64>
        %4 = affine.apply #map5(%2)
        affine.store %cst_1, %arg4[%4, %4] : memref<?x28xf64>
        %5 = affine.apply #map6(%2)
        affine.store %cst_1, %arg4[%5, %5] : memref<?x28xf64>
      }
    }
    affine.parallel (%arg7) = (0) to (1) {
      %1 = affine.apply #map11(%arg7)
      affine.for %arg8 = 0 to 3 {
        %2 = affine.apply #map1(%1, %arg8)
        affine.store %cst_1, %arg4[%2, %2] : memref<?x28xf64>
      }
    }
    %0 = math.sqrt %arg2 : f64
    affine.store %0, %alloca[0] : memref<1xf64>
    affine.parallel (%arg7) = (0) to (1) {
      %1 = affine.apply #map9(%arg7)
      affine.for %arg8 = 0 to 7 {
        %2 = affine.apply #map10(%1, %arg8)
        affine.store %cst_0, %arg6[%2] : memref<?xf64>
        affine.store %cst_0, %arg5[%2] : memref<?xf64>
        %3 = affine.apply #map4(%2)
        affine.store %cst_0, %arg6[%3] : memref<?xf64>
        affine.store %cst_0, %arg5[%3] : memref<?xf64>
        %4 = affine.apply #map5(%2)
        affine.store %cst_0, %arg6[%4] : memref<?xf64>
        affine.store %cst_0, %arg5[%4] : memref<?xf64>
        %5 = affine.apply #map6(%2)
        affine.store %cst_0, %arg6[%5] : memref<?xf64>
        affine.store %cst_0, %arg5[%5] : memref<?xf64>
      }
    }
    affine.parallel (%arg7) = (0) to (1) {
      %1 = affine.apply #map(%arg7)
      affine.for %arg8 = 0 to 1 {
        %2 = affine.apply #map9(%arg8)
        affine.for %arg9 = 0 to 32 {
          %3 = affine.apply #map1(%1, %arg9)
          affine.for %arg10 = 0 to 7 {
            %4 = affine.apply #map10(%2, %arg10)
            %5 = affine.load %arg5[%4] : memref<?xf64>
            %6 = affine.load %arg3[%3, %4] : memref<?x28xf64>
            %7 = arith.addf %5, %6 : f64
            affine.store %7, %arg5[%4] : memref<?xf64>
            %8 = affine.apply #map4(%4)
            %9 = affine.load %arg5[%8] : memref<?xf64>
            %10 = affine.load %arg3[%3, %8] : memref<?x28xf64>
            %11 = arith.addf %9, %10 : f64
            affine.store %11, %arg5[%8] : memref<?xf64>
            %12 = affine.apply #map5(%4)
            %13 = affine.load %arg5[%12] : memref<?xf64>
            %14 = affine.load %arg3[%3, %12] : memref<?x28xf64>
            %15 = arith.addf %13, %14 : f64
            affine.store %15, %arg5[%12] : memref<?xf64>
            %16 = affine.apply #map6(%4)
            %17 = affine.load %arg5[%16] : memref<?xf64>
            %18 = affine.load %arg3[%3, %16] : memref<?x28xf64>
            %19 = arith.addf %17, %18 : f64
            affine.store %19, %arg5[%16] : memref<?xf64>
          }
        }
      }
    }
    affine.parallel (%arg7) = (0) to (1) {
      %1 = affine.apply #map9(%arg7)
      affine.for %arg8 = 0 to 7 {
        %2 = affine.apply #map10(%1, %arg8)
        %3 = affine.load %arg5[%2] : memref<?xf64>
        %4 = arith.divf %3, %arg2 : f64
        affine.store %4, %arg5[%2] : memref<?xf64>
        %5 = affine.apply #map4(%2)
        %6 = affine.load %arg5[%5] : memref<?xf64>
        %7 = arith.divf %6, %arg2 : f64
        affine.store %7, %arg5[%5] : memref<?xf64>
        %8 = affine.apply #map5(%2)
        %9 = affine.load %arg5[%8] : memref<?xf64>
        %10 = arith.divf %9, %arg2 : f64
        affine.store %10, %arg5[%8] : memref<?xf64>
        %11 = affine.apply #map6(%2)
        %12 = affine.load %arg5[%11] : memref<?xf64>
        %13 = arith.divf %12, %arg2 : f64
        affine.store %13, %arg5[%11] : memref<?xf64>
      }
    }
    affine.parallel (%arg7) = (0) to (1) {
      %1 = affine.apply #map(%arg7)
      affine.for %arg8 = 0 to 1 {
        %2 = affine.apply #map9(%arg8)
        affine.for %arg9 = 0 to 32 {
          %3 = affine.apply #map1(%1, %arg9)
          affine.for %arg10 = 0 to 7 {
            %4 = affine.apply #map10(%2, %arg10)
            %5 = affine.load %arg6[%4] : memref<?xf64>
            %6 = affine.load %arg3[%3, %4] : memref<?x28xf64>
            %7 = affine.load %arg5[%4] : memref<?xf64>
            %8 = arith.subf %6, %7 : f64
            %9 = arith.mulf %8, %8 : f64
            %10 = arith.addf %5, %9 : f64
            affine.store %10, %arg6[%4] : memref<?xf64>
            %11 = affine.load %arg3[%3, %4] : memref<?x28xf64>
            %12 = affine.load %arg5[%4] : memref<?xf64>
            %13 = arith.subf %11, %12 : f64
            affine.store %13, %arg3[%3, %4] : memref<?x28xf64>
            %14 = affine.apply #map4(%4)
            %15 = affine.load %arg6[%14] : memref<?xf64>
            %16 = affine.load %arg3[%3, %14] : memref<?x28xf64>
            %17 = affine.load %arg5[%14] : memref<?xf64>
            %18 = arith.subf %16, %17 : f64
            %19 = arith.mulf %18, %18 : f64
            %20 = arith.addf %15, %19 : f64
            affine.store %20, %arg6[%14] : memref<?xf64>
            %21 = affine.load %arg3[%3, %14] : memref<?x28xf64>
            %22 = affine.load %arg5[%14] : memref<?xf64>
            %23 = arith.subf %21, %22 : f64
            affine.store %23, %arg3[%3, %14] : memref<?x28xf64>
            %24 = affine.apply #map5(%4)
            %25 = affine.load %arg6[%24] : memref<?xf64>
            %26 = affine.load %arg3[%3, %24] : memref<?x28xf64>
            %27 = affine.load %arg5[%24] : memref<?xf64>
            %28 = arith.subf %26, %27 : f64
            %29 = arith.mulf %28, %28 : f64
            %30 = arith.addf %25, %29 : f64
            affine.store %30, %arg6[%24] : memref<?xf64>
            %31 = affine.load %arg3[%3, %24] : memref<?x28xf64>
            %32 = affine.load %arg5[%24] : memref<?xf64>
            %33 = arith.subf %31, %32 : f64
            affine.store %33, %arg3[%3, %24] : memref<?x28xf64>
            %34 = affine.apply #map6(%4)
            %35 = affine.load %arg6[%34] : memref<?xf64>
            %36 = affine.load %arg3[%3, %34] : memref<?x28xf64>
            %37 = affine.load %arg5[%34] : memref<?xf64>
            %38 = arith.subf %36, %37 : f64
            %39 = arith.mulf %38, %38 : f64
            %40 = arith.addf %35, %39 : f64
            affine.store %40, %arg6[%34] : memref<?xf64>
            %41 = affine.load %arg3[%3, %34] : memref<?x28xf64>
            %42 = affine.load %arg5[%34] : memref<?xf64>
            %43 = arith.subf %41, %42 : f64
            affine.store %43, %arg3[%3, %34] : memref<?x28xf64>
          }
        }
      }
    }
    affine.parallel (%arg7) = (0) to (1) {
      %1 = affine.apply #map9(%arg7)
      affine.for %arg8 = 0 to 7 {
        %2 = affine.apply #map10(%1, %arg8)
        %3 = affine.load %arg6[%2] : memref<?xf64>
        %4 = arith.divf %3, %arg2 : f64
        %5 = math.sqrt %4 : f64
        %6 = arith.cmpf ole, %5, %cst : f64
        %7 = arith.select %6, %cst_1, %5 : f64
        affine.store %7, %arg6[%2] : memref<?xf64>
        %8 = affine.apply #map4(%2)
        %9 = affine.load %arg6[%8] : memref<?xf64>
        %10 = arith.divf %9, %arg2 : f64
        %11 = math.sqrt %10 : f64
        %12 = arith.cmpf ole, %11, %cst : f64
        %13 = arith.select %12, %cst_1, %11 : f64
        affine.store %13, %arg6[%8] : memref<?xf64>
        %14 = affine.apply #map5(%2)
        %15 = affine.load %arg6[%14] : memref<?xf64>
        %16 = arith.divf %15, %arg2 : f64
        %17 = math.sqrt %16 : f64
        %18 = arith.cmpf ole, %17, %cst : f64
        %19 = arith.select %18, %cst_1, %17 : f64
        affine.store %19, %arg6[%14] : memref<?xf64>
        %20 = affine.apply #map6(%2)
        %21 = affine.load %arg6[%20] : memref<?xf64>
        %22 = arith.divf %21, %arg2 : f64
        %23 = math.sqrt %22 : f64
        %24 = arith.cmpf ole, %23, %cst : f64
        %25 = arith.select %24, %cst_1, %23 : f64
        affine.store %25, %arg6[%20] : memref<?xf64>
      }
    }
    affine.parallel (%arg7) = (0) to (1) {
      %1 = affine.apply #map(%arg7)
      %2 = affine.load %alloca[0] : memref<1xf64>
      %3 = affine.load %alloca[0] : memref<1xf64>
      %4 = affine.load %alloca[0] : memref<1xf64>
      %5 = affine.load %alloca[0] : memref<1xf64>
      affine.for %arg8 = 0 to 1 {
        %6 = affine.apply #map9(%arg8)
        affine.for %arg9 = 0 to 32 {
          %7 = affine.apply #map1(%1, %arg9)
          affine.for %arg10 = 0 to 7 {
            %8 = affine.apply #map10(%6, %arg10)
            %9 = affine.load %arg3[%7, %8] : memref<?x28xf64>
            %10 = affine.load %arg6[%8] : memref<?xf64>
            %11 = arith.mulf %2, %10 : f64
            %12 = arith.divf %9, %11 : f64
            affine.store %12, %arg3[%7, %8] : memref<?x28xf64>
            %13 = affine.apply #map4(%8)
            %14 = affine.load %arg3[%7, %13] : memref<?x28xf64>
            %15 = affine.load %arg6[%13] : memref<?xf64>
            %16 = arith.mulf %3, %15 : f64
            %17 = arith.divf %14, %16 : f64
            affine.store %17, %arg3[%7, %13] : memref<?x28xf64>
            %18 = affine.apply #map5(%8)
            %19 = affine.load %arg3[%7, %18] : memref<?x28xf64>
            %20 = affine.load %arg6[%18] : memref<?xf64>
            %21 = arith.mulf %4, %20 : f64
            %22 = arith.divf %19, %21 : f64
            affine.store %22, %arg3[%7, %18] : memref<?x28xf64>
            %23 = affine.apply #map6(%8)
            %24 = affine.load %arg3[%7, %23] : memref<?x28xf64>
            %25 = affine.load %arg6[%23] : memref<?xf64>
            %26 = arith.mulf %5, %25 : f64
            %27 = arith.divf %24, %26 : f64
            affine.store %27, %arg3[%7, %23] : memref<?x28xf64>
          }
        }
      }
    }
    affine.parallel (%arg7) = (0) to (1) {
      %1 = affine.apply #map(%arg7)
      affine.for %arg8 = 0 to 1 {
        %2 = affine.apply #map(%arg8)
        affine.for %arg9 = 0 to 27 {
          %3 = affine.apply #map1(%1, %arg9)
          affine.for %arg10 = 0 to 32 {
            %4 = affine.apply #map1(%2, %arg10)
            %5 = affine.load %arg3[%4, %3] : memref<?x28xf64>
            %6 = affine.load %arg3[%4, %3] : memref<?x28xf64>
            %7 = affine.load %arg3[%4, %3] : memref<?x28xf64>
            %8 = affine.load %arg3[%4, %3] : memref<?x28xf64>
            affine.for %arg11 = 0 to #map2(%3) {
              %10 = affine.apply #map3(%3, %arg11)
              %11 = affine.load %arg4[%3, %10] : memref<?x28xf64>
              %12 = affine.load %arg3[%4, %10] : memref<?x28xf64>
              %13 = arith.mulf %5, %12 : f64
              %14 = arith.addf %11, %13 : f64
              affine.store %14, %arg4[%3, %10] : memref<?x28xf64>
              %15 = affine.apply #map4(%10)
              %16 = affine.load %arg4[%3, %15] : memref<?x28xf64>
              %17 = affine.load %arg3[%4, %15] : memref<?x28xf64>
              %18 = arith.mulf %6, %17 : f64
              %19 = arith.addf %16, %18 : f64
              affine.store %19, %arg4[%3, %15] : memref<?x28xf64>
              %20 = affine.apply #map5(%10)
              %21 = affine.load %arg4[%3, %20] : memref<?x28xf64>
              %22 = affine.load %arg3[%4, %20] : memref<?x28xf64>
              %23 = arith.mulf %7, %22 : f64
              %24 = arith.addf %21, %23 : f64
              affine.store %24, %arg4[%3, %20] : memref<?x28xf64>
              %25 = affine.apply #map6(%10)
              %26 = affine.load %arg4[%3, %25] : memref<?x28xf64>
              %27 = affine.load %arg3[%4, %25] : memref<?x28xf64>
              %28 = arith.mulf %8, %27 : f64
              %29 = arith.addf %26, %28 : f64
              affine.store %29, %arg4[%3, %25] : memref<?x28xf64>
            }
            %9 = affine.load %arg3[%4, %3] : memref<?x28xf64>
            affine.for %arg11 = 0 to #map7(%3) {
              %10 = affine.apply #map8(%3, %arg11)
              %11 = affine.load %arg4[%3, %10] : memref<?x28xf64>
              %12 = affine.load %arg3[%4, %10] : memref<?x28xf64>
              %13 = arith.mulf %9, %12 : f64
              %14 = arith.addf %11, %13 : f64
              affine.store %14, %arg4[%3, %10] : memref<?x28xf64>
            }
          }
        }
      }
    }
    affine.parallel (%arg7) = (0) to (1) {
      %1 = affine.apply #map(%arg7)
      affine.for %arg8 = 0 to 27 {
        %2 = affine.apply #map1(%1, %arg8)
        affine.for %arg9 = 0 to #map2(%2) {
          %3 = affine.apply #map3(%2, %arg9)
          %4 = affine.load %arg4[%2, %3] : memref<?x28xf64>
          affine.store %4, %arg4[%3, %2] : memref<?x28xf64>
          %5 = affine.apply #map4(%3)
          %6 = affine.load %arg4[%2, %5] : memref<?x28xf64>
          affine.store %6, %arg4[%5, %2] : memref<?x28xf64>
          %7 = affine.apply #map5(%3)
          %8 = affine.load %arg4[%2, %7] : memref<?x28xf64>
          affine.store %8, %arg4[%7, %2] : memref<?x28xf64>
          %9 = affine.apply #map6(%3)
          %10 = affine.load %arg4[%2, %9] : memref<?x28xf64>
          affine.store %10, %arg4[%9, %2] : memref<?x28xf64>
        }
        affine.for %arg9 = 0 to #map7(%2) {
          %3 = affine.apply #map8(%2, %arg9)
          %4 = affine.load %arg4[%2, %3] : memref<?x28xf64>
          affine.store %4, %arg4[%3, %2] : memref<?x28xf64>
        }
      }
    }
    return
  }
}

