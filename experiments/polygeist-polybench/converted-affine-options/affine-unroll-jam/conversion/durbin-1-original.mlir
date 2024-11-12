#map = affine_map<(d0) -> (d0)>
module {
  func.func @kernel_durbin(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 1.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
    %0 = llvm.mlir.undef : f64
    affine.store %0, %alloca[] : memref<f64>
    %alloca_1 = memref.alloca() : memref<f64>
    affine.store %0, %alloca_1[] : memref<f64>
    %alloca_2 = memref.alloca() : memref<f64>
    affine.store %0, %alloca_2[] : memref<f64>
    %alloca_3 = memref.alloca() : memref<40xf64>
    %1 = affine.load %arg1[0] : memref<?xf64>
    %2 = arith.negf %1 : f64
    affine.store %2, %arg2[0] : memref<?xf64>
    affine.store %cst_0, %alloca_1[] : memref<f64>
    %3 = affine.load %arg1[0] : memref<?xf64>
    %4 = arith.negf %3 : f64
    affine.store %4, %alloca_2[] : memref<f64>
    affine.for %arg3 = 1 to 40 {
      %5 = affine.load %alloca_2[] : memref<f64>
      %6 = arith.mulf %5, %5 : f64
      %7 = arith.subf %cst_0, %6 : f64
      %8 = affine.load %alloca_1[] : memref<f64>
      %9 = arith.mulf %7, %8 : f64
      affine.store %9, %alloca_1[] : memref<f64>
      affine.store %cst, %alloca[] : memref<f64>
      affine.for %arg4 = 0 to #map(%arg3) {
        %15 = affine.load %arg1[%arg3 - %arg4 - 1] : memref<?xf64>
        %16 = affine.load %arg2[%arg4] : memref<?xf64>
        %17 = arith.mulf %15, %16 : f64
        %18 = affine.load %alloca[] : memref<f64>
        %19 = arith.addf %18, %17 : f64
        affine.store %19, %alloca[] : memref<f64>
      }
      %10 = affine.load %arg1[%arg3] : memref<?xf64>
      %11 = affine.load %alloca[] : memref<f64>
      %12 = arith.addf %10, %11 : f64
      %13 = arith.negf %12 : f64
      %14 = arith.divf %13, %9 : f64
      affine.store %14, %alloca_2[] : memref<f64>
      affine.for %arg4 = 0 to #map(%arg3) {
        %15 = affine.load %arg2[%arg4] : memref<?xf64>
        %16 = affine.load %arg2[%arg3 - %arg4 - 1] : memref<?xf64>
        %17 = arith.mulf %14, %16 : f64
        %18 = arith.addf %15, %17 : f64
        affine.store %18, %alloca_3[%arg4] : memref<40xf64>
      }
      affine.for %arg4 = 0 to #map(%arg3) {
        %15 = affine.load %alloca_3[%arg4] : memref<40xf64>
        affine.store %15, %arg2[%arg4] : memref<?xf64>
      }
      affine.store %14, %arg2[%arg3] : memref<?xf64>
    }
    return
  }
}
