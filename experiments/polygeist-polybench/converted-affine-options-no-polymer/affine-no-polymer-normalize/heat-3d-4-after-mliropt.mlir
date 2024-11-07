#map = affine_map<(d0) -> (d0 + 1)>
module {
  func.func @kernel_heat_3d(%arg0: i32, %arg1: i32, %arg2: memref<?x10x10xf64>, %arg3: memref<?x10x10xf64>) {
    %cst = arith.constant 2.000000e+00 : f64
    %cst_0 = arith.constant 1.250000e-01 : f64
    affine.for %arg4 = 0 to 20 {
      %0 = affine.apply #map(%arg4)
      affine.for %arg5 = 0 to 8 {
        %1 = affine.apply #map(%arg5)
        affine.for %arg6 = 0 to 8 {
          %2 = affine.apply #map(%arg6)
          affine.for %arg7 = 0 to 8 {
            %3 = affine.apply #map(%arg7)
            %4 = affine.load %arg2[%1 + 1, %2, %3] : memref<?x10x10xf64>
            %5 = affine.load %arg2[%1, %2, %3] : memref<?x10x10xf64>
            %6 = arith.mulf %5, %cst : f64
            %7 = arith.subf %4, %6 : f64
            %8 = affine.load %arg2[%1 - 1, %2, %3] : memref<?x10x10xf64>
            %9 = arith.addf %7, %8 : f64
            %10 = arith.mulf %9, %cst_0 : f64
            %11 = affine.load %arg2[%1, %2 + 1, %3] : memref<?x10x10xf64>
            %12 = arith.subf %11, %6 : f64
            %13 = affine.load %arg2[%1, %2 - 1, %3] : memref<?x10x10xf64>
            %14 = arith.addf %12, %13 : f64
            %15 = arith.mulf %14, %cst_0 : f64
            %16 = arith.addf %10, %15 : f64
            %17 = affine.load %arg2[%1, %2, %3 + 1] : memref<?x10x10xf64>
            %18 = arith.subf %17, %6 : f64
            %19 = affine.load %arg2[%1, %2, %3 - 1] : memref<?x10x10xf64>
            %20 = arith.addf %18, %19 : f64
            %21 = arith.mulf %20, %cst_0 : f64
            %22 = arith.addf %16, %21 : f64
            %23 = arith.addf %22, %5 : f64
            affine.store %23, %arg3[%1, %2, %3] : memref<?x10x10xf64>
          }
        }
      }
      affine.for %arg5 = 0 to 8 {
        %1 = affine.apply #map(%arg5)
        affine.for %arg6 = 0 to 8 {
          %2 = affine.apply #map(%arg6)
          affine.for %arg7 = 0 to 8 {
            %3 = affine.apply #map(%arg7)
            %4 = affine.load %arg3[%1 + 1, %2, %3] : memref<?x10x10xf64>
            %5 = affine.load %arg3[%1, %2, %3] : memref<?x10x10xf64>
            %6 = arith.mulf %5, %cst : f64
            %7 = arith.subf %4, %6 : f64
            %8 = affine.load %arg3[%1 - 1, %2, %3] : memref<?x10x10xf64>
            %9 = arith.addf %7, %8 : f64
            %10 = arith.mulf %9, %cst_0 : f64
            %11 = affine.load %arg3[%1, %2 + 1, %3] : memref<?x10x10xf64>
            %12 = arith.subf %11, %6 : f64
            %13 = affine.load %arg3[%1, %2 - 1, %3] : memref<?x10x10xf64>
            %14 = arith.addf %12, %13 : f64
            %15 = arith.mulf %14, %cst_0 : f64
            %16 = arith.addf %10, %15 : f64
            %17 = affine.load %arg3[%1, %2, %3 + 1] : memref<?x10x10xf64>
            %18 = arith.subf %17, %6 : f64
            %19 = affine.load %arg3[%1, %2, %3 - 1] : memref<?x10x10xf64>
            %20 = arith.addf %18, %19 : f64
            %21 = arith.mulf %20, %cst_0 : f64
            %22 = arith.addf %16, %21 : f64
            %23 = arith.addf %22, %5 : f64
            affine.store %23, %arg2[%1, %2, %3] : memref<?x10x10xf64>
          }
        }
      }
    }
    return
  }
}

