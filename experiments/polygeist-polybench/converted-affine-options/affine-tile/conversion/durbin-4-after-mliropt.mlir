#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> (d0 + 32, 40)>
#map2 = affine_map<(d0) -> (d0 + 37)>
#map3 = affine_map<(d0) -> (d0 + 38)>
#map4 = affine_map<(d0) -> (d0 * 2 + 37)>
#set = affine_set<(d0) : (d0 - 1 == 0)>
#set1 = affine_set<(d0) : (d0 - 2 >= 0)>
module {
  func.func @kernel_durbin(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 1.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
    %alloca_1 = memref.alloca() {scop.scratchpad} : memref<1xf64>
    %alloca_2 = memref.alloca() : memref<40xf64>
    %alloca_3 = memref.alloca() : memref<f64>
    %alloca_4 = memref.alloca() : memref<f64>
    %alloca_5 = memref.alloca() : memref<1xf64>
    %0 = affine.load %arg1[0] : memref<?xf64>
    %1 = arith.negf %0 : f64
    affine.store %1, %arg2[0] : memref<?xf64>
    %2 = llvm.mlir.undef : f64
    affine.store %2, %alloca_4[] : memref<f64>
    %3 = affine.load %arg1[0] : memref<?xf64>
    %4 = arith.negf %3 : f64
    affine.store %4, %alloca_4[] : memref<f64>
    %5 = llvm.mlir.undef : f64
    affine.store %5, %alloca_3[] : memref<f64>
    affine.store %cst_0, %alloca_3[] : memref<f64>
    %6 = llvm.mlir.undef : f64
    affine.store %6, %alloca[] : memref<f64>
    affine.for %arg3 = 1 to 40 step 32 {
      affine.for %arg4 = #map(%arg3) to min #map1(%arg3) {
        affine.store %cst, %alloca[] : memref<f64>
        %7 = affine.load %alloca[] : memref<f64>
        %8 = affine.load %arg1[%arg4 - 1] : memref<?xf64>
        %9 = affine.load %arg2[0] : memref<?xf64>
        %10 = arith.mulf %8, %9 : f64
        %11 = arith.addf %7, %10 : f64
        affine.store %11, %alloca[] : memref<f64>
        %12 = affine.load %alloca_3[] : memref<f64>
        %13 = affine.load %alloca_4[] : memref<f64>
        %14 = arith.mulf %13, %13 : f64
        %15 = arith.subf %12, %14 : f64
        %16 = affine.load %alloca_3[] : memref<f64>
        %17 = arith.mulf %15, %16 : f64
        affine.store %17, %alloca_3[] : memref<f64>
        affine.for %arg5 = 1 to #map(%arg4) {
          %18 = affine.load %alloca[] : memref<f64>
          %19 = affine.load %arg1[%arg4 - %arg5 - 1] : memref<?xf64>
          %20 = affine.load %arg2[%arg5] : memref<?xf64>
          %21 = arith.mulf %19, %20 : f64
          %22 = arith.addf %18, %21 : f64
          affine.store %22, %alloca[] : memref<f64>
        }
        affine.if #set(%arg4) {
          %18 = affine.load %arg1[1] : memref<?xf64>
          %19 = affine.load %alloca[] : memref<f64>
          %20 = arith.addf %18, %19 : f64
          %21 = arith.negf %20 : f64
          %22 = affine.load %alloca_3[] : memref<f64>
          %23 = arith.divf %21, %22 : f64
          affine.store %23, %alloca_1[0] : memref<1xf64>
          %24 = affine.load %arg2[0] : memref<?xf64>
          %25 = affine.load %alloca_1[0] : memref<1xf64>
          %26 = affine.load %arg2[0] : memref<?xf64>
          %27 = arith.mulf %25, %26 : f64
          %28 = arith.addf %24, %27 : f64
          affine.store %28, %alloca_2[0] : memref<40xf64>
          %29 = affine.load %alloca_2[0] : memref<40xf64>
          affine.store %29, %arg2[0] : memref<?xf64>
          %30 = affine.load %alloca_1[0] : memref<1xf64>
          affine.store %30, %alloca_5[0] : memref<1xf64>
          affine.store %30, %alloca_4[] : memref<f64>
          %31 = affine.load %alloca_5[0] : memref<1xf64>
          affine.store %31, %arg2[1] : memref<?xf64>
        }
        affine.if #set1(%arg4) {
          %18 = affine.load %arg1[%arg4] : memref<?xf64>
          %19 = affine.load %alloca[] : memref<f64>
          %20 = arith.addf %18, %19 : f64
          %21 = arith.negf %20 : f64
          %22 = affine.load %alloca_3[] : memref<f64>
          %23 = arith.divf %21, %22 : f64
          affine.store %23, %alloca_1[0] : memref<1xf64>
          %24 = affine.load %arg2[0] : memref<?xf64>
          %25 = affine.load %alloca_1[0] : memref<1xf64>
          %26 = affine.load %arg2[%arg4 - 1] : memref<?xf64>
          %27 = arith.mulf %25, %26 : f64
          %28 = arith.addf %24, %27 : f64
          affine.store %28, %alloca_2[0] : memref<40xf64>
          %29 = affine.load %alloca_1[0] : memref<1xf64>
          affine.store %29, %alloca_5[0] : memref<1xf64>
          affine.store %29, %alloca_4[] : memref<f64>
          %30 = affine.load %alloca_5[0] : memref<1xf64>
          affine.store %30, %arg2[%arg4] : memref<?xf64>
        }
        affine.for %arg5 = 39 to #map2(%arg4) {
          %18 = affine.load %arg2[%arg5 - 38] : memref<?xf64>
          %19 = affine.load %alloca_1[0] : memref<1xf64>
          %20 = affine.load %arg2[-%arg5 + %arg4 + 37] : memref<?xf64>
          %21 = arith.mulf %19, %20 : f64
          %22 = arith.addf %18, %21 : f64
          affine.store %22, %alloca_2[%arg5 - 38] : memref<40xf64>
        }
        affine.if #set1(%arg4) {
          %18 = affine.load %arg2[%arg4 - 1] : memref<?xf64>
          %19 = affine.load %alloca_1[0] : memref<1xf64>
          %20 = affine.load %arg2[0] : memref<?xf64>
          %21 = arith.mulf %19, %20 : f64
          %22 = arith.addf %18, %21 : f64
          affine.store %22, %alloca_2[%arg4 - 1] : memref<40xf64>
          %23 = affine.load %alloca_2[0] : memref<40xf64>
          affine.store %23, %arg2[0] : memref<?xf64>
        }
        affine.for %arg5 = #map3(%arg4) to #map4(%arg4) {
          %18 = affine.load %alloca_2[-%arg4 + %arg5 - 37] : memref<40xf64>
          affine.store %18, %arg2[-%arg4 + %arg5 - 37] : memref<?xf64>
        }
      }
    }
    return
  }
}

