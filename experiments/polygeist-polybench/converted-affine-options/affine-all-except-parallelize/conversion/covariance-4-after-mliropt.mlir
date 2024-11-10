#map = affine_map<(d0, d1) -> (d0 + d1)>
#map1 = affine_map<(d0) -> ((((-d0) floordiv 4) * 4 + 28) ceildiv 4)>
#map2 = affine_map<(d0, d1) -> (d0 + d1 * 4)>
#map3 = affine_map<(d0) -> (d0 + 1)>
#map4 = affine_map<(d0) -> (d0 + 2)>
#map5 = affine_map<(d0) -> (d0 + 3)>
#map6 = affine_map<(d0) -> ((-d0) mod 4)>
#map7 = affine_map<(d0, d1) -> (d0 + d1 + ((-d0) floordiv 4) * 4 + 28)>
#map8 = affine_map<(d0) -> (d0 * 4)>
#map9 = affine_map<(d0) -> (0, (d0 * 16 - 13) ceildiv 13)>
#map10 = affine_map<(d0) -> ((d0 * 32 + 31) floordiv 27 + 1)>
#map11 = affine_map<(d0, d1) -> (d0 * 32, d1 * 27)>
#map12 = affine_map<(d0, d1) -> (d0 * 32 + 32, d1 * 26 + 28)>
module {
  func.func @kernel_covariance(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %alloca = memref.alloca() : memref<1xf64>
    %alloca_1 = memref.alloca() {scop.scratchpad} : memref<1xf64>
    affine.for %arg6 = 0 to 28 {
      affine.for %arg7 = 0 to 1 {
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
        affine.for %arg8 = 0 to #map6(%2) {
          %3 = affine.apply #map7(%2, %arg8)
          affine.store %cst_0, %arg4[%2, %3] : memref<?x28xf64>
        }
      }
    }
    %0 = arith.subf %arg2, %cst : f64
    affine.store %0, %alloca_1[0] : memref<1xf64>
    affine.for %arg6 = 0 to 7 {
      %2 = affine.apply #map8(%arg6)
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
        %2 = affine.apply #map8(%arg7)
        affine.for %arg8 = 0 to 1 {
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
      %2 = affine.apply #map8(%arg6)
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
    affine.for %arg6 = 0 to 32 {
      affine.for %arg7 = 0 to 1 {
        %2 = affine.apply #map(%arg6, %arg7)
        affine.for %arg8 = 0 to 7 {
          %3 = affine.apply #map8(%arg8)
          affine.for %arg9 = 0 to 1 {
            %4 = affine.apply #map2(%3, %arg9)
            %5 = affine.load %arg3[%2, %4] : memref<?x28xf64>
            %6 = affine.load %arg5[%4] : memref<?xf64>
            %7 = arith.subf %5, %6 : f64
            affine.store %7, %arg3[%2, %4] : memref<?x28xf64>
            %8 = affine.apply #map3(%4)
            %9 = affine.load %arg3[%2, %8] : memref<?x28xf64>
            %10 = affine.load %arg5[%8] : memref<?xf64>
            %11 = arith.subf %9, %10 : f64
            affine.store %11, %arg3[%2, %8] : memref<?x28xf64>
            %12 = affine.apply #map4(%4)
            %13 = affine.load %arg3[%2, %12] : memref<?x28xf64>
            %14 = affine.load %arg5[%12] : memref<?xf64>
            %15 = arith.subf %13, %14 : f64
            affine.store %15, %arg3[%2, %12] : memref<?x28xf64>
            %16 = affine.apply #map5(%4)
            %17 = affine.load %arg3[%2, %16] : memref<?x28xf64>
            %18 = affine.load %arg5[%16] : memref<?xf64>
            %19 = arith.subf %17, %18 : f64
            affine.store %19, %arg3[%2, %16] : memref<?x28xf64>
          }
        }
      }
    }
    affine.for %arg6 = 0 to 28 {
      affine.for %arg7 = 0 to 1 {
        %2 = affine.apply #map(%arg6, %arg7)
        affine.for %arg8 = 0 to 32 {
          affine.for %arg9 = 0 to 1 {
            %3 = affine.apply #map(%arg8, %arg9)
            %4 = affine.load %arg3[%3, %2] : memref<?x28xf64>
            %5 = affine.load %arg3[%3, %2] : memref<?x28xf64>
            %6 = affine.load %arg3[%3, %2] : memref<?x28xf64>
            %7 = affine.load %arg3[%3, %2] : memref<?x28xf64>
            affine.for %arg10 = 0 to #map1(%2) {
              %9 = affine.apply #map2(%2, %arg10)
              %10 = affine.load %arg4[%2, %9] : memref<?x28xf64>
              %11 = affine.load %arg3[%3, %9] : memref<?x28xf64>
              %12 = arith.mulf %4, %11 : f64
              %13 = arith.addf %10, %12 : f64
              affine.store %13, %arg4[%2, %9] : memref<?x28xf64>
              %14 = affine.apply #map3(%9)
              %15 = affine.load %arg4[%2, %14] : memref<?x28xf64>
              %16 = affine.load %arg3[%3, %14] : memref<?x28xf64>
              %17 = arith.mulf %5, %16 : f64
              %18 = arith.addf %15, %17 : f64
              affine.store %18, %arg4[%2, %14] : memref<?x28xf64>
              %19 = affine.apply #map4(%9)
              %20 = affine.load %arg4[%2, %19] : memref<?x28xf64>
              %21 = affine.load %arg3[%3, %19] : memref<?x28xf64>
              %22 = arith.mulf %6, %21 : f64
              %23 = arith.addf %20, %22 : f64
              affine.store %23, %arg4[%2, %19] : memref<?x28xf64>
              %24 = affine.apply #map5(%9)
              %25 = affine.load %arg4[%2, %24] : memref<?x28xf64>
              %26 = affine.load %arg3[%3, %24] : memref<?x28xf64>
              %27 = arith.mulf %7, %26 : f64
              %28 = arith.addf %25, %27 : f64
              affine.store %28, %arg4[%2, %24] : memref<?x28xf64>
            }
            %8 = affine.load %arg3[%3, %2] : memref<?x28xf64>
            affine.for %arg10 = 0 to #map6(%2) {
              %9 = affine.apply #map7(%2, %arg10)
              %10 = affine.load %arg4[%2, %9] : memref<?x28xf64>
              %11 = affine.load %arg3[%3, %9] : memref<?x28xf64>
              %12 = arith.mulf %8, %11 : f64
              %13 = arith.addf %10, %12 : f64
              affine.store %13, %arg4[%2, %9] : memref<?x28xf64>
            }
          }
        }
      }
    }
    %1 = affine.load %alloca_1[0] : memref<1xf64>
    affine.for %arg6 = 0 to 23 {
      affine.for %arg7 = max #map9(%arg6) to #map10(%arg6) {
        affine.for %arg8 = max #map11(%arg6, %arg7) to min #map12(%arg6, %arg7) {
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

