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
#map10 = affine_map<(d0) -> ((d0 - 2) floordiv 4)>
#map11 = affine_map<(d0) -> (d0 * 4 + 39)>
#map12 = affine_map<(d0) -> (d0 - ((d0 - 2) floordiv 4) * 4 - 2)>
#map13 = affine_map<(d0, d1) -> (d1 + ((d0 - 2) floordiv 4) * 4 + 39)>
#map14 = affine_map<(d0, d1) -> (d0 + d1 * 4 + 38)>
#map15 = affine_map<(d0, d1) -> (d0 + d1 + ((d0 - 1) floordiv 4) * 4 + 38)>
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
          %25 = affine.apply #map4(%arg5)
          %26 = affine.load %alloca[] : memref<f64>
          %27 = affine.load %arg1[%8 - %25 - 1] : memref<?xf64>
          %28 = affine.load %arg2[%25] : memref<?xf64>
          %29 = arith.mulf %27, %28 : f64
          %30 = arith.addf %26, %29 : f64
          affine.store %30, %alloca[] : memref<f64>
          %31 = affine.apply #map5(%25)
          %32 = affine.load %alloca[] : memref<f64>
          %33 = affine.load %arg1[%8 - %31 - 1] : memref<?xf64>
          %34 = affine.load %arg2[%31] : memref<?xf64>
          %35 = arith.mulf %33, %34 : f64
          %36 = arith.addf %32, %35 : f64
          affine.store %36, %alloca[] : memref<f64>
          %37 = affine.apply #map6(%25)
          %38 = affine.load %alloca[] : memref<f64>
          %39 = affine.load %arg1[%8 - %37 - 1] : memref<?xf64>
          %40 = affine.load %arg2[%37] : memref<?xf64>
          %41 = arith.mulf %39, %40 : f64
          %42 = arith.addf %38, %41 : f64
          affine.store %42, %alloca[] : memref<f64>
          %43 = affine.apply #map7(%25)
          %44 = affine.load %alloca[] : memref<f64>
          %45 = affine.load %arg1[%8 - %43 - 1] : memref<?xf64>
          %46 = affine.load %arg2[%43] : memref<?xf64>
          %47 = arith.mulf %45, %46 : f64
          %48 = arith.addf %44, %47 : f64
          affine.store %48, %alloca[] : memref<f64>
        }
        affine.for %arg5 = 0 to #map8(%8) {
          %25 = affine.apply #map9(%8, %arg5)
          %26 = affine.load %alloca[] : memref<f64>
          %27 = affine.load %arg1[%8 - %25 - 1] : memref<?xf64>
          %28 = affine.load %arg2[%25] : memref<?xf64>
          %29 = arith.mulf %27, %28 : f64
          %30 = arith.addf %26, %29 : f64
          affine.store %30, %alloca[] : memref<f64>
        }
        affine.if #set(%8) {
          %25 = affine.load %arg1[1] : memref<?xf64>
          %26 = affine.load %alloca[] : memref<f64>
          %27 = arith.addf %25, %26 : f64
          %28 = arith.negf %27 : f64
          %29 = affine.load %alloca_3[] : memref<f64>
          %30 = arith.divf %28, %29 : f64
          affine.store %30, %alloca_1[0] : memref<1xf64>
          %31 = affine.load %arg2[0] : memref<?xf64>
          %32 = affine.load %alloca_1[0] : memref<1xf64>
          %33 = affine.load %arg2[0] : memref<?xf64>
          %34 = arith.mulf %32, %33 : f64
          %35 = arith.addf %31, %34 : f64
          affine.store %35, %alloca_2[0] : memref<40xf64>
          %36 = affine.load %alloca_2[0] : memref<40xf64>
          affine.store %36, %arg2[0] : memref<?xf64>
          %37 = affine.load %alloca_1[0] : memref<1xf64>
          affine.store %37, %alloca_5[0] : memref<1xf64>
          affine.store %37, %alloca_4[] : memref<f64>
          %38 = affine.load %alloca_5[0] : memref<1xf64>
          affine.store %38, %arg2[1] : memref<?xf64>
        }
        affine.if #set1(%8) {
          %25 = affine.load %arg1[%8] : memref<?xf64>
          %26 = affine.load %alloca[] : memref<f64>
          %27 = arith.addf %25, %26 : f64
          %28 = arith.negf %27 : f64
          %29 = affine.load %alloca_3[] : memref<f64>
          %30 = arith.divf %28, %29 : f64
          affine.store %30, %alloca_1[0] : memref<1xf64>
          %31 = affine.load %arg2[0] : memref<?xf64>
          %32 = affine.load %alloca_1[0] : memref<1xf64>
          %33 = affine.load %arg2[%8 - 1] : memref<?xf64>
          %34 = arith.mulf %32, %33 : f64
          %35 = arith.addf %31, %34 : f64
          affine.store %35, %alloca_2[0] : memref<40xf64>
          %36 = affine.load %alloca_1[0] : memref<1xf64>
          affine.store %36, %alloca_5[0] : memref<1xf64>
          affine.store %36, %alloca_4[] : memref<f64>
          %37 = affine.load %alloca_5[0] : memref<1xf64>
          affine.store %37, %arg2[%8] : memref<?xf64>
        }
        %20 = affine.load %alloca_1[0] : memref<1xf64>
        %21 = affine.load %alloca_1[0] : memref<1xf64>
        %22 = affine.load %alloca_1[0] : memref<1xf64>
        %23 = affine.load %alloca_1[0] : memref<1xf64>
        affine.for %arg5 = 0 to #map10(%8) {
          %25 = affine.apply #map11(%arg5)
          %26 = affine.load %arg2[%25 - 38] : memref<?xf64>
          %27 = affine.load %arg2[-%25 + %8 + 37] : memref<?xf64>
          %28 = arith.mulf %20, %27 : f64
          %29 = arith.addf %26, %28 : f64
          affine.store %29, %alloca_2[%25 - 38] : memref<40xf64>
          %30 = affine.apply #map5(%25)
          %31 = affine.load %arg2[%30 - 38] : memref<?xf64>
          %32 = affine.load %arg2[-%30 + %8 + 37] : memref<?xf64>
          %33 = arith.mulf %21, %32 : f64
          %34 = arith.addf %31, %33 : f64
          affine.store %34, %alloca_2[%30 - 38] : memref<40xf64>
          %35 = affine.apply #map6(%25)
          %36 = affine.load %arg2[%35 - 38] : memref<?xf64>
          %37 = affine.load %arg2[-%35 + %8 + 37] : memref<?xf64>
          %38 = arith.mulf %22, %37 : f64
          %39 = arith.addf %36, %38 : f64
          affine.store %39, %alloca_2[%35 - 38] : memref<40xf64>
          %40 = affine.apply #map7(%25)
          %41 = affine.load %arg2[%40 - 38] : memref<?xf64>
          %42 = affine.load %arg2[-%40 + %8 + 37] : memref<?xf64>
          %43 = arith.mulf %23, %42 : f64
          %44 = arith.addf %41, %43 : f64
          affine.store %44, %alloca_2[%40 - 38] : memref<40xf64>
        }
        %24 = affine.load %alloca_1[0] : memref<1xf64>
        affine.for %arg5 = 0 to #map12(%8) {
          %25 = affine.apply #map13(%8, %arg5)
          %26 = affine.load %arg2[%25 - 38] : memref<?xf64>
          %27 = affine.load %arg2[-%25 + %8 + 37] : memref<?xf64>
          %28 = arith.mulf %24, %27 : f64
          %29 = arith.addf %26, %28 : f64
          affine.store %29, %alloca_2[%25 - 38] : memref<40xf64>
        }
        affine.if #set1(%8) {
          %25 = affine.load %arg2[%8 - 1] : memref<?xf64>
          %26 = affine.load %alloca_1[0] : memref<1xf64>
          %27 = affine.load %arg2[0] : memref<?xf64>
          %28 = arith.mulf %26, %27 : f64
          %29 = arith.addf %25, %28 : f64
          affine.store %29, %alloca_2[%8 - 1] : memref<40xf64>
          %30 = affine.load %alloca_2[0] : memref<40xf64>
          affine.store %30, %arg2[0] : memref<?xf64>
        }
        affine.for %arg5 = 0 to #map3(%8) {
          %25 = affine.apply #map14(%8, %arg5)
          %26 = affine.load %alloca_2[-%8 + %25 - 37] : memref<40xf64>
          affine.store %26, %arg2[-%8 + %25 - 37] : memref<?xf64>
          %27 = affine.apply #map5(%25)
          %28 = affine.load %alloca_2[-%8 + %27 - 37] : memref<40xf64>
          affine.store %28, %arg2[-%8 + %27 - 37] : memref<?xf64>
          %29 = affine.apply #map6(%25)
          %30 = affine.load %alloca_2[-%8 + %29 - 37] : memref<40xf64>
          affine.store %30, %arg2[-%8 + %29 - 37] : memref<?xf64>
          %31 = affine.apply #map7(%25)
          %32 = affine.load %alloca_2[-%8 + %31 - 37] : memref<40xf64>
          affine.store %32, %arg2[-%8 + %31 - 37] : memref<?xf64>
        }
        affine.for %arg5 = 0 to #map8(%8) {
          %25 = affine.apply #map15(%8, %arg5)
          %26 = affine.load %alloca_2[-%8 + %25 - 37] : memref<40xf64>
          affine.store %26, %arg2[-%8 + %25 - 37] : memref<?xf64>
        }
      }
    }
    return
  }
}

