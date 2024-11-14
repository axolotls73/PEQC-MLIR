#map = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0, d1) -> (d0 + d1)>
#map2 = affine_map<(d0) -> ((((-d0) floordiv 4) * 4 + 28) ceildiv 4)>
#map3 = affine_map<(d0, d1) -> (d0 + d1 * 4)>
#map4 = affine_map<(d0) -> (d0 + 1)>
#map5 = affine_map<(d0) -> (d0 + 2)>
#map6 = affine_map<(d0) -> (d0 + 3)>
#map7 = affine_map<(d0) -> ((-d0) mod 4)>
#map8 = affine_map<(d0, d1) -> (d0 + d1 + ((-d0) floordiv 4) * 4 + 28)>
#map9 = affine_map<(d0) -> (d0 * 128)>
#map10 = affine_map<(d0) -> (0, (d0 * 16 - 13) ceildiv 13)>
#map11 = affine_map<(d0) -> ((d0 * 32 + 31) floordiv 27 + 1)>
#map12 = affine_map<(d0, d1) -> (d0 * 32, d1 * 27)>
#map13 = affine_map<(d0, d1) -> (d0 * 32 + 32, d1 * 26 + 28)>
module {
  func.func @kernel_covariance(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %alloca = memref.alloca() : memref<1xf64>
    %alloca_1 = memref.alloca() {scop.scratchpad} : memref<1xf64>
    affine.for %arg6 = 0 to 1 {
      %2 = affine.apply #map(%arg6)
      affine.for %arg7 = 0 to 28 {
        %3 = affine.apply #map1(%2, %arg7)
        affine.for %arg8 = 0 to #map2(%3) {
          %4 = affine.apply #map3(%3, %arg8)
          affine.store %cst_0, %arg4[%3, %4] : memref<?x28xf64>
          %5 = affine.apply #map4(%4)
          affine.store %cst_0, %arg4[%3, %5] : memref<?x28xf64>
          %6 = affine.apply #map5(%4)
          affine.store %cst_0, %arg4[%3, %6] : memref<?x28xf64>
          %7 = affine.apply #map6(%4)
          affine.store %cst_0, %arg4[%3, %7] : memref<?x28xf64>
        }
        affine.for %arg8 = 0 to #map7(%3) {
          %4 = affine.apply #map8(%3, %arg8)
          affine.store %cst_0, %arg4[%3, %4] : memref<?x28xf64>
        }
      }
    }
    %0 = arith.subf %arg2, %cst : f64
    affine.store %0, %alloca_1[0] : memref<1xf64>
    affine.for %arg6 = 0 to 1 {
      %2 = affine.apply #map9(%arg6)
      affine.for %arg7 = 0 to 7 {
        %3 = affine.apply #map3(%2, %arg7)
        affine.store %cst_0, %arg5[%3] : memref<?xf64>
        %4 = affine.apply #map4(%3)
        affine.store %cst_0, %arg5[%4] : memref<?xf64>
        %5 = affine.apply #map5(%3)
        affine.store %cst_0, %arg5[%5] : memref<?xf64>
        %6 = affine.apply #map6(%3)
        affine.store %cst_0, %arg5[%6] : memref<?xf64>
      }
    }
    affine.for %arg6 = 0 to 1 {
      %2 = affine.apply #map(%arg6)
      affine.for %arg7 = 0 to 1 {
        %3 = affine.apply #map9(%arg7)
        affine.for %arg8 = 0 to 32 {
          %4 = affine.apply #map1(%2, %arg8)
          affine.for %arg9 = 0 to 7 {
            %5 = affine.apply #map3(%3, %arg9)
            %6 = affine.load %arg5[%5] : memref<?xf64>
            %7 = affine.load %arg3[%4, %5] : memref<?x28xf64>
            %8 = arith.addf %6, %7 : f64
            affine.store %8, %arg5[%5] : memref<?xf64>
            %9 = affine.apply #map4(%5)
            %10 = affine.load %arg5[%9] : memref<?xf64>
            %11 = affine.load %arg3[%4, %9] : memref<?x28xf64>
            %12 = arith.addf %10, %11 : f64
            affine.store %12, %arg5[%9] : memref<?xf64>
            %13 = affine.apply #map5(%5)
            %14 = affine.load %arg5[%13] : memref<?xf64>
            %15 = affine.load %arg3[%4, %13] : memref<?x28xf64>
            %16 = arith.addf %14, %15 : f64
            affine.store %16, %arg5[%13] : memref<?xf64>
            %17 = affine.apply #map6(%5)
            %18 = affine.load %arg5[%17] : memref<?xf64>
            %19 = affine.load %arg3[%4, %17] : memref<?x28xf64>
            %20 = arith.addf %18, %19 : f64
            affine.store %20, %arg5[%17] : memref<?xf64>
          }
        }
      }
    }
    affine.for %arg6 = 0 to 1 {
      %2 = affine.apply #map9(%arg6)
      affine.for %arg7 = 0 to 7 {
        %3 = affine.apply #map3(%2, %arg7)
        %4 = affine.load %arg5[%3] : memref<?xf64>
        %5 = arith.divf %4, %arg2 : f64
        affine.store %5, %arg5[%3] : memref<?xf64>
        %6 = affine.apply #map4(%3)
        %7 = affine.load %arg5[%6] : memref<?xf64>
        %8 = arith.divf %7, %arg2 : f64
        affine.store %8, %arg5[%6] : memref<?xf64>
        %9 = affine.apply #map5(%3)
        %10 = affine.load %arg5[%9] : memref<?xf64>
        %11 = arith.divf %10, %arg2 : f64
        affine.store %11, %arg5[%9] : memref<?xf64>
        %12 = affine.apply #map6(%3)
        %13 = affine.load %arg5[%12] : memref<?xf64>
        %14 = arith.divf %13, %arg2 : f64
        affine.store %14, %arg5[%12] : memref<?xf64>
      }
    }
    affine.for %arg6 = 0 to 1 {
      %2 = affine.apply #map(%arg6)
      affine.for %arg7 = 0 to 1 {
        %3 = affine.apply #map9(%arg7)
        affine.for %arg8 = 0 to 32 {
          %4 = affine.apply #map1(%2, %arg8)
          affine.for %arg9 = 0 to 7 {
            %5 = affine.apply #map3(%3, %arg9)
            %6 = affine.load %arg3[%4, %5] : memref<?x28xf64>
            %7 = affine.load %arg5[%5] : memref<?xf64>
            %8 = arith.subf %6, %7 : f64
            affine.store %8, %arg3[%4, %5] : memref<?x28xf64>
            %9 = affine.apply #map4(%5)
            %10 = affine.load %arg3[%4, %9] : memref<?x28xf64>
            %11 = affine.load %arg5[%9] : memref<?xf64>
            %12 = arith.subf %10, %11 : f64
            affine.store %12, %arg3[%4, %9] : memref<?x28xf64>
            %13 = affine.apply #map5(%5)
            %14 = affine.load %arg3[%4, %13] : memref<?x28xf64>
            %15 = affine.load %arg5[%13] : memref<?xf64>
            %16 = arith.subf %14, %15 : f64
            affine.store %16, %arg3[%4, %13] : memref<?x28xf64>
            %17 = affine.apply #map6(%5)
            %18 = affine.load %arg3[%4, %17] : memref<?x28xf64>
            %19 = affine.load %arg5[%17] : memref<?xf64>
            %20 = arith.subf %18, %19 : f64
            affine.store %20, %arg3[%4, %17] : memref<?x28xf64>
          }
        }
      }
    }
    affine.for %arg6 = 0 to 1 {
      %2 = affine.apply #map(%arg6)
      affine.for %arg7 = 0 to 1 {
        %3 = affine.apply #map(%arg7)
        affine.for %arg8 = 0 to 28 {
          %4 = affine.apply #map1(%2, %arg8)
          affine.for %arg9 = 0 to 32 {
            %5 = affine.apply #map1(%3, %arg9)
            %6 = affine.load %arg3[%5, %4] : memref<?x28xf64>
            %7 = affine.load %arg3[%5, %4] : memref<?x28xf64>
            %8 = affine.load %arg3[%5, %4] : memref<?x28xf64>
            %9 = affine.load %arg3[%5, %4] : memref<?x28xf64>
            affine.for %arg10 = 0 to #map2(%4) {
              %11 = affine.apply #map3(%4, %arg10)
              %12 = affine.load %arg4[%4, %11] : memref<?x28xf64>
              %13 = affine.load %arg3[%5, %11] : memref<?x28xf64>
              %14 = arith.mulf %6, %13 : f64
              %15 = arith.addf %12, %14 : f64
              affine.store %15, %arg4[%4, %11] : memref<?x28xf64>
              %16 = affine.apply #map4(%11)
              %17 = affine.load %arg4[%4, %16] : memref<?x28xf64>
              %18 = affine.load %arg3[%5, %16] : memref<?x28xf64>
              %19 = arith.mulf %7, %18 : f64
              %20 = arith.addf %17, %19 : f64
              affine.store %20, %arg4[%4, %16] : memref<?x28xf64>
              %21 = affine.apply #map5(%11)
              %22 = affine.load %arg4[%4, %21] : memref<?x28xf64>
              %23 = affine.load %arg3[%5, %21] : memref<?x28xf64>
              %24 = arith.mulf %8, %23 : f64
              %25 = arith.addf %22, %24 : f64
              affine.store %25, %arg4[%4, %21] : memref<?x28xf64>
              %26 = affine.apply #map6(%11)
              %27 = affine.load %arg4[%4, %26] : memref<?x28xf64>
              %28 = affine.load %arg3[%5, %26] : memref<?x28xf64>
              %29 = arith.mulf %9, %28 : f64
              %30 = arith.addf %27, %29 : f64
              affine.store %30, %arg4[%4, %26] : memref<?x28xf64>
            }
            %10 = affine.load %arg3[%5, %4] : memref<?x28xf64>
            affine.for %arg10 = 0 to #map7(%4) {
              %11 = affine.apply #map8(%4, %arg10)
              %12 = affine.load %arg4[%4, %11] : memref<?x28xf64>
              %13 = affine.load %arg3[%5, %11] : memref<?x28xf64>
              %14 = arith.mulf %10, %13 : f64
              %15 = arith.addf %12, %14 : f64
              affine.store %15, %arg4[%4, %11] : memref<?x28xf64>
            }
          }
        }
      }
    }
    %1 = affine.load %alloca_1[0] : memref<1xf64>
    affine.for %arg6 = 0 to 23 {
      affine.for %arg7 = max #map10(%arg6) to #map11(%arg6) {
        affine.for %arg8 = max #map12(%arg6, %arg7) to min #map13(%arg6, %arg7) {
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

