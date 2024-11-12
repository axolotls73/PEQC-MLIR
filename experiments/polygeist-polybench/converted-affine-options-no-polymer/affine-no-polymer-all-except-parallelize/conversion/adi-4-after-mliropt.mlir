#map = affine_map<(d0) -> (d0 * 4 + 1)>
#map1 = affine_map<(d0, d1) -> (d0 + d1 * 4)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0) -> (d0 + 2)>
#map4 = affine_map<(d0) -> (d0 + 3)>
#map5 = affine_map<(d0) -> (d0 + 17)>
#map6 = affine_map<(d0, d1) -> (d0 + d1)>
module {
  func.func @kernel_adi(%arg0: i32, %arg1: i32, %arg2: memref<?x20xf64>, %arg3: memref<?x20xf64>, %arg4: memref<?x20xf64>, %arg5: memref<?x20xf64>) {
    %cst = arith.constant 9.9999999999999982 : f64
    %cst_0 = arith.constant -18.999999999999996 : f64
    %cst_1 = arith.constant -9.9999999999999982 : f64
    %cst_2 = arith.constant -19.999999999999996 : f64
    %cst_3 = arith.constant 40.999999999999993 : f64
    %cst_4 = arith.constant 19.999999999999996 : f64
    %cst_5 = arith.constant 0.000000e+00 : f64
    %cst_6 = arith.constant 1.000000e+00 : f64
    affine.store %cst_6, %arg3[0, 1] : memref<?x20xf64>
    affine.store %cst_5, %arg4[1, 0] : memref<?x20xf64>
    %0 = affine.load %arg3[0, 1] : memref<?x20xf64>
    affine.store %0, %arg5[1, 0] : memref<?x20xf64>
    %1 = affine.load %arg4[1, 0] : memref<?x20xf64>
    %2 = arith.mulf %1, %cst_2 : f64
    %3 = arith.addf %2, %cst_3 : f64
    %4 = arith.divf %cst_4, %3 : f64
    affine.store %4, %arg4[1, 1] : memref<?x20xf64>
    %5 = affine.load %arg2[1, 0] : memref<?x20xf64>
    %6 = arith.mulf %5, %cst : f64
    %7 = affine.load %arg2[1, 1] : memref<?x20xf64>
    %8 = arith.mulf %7, %cst_0 : f64
    %9 = arith.addf %6, %8 : f64
    %10 = affine.load %arg2[1, 2] : memref<?x20xf64>
    %11 = arith.mulf %10, %cst_1 : f64
    %12 = arith.subf %9, %11 : f64
    %13 = affine.load %arg5[1, 0] : memref<?x20xf64>
    %14 = arith.mulf %13, %cst_2 : f64
    %15 = arith.subf %12, %14 : f64
    %16 = arith.divf %15, %3 : f64
    affine.store %16, %arg5[1, 1] : memref<?x20xf64>
    affine.store %cst_6, %arg3[19, 1] : memref<?x20xf64>
    affine.for %arg6 = 0 to 4 {
      %17 = affine.apply #map(%arg6)
      affine.for %arg7 = 0 to 1 {
        %18 = affine.apply #map1(%17, %arg7)
        %19 = affine.load %arg4[1, -%18 + 19] : memref<?x20xf64>
        %20 = affine.load %arg3[-%18 + 20, 1] : memref<?x20xf64>
        %21 = arith.mulf %19, %20 : f64
        %22 = affine.load %arg5[1, -%18 + 19] : memref<?x20xf64>
        %23 = arith.addf %21, %22 : f64
        affine.store %23, %arg3[-%18 + 19, 1] : memref<?x20xf64>
        %24 = affine.apply #map2(%18)
        %25 = affine.load %arg4[1, -%24 + 19] : memref<?x20xf64>
        %26 = affine.load %arg3[-%24 + 20, 1] : memref<?x20xf64>
        %27 = arith.mulf %25, %26 : f64
        %28 = affine.load %arg5[1, -%24 + 19] : memref<?x20xf64>
        %29 = arith.addf %27, %28 : f64
        affine.store %29, %arg3[-%24 + 19, 1] : memref<?x20xf64>
        %30 = affine.apply #map3(%18)
        %31 = affine.load %arg4[1, -%30 + 19] : memref<?x20xf64>
        %32 = affine.load %arg3[-%30 + 20, 1] : memref<?x20xf64>
        %33 = arith.mulf %31, %32 : f64
        %34 = affine.load %arg5[1, -%30 + 19] : memref<?x20xf64>
        %35 = arith.addf %33, %34 : f64
        affine.store %35, %arg3[-%30 + 19, 1] : memref<?x20xf64>
        %36 = affine.apply #map4(%18)
        %37 = affine.load %arg4[1, -%36 + 19] : memref<?x20xf64>
        %38 = affine.load %arg3[-%36 + 20, 1] : memref<?x20xf64>
        %39 = arith.mulf %37, %38 : f64
        %40 = affine.load %arg5[1, -%36 + 19] : memref<?x20xf64>
        %41 = arith.addf %39, %40 : f64
        affine.store %41, %arg3[-%36 + 19, 1] : memref<?x20xf64>
      }
    }
    affine.for %arg6 = 0 to 2 {
      %17 = affine.apply #map5(%arg6)
      affine.for %arg7 = 0 to 1 {
        %18 = affine.apply #map6(%17, %arg7)
        %19 = affine.load %arg4[1, -%18 + 19] : memref<?x20xf64>
        %20 = affine.load %arg3[-%18 + 20, 1] : memref<?x20xf64>
        %21 = arith.mulf %19, %20 : f64
        %22 = affine.load %arg5[1, -%18 + 19] : memref<?x20xf64>
        %23 = arith.addf %21, %22 : f64
        affine.store %23, %arg3[-%18 + 19, 1] : memref<?x20xf64>
      }
    }
    return
  }
}

