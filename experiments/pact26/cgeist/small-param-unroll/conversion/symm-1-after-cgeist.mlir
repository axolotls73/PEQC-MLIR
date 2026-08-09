#map = affine_map<(d0) -> (d0)>
module {
  func.func @kernel_symm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x80xf64>, %arg5: memref<?x60xf64>, %arg6: memref<?x80xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %0 = arith.index_cast %arg1 : i32 to index
    %alloca = memref.alloca() : memref<f64>
    affine.store %cst, %alloca[] : memref<f64>
    %1 = arith.index_cast %arg0 : i32 to index
    affine.for %arg7 = 0 to %1 {
      affine.for %arg8 = 0 to %0 {
        affine.store %cst, %alloca[] : memref<f64>
        affine.for %arg9 = 0 to #map(%arg7) {
          %12 = affine.load %arg6[%arg7, %arg8] : memref<?x80xf64>
          %13 = arith.mulf %arg2, %12 : f64
          %14 = affine.load %arg5[%arg7, %arg9] : memref<?x60xf64>
          %15 = arith.mulf %13, %14 : f64
          %16 = affine.load %arg4[%arg9, %arg8] : memref<?x80xf64>
          %17 = arith.addf %16, %15 : f64
          affine.store %17, %arg4[%arg9, %arg8] : memref<?x80xf64>
          %18 = affine.load %arg6[%arg9, %arg8] : memref<?x80xf64>
          %19 = affine.load %arg5[%arg7, %arg9] : memref<?x60xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = affine.load %alloca[] : memref<f64>
          %22 = arith.addf %21, %20 : f64
          affine.store %22, %alloca[] : memref<f64>
        }
        %2 = affine.load %arg4[%arg7, %arg8] : memref<?x80xf64>
        %3 = arith.mulf %arg3, %2 : f64
        %4 = affine.load %arg6[%arg7, %arg8] : memref<?x80xf64>
        %5 = arith.mulf %arg2, %4 : f64
        %6 = affine.load %arg5[%arg7, %arg7] : memref<?x60xf64>
        %7 = arith.mulf %5, %6 : f64
        %8 = arith.addf %3, %7 : f64
        %9 = affine.load %alloca[] : memref<f64>
        %10 = arith.mulf %arg2, %9 : f64
        %11 = arith.addf %8, %10 : f64
        affine.store %11, %arg4[%arg7, %arg8] : memref<?x80xf64>
      }
    }
    return
  }
}
