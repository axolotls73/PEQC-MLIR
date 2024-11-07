#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> (d0 + ((-d0) floordiv 4) * 4 + 28)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0) -> (d0 + 2)>
#map4 = affine_map<(d0) -> (d0 + 3)>
#map5 = affine_map<(d0) -> (0, (d0 * 16 - 13) ceildiv 13)>
#map6 = affine_map<(d0) -> ((d0 * 32 + 31) floordiv 27 + 1)>
#map7 = affine_map<(d0, d1) -> (d0 * 32, d1 * 27)>
#map8 = affine_map<(d0, d1) -> (d0 * 32 + 32, d1 * 26 + 28)>
module {
  func.func @kernel_covariance(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %alloca = memref.alloca() : memref<1xf64>
    %alloca_1 = memref.alloca() {scop.scratchpad} : memref<1xf64>
    affine.for %arg6 = 0 to 28 {
      affine.for %arg7 = #map(%arg6) to #map1(%arg6) step 4 {
        affine.store %cst_0, %arg4[%arg6, %arg7] : memref<?x28xf64>
        %1 = affine.apply #map2(%arg7)
        affine.store %cst_0, %arg4[%arg6, %1] : memref<?x28xf64>
        %2 = affine.apply #map3(%arg7)
        affine.store %cst_0, %arg4[%arg6, %2] : memref<?x28xf64>
        %3 = affine.apply #map4(%arg7)
        affine.store %cst_0, %arg4[%arg6, %3] : memref<?x28xf64>
      }
      affine.for %arg7 = #map1(%arg6) to 28 {
        affine.store %cst_0, %arg4[%arg6, %arg7] : memref<?x28xf64>
      }
    }
    %0 = arith.subf %arg2, %cst : f64
    affine.store %0, %alloca_1[0] : memref<1xf64>
    affine.for %arg6 = 0 to 28 step 4 {
      affine.store %cst_0, %arg5[%arg6] : memref<?xf64>
      %1 = affine.apply #map2(%arg6)
      affine.store %cst_0, %arg5[%1] : memref<?xf64>
      %2 = affine.apply #map3(%arg6)
      affine.store %cst_0, %arg5[%2] : memref<?xf64>
      %3 = affine.apply #map4(%arg6)
      affine.store %cst_0, %arg5[%3] : memref<?xf64>
    }
    affine.for %arg6 = 0 to 32 {
      affine.for %arg7 = 0 to 28 step 4 {
        %1 = affine.load %arg5[%arg7] : memref<?xf64>
        %2 = affine.load %arg3[%arg6, %arg7] : memref<?x28xf64>
        %3 = arith.addf %1, %2 : f64
        affine.store %3, %arg5[%arg7] : memref<?xf64>
        %4 = affine.apply #map2(%arg7)
        %5 = affine.load %arg5[%4] : memref<?xf64>
        %6 = affine.load %arg3[%arg6, %4] : memref<?x28xf64>
        %7 = arith.addf %5, %6 : f64
        affine.store %7, %arg5[%4] : memref<?xf64>
        %8 = affine.apply #map3(%arg7)
        %9 = affine.load %arg5[%8] : memref<?xf64>
        %10 = affine.load %arg3[%arg6, %8] : memref<?x28xf64>
        %11 = arith.addf %9, %10 : f64
        affine.store %11, %arg5[%8] : memref<?xf64>
        %12 = affine.apply #map4(%arg7)
        %13 = affine.load %arg5[%12] : memref<?xf64>
        %14 = affine.load %arg3[%arg6, %12] : memref<?x28xf64>
        %15 = arith.addf %13, %14 : f64
        affine.store %15, %arg5[%12] : memref<?xf64>
      }
    }
    affine.for %arg6 = 0 to 28 step 4 {
      %1 = affine.load %arg5[%arg6] : memref<?xf64>
      %2 = arith.divf %1, %arg2 : f64
      affine.store %2, %arg5[%arg6] : memref<?xf64>
      %3 = affine.apply #map2(%arg6)
      %4 = affine.load %arg5[%3] : memref<?xf64>
      %5 = arith.divf %4, %arg2 : f64
      affine.store %5, %arg5[%3] : memref<?xf64>
      %6 = affine.apply #map3(%arg6)
      %7 = affine.load %arg5[%6] : memref<?xf64>
      %8 = arith.divf %7, %arg2 : f64
      affine.store %8, %arg5[%6] : memref<?xf64>
      %9 = affine.apply #map4(%arg6)
      %10 = affine.load %arg5[%9] : memref<?xf64>
      %11 = arith.divf %10, %arg2 : f64
      affine.store %11, %arg5[%9] : memref<?xf64>
    }
    affine.for %arg6 = 0 to 32 {
      affine.for %arg7 = 0 to 28 step 4 {
        %1 = affine.load %arg3[%arg6, %arg7] : memref<?x28xf64>
        %2 = affine.load %arg5[%arg7] : memref<?xf64>
        %3 = arith.subf %1, %2 : f64
        affine.store %3, %arg3[%arg6, %arg7] : memref<?x28xf64>
        %4 = affine.apply #map2(%arg7)
        %5 = affine.load %arg3[%arg6, %4] : memref<?x28xf64>
        %6 = affine.load %arg5[%4] : memref<?xf64>
        %7 = arith.subf %5, %6 : f64
        affine.store %7, %arg3[%arg6, %4] : memref<?x28xf64>
        %8 = affine.apply #map3(%arg7)
        %9 = affine.load %arg3[%arg6, %8] : memref<?x28xf64>
        %10 = affine.load %arg5[%8] : memref<?xf64>
        %11 = arith.subf %9, %10 : f64
        affine.store %11, %arg3[%arg6, %8] : memref<?x28xf64>
        %12 = affine.apply #map4(%arg7)
        %13 = affine.load %arg3[%arg6, %12] : memref<?x28xf64>
        %14 = affine.load %arg5[%12] : memref<?xf64>
        %15 = arith.subf %13, %14 : f64
        affine.store %15, %arg3[%arg6, %12] : memref<?x28xf64>
      }
    }
    affine.for %arg6 = 0 to 28 {
      affine.for %arg7 = 0 to 32 {
        affine.for %arg8 = #map(%arg6) to #map1(%arg6) step 4 {
          %1 = affine.load %arg4[%arg6, %arg8] : memref<?x28xf64>
          %2 = affine.load %arg3[%arg7, %arg6] : memref<?x28xf64>
          %3 = affine.load %arg3[%arg7, %arg8] : memref<?x28xf64>
          %4 = arith.mulf %2, %3 : f64
          %5 = arith.addf %1, %4 : f64
          affine.store %5, %arg4[%arg6, %arg8] : memref<?x28xf64>
          %6 = affine.apply #map2(%arg8)
          %7 = affine.load %arg4[%arg6, %6] : memref<?x28xf64>
          %8 = affine.load %arg3[%arg7, %arg6] : memref<?x28xf64>
          %9 = affine.load %arg3[%arg7, %6] : memref<?x28xf64>
          %10 = arith.mulf %8, %9 : f64
          %11 = arith.addf %7, %10 : f64
          affine.store %11, %arg4[%arg6, %6] : memref<?x28xf64>
          %12 = affine.apply #map3(%arg8)
          %13 = affine.load %arg4[%arg6, %12] : memref<?x28xf64>
          %14 = affine.load %arg3[%arg7, %arg6] : memref<?x28xf64>
          %15 = affine.load %arg3[%arg7, %12] : memref<?x28xf64>
          %16 = arith.mulf %14, %15 : f64
          %17 = arith.addf %13, %16 : f64
          affine.store %17, %arg4[%arg6, %12] : memref<?x28xf64>
          %18 = affine.apply #map4(%arg8)
          %19 = affine.load %arg4[%arg6, %18] : memref<?x28xf64>
          %20 = affine.load %arg3[%arg7, %arg6] : memref<?x28xf64>
          %21 = affine.load %arg3[%arg7, %18] : memref<?x28xf64>
          %22 = arith.mulf %20, %21 : f64
          %23 = arith.addf %19, %22 : f64
          affine.store %23, %arg4[%arg6, %18] : memref<?x28xf64>
        }
        affine.for %arg8 = #map1(%arg6) to 28 {
          %1 = affine.load %arg4[%arg6, %arg8] : memref<?x28xf64>
          %2 = affine.load %arg3[%arg7, %arg6] : memref<?x28xf64>
          %3 = affine.load %arg3[%arg7, %arg8] : memref<?x28xf64>
          %4 = arith.mulf %2, %3 : f64
          %5 = arith.addf %1, %4 : f64
          affine.store %5, %arg4[%arg6, %arg8] : memref<?x28xf64>
        }
      }
    }
    affine.for %arg6 = 0 to 23 {
      affine.for %arg7 = max #map5(%arg6) to #map6(%arg6) {
        affine.for %arg8 = max #map7(%arg6, %arg7) to min #map8(%arg6, %arg7) {
          %1 = affine.load %arg4[%arg7, %arg8 * -26 + %arg7] : memref<?x28xf64>
          %2 = affine.load %alloca_1[0] : memref<1xf64>
          %3 = arith.divf %1, %2 : f64
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

