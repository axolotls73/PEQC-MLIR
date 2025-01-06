#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> (d0 + 37)>
#map2 = affine_map<(d0) -> (d0 + 38)>
#map3 = affine_map<(d0) -> (d0 * 2 + 37)>
#set = affine_set<(d0) : (d0 - 1 == 0)>
#set1 = affine_set<(d0) : (d0 - 2 >= 0)>
module {
  func.func @kernel_durbin(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 1.000000e+00 : f64
    %0 = llvm.mlir.undef : f64
    %alloca = memref.alloca() : memref<f64>
    %alloca_1 = memref.alloca() {scop.scratchpad} : memref<1xf64>
    %alloca_2 = memref.alloca() : memref<40xf64>
    %alloca_3 = memref.alloca() : memref<f64>
    %alloca_4 = memref.alloca() : memref<f64>
    %alloca_5 = memref.alloca() : memref<1xf64>
    %1 = affine.load %arg1[0] : memref<?xf64>
    %2 = arith.negf %1 : f64
    affine.store %2, %arg2[0] : memref<?xf64>
    affine.store %0, %alloca_4[] : memref<f64>
    %3 = affine.load %arg1[0] : memref<?xf64>
    %4 = arith.negf %3 : f64
    affine.store %4, %alloca_4[] : memref<f64>
    affine.store %0, %alloca_3[] : memref<f64>
    affine.store %cst_0, %alloca_3[] : memref<f64>
    affine.store %0, %alloca[] : memref<f64>
    affine.for %arg3 = 1 to 40 {
      affine.store %cst, %alloca[] : memref<f64>
      %5 = affine.load %alloca[] : memref<f64>
      %6 = affine.load %arg1[%arg3 - 1] : memref<?xf64>
      %7 = affine.load %arg2[0] : memref<?xf64>
      %8 = arith.mulf %6, %7 : f64
      %9 = arith.addf %5, %8 : f64
      affine.store %9, %alloca[] : memref<f64>
      %10 = affine.load %alloca_3[] : memref<f64>
      %11 = affine.load %alloca_4[] : memref<f64>
      %12 = arith.mulf %11, %11 : f64
      %13 = arith.subf %10, %12 : f64
      %14 = affine.load %alloca_3[] : memref<f64>
      %15 = arith.mulf %13, %14 : f64
      affine.store %15, %alloca_3[] : memref<f64>
      affine.for %arg4 = 1 to #map(%arg3) {
        %16 = affine.load %alloca[] : memref<f64>
        %17 = affine.load %arg1[%arg3 - %arg4 - 1] : memref<?xf64>
        %18 = affine.load %arg2[%arg4] : memref<?xf64>
        %19 = arith.mulf %17, %18 : f64
        %20 = arith.addf %16, %19 : f64
        affine.store %20, %alloca[] : memref<f64>
      }
      affine.if #set(%arg3) {
        %16 = affine.load %arg1[1] : memref<?xf64>
        %17 = affine.load %alloca[] : memref<f64>
        %18 = arith.addf %16, %17 : f64
        %19 = arith.negf %18 : f64
        %20 = affine.load %alloca_3[] : memref<f64>
        %21 = arith.divf %19, %20 : f64
        affine.store %21, %alloca_1[0] : memref<1xf64>
        %22 = affine.load %arg2[0] : memref<?xf64>
        %23 = affine.load %alloca_1[0] : memref<1xf64>
        %24 = affine.load %arg2[0] : memref<?xf64>
        %25 = arith.mulf %23, %24 : f64
        %26 = arith.addf %22, %25 : f64
        affine.store %26, %alloca_2[0] : memref<40xf64>
        %27 = affine.load %alloca_2[0] : memref<40xf64>
        affine.store %27, %arg2[0] : memref<?xf64>
        %28 = affine.load %alloca_1[0] : memref<1xf64>
        affine.store %28, %alloca_5[0] : memref<1xf64>
        affine.store %28, %alloca_4[] : memref<f64>
        %29 = affine.load %alloca_5[0] : memref<1xf64>
        affine.store %29, %arg2[1] : memref<?xf64>
      }
      affine.if #set1(%arg3) {
        %16 = affine.load %arg1[%arg3] : memref<?xf64>
        %17 = affine.load %alloca[] : memref<f64>
        %18 = arith.addf %16, %17 : f64
        %19 = arith.negf %18 : f64
        %20 = affine.load %alloca_3[] : memref<f64>
        %21 = arith.divf %19, %20 : f64
        affine.store %21, %alloca_1[0] : memref<1xf64>
        %22 = affine.load %arg2[0] : memref<?xf64>
        %23 = affine.load %alloca_1[0] : memref<1xf64>
        %24 = affine.load %arg2[%arg3 - 1] : memref<?xf64>
        %25 = arith.mulf %23, %24 : f64
        %26 = arith.addf %22, %25 : f64
        affine.store %26, %alloca_2[0] : memref<40xf64>
        %27 = affine.load %alloca_1[0] : memref<1xf64>
        affine.store %27, %alloca_5[0] : memref<1xf64>
        affine.store %27, %alloca_4[] : memref<f64>
        %28 = affine.load %alloca_5[0] : memref<1xf64>
        affine.store %28, %arg2[%arg3] : memref<?xf64>
      }
      affine.for %arg4 = 39 to #map1(%arg3) {
        %16 = affine.load %arg2[%arg4 - 38] : memref<?xf64>
        %17 = affine.load %alloca_1[0] : memref<1xf64>
        %18 = affine.load %arg2[-%arg4 + %arg3 + 37] : memref<?xf64>
        %19 = arith.mulf %17, %18 : f64
        %20 = arith.addf %16, %19 : f64
        affine.store %20, %alloca_2[%arg4 - 38] : memref<40xf64>
      }
      affine.if #set1(%arg3) {
        %16 = affine.load %arg2[%arg3 - 1] : memref<?xf64>
        %17 = affine.load %alloca_1[0] : memref<1xf64>
        %18 = affine.load %arg2[-%arg3 + %arg3] : memref<?xf64>
        %19 = arith.mulf %17, %18 : f64
        %20 = arith.addf %16, %19 : f64
        affine.store %20, %alloca_2[%arg3 - 1] : memref<40xf64>
        %21 = affine.load %alloca_2[0] : memref<40xf64>
        affine.store %21, %arg2[0] : memref<?xf64>
      }
      affine.for %arg4 = #map2(%arg3) to #map3(%arg3) {
        %16 = affine.load %alloca_2[-%arg3 + %arg4 - 37] : memref<40xf64>
        affine.store %16, %arg2[-%arg3 + %arg4 - 37] : memref<?xf64>
      }
    }
    return
  }
}

