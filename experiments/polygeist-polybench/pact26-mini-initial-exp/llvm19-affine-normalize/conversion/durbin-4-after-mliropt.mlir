#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0)>
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
    affine.for %arg3 = 0 to 39 {
      %5 = affine.apply #map(%arg3)
      %6 = affine.load %alloca_2[] : memref<f64>
      %7 = arith.mulf %6, %6 : f64
      %8 = arith.subf %cst_0, %7 : f64
      %9 = affine.load %alloca_1[] : memref<f64>
      %10 = arith.mulf %8, %9 : f64
      affine.store %10, %alloca_1[] : memref<f64>
      affine.store %cst, %alloca[] : memref<f64>
      affine.for %arg4 = 0 to #map1(%5) {
        %16 = affine.load %arg1[%5 - %arg4 - 1] : memref<?xf64>
        %17 = affine.load %arg2[%arg4] : memref<?xf64>
        %18 = arith.mulf %16, %17 : f64
        %19 = affine.load %alloca[] : memref<f64>
        %20 = arith.addf %19, %18 : f64
        affine.store %20, %alloca[] : memref<f64>
      }
      %11 = affine.load %arg1[%5] : memref<?xf64>
      %12 = affine.load %alloca[] : memref<f64>
      %13 = arith.addf %11, %12 : f64
      %14 = arith.negf %13 : f64
      %15 = arith.divf %14, %10 : f64
      affine.store %15, %alloca_2[] : memref<f64>
      affine.for %arg4 = 0 to #map1(%5) {
        %16 = affine.load %arg2[%arg4] : memref<?xf64>
        %17 = affine.load %arg2[%5 - %arg4 - 1] : memref<?xf64>
        %18 = arith.mulf %15, %17 : f64
        %19 = arith.addf %16, %18 : f64
        affine.store %19, %alloca_3[%arg4] : memref<40xf64>
      }
      affine.for %arg4 = 0 to #map1(%5) {
        %16 = affine.load %alloca_3[%arg4] : memref<40xf64>
        affine.store %16, %arg2[%arg4] : memref<?xf64>
      }
      affine.store %15, %arg2[%5] : memref<?xf64>
    }
    return
  }
}

