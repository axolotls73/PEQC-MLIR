#map = affine_map<(d0) -> (d0)>
module {
  func.func @kernel_symm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>, %arg6: memref<?x30xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
    affine.store %cst, %alloca[] : memref<f64>
    affine.for %arg7 = 0 to 20 {
      %0 = affine.load %arg5[%arg7, %arg7] : memref<?x20xf64>
      affine.for %arg8 = 0 to 30 {
        affine.store %cst, %alloca[] : memref<f64>
        %1 = affine.load %arg6[%arg7, %arg8] : memref<?x30xf64>
        %2 = arith.mulf %arg2, %1 : f64
        affine.for %arg9 = 0 to #map(%arg7) {
          %12 = affine.load %arg5[%arg7, %arg9] : memref<?x20xf64>
          %13 = arith.mulf %2, %12 : f64
          %14 = affine.load %arg4[%arg9, %arg8] : memref<?x30xf64>
          %15 = arith.addf %14, %13 : f64
          affine.store %15, %arg4[%arg9, %arg8] : memref<?x30xf64>
          %16 = affine.load %arg6[%arg9, %arg8] : memref<?x30xf64>
          %17 = affine.load %arg5[%arg7, %arg9] : memref<?x20xf64>
          %18 = arith.mulf %16, %17 : f64
          %19 = affine.load %alloca[] : memref<f64>
          %20 = arith.addf %19, %18 : f64
          affine.store %20, %alloca[] : memref<f64>
        }
        %3 = affine.load %arg4[%arg7, %arg8] : memref<?x30xf64>
        %4 = arith.mulf %arg3, %3 : f64
        %5 = affine.load %arg6[%arg7, %arg8] : memref<?x30xf64>
        %6 = arith.mulf %arg2, %5 : f64
        %7 = arith.mulf %6, %0 : f64
        %8 = arith.addf %4, %7 : f64
        %9 = affine.load %alloca[] : memref<f64>
        %10 = arith.mulf %arg2, %9 : f64
        %11 = arith.addf %8, %10 : f64
        affine.store %11, %arg4[%arg7, %arg8] : memref<?x30xf64>
      }
    }
    return
  }
}

