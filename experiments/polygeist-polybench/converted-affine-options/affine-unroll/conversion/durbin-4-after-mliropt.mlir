#map = affine_map<(d0) -> (((d0 - 1) floordiv 4) * 4 + 1)>
#map1 = affine_map<(d0) -> (d0 + 1)>
#map2 = affine_map<(d0) -> (d0 + 2)>
#map3 = affine_map<(d0) -> (d0 + 3)>
#map4 = affine_map<(d0) -> (d0)>
#map5 = affine_map<(d0) -> (((d0 - 2) floordiv 4) * 4 + 39)>
#map6 = affine_map<(d0) -> (d0 + 37)>
#map7 = affine_map<(d0) -> (d0 + 38)>
#map8 = affine_map<(d0) -> (d0 + ((d0 - 1) floordiv 4) * 4 + 38)>
#map9 = affine_map<(d0) -> (d0 * 2 + 37)>
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
    affine.for %arg3 = 1 to 40 {
      affine.store %cst, %alloca_1[] : memref<f64>
      %7 = affine.load %alloca_1[] : memref<f64>
      %8 = affine.load %arg1[%arg3 - 1] : memref<?xf64>
      %9 = affine.load %arg2[0] : memref<?xf64>
      %10 = arith.mulf %8, %9 : f64
      %11 = arith.addf %7, %10 : f64
      affine.store %11, %alloca_1[] : memref<f64>
      %12 = affine.load %alloca_3[] : memref<f64>
      %13 = affine.load %alloca_4[] : memref<f64>
      %14 = arith.mulf %13, %13 : f64
      %15 = arith.subf %12, %14 : f64
      %16 = affine.load %alloca_3[] : memref<f64>
      %17 = arith.mulf %15, %16 : f64
      affine.store %17, %alloca_3[] : memref<f64>
      affine.for %arg4 = 1 to #map(%arg3) step 4 {
        %18 = affine.load %alloca_1[] : memref<f64>
        %19 = affine.load %arg1[%arg3 - %arg4 - 1] : memref<?xf64>
        %20 = affine.load %arg2[%arg4] : memref<?xf64>
        %21 = arith.mulf %19, %20 : f64
        %22 = arith.addf %18, %21 : f64
        affine.store %22, %alloca_1[] : memref<f64>
        %23 = affine.apply #map1(%arg4)
        %24 = affine.load %alloca_1[] : memref<f64>
        %25 = affine.load %arg1[%arg3 - %23 - 1] : memref<?xf64>
        %26 = affine.load %arg2[%23] : memref<?xf64>
        %27 = arith.mulf %25, %26 : f64
        %28 = arith.addf %24, %27 : f64
        affine.store %28, %alloca_1[] : memref<f64>
        %29 = affine.apply #map2(%arg4)
        %30 = affine.load %alloca_1[] : memref<f64>
        %31 = affine.load %arg1[%arg3 - %29 - 1] : memref<?xf64>
        %32 = affine.load %arg2[%29] : memref<?xf64>
        %33 = arith.mulf %31, %32 : f64
        %34 = arith.addf %30, %33 : f64
        affine.store %34, %alloca_1[] : memref<f64>
        %35 = affine.apply #map3(%arg4)
        %36 = affine.load %alloca_1[] : memref<f64>
        %37 = affine.load %arg1[%arg3 - %35 - 1] : memref<?xf64>
        %38 = affine.load %arg2[%35] : memref<?xf64>
        %39 = arith.mulf %37, %38 : f64
        %40 = arith.addf %36, %39 : f64
        affine.store %40, %alloca_1[] : memref<f64>
      }
      affine.for %arg4 = #map(%arg3) to #map4(%arg3) {
        %18 = affine.load %alloca_1[] : memref<f64>
        %19 = affine.load %arg1[%arg3 - %arg4 - 1] : memref<?xf64>
        %20 = affine.load %arg2[%arg4] : memref<?xf64>
        %21 = arith.mulf %19, %20 : f64
        %22 = arith.addf %18, %21 : f64
        affine.store %22, %alloca_1[] : memref<f64>
      }
      affine.if #set(%arg3) {
        %18 = affine.load %arg1[1] : memref<?xf64>
        %19 = affine.load %alloca_1[] : memref<f64>
        %20 = arith.addf %18, %19 : f64
        %21 = arith.negf %20 : f64
        %22 = affine.load %alloca_3[] : memref<f64>
        %23 = arith.divf %21, %22 : f64
        affine.store %23, %alloca[0] : memref<1xf64>
        %24 = affine.load %arg2[0] : memref<?xf64>
        %25 = affine.load %alloca[0] : memref<1xf64>
        %26 = affine.load %arg2[0] : memref<?xf64>
        %27 = arith.mulf %25, %26 : f64
        %28 = arith.addf %24, %27 : f64
        affine.store %28, %alloca_2[0] : memref<40xf64>
        %29 = affine.load %alloca_2[0] : memref<40xf64>
        affine.store %29, %arg2[0] : memref<?xf64>
        %30 = affine.load %alloca[0] : memref<1xf64>
        affine.store %30, %alloca_5[0] : memref<1xf64>
        affine.store %30, %alloca_4[] : memref<f64>
        %31 = affine.load %alloca_5[0] : memref<1xf64>
        affine.store %31, %arg2[1] : memref<?xf64>
      }
      affine.if #set1(%arg3) {
        %18 = affine.load %arg1[%arg3] : memref<?xf64>
        %19 = affine.load %alloca_1[] : memref<f64>
        %20 = arith.addf %18, %19 : f64
        %21 = arith.negf %20 : f64
        %22 = affine.load %alloca_3[] : memref<f64>
        %23 = arith.divf %21, %22 : f64
        affine.store %23, %alloca[0] : memref<1xf64>
        %24 = affine.load %arg2[0] : memref<?xf64>
        %25 = affine.load %alloca[0] : memref<1xf64>
        %26 = affine.load %arg2[%arg3 - 1] : memref<?xf64>
        %27 = arith.mulf %25, %26 : f64
        %28 = arith.addf %24, %27 : f64
        affine.store %28, %alloca_2[0] : memref<40xf64>
        %29 = affine.load %alloca[0] : memref<1xf64>
        affine.store %29, %alloca_5[0] : memref<1xf64>
        affine.store %29, %alloca_4[] : memref<f64>
        %30 = affine.load %alloca_5[0] : memref<1xf64>
        affine.store %30, %arg2[%arg3] : memref<?xf64>
      }
      affine.for %arg4 = 39 to #map5(%arg3) step 4 {
        %18 = affine.load %arg2[%arg4 - 38] : memref<?xf64>
        %19 = affine.load %alloca[0] : memref<1xf64>
        %20 = affine.load %arg2[-%arg4 + %arg3 + 37] : memref<?xf64>
        %21 = arith.mulf %19, %20 : f64
        %22 = arith.addf %18, %21 : f64
        affine.store %22, %alloca_2[%arg4 - 38] : memref<40xf64>
        %23 = affine.apply #map1(%arg4)
        %24 = affine.load %arg2[%23 - 38] : memref<?xf64>
        %25 = affine.load %alloca[0] : memref<1xf64>
        %26 = affine.load %arg2[-%23 + %arg3 + 37] : memref<?xf64>
        %27 = arith.mulf %25, %26 : f64
        %28 = arith.addf %24, %27 : f64
        affine.store %28, %alloca_2[%23 - 38] : memref<40xf64>
        %29 = affine.apply #map2(%arg4)
        %30 = affine.load %arg2[%29 - 38] : memref<?xf64>
        %31 = affine.load %alloca[0] : memref<1xf64>
        %32 = affine.load %arg2[-%29 + %arg3 + 37] : memref<?xf64>
        %33 = arith.mulf %31, %32 : f64
        %34 = arith.addf %30, %33 : f64
        affine.store %34, %alloca_2[%29 - 38] : memref<40xf64>
        %35 = affine.apply #map3(%arg4)
        %36 = affine.load %arg2[%35 - 38] : memref<?xf64>
        %37 = affine.load %alloca[0] : memref<1xf64>
        %38 = affine.load %arg2[-%35 + %arg3 + 37] : memref<?xf64>
        %39 = arith.mulf %37, %38 : f64
        %40 = arith.addf %36, %39 : f64
        affine.store %40, %alloca_2[%35 - 38] : memref<40xf64>
      }
      affine.for %arg4 = #map5(%arg3) to #map6(%arg3) {
        %18 = affine.load %arg2[%arg4 - 38] : memref<?xf64>
        %19 = affine.load %alloca[0] : memref<1xf64>
        %20 = affine.load %arg2[-%arg4 + %arg3 + 37] : memref<?xf64>
        %21 = arith.mulf %19, %20 : f64
        %22 = arith.addf %18, %21 : f64
        affine.store %22, %alloca_2[%arg4 - 38] : memref<40xf64>
      }
      affine.if #set1(%arg3) {
        %18 = affine.load %arg2[%arg3 - 1] : memref<?xf64>
        %19 = affine.load %alloca[0] : memref<1xf64>
        %20 = affine.load %arg2[0] : memref<?xf64>
        %21 = arith.mulf %19, %20 : f64
        %22 = arith.addf %18, %21 : f64
        affine.store %22, %alloca_2[%arg3 - 1] : memref<40xf64>
        %23 = affine.load %alloca_2[0] : memref<40xf64>
        affine.store %23, %arg2[0] : memref<?xf64>
      }
      affine.for %arg4 = #map7(%arg3) to #map8(%arg3) step 4 {
        %18 = affine.load %alloca_2[-%arg3 + %arg4 - 37] : memref<40xf64>
        affine.store %18, %arg2[-%arg3 + %arg4 - 37] : memref<?xf64>
        %19 = affine.apply #map1(%arg4)
        %20 = affine.load %alloca_2[-%arg3 + %19 - 37] : memref<40xf64>
        affine.store %20, %arg2[-%arg3 + %19 - 37] : memref<?xf64>
        %21 = affine.apply #map2(%arg4)
        %22 = affine.load %alloca_2[-%arg3 + %21 - 37] : memref<40xf64>
        affine.store %22, %arg2[-%arg3 + %21 - 37] : memref<?xf64>
        %23 = affine.apply #map3(%arg4)
        %24 = affine.load %alloca_2[-%arg3 + %23 - 37] : memref<40xf64>
        affine.store %24, %arg2[-%arg3 + %23 - 37] : memref<?xf64>
      }
      affine.for %arg4 = #map8(%arg3) to #map9(%arg3) {
        %18 = affine.load %alloca_2[-%arg3 + %arg4 - 37] : memref<40xf64>
        affine.store %18, %arg2[-%arg3 + %arg4 - 37] : memref<?xf64>
      }
    }
    return
  }
}

