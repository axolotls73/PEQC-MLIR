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
    %alloca = memref.alloca() {scop.scratchpad} : memref<1xf64>
    %alloca_1 = memref.alloca() : memref<f64>
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
    affine.store %6, %alloca_1[] : memref<f64>
    affine.for %arg3 = 0 to 39 {
      %7 = affine.apply #map(%arg3)
      affine.store %cst, %alloca_1[] : memref<f64>
      %8 = affine.load %alloca_1[] : memref<f64>
      %9 = affine.load %arg1[%7 - 1] : memref<?xf64>
      %10 = affine.load %arg2[0] : memref<?xf64>
      %11 = arith.mulf %9, %10 : f64
      %12 = arith.addf %8, %11 : f64
      affine.store %12, %alloca_1[] : memref<f64>
      %13 = affine.load %alloca_3[] : memref<f64>
      %14 = affine.load %alloca_4[] : memref<f64>
      %15 = arith.mulf %14, %14 : f64
      %16 = arith.subf %13, %15 : f64
      %17 = affine.load %alloca_3[] : memref<f64>
      %18 = arith.mulf %16, %17 : f64
      affine.store %18, %alloca_3[] : memref<f64>
      affine.for %arg4 = 0 to #map1(%7) {
        %19 = affine.apply #map(%arg4)
        %20 = affine.load %alloca_1[] : memref<f64>
        %21 = affine.load %arg1[%7 - %19 - 1] : memref<?xf64>
        %22 = affine.load %arg2[%19] : memref<?xf64>
        %23 = arith.mulf %21, %22 : f64
        %24 = arith.addf %20, %23 : f64
        affine.store %24, %alloca_1[] : memref<f64>
      }
      affine.if #set(%7) {
        %19 = affine.load %arg1[1] : memref<?xf64>
        %20 = affine.load %alloca_1[] : memref<f64>
        %21 = arith.addf %19, %20 : f64
        %22 = arith.negf %21 : f64
        %23 = affine.load %alloca_3[] : memref<f64>
        %24 = arith.divf %22, %23 : f64
        affine.store %24, %alloca[0] : memref<1xf64>
        %25 = affine.load %arg2[0] : memref<?xf64>
        %26 = affine.load %alloca[0] : memref<1xf64>
        %27 = affine.load %arg2[0] : memref<?xf64>
        %28 = arith.mulf %26, %27 : f64
        %29 = arith.addf %25, %28 : f64
        affine.store %29, %alloca_2[0] : memref<40xf64>
        %30 = affine.load %alloca_2[0] : memref<40xf64>
        affine.store %30, %arg2[0] : memref<?xf64>
        %31 = affine.load %alloca[0] : memref<1xf64>
        affine.store %31, %alloca_5[0] : memref<1xf64>
        affine.store %31, %alloca_4[] : memref<f64>
        %32 = affine.load %alloca_5[0] : memref<1xf64>
        affine.store %32, %arg2[1] : memref<?xf64>
      }
      affine.if #set1(%7) {
        %19 = affine.load %arg1[%7] : memref<?xf64>
        %20 = affine.load %alloca_1[] : memref<f64>
        %21 = arith.addf %19, %20 : f64
        %22 = arith.negf %21 : f64
        %23 = affine.load %alloca_3[] : memref<f64>
        %24 = arith.divf %22, %23 : f64
        affine.store %24, %alloca[0] : memref<1xf64>
        %25 = affine.load %arg2[0] : memref<?xf64>
        %26 = affine.load %alloca[0] : memref<1xf64>
        %27 = affine.load %arg2[%7 - 1] : memref<?xf64>
        %28 = arith.mulf %26, %27 : f64
        %29 = arith.addf %25, %28 : f64
        affine.store %29, %alloca_2[0] : memref<40xf64>
        %30 = affine.load %alloca[0] : memref<1xf64>
        affine.store %30, %alloca_5[0] : memref<1xf64>
        affine.store %30, %alloca_4[] : memref<f64>
        %31 = affine.load %alloca_5[0] : memref<1xf64>
        affine.store %31, %arg2[%7] : memref<?xf64>
      }
      affine.for %arg4 = 0 to #map2(%7) {
        %19 = affine.apply #map3(%arg4)
        %20 = affine.load %arg2[%19 - 38] : memref<?xf64>
        %21 = affine.load %alloca[0] : memref<1xf64>
        %22 = affine.load %arg2[-%19 + %7 + 37] : memref<?xf64>
        %23 = arith.mulf %21, %22 : f64
        %24 = arith.addf %20, %23 : f64
        affine.store %24, %alloca_2[%19 - 38] : memref<40xf64>
      }
      affine.if #set1(%7) {
        %19 = affine.load %arg2[%7 - 1] : memref<?xf64>
        %20 = affine.load %alloca[0] : memref<1xf64>
        %21 = affine.load %arg2[0] : memref<?xf64>
        %22 = arith.mulf %20, %21 : f64
        %23 = arith.addf %19, %22 : f64
        affine.store %23, %alloca_2[%7 - 1] : memref<40xf64>
        %24 = affine.load %alloca_2[0] : memref<40xf64>
        affine.store %24, %arg2[0] : memref<?xf64>
      }
      affine.for %arg4 = 0 to #map1(%7) {
        %19 = affine.apply #map4(%7, %arg4)
        %20 = affine.load %alloca_2[-%7 + %19 - 37] : memref<40xf64>
        affine.store %20, %arg2[-%7 + %19 - 37] : memref<?xf64>
      }
    }
    return
  }
}

