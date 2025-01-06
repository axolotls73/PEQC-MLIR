#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0 - 1)>
#map2 = affine_map<(d0) -> (d0 - 2)>
#map3 = affine_map<(d0) -> (d0 + 39)>
#map4 = affine_map<(d0, d1) -> (d0 + d1 + 38)>
#set = affine_set<(d0) : (d0 - 1 == 0)>
#set1 = affine_set<(d0) : (d0 - 2 >= 0)>
module {
  func.func @kernel_durbin(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 1.000000e+00 : f64
    %0 = llvm.mlir.undef : f64
    %alloca = memref.alloca() {scop.scratchpad} : memref<1xf64>
    %alloca_1 = memref.alloca() : memref<f64>
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
    affine.store %0, %alloca_1[] : memref<f64>
    affine.for %arg3 = 0 to 39 {
      %5 = affine.apply #map(%arg3)
      affine.store %cst, %alloca_1[] : memref<f64>
      %6 = affine.load %alloca_1[] : memref<f64>
      %7 = affine.load %arg1[%5 - 1] : memref<?xf64>
      %8 = affine.load %arg2[0] : memref<?xf64>
      %9 = arith.mulf %7, %8 : f64
      %10 = arith.addf %6, %9 : f64
      affine.store %10, %alloca_1[] : memref<f64>
      %11 = affine.load %alloca_3[] : memref<f64>
      %12 = affine.load %alloca_4[] : memref<f64>
      %13 = arith.mulf %12, %12 : f64
      %14 = arith.subf %11, %13 : f64
      %15 = affine.load %alloca_3[] : memref<f64>
      %16 = arith.mulf %14, %15 : f64
      affine.store %16, %alloca_3[] : memref<f64>
      affine.for %arg4 = 0 to #map1(%5) {
        %17 = affine.apply #map(%arg4)
        %18 = affine.load %alloca_1[] : memref<f64>
        %19 = affine.load %arg1[%5 - %17 - 1] : memref<?xf64>
        %20 = affine.load %arg2[%17] : memref<?xf64>
        %21 = arith.mulf %19, %20 : f64
        %22 = arith.addf %18, %21 : f64
        affine.store %22, %alloca_1[] : memref<f64>
      }
      affine.if #set(%5) {
        %17 = affine.load %arg1[1] : memref<?xf64>
        %18 = affine.load %alloca_1[] : memref<f64>
        %19 = arith.addf %17, %18 : f64
        %20 = arith.negf %19 : f64
        %21 = affine.load %alloca_3[] : memref<f64>
        %22 = arith.divf %20, %21 : f64
        affine.store %22, %alloca[0] : memref<1xf64>
        %23 = affine.load %arg2[0] : memref<?xf64>
        %24 = affine.load %alloca[0] : memref<1xf64>
        %25 = affine.load %arg2[0] : memref<?xf64>
        %26 = arith.mulf %24, %25 : f64
        %27 = arith.addf %23, %26 : f64
        affine.store %27, %alloca_2[0] : memref<40xf64>
        %28 = affine.load %alloca_2[0] : memref<40xf64>
        affine.store %28, %arg2[0] : memref<?xf64>
        %29 = affine.load %alloca[0] : memref<1xf64>
        affine.store %29, %alloca_5[0] : memref<1xf64>
        affine.store %29, %alloca_4[] : memref<f64>
        %30 = affine.load %alloca_5[0] : memref<1xf64>
        affine.store %30, %arg2[1] : memref<?xf64>
      }
      affine.if #set1(%5) {
        %17 = affine.load %arg1[%5] : memref<?xf64>
        %18 = affine.load %alloca_1[] : memref<f64>
        %19 = arith.addf %17, %18 : f64
        %20 = arith.negf %19 : f64
        %21 = affine.load %alloca_3[] : memref<f64>
        %22 = arith.divf %20, %21 : f64
        affine.store %22, %alloca[0] : memref<1xf64>
        %23 = affine.load %arg2[0] : memref<?xf64>
        %24 = affine.load %alloca[0] : memref<1xf64>
        %25 = affine.load %arg2[%5 - 1] : memref<?xf64>
        %26 = arith.mulf %24, %25 : f64
        %27 = arith.addf %23, %26 : f64
        affine.store %27, %alloca_2[0] : memref<40xf64>
        %28 = affine.load %alloca[0] : memref<1xf64>
        affine.store %28, %alloca_5[0] : memref<1xf64>
        affine.store %28, %alloca_4[] : memref<f64>
        %29 = affine.load %alloca_5[0] : memref<1xf64>
        affine.store %29, %arg2[%5] : memref<?xf64>
      }
      affine.for %arg4 = 0 to #map2(%5) {
        %17 = affine.apply #map3(%arg4)
        %18 = affine.load %arg2[%17 - 38] : memref<?xf64>
        %19 = affine.load %alloca[0] : memref<1xf64>
        %20 = affine.load %arg2[-%17 + %5 + 37] : memref<?xf64>
        %21 = arith.mulf %19, %20 : f64
        %22 = arith.addf %18, %21 : f64
        affine.store %22, %alloca_2[%17 - 38] : memref<40xf64>
      }
      affine.if #set1(%5) {
        %17 = affine.load %arg2[%5 - 1] : memref<?xf64>
        %18 = affine.load %alloca[0] : memref<1xf64>
        %19 = affine.load %arg2[0] : memref<?xf64>
        %20 = arith.mulf %18, %19 : f64
        %21 = arith.addf %17, %20 : f64
        affine.store %21, %alloca_2[%5 - 1] : memref<40xf64>
        %22 = affine.load %alloca_2[0] : memref<40xf64>
        affine.store %22, %arg2[0] : memref<?xf64>
      }
      affine.for %arg4 = 0 to #map1(%5) {
        %17 = affine.apply #map4(%5, %arg4)
        %18 = affine.load %alloca_2[-%5 + %17 - 37] : memref<40xf64>
        affine.store %18, %arg2[-%5 + %17 - 37] : memref<?xf64>
      }
    }
    return
  }
}

