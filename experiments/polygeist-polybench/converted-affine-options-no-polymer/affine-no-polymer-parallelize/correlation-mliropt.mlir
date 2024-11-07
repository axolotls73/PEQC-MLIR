#map = affine_map<(d0) -> (d0 + 1)>
module {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %cst_1 = arith.constant 1.000000e-01 : f64
    affine.parallel (%arg7) = (0) to (28) {
      affine.store %cst_0, %arg5[%arg7] : memref<?xf64>
      affine.for %arg8 = 0 to 32 {
        %3 = affine.load %arg3[%arg8, %arg7] : memref<?x28xf64>
        %4 = affine.load %arg5[%arg7] : memref<?xf64>
        %5 = arith.addf %4, %3 : f64
        affine.store %5, %arg5[%arg7] : memref<?xf64>
      }
      %1 = affine.load %arg5[%arg7] : memref<?xf64>
      %2 = arith.divf %1, %arg2 : f64
      affine.store %2, %arg5[%arg7] : memref<?xf64>
    }
    affine.parallel (%arg7) = (0) to (28) {
      affine.store %cst_0, %arg6[%arg7] : memref<?xf64>
      affine.for %arg8 = 0 to 32 {
        %6 = affine.load %arg3[%arg8, %arg7] : memref<?x28xf64>
        %7 = affine.load %arg5[%arg7] : memref<?xf64>
        %8 = arith.subf %6, %7 : f64
        %9 = arith.mulf %8, %8 : f64
        %10 = affine.load %arg6[%arg7] : memref<?xf64>
        %11 = arith.addf %10, %9 : f64
        affine.store %11, %arg6[%arg7] : memref<?xf64>
      }
      %1 = affine.load %arg6[%arg7] : memref<?xf64>
      %2 = arith.divf %1, %arg2 : f64
      %3 = math.sqrt %2 : f64
      %4 = arith.cmpf ole, %3, %cst_1 : f64
      %5 = arith.select %4, %cst, %3 : f64
      affine.store %5, %arg6[%arg7] : memref<?xf64>
    }
    %0 = math.sqrt %arg2 : f64
    affine.parallel (%arg7) = (0) to (32) {
      affine.for %arg8 = 0 to 28 {
        %1 = affine.load %arg5[%arg8] : memref<?xf64>
        %2 = affine.load %arg3[%arg7, %arg8] : memref<?x28xf64>
        %3 = arith.subf %2, %1 : f64
        affine.store %3, %arg3[%arg7, %arg8] : memref<?x28xf64>
        %4 = affine.load %arg6[%arg8] : memref<?xf64>
        %5 = arith.mulf %0, %4 : f64
        %6 = arith.divf %3, %5 : f64
        affine.store %6, %arg3[%arg7, %arg8] : memref<?x28xf64>
      }
    }
    affine.parallel (%arg7) = (0) to (27) {
      affine.store %cst, %arg4[%arg7, %arg7] : memref<?x28xf64>
      affine.for %arg8 = #map(%arg7) to 28 {
        affine.store %cst_0, %arg4[%arg7, %arg8] : memref<?x28xf64>
        affine.for %arg9 = 0 to 32 {
          %2 = affine.load %arg3[%arg9, %arg7] : memref<?x28xf64>
          %3 = affine.load %arg3[%arg9, %arg8] : memref<?x28xf64>
          %4 = arith.mulf %2, %3 : f64
          %5 = affine.load %arg4[%arg7, %arg8] : memref<?x28xf64>
          %6 = arith.addf %5, %4 : f64
          affine.store %6, %arg4[%arg7, %arg8] : memref<?x28xf64>
        }
        %1 = affine.load %arg4[%arg7, %arg8] : memref<?x28xf64>
        affine.store %1, %arg4[%arg8, %arg7] : memref<?x28xf64>
      }
    }
    affine.store %cst, %arg4[27, 27] : memref<?x28xf64>
    return
  }
}

