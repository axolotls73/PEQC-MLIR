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
    affine.for %arg3 = 0 to 2 {
      %5 = affine.apply #map(%arg3)
      affine.for %arg4 = 0 to min #map1(%5) {
        %6 = affine.apply #map2(%5, %arg4)
        affine.store %cst, %alloca[] : memref<f64>
        %7 = affine.load %alloca[] : memref<f64>
        %8 = affine.load %arg1[%6 - 1] : memref<?xf64>
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
        affine.for %arg5 = 0 to #map3(%6) {
          %18 = affine.apply #map4(%arg5)
          %19 = affine.load %alloca[] : memref<f64>
          %20 = affine.load %arg1[%6 - %18 - 1] : memref<?xf64>
          %21 = affine.load %arg2[%18] : memref<?xf64>
          %22 = arith.mulf %20, %21 : f64
          %23 = arith.addf %19, %22 : f64
          affine.store %23, %alloca[] : memref<f64>
          %24 = affine.apply #map5(%18)
          %25 = affine.load %alloca[] : memref<f64>
          %26 = affine.load %arg1[%6 - %24 - 1] : memref<?xf64>
          %27 = affine.load %arg2[%24] : memref<?xf64>
          %28 = arith.mulf %26, %27 : f64
          %29 = arith.addf %25, %28 : f64
          affine.store %29, %alloca[] : memref<f64>
          %30 = affine.apply #map6(%18)
          %31 = affine.load %alloca[] : memref<f64>
          %32 = affine.load %arg1[%6 - %30 - 1] : memref<?xf64>
          %33 = affine.load %arg2[%30] : memref<?xf64>
          %34 = arith.mulf %32, %33 : f64
          %35 = arith.addf %31, %34 : f64
          affine.store %35, %alloca[] : memref<f64>
          %36 = affine.apply #map7(%18)
          %37 = affine.load %alloca[] : memref<f64>
          %38 = affine.load %arg1[%6 - %36 - 1] : memref<?xf64>
          %39 = affine.load %arg2[%36] : memref<?xf64>
          %40 = arith.mulf %38, %39 : f64
          %41 = arith.addf %37, %40 : f64
          affine.store %41, %alloca[] : memref<f64>
        }
        affine.for %arg5 = 0 to #map8(%6) {
          %18 = affine.apply #map9(%6, %arg5)
          %19 = affine.load %alloca[] : memref<f64>
          %20 = affine.load %arg1[%6 - %18 - 1] : memref<?xf64>
          %21 = affine.load %arg2[%18] : memref<?xf64>
          %22 = arith.mulf %20, %21 : f64
          %23 = arith.addf %19, %22 : f64
          affine.store %23, %alloca[] : memref<f64>
        }
        affine.if #set(%6) {
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
        affine.if #set1(%6) {
          %18 = affine.load %arg1[%6] : memref<?xf64>
          %19 = affine.load %alloca[] : memref<f64>
          %20 = arith.addf %18, %19 : f64
          %21 = arith.negf %20 : f64
          %22 = affine.load %alloca_3[] : memref<f64>
          %23 = arith.divf %21, %22 : f64
          affine.store %23, %alloca_1[0] : memref<1xf64>
          %24 = affine.load %arg2[0] : memref<?xf64>
          %25 = affine.load %alloca_1[0] : memref<1xf64>
          %26 = affine.load %arg2[%6 - 1] : memref<?xf64>
          %27 = arith.mulf %25, %26 : f64
          %28 = arith.addf %24, %27 : f64
          affine.store %28, %alloca_2[0] : memref<40xf64>
          %29 = affine.load %alloca_1[0] : memref<1xf64>
          affine.store %29, %alloca_5[0] : memref<1xf64>
          affine.store %29, %alloca_4[] : memref<f64>
          %30 = affine.load %alloca_5[0] : memref<1xf64>
          affine.store %30, %arg2[%6] : memref<?xf64>
        }
        affine.parallel (%arg5) = (0) to ((%6 - 2) floordiv 4) {
          %18 = affine.apply #map10(%arg5)
          %19 = affine.load %arg2[%18 - 38] : memref<?xf64>
          %20 = affine.load %alloca_1[0] : memref<1xf64>
          %21 = affine.load %arg2[-%18 + %6 + 37] : memref<?xf64>
          %22 = arith.mulf %20, %21 : f64
          %23 = arith.addf %19, %22 : f64
          affine.store %23, %alloca_2[%18 - 38] : memref<40xf64>
          %24 = affine.apply #map5(%18)
          %25 = affine.load %arg2[%24 - 38] : memref<?xf64>
          %26 = affine.load %alloca_1[0] : memref<1xf64>
          %27 = affine.load %arg2[-%24 + %6 + 37] : memref<?xf64>
          %28 = arith.mulf %26, %27 : f64
          %29 = arith.addf %25, %28 : f64
          affine.store %29, %alloca_2[%24 - 38] : memref<40xf64>
          %30 = affine.apply #map6(%18)
          %31 = affine.load %arg2[%30 - 38] : memref<?xf64>
          %32 = affine.load %alloca_1[0] : memref<1xf64>
          %33 = affine.load %arg2[-%30 + %6 + 37] : memref<?xf64>
          %34 = arith.mulf %32, %33 : f64
          %35 = arith.addf %31, %34 : f64
          affine.store %35, %alloca_2[%30 - 38] : memref<40xf64>
          %36 = affine.apply #map7(%18)
          %37 = affine.load %arg2[%36 - 38] : memref<?xf64>
          %38 = affine.load %alloca_1[0] : memref<1xf64>
          %39 = affine.load %arg2[-%36 + %6 + 37] : memref<?xf64>
          %40 = arith.mulf %38, %39 : f64
          %41 = arith.addf %37, %40 : f64
          affine.store %41, %alloca_2[%36 - 38] : memref<40xf64>
        }
        affine.parallel (%arg5) = (0) to (%6 - ((%6 - 2) floordiv 4) * 4 - 2) {
          %18 = affine.apply #map11(%6, %arg5)
          %19 = affine.load %arg2[%18 - 38] : memref<?xf64>
          %20 = affine.load %alloca_1[0] : memref<1xf64>
          %21 = affine.load %arg2[-%18 + %6 + 37] : memref<?xf64>
          %22 = arith.mulf %20, %21 : f64
          %23 = arith.addf %19, %22 : f64
          affine.store %23, %alloca_2[%18 - 38] : memref<40xf64>
        }
        affine.if #set1(%6) {
          %18 = affine.load %arg2[%6 - 1] : memref<?xf64>
          %19 = affine.load %alloca_1[0] : memref<1xf64>
          %20 = affine.load %arg2[0] : memref<?xf64>
          %21 = arith.mulf %19, %20 : f64
          %22 = arith.addf %18, %21 : f64
          affine.store %22, %alloca_2[%6 - 1] : memref<40xf64>
          %23 = affine.load %alloca_2[0] : memref<40xf64>
          affine.store %23, %arg2[0] : memref<?xf64>
        }
        affine.for %arg5 = 0 to #map3(%6) {
          %18 = affine.apply #map12(%6, %arg5)
          %19 = affine.load %alloca_2[-%6 + %18 - 37] : memref<40xf64>
          affine.store %19, %arg2[-%6 + %18 - 37] : memref<?xf64>
          %20 = affine.apply #map5(%18)
          %21 = affine.load %alloca_2[-%6 + %20 - 37] : memref<40xf64>
          affine.store %21, %arg2[-%6 + %20 - 37] : memref<?xf64>
          %22 = affine.apply #map6(%18)
          %23 = affine.load %alloca_2[-%6 + %22 - 37] : memref<40xf64>
          affine.store %23, %arg2[-%6 + %22 - 37] : memref<?xf64>
          %24 = affine.apply #map7(%18)
          %25 = affine.load %alloca_2[-%6 + %24 - 37] : memref<40xf64>
          affine.store %25, %arg2[-%6 + %24 - 37] : memref<?xf64>
        }
        affine.parallel (%arg5) = (0) to (%6 - ((%6 - 1) floordiv 4) * 4 - 1) {
          %18 = affine.apply #map13(%6, %arg5)
          %19 = affine.load %alloca_2[-%6 + %18 - 37] : memref<40xf64>
          affine.store %19, %arg2[-%6 + %18 - 37] : memref<?xf64>
        }
      }
    }
    return
  }
}

