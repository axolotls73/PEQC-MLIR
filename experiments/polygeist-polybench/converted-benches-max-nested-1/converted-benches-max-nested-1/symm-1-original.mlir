#map = affine_map<(d0) -> (d0)>
module {
  func.func @kernel_symm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>, %arg6: memref<?x30xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
    %0 = llvm.mlir.undef : f64
    affine.store %0, %alloca[] : memref<f64>
    affine.for %arg7 = 0 to 20 {
      affine.for %arg8 = 0 to 30 {
        affine.store %cst, %alloca[] : memref<f64>
        affine.for %arg9 = 0 to #map(%arg7) {
          %11 = affine.load %arg6[%arg7, %arg8] : memref<?x30xf64>
          %12 = arith.mulf %arg2, %11 : f64
          %13 = affine.load %arg5[%arg7, %arg9] : memref<?x20xf64>
          %14 = arith.mulf %12, %13 : f64
          %15 = affine.load %arg4[%arg9, %arg8] : memref<?x30xf64>
          %16 = arith.addf %15, %14 : f64
          affine.store %16, %arg4[%arg9, %arg8] : memref<?x30xf64>
          %17 = affine.load %arg6[%arg9, %arg8] : memref<?x30xf64>
          %18 = affine.load %arg5[%arg7, %arg9] : memref<?x20xf64>
          %19 = arith.mulf %17, %18 : f64
          %20 = affine.load %alloca[] : memref<f64>
          %21 = arith.addf %20, %19 : f64
          affine.store %21, %alloca[] : memref<f64>
        }
        %1 = affine.load %arg4[%arg7, %arg8] : memref<?x30xf64>
        %2 = arith.mulf %arg3, %1 : f64
        %3 = affine.load %arg6[%arg7, %arg8] : memref<?x30xf64>
        %4 = arith.mulf %arg2, %3 : f64
        %5 = affine.load %arg5[%arg7, %arg7] : memref<?x20xf64>
        %6 = arith.mulf %4, %5 : f64
        %7 = arith.addf %2, %6 : f64
        %8 = affine.load %alloca[] : memref<f64>
        %9 = arith.mulf %arg2, %8 : f64
        %10 = arith.addf %7, %9 : f64
        affine.store %10, %arg4[%arg7, %arg8] : memref<?x30xf64>
      }
    }
    return
  }
}
