#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0, d1) -> (d0 + d1)>
#map2 = affine_map<(d0) -> (d0 floordiv 4)>
#map3 = affine_map<(d0) -> (d0 * 4)>
#map4 = affine_map<(d0) -> (d0 + 2)>
#map5 = affine_map<(d0) -> (d0 + 3)>
#map6 = affine_map<(d0) -> (d0 mod 4)>
#map7 = affine_map<(d0, d1) -> (d1 + (d0 floordiv 4) * 4)>
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
      affine.parallel (%arg4) = (0) to (1) {
        %6 = affine.apply #map1(%5, %arg4)
        %7 = affine.load %alloca_2[] : memref<f64>
        %8 = arith.mulf %7, %7 : f64
        %9 = arith.subf %cst_0, %8 : f64
        %10 = affine.load %alloca_1[] : memref<f64>
        %11 = arith.mulf %9, %10 : f64
        affine.store %11, %alloca_1[] : memref<f64>
        affine.store %cst, %alloca[] : memref<f64>
        affine.for %arg5 = 0 to #map2(%6) {
          %17 = affine.apply #map3(%arg5)
          %18 = affine.load %arg1[%6 - %17 - 1] : memref<?xf64>
          %19 = affine.load %arg2[%17] : memref<?xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = affine.load %alloca[] : memref<f64>
          %22 = arith.addf %21, %20 : f64
          affine.store %22, %alloca[] : memref<f64>
          %23 = affine.apply #map(%17)
          %24 = affine.load %arg1[%6 - %23 - 1] : memref<?xf64>
          %25 = affine.load %arg2[%23] : memref<?xf64>
          %26 = arith.mulf %24, %25 : f64
          %27 = affine.load %alloca[] : memref<f64>
          %28 = arith.addf %27, %26 : f64
          affine.store %28, %alloca[] : memref<f64>
          %29 = affine.apply #map4(%17)
          %30 = affine.load %arg1[%6 - %29 - 1] : memref<?xf64>
          %31 = affine.load %arg2[%29] : memref<?xf64>
          %32 = arith.mulf %30, %31 : f64
          %33 = affine.load %alloca[] : memref<f64>
          %34 = arith.addf %33, %32 : f64
          affine.store %34, %alloca[] : memref<f64>
          %35 = affine.apply #map5(%17)
          %36 = affine.load %arg1[%6 - %35 - 1] : memref<?xf64>
          %37 = affine.load %arg2[%35] : memref<?xf64>
          %38 = arith.mulf %36, %37 : f64
          %39 = affine.load %alloca[] : memref<f64>
          %40 = arith.addf %39, %38 : f64
          affine.store %40, %alloca[] : memref<f64>
        }
        affine.for %arg5 = 0 to #map6(%6) {
          %17 = affine.apply #map7(%6, %arg5)
          %18 = affine.load %arg1[%6 - %17 - 1] : memref<?xf64>
          %19 = affine.load %arg2[%17] : memref<?xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = affine.load %alloca[] : memref<f64>
          %22 = arith.addf %21, %20 : f64
          affine.store %22, %alloca[] : memref<f64>
        }
        %12 = affine.load %arg1[%6] : memref<?xf64>
        %13 = affine.load %alloca[] : memref<f64>
        %14 = arith.addf %12, %13 : f64
        %15 = arith.negf %14 : f64
        %16 = arith.divf %15, %11 : f64
        affine.store %16, %alloca_2[] : memref<f64>
        affine.for %arg5 = 0 to #map2(%6) {
          %17 = affine.apply #map3(%arg5)
          %18 = affine.load %arg2[%17] : memref<?xf64>
          %19 = affine.load %arg2[%6 - %17 - 1] : memref<?xf64>
          %20 = arith.mulf %16, %19 : f64
          %21 = arith.addf %18, %20 : f64
          affine.store %21, %alloca_3[%17] : memref<40xf64>
          %22 = affine.apply #map(%17)
          %23 = affine.load %arg2[%22] : memref<?xf64>
          %24 = affine.load %arg2[%6 - %22 - 1] : memref<?xf64>
          %25 = arith.mulf %16, %24 : f64
          %26 = arith.addf %23, %25 : f64
          affine.store %26, %alloca_3[%22] : memref<40xf64>
          %27 = affine.apply #map4(%17)
          %28 = affine.load %arg2[%27] : memref<?xf64>
          %29 = affine.load %arg2[%6 - %27 - 1] : memref<?xf64>
          %30 = arith.mulf %16, %29 : f64
          %31 = arith.addf %28, %30 : f64
          affine.store %31, %alloca_3[%27] : memref<40xf64>
          %32 = affine.apply #map5(%17)
          %33 = affine.load %arg2[%32] : memref<?xf64>
          %34 = affine.load %arg2[%6 - %32 - 1] : memref<?xf64>
          %35 = arith.mulf %16, %34 : f64
          %36 = arith.addf %33, %35 : f64
          affine.store %36, %alloca_3[%32] : memref<40xf64>
        }
        affine.for %arg5 = 0 to #map6(%6) {
          %17 = affine.apply #map7(%6, %arg5)
          %18 = affine.load %arg2[%17] : memref<?xf64>
          %19 = affine.load %arg2[%6 - %17 - 1] : memref<?xf64>
          %20 = arith.mulf %16, %19 : f64
          %21 = arith.addf %18, %20 : f64
          affine.store %21, %alloca_3[%17] : memref<40xf64>
        }
        affine.for %arg5 = 0 to #map2(%6) {
          %17 = affine.apply #map3(%arg5)
          %18 = affine.load %alloca_3[%17] : memref<40xf64>
          affine.store %18, %arg2[%17] : memref<?xf64>
          %19 = affine.apply #map(%17)
          %20 = affine.load %alloca_3[%19] : memref<40xf64>
          affine.store %20, %arg2[%19] : memref<?xf64>
          %21 = affine.apply #map4(%17)
          %22 = affine.load %alloca_3[%21] : memref<40xf64>
          affine.store %22, %arg2[%21] : memref<?xf64>
          %23 = affine.apply #map5(%17)
          %24 = affine.load %alloca_3[%23] : memref<40xf64>
          affine.store %24, %arg2[%23] : memref<?xf64>
        }
        affine.for %arg5 = 0 to #map6(%6) {
          %17 = affine.apply #map7(%6, %arg5)
          %18 = affine.load %alloca_3[%17] : memref<40xf64>
          affine.store %18, %arg2[%17] : memref<?xf64>
        }
        affine.store %16, %arg2[%6] : memref<?xf64>
      }
    }
    return
  }
}

