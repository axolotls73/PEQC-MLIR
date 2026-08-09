#map = affine_map<()[s0] -> (s0 - 1)>
module {
  func.func @kernel_heat_3d(%arg0: i32, %arg1: i32, %arg2: memref<?x20x20xf64>, %arg3: memref<?x20x20xf64>) {
    %cst = arith.constant 2.000000e+00 : f64
    %cst_0 = arith.constant 1.250000e-01 : f64
    %0 = arith.index_cast %arg1 : i32 to index
    affine.for %arg4 = 1 to 41 {
      affine.for %arg5 = 1 to #map()[%0] {
        affine.for %arg6 = 1 to #map()[%0] {
          affine.for %arg7 = 1 to #map()[%0] {
            %1 = affine.load %arg2[%arg5 + 1, %arg6, %arg7] : memref<?x20x20xf64>
            %2 = affine.load %arg2[%arg5, %arg6, %arg7] : memref<?x20x20xf64>
            %3 = arith.mulf %2, %cst : f64
            %4 = arith.subf %1, %3 : f64
            %5 = affine.load %arg2[%arg5 - 1, %arg6, %arg7] : memref<?x20x20xf64>
            %6 = arith.addf %4, %5 : f64
            %7 = arith.mulf %6, %cst_0 : f64
            %8 = affine.load %arg2[%arg5, %arg6 + 1, %arg7] : memref<?x20x20xf64>
            %9 = arith.subf %8, %3 : f64
            %10 = affine.load %arg2[%arg5, %arg6 - 1, %arg7] : memref<?x20x20xf64>
            %11 = arith.addf %9, %10 : f64
            %12 = arith.mulf %11, %cst_0 : f64
            %13 = arith.addf %7, %12 : f64
            %14 = affine.load %arg2[%arg5, %arg6, %arg7 + 1] : memref<?x20x20xf64>
            %15 = arith.subf %14, %3 : f64
            %16 = affine.load %arg2[%arg5, %arg6, %arg7 - 1] : memref<?x20x20xf64>
            %17 = arith.addf %15, %16 : f64
            %18 = arith.mulf %17, %cst_0 : f64
            %19 = arith.addf %13, %18 : f64
            %20 = arith.addf %19, %2 : f64
            affine.store %20, %arg3[%arg5, %arg6, %arg7] : memref<?x20x20xf64>
          }
        }
      }
      affine.for %arg5 = 1 to #map()[%0] {
        affine.for %arg6 = 1 to #map()[%0] {
          affine.for %arg7 = 1 to #map()[%0] {
            %1 = affine.load %arg3[%arg5 + 1, %arg6, %arg7] : memref<?x20x20xf64>
            %2 = affine.load %arg3[%arg5, %arg6, %arg7] : memref<?x20x20xf64>
            %3 = arith.mulf %2, %cst : f64
            %4 = arith.subf %1, %3 : f64
            %5 = affine.load %arg3[%arg5 - 1, %arg6, %arg7] : memref<?x20x20xf64>
            %6 = arith.addf %4, %5 : f64
            %7 = arith.mulf %6, %cst_0 : f64
            %8 = affine.load %arg3[%arg5, %arg6 + 1, %arg7] : memref<?x20x20xf64>
            %9 = arith.subf %8, %3 : f64
            %10 = affine.load %arg3[%arg5, %arg6 - 1, %arg7] : memref<?x20x20xf64>
            %11 = arith.addf %9, %10 : f64
            %12 = arith.mulf %11, %cst_0 : f64
            %13 = arith.addf %7, %12 : f64
            %14 = affine.load %arg3[%arg5, %arg6, %arg7 + 1] : memref<?x20x20xf64>
            %15 = arith.subf %14, %3 : f64
            %16 = affine.load %arg3[%arg5, %arg6, %arg7 - 1] : memref<?x20x20xf64>
            %17 = arith.addf %15, %16 : f64
            %18 = arith.mulf %17, %cst_0 : f64
            %19 = arith.addf %13, %18 : f64
            %20 = arith.addf %19, %2 : f64
            affine.store %20, %arg2[%arg5, %arg6, %arg7] : memref<?x20x20xf64>
          }
        }
      }
    }
    return
  }
}
