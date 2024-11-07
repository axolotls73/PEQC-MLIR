#map = affine_map<(d0, d1) -> (d0 + d1)>
#map1 = affine_map<(d0) -> ((((-d0) floordiv 4) * 4 + 28) ceildiv 4)>
#map2 = affine_map<(d0, d1) -> (d0 + d1 * 4)>
#map3 = affine_map<(d0) -> (d0 + 1)>
#map4 = affine_map<(d0) -> (d0 + 2)>
#map5 = affine_map<(d0) -> (d0 + 3)>
#map6 = affine_map<(d0, d1) -> (d0 + ((-d0) floordiv 4) * 4 + d1 + 28)>
#map7 = affine_map<(d0) -> (d0 * 4)>
#map8 = affine_map<(d0) -> (0, (d0 * 16 - 13) ceildiv 13)>
#map9 = affine_map<(d0) -> ((d0 * 32 + 31) floordiv 27 + 1)>
#map10 = affine_map<(d0, d1) -> (d0 * 32, d1 * 27)>
#map11 = affine_map<(d0, d1) -> (d0 * 32 + 32, d1 * 26 + 28)>
module {
  func.func @kernel_covariance(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %alloca = memref.alloca() : memref<1xf64>
    %alloca_1 = memref.alloca() {scop.scratchpad} : memref<1xf64>
    affine.parallel (%arg6) = (0) to (28) {
      affine.parallel (%arg7) = (0) to (1) {
        %2 = affine.apply #map(%arg6, %arg7)
        affine.for %arg8 = 0 to #map1(%2) {
          %3 = affine.apply #map2(%2, %arg8)
          affine.store %cst_0, %arg4[%2, %3] : memref<?x28xf64>
          %4 = affine.apply #map3(%3)
          affine.store %cst_0, %arg4[%2, %4] : memref<?x28xf64>
          %5 = affine.apply #map4(%3)
          affine.store %cst_0, %arg4[%2, %5] : memref<?x28xf64>
          %6 = affine.apply #map5(%3)
          affine.store %cst_0, %arg4[%2, %6] : memref<?x28xf64>
        }
        affine.parallel (%arg8) = (0) to ((-%2) mod 4) {
          %3 = affine.apply #map6(%2, %arg8)
          affine.store %cst_0, %arg4[%2, %3] : memref<?x28xf64>
        }
      }
    }
    %0 = arith.subf %arg2, %cst : f64
    affine.store %0, %alloca_1[0] : memref<1xf64>
    affine.for %arg6 = 0 to 7 {
      %2 = affine.apply #map7(%arg6)
      affine.for %arg7 = 0 to 1 {
        %3 = affine.apply #map2(%2, %arg7)
        affine.store %cst_0, %arg5[%3] : memref<?xf64>
        %4 = affine.apply #map3(%3)
        affine.store %cst_0, %arg5[%4] : memref<?xf64>
        %5 = affine.apply #map4(%3)
        affine.store %cst_0, %arg5[%5] : memref<?xf64>
        %6 = affine.apply #map5(%3)
        affine.store %cst_0, %arg5[%6] : memref<?xf64>
      }
    }
    affine.for %arg6 = 0 to 32 {
      affine.for %arg7 = 0 to 7 {
        %2 = affine.apply #map7(%arg7)
        affine.parallel (%arg8) = (0) to (1) {
          %3 = affine.apply #map(%arg6, %arg8)
          affine.for %arg9 = 0 to 1 {
            %4 = affine.apply #map2(%2, %arg9)
            %5 = affine.load %arg5[%4] : memref<?xf64>
            %6 = affine.load %arg3[%3, %4] : memref<?x28xf64>
            %7 = arith.addf %5, %6 : f64
            affine.store %7, %arg5[%4] : memref<?xf64>
            %8 = affine.apply #map3(%4)
            %9 = affine.load %arg5[%8] : memref<?xf64>
            %10 = affine.load %arg3[%3, %8] : memref<?x28xf64>
            %11 = arith.addf %9, %10 : f64
            affine.store %11, %arg5[%8] : memref<?xf64>
            %12 = affine.apply #map4(%4)
            %13 = affine.load %arg5[%12] : memref<?xf64>
            %14 = affine.load %arg3[%3, %12] : memref<?x28xf64>
            %15 = arith.addf %13, %14 : f64
            affine.store %15, %arg5[%12] : memref<?xf64>
            %16 = affine.apply #map5(%4)
            %17 = affine.load %arg5[%16] : memref<?xf64>
            %18 = affine.load %arg3[%3, %16] : memref<?x28xf64>
            %19 = arith.addf %17, %18 : f64
            affine.store %19, %arg5[%16] : memref<?xf64>
          }
        }
      }
    }
    affine.for %arg6 = 0 to 7 {
      %2 = affine.apply #map7(%arg6)
      affine.for %arg7 = 0 to 1 {
        %3 = affine.apply #map2(%2, %arg7)
        %4 = affine.load %arg5[%3] : memref<?xf64>
        %5 = arith.divf %4, %arg2 : f64
        affine.store %5, %arg5[%3] : memref<?xf64>
        %6 = affine.apply #map3(%3)
        %7 = affine.load %arg5[%6] : memref<?xf64>
        %8 = arith.divf %7, %arg2 : f64
        affine.store %8, %arg5[%6] : memref<?xf64>
        %9 = affine.apply #map4(%3)
        %10 = affine.load %arg5[%9] : memref<?xf64>
        %11 = arith.divf %10, %arg2 : f64
        affine.store %11, %arg5[%9] : memref<?xf64>
        %12 = affine.apply #map5(%3)
        %13 = affine.load %arg5[%12] : memref<?xf64>
        %14 = arith.divf %13, %arg2 : f64
        affine.store %14, %arg5[%12] : memref<?xf64>
      }
    }
    affine.parallel (%arg6) = (0) to (32) {
      affine.for %arg7 = 0 to 7 {
        %2 = affine.apply #map7(%arg7)
        affine.parallel (%arg8) = (0) to (1) {
          %3 = affine.apply #map(%arg6, %arg8)
          affine.for %arg9 = 0 to 1 {
            %4 = affine.apply #map2(%2, %arg9)
            %5 = affine.load %arg3[%3, %4] : memref<?x28xf64>
            %6 = affine.load %arg5[%4] : memref<?xf64>
            %7 = arith.subf %5, %6 : f64
            affine.store %7, %arg3[%3, %4] : memref<?x28xf64>
            %8 = affine.apply #map3(%4)
            %9 = affine.load %arg3[%3, %8] : memref<?x28xf64>
            %10 = affine.load %arg5[%8] : memref<?xf64>
            %11 = arith.subf %9, %10 : f64
            affine.store %11, %arg3[%3, %8] : memref<?x28xf64>
            %12 = affine.apply #map4(%4)
            %13 = affine.load %arg3[%3, %12] : memref<?x28xf64>
            %14 = affine.load %arg5[%12] : memref<?xf64>
            %15 = arith.subf %13, %14 : f64
            affine.store %15, %arg3[%3, %12] : memref<?x28xf64>
            %16 = affine.apply #map5(%4)
            %17 = affine.load %arg3[%3, %16] : memref<?x28xf64>
            %18 = affine.load %arg5[%16] : memref<?xf64>
            %19 = arith.subf %17, %18 : f64
            affine.store %19, %arg3[%3, %16] : memref<?x28xf64>
          }
        }
      }
    }
    affine.parallel (%arg6) = (0) to (28) {
      affine.for %arg7 = 0 to 32 {
        affine.parallel (%arg8) = (0) to (1) {
          %2 = affine.apply #map(%arg6, %arg8)
          affine.parallel (%arg9) = (0) to (1) {
            %3 = affine.apply #map(%arg7, %arg9)
            %4 = affine.load %arg3[%3, %2] : memref<?x28xf64>
            %5 = affine.load %arg3[%3, %2] : memref<?x28xf64>
            %6 = affine.load %arg3[%3, %2] : memref<?x28xf64>
            %7 = affine.load %arg3[%3, %2] : memref<?x28xf64>
            affine.for %arg10 = 0 to #map1(%2) {
              %8 = affine.apply #map2(%2, %arg10)
              %9 = affine.load %arg4[%2, %8] : memref<?x28xf64>
              %10 = affine.load %arg3[%3, %8] : memref<?x28xf64>
              %11 = arith.mulf %4, %10 : f64
              %12 = arith.addf %9, %11 : f64
              affine.store %12, %arg4[%2, %8] : memref<?x28xf64>
              %13 = affine.apply #map3(%8)
              %14 = affine.load %arg4[%2, %13] : memref<?x28xf64>
              %15 = affine.load %arg3[%3, %13] : memref<?x28xf64>
              %16 = arith.mulf %5, %15 : f64
              %17 = arith.addf %14, %16 : f64
              affine.store %17, %arg4[%2, %13] : memref<?x28xf64>
              %18 = affine.apply #map4(%8)
              %19 = affine.load %arg4[%2, %18] : memref<?x28xf64>
              %20 = affine.load %arg3[%3, %18] : memref<?x28xf64>
              %21 = arith.mulf %6, %20 : f64
              %22 = arith.addf %19, %21 : f64
              affine.store %22, %arg4[%2, %18] : memref<?x28xf64>
              %23 = affine.apply #map5(%8)
              %24 = affine.load %arg4[%2, %23] : memref<?x28xf64>
              %25 = affine.load %arg3[%3, %23] : memref<?x28xf64>
              %26 = arith.mulf %7, %25 : f64
              %27 = arith.addf %24, %26 : f64
              affine.store %27, %arg4[%2, %23] : memref<?x28xf64>
            }
            affine.parallel (%arg10) = (0) to ((-%2) mod 4) {
              %8 = affine.apply #map6(%2, %arg10)
              %9 = affine.load %arg4[%2, %8] : memref<?x28xf64>
              %10 = affine.load %arg3[%3, %2] : memref<?x28xf64>
              %11 = affine.load %arg3[%3, %8] : memref<?x28xf64>
              %12 = arith.mulf %10, %11 : f64
              %13 = arith.addf %9, %12 : f64
              affine.store %13, %arg4[%2, %8] : memref<?x28xf64>
            }
          }
        }
      }
    }
    %1 = affine.load %alloca_1[0] : memref<1xf64>
    affine.for %arg6 = 0 to 23 {
      affine.for %arg7 = max #map8(%arg6) to #map9(%arg6) {
        affine.for %arg8 = max #map10(%arg6, %arg7) to min #map11(%arg6, %arg7) {
          %2 = affine.load %arg4[%arg7, %arg8 * -26 + %arg7] : memref<?x28xf64>
          %3 = arith.divf %2, %1 : f64
          affine.store %3, %alloca[0] : memref<1xf64>
          affine.store %3, %arg4[%arg7, %arg8 * -26 + %arg7] : memref<?x28xf64>
          %4 = affine.load %alloca[0] : memref<1xf64>
          affine.store %4, %arg4[%arg8 * -26 + %arg7, %arg7] : memref<?x28xf64>
        }
      }
    }
    return
  }
}

