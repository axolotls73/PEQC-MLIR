#map = affine_map<(d0) -> (d0)>
module {
  func.func @kernel_covariance(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x80xf64>, %arg4: memref<?x80xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    affine.for %arg6 = 0 to 80 {
      affine.store %cst_0, %arg5[%arg6] : memref<?xf64>
      affine.for %arg7 = 0 to 100 {
        %3 = affine.load %arg3[%arg7, %arg6] : memref<?x80xf64>
        %4 = affine.load %arg5[%arg6] : memref<?xf64>
        %5 = arith.addf %4, %3 : f64
        affine.store %5, %arg5[%arg6] : memref<?xf64>
      }
      %1 = affine.load %arg5[%arg6] : memref<?xf64>
      %2 = arith.divf %1, %arg2 : f64
      affine.store %2, %arg5[%arg6] : memref<?xf64>
    }
    affine.for %arg6 = 0 to 100 {
      affine.for %arg7 = 0 to 80 {
        %1 = affine.load %arg5[%arg7] : memref<?xf64>
        %2 = affine.load %arg3[%arg6, %arg7] : memref<?x80xf64>
        %3 = arith.subf %2, %1 : f64
        affine.store %3, %arg3[%arg6, %arg7] : memref<?x80xf64>
      }
    }
    %0 = arith.subf %arg2, %cst : f64
    affine.for %arg6 = 0 to 80 {
      affine.for %arg7 = #map(%arg6) to 80 {
        affine.store %cst_0, %arg4[%arg6, %arg7] : memref<?x80xf64>
        affine.for %arg8 = 0 to 100 {
          %3 = affine.load %arg3[%arg8, %arg6] : memref<?x80xf64>
          %4 = affine.load %arg3[%arg8, %arg7] : memref<?x80xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = affine.load %arg4[%arg6, %arg7] : memref<?x80xf64>
          %7 = arith.addf %6, %5 : f64
          affine.store %7, %arg4[%arg6, %arg7] : memref<?x80xf64>
        }
        %1 = affine.load %arg4[%arg6, %arg7] : memref<?x80xf64>
        %2 = arith.divf %1, %0 : f64
        affine.store %2, %arg4[%arg6, %arg7] : memref<?x80xf64>
        affine.store %2, %arg4[%arg7, %arg6] : memref<?x80xf64>
      }
    }
    return
  }
}
