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
    affine.for %arg3 = 0 to 2 {
      %5 = affine.apply #map(%arg3)
      affine.for %arg4 = 0 to min #map1(%5) {
        %6 = affine.apply #map2(%5, %arg4)
        affine.store %cst, %alloca_1[] : memref<f64>
        %7 = affine.load %alloca_1[] : memref<f64>
        %8 = affine.load %arg1[%6 - 1] : memref<?xf64>
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
        affine.for %arg5 = 0 to #map3(%6) {
          %23 = affine.apply #map4(%arg5)
          %24 = affine.load %alloca_1[] : memref<f64>
          %25 = affine.load %arg1[%6 - %23 - 1] : memref<?xf64>
          %26 = affine.load %arg2[%23] : memref<?xf64>
          %27 = arith.mulf %25, %26 : f64
          %28 = arith.addf %24, %27 : f64
          affine.store %28, %alloca_1[] : memref<f64>
          %29 = affine.apply #map5(%23)
          %30 = affine.load %alloca_1[] : memref<f64>
          %31 = affine.load %arg1[%6 - %29 - 1] : memref<?xf64>
          %32 = affine.load %arg2[%29] : memref<?xf64>
          %33 = arith.mulf %31, %32 : f64
          %34 = arith.addf %30, %33 : f64
          affine.store %34, %alloca_1[] : memref<f64>
          %35 = affine.apply #map6(%23)
          %36 = affine.load %alloca_1[] : memref<f64>
          %37 = affine.load %arg1[%6 - %35 - 1] : memref<?xf64>
          %38 = affine.load %arg2[%35] : memref<?xf64>
          %39 = arith.mulf %37, %38 : f64
          %40 = arith.addf %36, %39 : f64
          affine.store %40, %alloca_1[] : memref<f64>
          %41 = affine.apply #map7(%23)
          %42 = affine.load %alloca_1[] : memref<f64>
          %43 = affine.load %arg1[%6 - %41 - 1] : memref<?xf64>
          %44 = affine.load %arg2[%41] : memref<?xf64>
          %45 = arith.mulf %43, %44 : f64
          %46 = arith.addf %42, %45 : f64
          affine.store %46, %alloca_1[] : memref<f64>
        }
        affine.for %arg5 = 0 to #map8(%6) {
          %23 = affine.apply #map9(%6, %arg5)
          %24 = affine.load %alloca_1[] : memref<f64>
          %25 = affine.load %arg1[%6 - %23 - 1] : memref<?xf64>
          %26 = affine.load %arg2[%23] : memref<?xf64>
          %27 = arith.mulf %25, %26 : f64
          %28 = arith.addf %24, %27 : f64
          affine.store %28, %alloca_1[] : memref<f64>
        }
        affine.if #set(%6) {
          %23 = affine.load %arg1[1] : memref<?xf64>
          %24 = affine.load %alloca_1[] : memref<f64>
          %25 = arith.addf %23, %24 : f64
          %26 = arith.negf %25 : f64
          %27 = affine.load %alloca_3[] : memref<f64>
          %28 = arith.divf %26, %27 : f64
          affine.store %28, %alloca[0] : memref<1xf64>
          %29 = affine.load %arg2[0] : memref<?xf64>
          %30 = affine.load %alloca[0] : memref<1xf64>
          %31 = affine.load %arg2[0] : memref<?xf64>
          %32 = arith.mulf %30, %31 : f64
          %33 = arith.addf %29, %32 : f64
          affine.store %33, %alloca_2[0] : memref<40xf64>
          %34 = affine.load %alloca_2[0] : memref<40xf64>
          affine.store %34, %arg2[0] : memref<?xf64>
          %35 = affine.load %alloca[0] : memref<1xf64>
          affine.store %35, %alloca_5[0] : memref<1xf64>
          affine.store %35, %alloca_4[] : memref<f64>
          %36 = affine.load %alloca_5[0] : memref<1xf64>
          affine.store %36, %arg2[1] : memref<?xf64>
        }
        affine.if #set1(%6) {
          %23 = affine.load %arg1[%6] : memref<?xf64>
          %24 = affine.load %alloca_1[] : memref<f64>
          %25 = arith.addf %23, %24 : f64
          %26 = arith.negf %25 : f64
          %27 = affine.load %alloca_3[] : memref<f64>
          %28 = arith.divf %26, %27 : f64
          affine.store %28, %alloca[0] : memref<1xf64>
          %29 = affine.load %arg2[0] : memref<?xf64>
          %30 = affine.load %alloca[0] : memref<1xf64>
          %31 = affine.load %arg2[%6 - 1] : memref<?xf64>
          %32 = arith.mulf %30, %31 : f64
          %33 = arith.addf %29, %32 : f64
          affine.store %33, %alloca_2[0] : memref<40xf64>
          %34 = affine.load %alloca[0] : memref<1xf64>
          affine.store %34, %alloca_5[0] : memref<1xf64>
          affine.store %34, %alloca_4[] : memref<f64>
          %35 = affine.load %alloca_5[0] : memref<1xf64>
          affine.store %35, %arg2[%6] : memref<?xf64>
        }
        %18 = affine.load %alloca[0] : memref<1xf64>
        %19 = affine.load %alloca[0] : memref<1xf64>
        %20 = affine.load %alloca[0] : memref<1xf64>
        %21 = affine.load %alloca[0] : memref<1xf64>
        affine.for %arg5 = 0 to #map10(%6) {
          %23 = affine.apply #map11(%arg5)
          %24 = affine.load %arg2[%23 - 38] : memref<?xf64>
          %25 = affine.load %arg2[-%23 + %6 + 37] : memref<?xf64>
          %26 = arith.mulf %18, %25 : f64
          %27 = arith.addf %24, %26 : f64
          affine.store %27, %alloca_2[%23 - 38] : memref<40xf64>
          %28 = affine.apply #map5(%23)
          %29 = affine.load %arg2[%28 - 38] : memref<?xf64>
          %30 = affine.load %arg2[-%28 + %6 + 37] : memref<?xf64>
          %31 = arith.mulf %19, %30 : f64
          %32 = arith.addf %29, %31 : f64
          affine.store %32, %alloca_2[%28 - 38] : memref<40xf64>
          %33 = affine.apply #map6(%23)
          %34 = affine.load %arg2[%33 - 38] : memref<?xf64>
          %35 = affine.load %arg2[-%33 + %6 + 37] : memref<?xf64>
          %36 = arith.mulf %20, %35 : f64
          %37 = arith.addf %34, %36 : f64
          affine.store %37, %alloca_2[%33 - 38] : memref<40xf64>
          %38 = affine.apply #map7(%23)
          %39 = affine.load %arg2[%38 - 38] : memref<?xf64>
          %40 = affine.load %arg2[-%38 + %6 + 37] : memref<?xf64>
          %41 = arith.mulf %21, %40 : f64
          %42 = arith.addf %39, %41 : f64
          affine.store %42, %alloca_2[%38 - 38] : memref<40xf64>
        }
        %22 = affine.load %alloca[0] : memref<1xf64>
        affine.for %arg5 = 0 to #map12(%6) {
          %23 = affine.apply #map13(%6, %arg5)
          %24 = affine.load %arg2[%23 - 38] : memref<?xf64>
          %25 = affine.load %arg2[-%23 + %6 + 37] : memref<?xf64>
          %26 = arith.mulf %22, %25 : f64
          %27 = arith.addf %24, %26 : f64
          affine.store %27, %alloca_2[%23 - 38] : memref<40xf64>
        }
        affine.if #set1(%6) {
          %23 = affine.load %arg2[%6 - 1] : memref<?xf64>
          %24 = affine.load %alloca[0] : memref<1xf64>
          %25 = affine.load %arg2[0] : memref<?xf64>
          %26 = arith.mulf %24, %25 : f64
          %27 = arith.addf %23, %26 : f64
          affine.store %27, %alloca_2[%6 - 1] : memref<40xf64>
          %28 = affine.load %alloca_2[0] : memref<40xf64>
          affine.store %28, %arg2[0] : memref<?xf64>
        }
        affine.for %arg5 = 0 to #map3(%6) {
          %23 = affine.apply #map14(%6, %arg5)
          %24 = affine.load %alloca_2[-%6 + %23 - 37] : memref<40xf64>
          affine.store %24, %arg2[-%6 + %23 - 37] : memref<?xf64>
          %25 = affine.apply #map5(%23)
          %26 = affine.load %alloca_2[-%6 + %25 - 37] : memref<40xf64>
          affine.store %26, %arg2[-%6 + %25 - 37] : memref<?xf64>
          %27 = affine.apply #map6(%23)
          %28 = affine.load %alloca_2[-%6 + %27 - 37] : memref<40xf64>
          affine.store %28, %arg2[-%6 + %27 - 37] : memref<?xf64>
          %29 = affine.apply #map7(%23)
          %30 = affine.load %alloca_2[-%6 + %29 - 37] : memref<40xf64>
          affine.store %30, %arg2[-%6 + %29 - 37] : memref<?xf64>
        }
        affine.for %arg5 = 0 to #map8(%6) {
          %23 = affine.apply #map15(%6, %arg5)
          %24 = affine.load %alloca_2[-%6 + %23 - 37] : memref<40xf64>
          affine.store %24, %arg2[-%6 + %23 - 37] : memref<?xf64>
        }
      }
    }
    return
  }
}

