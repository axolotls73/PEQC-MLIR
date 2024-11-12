#map = affine_map<(d0, d1) -> (d0 + d1)>
#map1 = affine_map<(d0) -> (d0 * 4)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0) -> (d0 + 2)>
#map4 = affine_map<(d0) -> (d0 + 3)>
#map5 = affine_map<(d0) -> (-d0 + 29)>
#map6 = affine_map<(d0, d1) -> (d0 + d1 + 1)>
module {
  func.func @kernel_gramschmidt(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
    %0 = llvm.mlir.undef : f64
    affine.store %0, %alloca[] : memref<f64>
    affine.for %arg5 = 0 to 30 {
      affine.parallel (%arg6) = (0) to (1) {
        %1 = affine.apply #map(%arg5, %arg6)
        affine.store %cst, %alloca[] : memref<f64>
        affine.for %arg7 = 0 to 5 {
          %8 = affine.apply #map1(%arg7)
          %9 = affine.load %arg2[%8, %1] : memref<?x30xf64>
          %10 = arith.mulf %9, %9 : f64
          %11 = affine.load %alloca[] : memref<f64>
          %12 = arith.addf %11, %10 : f64
          affine.store %12, %alloca[] : memref<f64>
          %13 = affine.apply #map2(%8)
          %14 = affine.load %arg2[%13, %1] : memref<?x30xf64>
          %15 = arith.mulf %14, %14 : f64
          %16 = affine.load %alloca[] : memref<f64>
          %17 = arith.addf %16, %15 : f64
          affine.store %17, %alloca[] : memref<f64>
          %18 = affine.apply #map3(%8)
          %19 = affine.load %arg2[%18, %1] : memref<?x30xf64>
          %20 = arith.mulf %19, %19 : f64
          %21 = affine.load %alloca[] : memref<f64>
          %22 = arith.addf %21, %20 : f64
          affine.store %22, %alloca[] : memref<f64>
          %23 = affine.apply #map4(%8)
          %24 = affine.load %arg2[%23, %1] : memref<?x30xf64>
          %25 = arith.mulf %24, %24 : f64
          %26 = affine.load %alloca[] : memref<f64>
          %27 = arith.addf %26, %25 : f64
          affine.store %27, %alloca[] : memref<f64>
        }
        %2 = affine.load %alloca[] : memref<f64>
        %3 = math.sqrt %2 : f64
        affine.store %3, %arg3[%1, %1] : memref<?x30xf64>
        %4 = affine.load %arg3[%1, %1] : memref<?x30xf64>
        %5 = affine.load %arg3[%1, %1] : memref<?x30xf64>
        %6 = affine.load %arg3[%1, %1] : memref<?x30xf64>
        %7 = affine.load %arg3[%1, %1] : memref<?x30xf64>
        affine.for %arg7 = 0 to 5 {
          %8 = affine.apply #map1(%arg7)
          %9 = affine.load %arg2[%8, %1] : memref<?x30xf64>
          %10 = arith.divf %9, %4 : f64
          affine.store %10, %arg4[%8, %1] : memref<?x30xf64>
          %11 = affine.apply #map2(%8)
          %12 = affine.load %arg2[%11, %1] : memref<?x30xf64>
          %13 = arith.divf %12, %5 : f64
          affine.store %13, %arg4[%11, %1] : memref<?x30xf64>
          %14 = affine.apply #map3(%8)
          %15 = affine.load %arg2[%14, %1] : memref<?x30xf64>
          %16 = arith.divf %15, %6 : f64
          affine.store %16, %arg4[%14, %1] : memref<?x30xf64>
          %17 = affine.apply #map4(%8)
          %18 = affine.load %arg2[%17, %1] : memref<?x30xf64>
          %19 = arith.divf %18, %7 : f64
          affine.store %19, %arg4[%17, %1] : memref<?x30xf64>
        }
        affine.for %arg7 = 0 to #map5(%1) {
          %8 = affine.apply #map6(%1, %arg7)
          affine.store %cst, %arg3[%1, %8] : memref<?x30xf64>
          affine.for %arg8 = 0 to 5 {
            %13 = affine.apply #map1(%arg8)
            %14 = affine.load %arg4[%13, %1] : memref<?x30xf64>
            %15 = affine.load %arg2[%13, %8] : memref<?x30xf64>
            %16 = arith.mulf %14, %15 : f64
            %17 = affine.load %arg3[%1, %8] : memref<?x30xf64>
            %18 = arith.addf %17, %16 : f64
            affine.store %18, %arg3[%1, %8] : memref<?x30xf64>
            %19 = affine.apply #map2(%13)
            %20 = affine.load %arg4[%19, %1] : memref<?x30xf64>
            %21 = affine.load %arg2[%19, %8] : memref<?x30xf64>
            %22 = arith.mulf %20, %21 : f64
            %23 = affine.load %arg3[%1, %8] : memref<?x30xf64>
            %24 = arith.addf %23, %22 : f64
            affine.store %24, %arg3[%1, %8] : memref<?x30xf64>
            %25 = affine.apply #map3(%13)
            %26 = affine.load %arg4[%25, %1] : memref<?x30xf64>
            %27 = affine.load %arg2[%25, %8] : memref<?x30xf64>
            %28 = arith.mulf %26, %27 : f64
            %29 = affine.load %arg3[%1, %8] : memref<?x30xf64>
            %30 = arith.addf %29, %28 : f64
            affine.store %30, %arg3[%1, %8] : memref<?x30xf64>
            %31 = affine.apply #map4(%13)
            %32 = affine.load %arg4[%31, %1] : memref<?x30xf64>
            %33 = affine.load %arg2[%31, %8] : memref<?x30xf64>
            %34 = arith.mulf %32, %33 : f64
            %35 = affine.load %arg3[%1, %8] : memref<?x30xf64>
            %36 = arith.addf %35, %34 : f64
            affine.store %36, %arg3[%1, %8] : memref<?x30xf64>
          }
          %9 = affine.load %arg3[%1, %8] : memref<?x30xf64>
          %10 = affine.load %arg3[%1, %8] : memref<?x30xf64>
          %11 = affine.load %arg3[%1, %8] : memref<?x30xf64>
          %12 = affine.load %arg3[%1, %8] : memref<?x30xf64>
          affine.for %arg8 = 0 to 5 {
            %13 = affine.apply #map1(%arg8)
            %14 = affine.load %arg2[%13, %8] : memref<?x30xf64>
            %15 = affine.load %arg4[%13, %1] : memref<?x30xf64>
            %16 = arith.mulf %15, %9 : f64
            %17 = arith.subf %14, %16 : f64
            affine.store %17, %arg2[%13, %8] : memref<?x30xf64>
            %18 = affine.apply #map2(%13)
            %19 = affine.load %arg2[%18, %8] : memref<?x30xf64>
            %20 = affine.load %arg4[%18, %1] : memref<?x30xf64>
            %21 = arith.mulf %20, %10 : f64
            %22 = arith.subf %19, %21 : f64
            affine.store %22, %arg2[%18, %8] : memref<?x30xf64>
            %23 = affine.apply #map3(%13)
            %24 = affine.load %arg2[%23, %8] : memref<?x30xf64>
            %25 = affine.load %arg4[%23, %1] : memref<?x30xf64>
            %26 = arith.mulf %25, %11 : f64
            %27 = arith.subf %24, %26 : f64
            affine.store %27, %arg2[%23, %8] : memref<?x30xf64>
            %28 = affine.apply #map4(%13)
            %29 = affine.load %arg2[%28, %8] : memref<?x30xf64>
            %30 = affine.load %arg4[%28, %1] : memref<?x30xf64>
            %31 = arith.mulf %30, %12 : f64
            %32 = arith.subf %29, %31 : f64
            affine.store %32, %arg2[%28, %8] : memref<?x30xf64>
          }
        }
      }
    }
    return
  }
}

