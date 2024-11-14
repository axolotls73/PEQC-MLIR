#map = affine_map<(d0) -> (d0 * 32 + 1)>
#map1 = affine_map<(d0) -> (32, -d0 + 40)>
#map2 = affine_map<(d0, d1) -> (d0 + d1)>
#map3 = affine_map<(d0) -> ((d0 - 1) floordiv 4)>
#map4 = affine_map<(d0) -> (d0 * 4 + 1)>
#map5 = affine_map<(d0) -> (d0 + 1)>
#map6 = affine_map<(d0) -> (d0 + 2)>
#map7 = affine_map<(d0) -> (d0 + 3)>
#map8 = affine_map<(d0) -> (d0 - ((d0 - 1) floordiv 4) * 4 - 1)>
#map9 = affine_map<(d0, d1) -> (d1 + ((d0 - 1) floordiv 4) * 4 + 1)>
#map10 = affine_map<(d0) -> (d0 * 4 + 39)>
#map11 = affine_map<(d0, d1) -> (((d0 - 2) floordiv 4) * 4 + d1 + 39)>
#map12 = affine_map<(d0, d1) -> (d0 + d1 * 4 + 38)>
#map13 = affine_map<(d0, d1) -> (d0 + ((d0 - 1) floordiv 4) * 4 + d1 + 38)>
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
    affine.for %arg3 = 0 to 2 {
      %7 = affine.apply #map(%arg3)
      affine.for %arg4 = 0 to min #map1(%7) {
        %8 = affine.apply #map2(%7, %arg4)
        affine.store %cst, %alloca[] : memref<f64>
        %9 = affine.load %alloca[] : memref<f64>
        %10 = affine.load %arg1[%8 - 1] : memref<?xf64>
        %11 = affine.load %arg2[0] : memref<?xf64>
        %12 = arith.mulf %10, %11 : f64
        %13 = arith.addf %9, %12 : f64
        affine.store %13, %alloca[] : memref<f64>
        %14 = affine.load %alloca_3[] : memref<f64>
        %15 = affine.load %alloca_4[] : memref<f64>
        %16 = arith.mulf %15, %15 : f64
        %17 = arith.subf %14, %16 : f64
        %18 = affine.load %alloca_3[] : memref<f64>
        %19 = arith.mulf %17, %18 : f64
        affine.store %19, %alloca_3[] : memref<f64>
        affine.for %arg5 = 0 to #map3(%8) {
          %20 = affine.apply #map4(%arg5)
          %21 = affine.load %alloca[] : memref<f64>
          %22 = affine.load %arg1[%8 - %20 - 1] : memref<?xf64>
          %23 = affine.load %arg2[%20] : memref<?xf64>
          %24 = arith.mulf %22, %23 : f64
          %25 = arith.addf %21, %24 : f64
          affine.store %25, %alloca[] : memref<f64>
          %26 = affine.apply #map5(%20)
          %27 = affine.load %alloca[] : memref<f64>
          %28 = affine.load %arg1[%8 - %26 - 1] : memref<?xf64>
          %29 = affine.load %arg2[%26] : memref<?xf64>
          %30 = arith.mulf %28, %29 : f64
          %31 = arith.addf %27, %30 : f64
          affine.store %31, %alloca[] : memref<f64>
          %32 = affine.apply #map6(%20)
          %33 = affine.load %alloca[] : memref<f64>
          %34 = affine.load %arg1[%8 - %32 - 1] : memref<?xf64>
          %35 = affine.load %arg2[%32] : memref<?xf64>
          %36 = arith.mulf %34, %35 : f64
          %37 = arith.addf %33, %36 : f64
          affine.store %37, %alloca[] : memref<f64>
          %38 = affine.apply #map7(%20)
          %39 = affine.load %alloca[] : memref<f64>
          %40 = affine.load %arg1[%8 - %38 - 1] : memref<?xf64>
          %41 = affine.load %arg2[%38] : memref<?xf64>
          %42 = arith.mulf %40, %41 : f64
          %43 = arith.addf %39, %42 : f64
          affine.store %43, %alloca[] : memref<f64>
        }
        affine.for %arg5 = 0 to #map8(%8) {
          %20 = affine.apply #map9(%8, %arg5)
          %21 = affine.load %alloca[] : memref<f64>
          %22 = affine.load %arg1[%8 - %20 - 1] : memref<?xf64>
          %23 = affine.load %arg2[%20] : memref<?xf64>
          %24 = arith.mulf %22, %23 : f64
          %25 = arith.addf %21, %24 : f64
          affine.store %25, %alloca[] : memref<f64>
        }
        affine.if #set(%8) {
          %20 = affine.load %arg1[1] : memref<?xf64>
          %21 = affine.load %alloca[] : memref<f64>
          %22 = arith.addf %20, %21 : f64
          %23 = arith.negf %22 : f64
          %24 = affine.load %alloca_3[] : memref<f64>
          %25 = arith.divf %23, %24 : f64
          affine.store %25, %alloca_1[0] : memref<1xf64>
          %26 = affine.load %arg2[0] : memref<?xf64>
          %27 = affine.load %alloca_1[0] : memref<1xf64>
          %28 = affine.load %arg2[0] : memref<?xf64>
          %29 = arith.mulf %27, %28 : f64
          %30 = arith.addf %26, %29 : f64
          affine.store %30, %alloca_2[0] : memref<40xf64>
          %31 = affine.load %alloca_2[0] : memref<40xf64>
          affine.store %31, %arg2[0] : memref<?xf64>
          %32 = affine.load %alloca_1[0] : memref<1xf64>
          affine.store %32, %alloca_5[0] : memref<1xf64>
          affine.store %32, %alloca_4[] : memref<f64>
          %33 = affine.load %alloca_5[0] : memref<1xf64>
          affine.store %33, %arg2[1] : memref<?xf64>
        }
        affine.if #set1(%8) {
          %20 = affine.load %arg1[%8] : memref<?xf64>
          %21 = affine.load %alloca[] : memref<f64>
          %22 = arith.addf %20, %21 : f64
          %23 = arith.negf %22 : f64
          %24 = affine.load %alloca_3[] : memref<f64>
          %25 = arith.divf %23, %24 : f64
          affine.store %25, %alloca_1[0] : memref<1xf64>
          %26 = affine.load %arg2[0] : memref<?xf64>
          %27 = affine.load %alloca_1[0] : memref<1xf64>
          %28 = affine.load %arg2[%8 - 1] : memref<?xf64>
          %29 = arith.mulf %27, %28 : f64
          %30 = arith.addf %26, %29 : f64
          affine.store %30, %alloca_2[0] : memref<40xf64>
          %31 = affine.load %alloca_1[0] : memref<1xf64>
          affine.store %31, %alloca_5[0] : memref<1xf64>
          affine.store %31, %alloca_4[] : memref<f64>
          %32 = affine.load %alloca_5[0] : memref<1xf64>
          affine.store %32, %arg2[%8] : memref<?xf64>
        }
        affine.parallel (%arg5) = (0) to ((%8 - 2) floordiv 4) {
          %20 = affine.apply #map10(%arg5)
          %21 = affine.load %arg2[%20 - 38] : memref<?xf64>
          %22 = affine.load %alloca_1[0] : memref<1xf64>
          %23 = affine.load %arg2[-%20 + %8 + 37] : memref<?xf64>
          %24 = arith.mulf %22, %23 : f64
          %25 = arith.addf %21, %24 : f64
          affine.store %25, %alloca_2[%20 - 38] : memref<40xf64>
          %26 = affine.apply #map5(%20)
          %27 = affine.load %arg2[%26 - 38] : memref<?xf64>
          %28 = affine.load %alloca_1[0] : memref<1xf64>
          %29 = affine.load %arg2[-%26 + %8 + 37] : memref<?xf64>
          %30 = arith.mulf %28, %29 : f64
          %31 = arith.addf %27, %30 : f64
          affine.store %31, %alloca_2[%26 - 38] : memref<40xf64>
          %32 = affine.apply #map6(%20)
          %33 = affine.load %arg2[%32 - 38] : memref<?xf64>
          %34 = affine.load %alloca_1[0] : memref<1xf64>
          %35 = affine.load %arg2[-%32 + %8 + 37] : memref<?xf64>
          %36 = arith.mulf %34, %35 : f64
          %37 = arith.addf %33, %36 : f64
          affine.store %37, %alloca_2[%32 - 38] : memref<40xf64>
          %38 = affine.apply #map7(%20)
          %39 = affine.load %arg2[%38 - 38] : memref<?xf64>
          %40 = affine.load %alloca_1[0] : memref<1xf64>
          %41 = affine.load %arg2[-%38 + %8 + 37] : memref<?xf64>
          %42 = arith.mulf %40, %41 : f64
          %43 = arith.addf %39, %42 : f64
          affine.store %43, %alloca_2[%38 - 38] : memref<40xf64>
        }
        affine.parallel (%arg5) = (0) to (%8 - ((%8 - 2) floordiv 4) * 4 - 2) {
          %20 = affine.apply #map11(%8, %arg5)
          %21 = affine.load %arg2[%20 - 38] : memref<?xf64>
          %22 = affine.load %alloca_1[0] : memref<1xf64>
          %23 = affine.load %arg2[-%20 + %8 + 37] : memref<?xf64>
          %24 = arith.mulf %22, %23 : f64
          %25 = arith.addf %21, %24 : f64
          affine.store %25, %alloca_2[%20 - 38] : memref<40xf64>
        }
        affine.if #set1(%8) {
          %20 = affine.load %arg2[%8 - 1] : memref<?xf64>
          %21 = affine.load %alloca_1[0] : memref<1xf64>
          %22 = affine.load %arg2[0] : memref<?xf64>
          %23 = arith.mulf %21, %22 : f64
          %24 = arith.addf %20, %23 : f64
          affine.store %24, %alloca_2[%8 - 1] : memref<40xf64>
          %25 = affine.load %alloca_2[0] : memref<40xf64>
          affine.store %25, %arg2[0] : memref<?xf64>
        }
        affine.for %arg5 = 0 to #map3(%8) {
          %20 = affine.apply #map12(%8, %arg5)
          %21 = affine.load %alloca_2[-%8 + %20 - 37] : memref<40xf64>
          affine.store %21, %arg2[-%8 + %20 - 37] : memref<?xf64>
          %22 = affine.apply #map5(%20)
          %23 = affine.load %alloca_2[-%8 + %22 - 37] : memref<40xf64>
          affine.store %23, %arg2[-%8 + %22 - 37] : memref<?xf64>
          %24 = affine.apply #map6(%20)
          %25 = affine.load %alloca_2[-%8 + %24 - 37] : memref<40xf64>
          affine.store %25, %arg2[-%8 + %24 - 37] : memref<?xf64>
          %26 = affine.apply #map7(%20)
          %27 = affine.load %alloca_2[-%8 + %26 - 37] : memref<40xf64>
          affine.store %27, %arg2[-%8 + %26 - 37] : memref<?xf64>
        }
        affine.parallel (%arg5) = (0) to (%8 - ((%8 - 1) floordiv 4) * 4 - 1) {
          %20 = affine.apply #map13(%8, %arg5)
          %21 = affine.load %alloca_2[-%8 + %20 - 37] : memref<40xf64>
          affine.store %21, %arg2[-%8 + %20 - 37] : memref<?xf64>
        }
      }
    }
    return
  }
}

