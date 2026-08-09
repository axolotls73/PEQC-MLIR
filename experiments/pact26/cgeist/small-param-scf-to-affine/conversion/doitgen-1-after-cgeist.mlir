module {
  func.func @kernel_doitgen(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x20x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.index_cast %arg2 : i32 to index
    %2 = arith.index_cast %arg0 : i32 to index
    affine.for %arg6 = 0 to %2 {
      affine.for %arg7 = 0 to %0 {
        affine.for %arg8 = 0 to %1 {
          affine.store %cst, %arg5[%arg8] : memref<?xf64>
          affine.for %arg9 = 0 to %1 {
            %3 = affine.load %arg3[%arg6, %arg7, %arg9] : memref<?x20x30xf64>
            %4 = affine.load %arg4[%arg9, %arg8] : memref<?x30xf64>
            %5 = arith.mulf %3, %4 : f64
            %6 = affine.load %arg5[%arg8] : memref<?xf64>
            %7 = arith.addf %6, %5 : f64
            affine.store %7, %arg5[%arg8] : memref<?xf64>
          }
        }
        affine.for %arg8 = 0 to %1 {
          %3 = affine.load %arg5[%arg8] : memref<?xf64>
          affine.store %3, %arg3[%arg6, %arg7, %arg8] : memref<?x20x30xf64>
        }
      }
    }
    return
  }
}
