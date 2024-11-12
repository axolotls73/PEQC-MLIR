#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0 + 2)>
#map2 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_gramschmidt(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
    %0 = llvm.mlir.undef : f64
    affine.store %0, %alloca[] : memref<f64>
    affine.for %arg5 = 0 to 30 {
      affine.store %cst, %alloca[] : memref<f64>
      affine.for %arg6 = 0 to 20 step 4 {
        %3 = affine.load %arg2[%arg6, %arg5] : memref<?x30xf64>
        %4 = arith.mulf %3, %3 : f64
        %5 = affine.load %alloca[] : memref<f64>
        %6 = arith.addf %5, %4 : f64
        affine.store %6, %alloca[] : memref<f64>
        %7 = affine.apply #map(%arg6)
        %8 = affine.load %arg2[%7, %arg5] : memref<?x30xf64>
        %9 = arith.mulf %8, %8 : f64
        %10 = affine.load %alloca[] : memref<f64>
        %11 = arith.addf %10, %9 : f64
        affine.store %11, %alloca[] : memref<f64>
        %12 = affine.apply #map1(%arg6)
        %13 = affine.load %arg2[%12, %arg5] : memref<?x30xf64>
        %14 = arith.mulf %13, %13 : f64
        %15 = affine.load %alloca[] : memref<f64>
        %16 = arith.addf %15, %14 : f64
        affine.store %16, %alloca[] : memref<f64>
        %17 = affine.apply #map2(%arg6)
        %18 = affine.load %arg2[%17, %arg5] : memref<?x30xf64>
        %19 = arith.mulf %18, %18 : f64
        %20 = affine.load %alloca[] : memref<f64>
        %21 = arith.addf %20, %19 : f64
        affine.store %21, %alloca[] : memref<f64>
      }
      %1 = affine.load %alloca[] : memref<f64>
      %2 = math.sqrt %1 : f64
      affine.store %2, %arg3[%arg5, %arg5] : memref<?x30xf64>
      affine.for %arg6 = 0 to 20 step 4 {
        %3 = affine.load %arg2[%arg6, %arg5] : memref<?x30xf64>
        %4 = affine.load %arg3[%arg5, %arg5] : memref<?x30xf64>
        %5 = arith.divf %3, %4 : f64
        affine.store %5, %arg4[%arg6, %arg5] : memref<?x30xf64>
        %6 = affine.apply #map(%arg6)
        %7 = affine.load %arg2[%6, %arg5] : memref<?x30xf64>
        %8 = affine.load %arg3[%arg5, %arg5] : memref<?x30xf64>
        %9 = arith.divf %7, %8 : f64
        affine.store %9, %arg4[%6, %arg5] : memref<?x30xf64>
        %10 = affine.apply #map1(%arg6)
        %11 = affine.load %arg2[%10, %arg5] : memref<?x30xf64>
        %12 = affine.load %arg3[%arg5, %arg5] : memref<?x30xf64>
        %13 = arith.divf %11, %12 : f64
        affine.store %13, %arg4[%10, %arg5] : memref<?x30xf64>
        %14 = affine.apply #map2(%arg6)
        %15 = affine.load %arg2[%14, %arg5] : memref<?x30xf64>
        %16 = affine.load %arg3[%arg5, %arg5] : memref<?x30xf64>
        %17 = arith.divf %15, %16 : f64
        affine.store %17, %arg4[%14, %arg5] : memref<?x30xf64>
      }
      affine.for %arg6 = #map(%arg5) to 30 {
        affine.store %cst, %arg3[%arg5, %arg6] : memref<?x30xf64>
        affine.for %arg7 = 0 to 20 step 4 {
          %3 = affine.load %arg4[%arg7, %arg5] : memref<?x30xf64>
          %4 = affine.load %arg2[%arg7, %arg6] : memref<?x30xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = affine.load %arg3[%arg5, %arg6] : memref<?x30xf64>
          %7 = arith.addf %6, %5 : f64
          affine.store %7, %arg3[%arg5, %arg6] : memref<?x30xf64>
          %8 = affine.apply #map(%arg7)
          %9 = affine.load %arg4[%8, %arg5] : memref<?x30xf64>
          %10 = affine.load %arg2[%8, %arg6] : memref<?x30xf64>
          %11 = arith.mulf %9, %10 : f64
          %12 = affine.load %arg3[%arg5, %arg6] : memref<?x30xf64>
          %13 = arith.addf %12, %11 : f64
          affine.store %13, %arg3[%arg5, %arg6] : memref<?x30xf64>
          %14 = affine.apply #map1(%arg7)
          %15 = affine.load %arg4[%14, %arg5] : memref<?x30xf64>
          %16 = affine.load %arg2[%14, %arg6] : memref<?x30xf64>
          %17 = arith.mulf %15, %16 : f64
          %18 = affine.load %arg3[%arg5, %arg6] : memref<?x30xf64>
          %19 = arith.addf %18, %17 : f64
          affine.store %19, %arg3[%arg5, %arg6] : memref<?x30xf64>
          %20 = affine.apply #map2(%arg7)
          %21 = affine.load %arg4[%20, %arg5] : memref<?x30xf64>
          %22 = affine.load %arg2[%20, %arg6] : memref<?x30xf64>
          %23 = arith.mulf %21, %22 : f64
          %24 = affine.load %arg3[%arg5, %arg6] : memref<?x30xf64>
          %25 = arith.addf %24, %23 : f64
          affine.store %25, %arg3[%arg5, %arg6] : memref<?x30xf64>
        }
        affine.for %arg7 = 0 to 20 step 4 {
          %3 = affine.load %arg2[%arg7, %arg6] : memref<?x30xf64>
          %4 = affine.load %arg4[%arg7, %arg5] : memref<?x30xf64>
          %5 = affine.load %arg3[%arg5, %arg6] : memref<?x30xf64>
          %6 = arith.mulf %4, %5 : f64
          %7 = arith.subf %3, %6 : f64
          affine.store %7, %arg2[%arg7, %arg6] : memref<?x30xf64>
          %8 = affine.apply #map(%arg7)
          %9 = affine.load %arg2[%8, %arg6] : memref<?x30xf64>
          %10 = affine.load %arg4[%8, %arg5] : memref<?x30xf64>
          %11 = affine.load %arg3[%arg5, %arg6] : memref<?x30xf64>
          %12 = arith.mulf %10, %11 : f64
          %13 = arith.subf %9, %12 : f64
          affine.store %13, %arg2[%8, %arg6] : memref<?x30xf64>
          %14 = affine.apply #map1(%arg7)
          %15 = affine.load %arg2[%14, %arg6] : memref<?x30xf64>
          %16 = affine.load %arg4[%14, %arg5] : memref<?x30xf64>
          %17 = affine.load %arg3[%arg5, %arg6] : memref<?x30xf64>
          %18 = arith.mulf %16, %17 : f64
          %19 = arith.subf %15, %18 : f64
          affine.store %19, %arg2[%14, %arg6] : memref<?x30xf64>
          %20 = affine.apply #map2(%arg7)
          %21 = affine.load %arg2[%20, %arg6] : memref<?x30xf64>
          %22 = affine.load %arg4[%20, %arg5] : memref<?x30xf64>
          %23 = affine.load %arg3[%arg5, %arg6] : memref<?x30xf64>
          %24 = arith.mulf %22, %23 : f64
          %25 = arith.subf %21, %24 : f64
          affine.store %25, %arg2[%20, %arg6] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

