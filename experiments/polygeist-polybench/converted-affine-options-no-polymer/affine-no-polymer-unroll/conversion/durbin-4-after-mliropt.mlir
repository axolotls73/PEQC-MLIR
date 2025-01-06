#map = affine_map<(d0) -> ((d0 floordiv 4) * 4)>
#map1 = affine_map<(d0) -> (d0 + 1)>
#map2 = affine_map<(d0) -> (d0 + 2)>
#map3 = affine_map<(d0) -> (d0 + 3)>
#map4 = affine_map<(d0) -> (d0)>
module {
  func.func @kernel_durbin(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>) {
    %0 = llvm.mlir.undef : f64
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 1.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
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
    affine.for %arg3 = 1 to 40 {
      %5 = affine.load %alloca_2[] : memref<f64>
      %6 = arith.mulf %5, %5 : f64
      %7 = arith.subf %cst_0, %6 : f64
      %8 = affine.load %alloca_1[] : memref<f64>
      %9 = arith.mulf %7, %8 : f64
      affine.store %9, %alloca_1[] : memref<f64>
      affine.store %cst, %alloca[] : memref<f64>
      affine.for %arg4 = 0 to #map(%arg3) step 4 {
        %15 = affine.load %arg1[%arg3 - %arg4 - 1] : memref<?xf64>
        %16 = affine.load %arg2[%arg4] : memref<?xf64>
        %17 = arith.mulf %15, %16 : f64
        %18 = affine.load %alloca[] : memref<f64>
        %19 = arith.addf %18, %17 : f64
        affine.store %19, %alloca[] : memref<f64>
        %20 = affine.apply #map1(%arg4)
        %21 = affine.load %arg1[%arg3 - %20 - 1] : memref<?xf64>
        %22 = affine.load %arg2[%20] : memref<?xf64>
        %23 = arith.mulf %21, %22 : f64
        %24 = affine.load %alloca[] : memref<f64>
        %25 = arith.addf %24, %23 : f64
        affine.store %25, %alloca[] : memref<f64>
        %26 = affine.apply #map2(%arg4)
        %27 = affine.load %arg1[%arg3 - %26 - 1] : memref<?xf64>
        %28 = affine.load %arg2[%26] : memref<?xf64>
        %29 = arith.mulf %27, %28 : f64
        %30 = affine.load %alloca[] : memref<f64>
        %31 = arith.addf %30, %29 : f64
        affine.store %31, %alloca[] : memref<f64>
        %32 = affine.apply #map3(%arg4)
        %33 = affine.load %arg1[%arg3 - %32 - 1] : memref<?xf64>
        %34 = affine.load %arg2[%32] : memref<?xf64>
        %35 = arith.mulf %33, %34 : f64
        %36 = affine.load %alloca[] : memref<f64>
        %37 = arith.addf %36, %35 : f64
        affine.store %37, %alloca[] : memref<f64>
      }
      affine.for %arg4 = #map(%arg3) to #map4(%arg3) {
        %15 = affine.load %arg1[%arg3 - %arg4 - 1] : memref<?xf64>
        %16 = affine.load %arg2[%arg4] : memref<?xf64>
        %17 = arith.mulf %15, %16 : f64
        %18 = affine.load %alloca[] : memref<f64>
        %19 = arith.addf %18, %17 : f64
        affine.store %19, %alloca[] : memref<f64>
      }
      %10 = affine.load %arg1[%arg3] : memref<?xf64>
      %11 = affine.load %alloca[] : memref<f64>
      %12 = arith.addf %10, %11 : f64
      %13 = arith.negf %12 : f64
      %14 = arith.divf %13, %9 : f64
      affine.store %14, %alloca_2[] : memref<f64>
      affine.for %arg4 = 0 to #map(%arg3) step 4 {
        %15 = affine.load %arg2[%arg4] : memref<?xf64>
        %16 = affine.load %arg2[%arg3 - %arg4 - 1] : memref<?xf64>
        %17 = arith.mulf %14, %16 : f64
        %18 = arith.addf %15, %17 : f64
        affine.store %18, %alloca_3[%arg4] : memref<40xf64>
        %19 = affine.apply #map1(%arg4)
        %20 = affine.load %arg2[%19] : memref<?xf64>
        %21 = affine.load %arg2[%arg3 - %19 - 1] : memref<?xf64>
        %22 = arith.mulf %14, %21 : f64
        %23 = arith.addf %20, %22 : f64
        affine.store %23, %alloca_3[%19] : memref<40xf64>
        %24 = affine.apply #map2(%arg4)
        %25 = affine.load %arg2[%24] : memref<?xf64>
        %26 = affine.load %arg2[%arg3 - %24 - 1] : memref<?xf64>
        %27 = arith.mulf %14, %26 : f64
        %28 = arith.addf %25, %27 : f64
        affine.store %28, %alloca_3[%24] : memref<40xf64>
        %29 = affine.apply #map3(%arg4)
        %30 = affine.load %arg2[%29] : memref<?xf64>
        %31 = affine.load %arg2[%arg3 - %29 - 1] : memref<?xf64>
        %32 = arith.mulf %14, %31 : f64
        %33 = arith.addf %30, %32 : f64
        affine.store %33, %alloca_3[%29] : memref<40xf64>
      }
      affine.for %arg4 = #map(%arg3) to #map4(%arg3) {
        %15 = affine.load %arg2[%arg4] : memref<?xf64>
        %16 = affine.load %arg2[%arg3 - %arg4 - 1] : memref<?xf64>
        %17 = arith.mulf %14, %16 : f64
        %18 = arith.addf %15, %17 : f64
        affine.store %18, %alloca_3[%arg4] : memref<40xf64>
      }
      affine.for %arg4 = 0 to #map(%arg3) step 4 {
        %15 = affine.load %alloca_3[%arg4] : memref<40xf64>
        affine.store %15, %arg2[%arg4] : memref<?xf64>
        %16 = affine.apply #map1(%arg4)
        %17 = affine.load %alloca_3[%16] : memref<40xf64>
        affine.store %17, %arg2[%16] : memref<?xf64>
        %18 = affine.apply #map2(%arg4)
        %19 = affine.load %alloca_3[%18] : memref<40xf64>
        affine.store %19, %arg2[%18] : memref<?xf64>
        %20 = affine.apply #map3(%arg4)
        %21 = affine.load %alloca_3[%20] : memref<40xf64>
        affine.store %21, %arg2[%20] : memref<?xf64>
      }
      affine.for %arg4 = #map(%arg3) to #map4(%arg3) {
        %15 = affine.load %alloca_3[%arg4] : memref<40xf64>
        affine.store %15, %arg2[%arg4] : memref<?xf64>
      }
      affine.store %14, %arg2[%arg3] : memref<?xf64>
    }
    return
  }
}

