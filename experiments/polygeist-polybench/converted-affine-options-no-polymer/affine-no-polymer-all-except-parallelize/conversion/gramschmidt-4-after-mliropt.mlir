#map = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0, d1) -> (d0 + d1)>
#map2 = affine_map<(d0) -> (d0 * 4)>
#map3 = affine_map<(d0) -> (d0 + 1)>
#map4 = affine_map<(d0) -> (d0 + 2)>
#map5 = affine_map<(d0) -> (d0 + 3)>
#map6 = affine_map<(d0) -> (-d0 + 29)>
#map7 = affine_map<(d0, d1) -> (d0 + d1 + 1)>
module {
  func.func @kernel_gramschmidt(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
    %0 = llvm.mlir.undef : f64
    affine.store %0, %alloca[] : memref<f64>
    affine.for %arg5 = 0 to 1 {
      %1 = affine.apply #map(%arg5)
      affine.for %arg6 = 0 to 30 {
        %2 = affine.apply #map1(%1, %arg6)
        affine.store %cst, %alloca[] : memref<f64>
        affine.for %arg7 = 0 to 5 {
          %9 = affine.apply #map2(%arg7)
          %10 = affine.load %arg2[%9, %2] : memref<?x30xf64>
          %11 = arith.mulf %10, %10 : f64
          %12 = affine.load %alloca[] : memref<f64>
          %13 = arith.addf %12, %11 : f64
          affine.store %13, %alloca[] : memref<f64>
          %14 = affine.apply #map3(%9)
          %15 = affine.load %arg2[%14, %2] : memref<?x30xf64>
          %16 = arith.mulf %15, %15 : f64
          %17 = affine.load %alloca[] : memref<f64>
          %18 = arith.addf %17, %16 : f64
          affine.store %18, %alloca[] : memref<f64>
          %19 = affine.apply #map4(%9)
          %20 = affine.load %arg2[%19, %2] : memref<?x30xf64>
          %21 = arith.mulf %20, %20 : f64
          %22 = affine.load %alloca[] : memref<f64>
          %23 = arith.addf %22, %21 : f64
          affine.store %23, %alloca[] : memref<f64>
          %24 = affine.apply #map5(%9)
          %25 = affine.load %arg2[%24, %2] : memref<?x30xf64>
          %26 = arith.mulf %25, %25 : f64
          %27 = affine.load %alloca[] : memref<f64>
          %28 = arith.addf %27, %26 : f64
          affine.store %28, %alloca[] : memref<f64>
        }
        %3 = affine.load %alloca[] : memref<f64>
        %4 = math.sqrt %3 : f64
        affine.store %4, %arg3[%2, %2] : memref<?x30xf64>
        %5 = affine.load %arg3[%2, %2] : memref<?x30xf64>
        %6 = affine.load %arg3[%2, %2] : memref<?x30xf64>
        %7 = affine.load %arg3[%2, %2] : memref<?x30xf64>
        %8 = affine.load %arg3[%2, %2] : memref<?x30xf64>
        affine.for %arg7 = 0 to 5 {
          %9 = affine.apply #map2(%arg7)
          %10 = affine.load %arg2[%9, %2] : memref<?x30xf64>
          %11 = arith.divf %10, %5 : f64
          affine.store %11, %arg4[%9, %2] : memref<?x30xf64>
          %12 = affine.apply #map3(%9)
          %13 = affine.load %arg2[%12, %2] : memref<?x30xf64>
          %14 = arith.divf %13, %6 : f64
          affine.store %14, %arg4[%12, %2] : memref<?x30xf64>
          %15 = affine.apply #map4(%9)
          %16 = affine.load %arg2[%15, %2] : memref<?x30xf64>
          %17 = arith.divf %16, %7 : f64
          affine.store %17, %arg4[%15, %2] : memref<?x30xf64>
          %18 = affine.apply #map5(%9)
          %19 = affine.load %arg2[%18, %2] : memref<?x30xf64>
          %20 = arith.divf %19, %8 : f64
          affine.store %20, %arg4[%18, %2] : memref<?x30xf64>
        }
        affine.for %arg7 = 0 to #map6(%2) {
          %9 = affine.apply #map7(%2, %arg7)
          affine.store %cst, %arg3[%2, %9] : memref<?x30xf64>
          affine.for %arg8 = 0 to 5 {
            %14 = affine.apply #map2(%arg8)
            %15 = affine.load %arg4[%14, %2] : memref<?x30xf64>
            %16 = affine.load %arg2[%14, %9] : memref<?x30xf64>
            %17 = arith.mulf %15, %16 : f64
            %18 = affine.load %arg3[%2, %9] : memref<?x30xf64>
            %19 = arith.addf %18, %17 : f64
            affine.store %19, %arg3[%2, %9] : memref<?x30xf64>
            %20 = affine.apply #map3(%14)
            %21 = affine.load %arg4[%20, %2] : memref<?x30xf64>
            %22 = affine.load %arg2[%20, %9] : memref<?x30xf64>
            %23 = arith.mulf %21, %22 : f64
            %24 = affine.load %arg3[%2, %9] : memref<?x30xf64>
            %25 = arith.addf %24, %23 : f64
            affine.store %25, %arg3[%2, %9] : memref<?x30xf64>
            %26 = affine.apply #map4(%14)
            %27 = affine.load %arg4[%26, %2] : memref<?x30xf64>
            %28 = affine.load %arg2[%26, %9] : memref<?x30xf64>
            %29 = arith.mulf %27, %28 : f64
            %30 = affine.load %arg3[%2, %9] : memref<?x30xf64>
            %31 = arith.addf %30, %29 : f64
            affine.store %31, %arg3[%2, %9] : memref<?x30xf64>
            %32 = affine.apply #map5(%14)
            %33 = affine.load %arg4[%32, %2] : memref<?x30xf64>
            %34 = affine.load %arg2[%32, %9] : memref<?x30xf64>
            %35 = arith.mulf %33, %34 : f64
            %36 = affine.load %arg3[%2, %9] : memref<?x30xf64>
            %37 = arith.addf %36, %35 : f64
            affine.store %37, %arg3[%2, %9] : memref<?x30xf64>
          }
          %10 = affine.load %arg3[%2, %9] : memref<?x30xf64>
          %11 = affine.load %arg3[%2, %9] : memref<?x30xf64>
          %12 = affine.load %arg3[%2, %9] : memref<?x30xf64>
          %13 = affine.load %arg3[%2, %9] : memref<?x30xf64>
          affine.for %arg8 = 0 to 5 {
            %14 = affine.apply #map2(%arg8)
            %15 = affine.load %arg2[%14, %9] : memref<?x30xf64>
            %16 = affine.load %arg4[%14, %2] : memref<?x30xf64>
            %17 = arith.mulf %16, %10 : f64
            %18 = arith.subf %15, %17 : f64
            affine.store %18, %arg2[%14, %9] : memref<?x30xf64>
            %19 = affine.apply #map3(%14)
            %20 = affine.load %arg2[%19, %9] : memref<?x30xf64>
            %21 = affine.load %arg4[%19, %2] : memref<?x30xf64>
            %22 = arith.mulf %21, %11 : f64
            %23 = arith.subf %20, %22 : f64
            affine.store %23, %arg2[%19, %9] : memref<?x30xf64>
            %24 = affine.apply #map4(%14)
            %25 = affine.load %arg2[%24, %9] : memref<?x30xf64>
            %26 = affine.load %arg4[%24, %2] : memref<?x30xf64>
            %27 = arith.mulf %26, %12 : f64
            %28 = arith.subf %25, %27 : f64
            affine.store %28, %arg2[%24, %9] : memref<?x30xf64>
            %29 = affine.apply #map5(%14)
            %30 = affine.load %arg2[%29, %9] : memref<?x30xf64>
            %31 = affine.load %arg4[%29, %2] : memref<?x30xf64>
            %32 = arith.mulf %31, %13 : f64
            %33 = arith.subf %30, %32 : f64
            affine.store %33, %arg2[%29, %9] : memref<?x30xf64>
          }
        }
      }
    }
    return
  }
}

