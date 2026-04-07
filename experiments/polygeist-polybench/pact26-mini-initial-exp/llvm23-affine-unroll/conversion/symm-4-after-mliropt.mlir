#map = affine_map<(d0) -> ((d0 floordiv 4) * 4)>
#map1 = affine_map<(d0) -> (d0 + 1)>
#map2 = affine_map<(d0) -> (d0 + 2)>
#map3 = affine_map<(d0) -> (d0 + 3)>
#map4 = affine_map<(d0) -> (d0)>
module {
  func.func @kernel_symm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>, %arg6: memref<?x30xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
    affine.store %cst, %alloca[] : memref<f64>
    affine.for %arg7 = 0 to 20 {
      affine.for %arg8 = 0 to 30 {
        affine.store %cst, %alloca[] : memref<f64>
        affine.for %arg9 = 0 to #map(%arg7) step 4 {
          %10 = affine.load %arg6[%arg7, %arg8] : memref<?x30xf64>
          %11 = arith.mulf %arg2, %10 : f64
          %12 = affine.load %arg5[%arg7, %arg9] : memref<?x20xf64>
          %13 = arith.mulf %11, %12 : f64
          %14 = affine.load %arg4[%arg9, %arg8] : memref<?x30xf64>
          %15 = arith.addf %14, %13 : f64
          affine.store %15, %arg4[%arg9, %arg8] : memref<?x30xf64>
          %16 = affine.load %arg6[%arg9, %arg8] : memref<?x30xf64>
          %17 = affine.load %arg5[%arg7, %arg9] : memref<?x20xf64>
          %18 = arith.mulf %16, %17 : f64
          %19 = affine.load %alloca[] : memref<f64>
          %20 = arith.addf %19, %18 : f64
          affine.store %20, %alloca[] : memref<f64>
          %21 = affine.apply #map1(%arg9)
          %22 = affine.load %arg6[%arg7, %arg8] : memref<?x30xf64>
          %23 = arith.mulf %arg2, %22 : f64
          %24 = affine.load %arg5[%arg7, %21] : memref<?x20xf64>
          %25 = arith.mulf %23, %24 : f64
          %26 = affine.load %arg4[%21, %arg8] : memref<?x30xf64>
          %27 = arith.addf %26, %25 : f64
          affine.store %27, %arg4[%21, %arg8] : memref<?x30xf64>
          %28 = affine.load %arg6[%21, %arg8] : memref<?x30xf64>
          %29 = affine.load %arg5[%arg7, %21] : memref<?x20xf64>
          %30 = arith.mulf %28, %29 : f64
          %31 = affine.load %alloca[] : memref<f64>
          %32 = arith.addf %31, %30 : f64
          affine.store %32, %alloca[] : memref<f64>
          %33 = affine.apply #map2(%arg9)
          %34 = affine.load %arg6[%arg7, %arg8] : memref<?x30xf64>
          %35 = arith.mulf %arg2, %34 : f64
          %36 = affine.load %arg5[%arg7, %33] : memref<?x20xf64>
          %37 = arith.mulf %35, %36 : f64
          %38 = affine.load %arg4[%33, %arg8] : memref<?x30xf64>
          %39 = arith.addf %38, %37 : f64
          affine.store %39, %arg4[%33, %arg8] : memref<?x30xf64>
          %40 = affine.load %arg6[%33, %arg8] : memref<?x30xf64>
          %41 = affine.load %arg5[%arg7, %33] : memref<?x20xf64>
          %42 = arith.mulf %40, %41 : f64
          %43 = affine.load %alloca[] : memref<f64>
          %44 = arith.addf %43, %42 : f64
          affine.store %44, %alloca[] : memref<f64>
          %45 = affine.apply #map3(%arg9)
          %46 = affine.load %arg6[%arg7, %arg8] : memref<?x30xf64>
          %47 = arith.mulf %arg2, %46 : f64
          %48 = affine.load %arg5[%arg7, %45] : memref<?x20xf64>
          %49 = arith.mulf %47, %48 : f64
          %50 = affine.load %arg4[%45, %arg8] : memref<?x30xf64>
          %51 = arith.addf %50, %49 : f64
          affine.store %51, %arg4[%45, %arg8] : memref<?x30xf64>
          %52 = affine.load %arg6[%45, %arg8] : memref<?x30xf64>
          %53 = affine.load %arg5[%arg7, %45] : memref<?x20xf64>
          %54 = arith.mulf %52, %53 : f64
          %55 = affine.load %alloca[] : memref<f64>
          %56 = arith.addf %55, %54 : f64
          affine.store %56, %alloca[] : memref<f64>
        }
        affine.for %arg9 = #map(%arg7) to #map4(%arg7) {
          %10 = affine.load %arg6[%arg7, %arg8] : memref<?x30xf64>
          %11 = arith.mulf %arg2, %10 : f64
          %12 = affine.load %arg5[%arg7, %arg9] : memref<?x20xf64>
          %13 = arith.mulf %11, %12 : f64
          %14 = affine.load %arg4[%arg9, %arg8] : memref<?x30xf64>
          %15 = arith.addf %14, %13 : f64
          affine.store %15, %arg4[%arg9, %arg8] : memref<?x30xf64>
          %16 = affine.load %arg6[%arg9, %arg8] : memref<?x30xf64>
          %17 = affine.load %arg5[%arg7, %arg9] : memref<?x20xf64>
          %18 = arith.mulf %16, %17 : f64
          %19 = affine.load %alloca[] : memref<f64>
          %20 = arith.addf %19, %18 : f64
          affine.store %20, %alloca[] : memref<f64>
        }
        %0 = affine.load %arg4[%arg7, %arg8] : memref<?x30xf64>
        %1 = arith.mulf %arg3, %0 : f64
        %2 = affine.load %arg6[%arg7, %arg8] : memref<?x30xf64>
        %3 = arith.mulf %arg2, %2 : f64
        %4 = affine.load %arg5[%arg7, %arg7] : memref<?x20xf64>
        %5 = arith.mulf %3, %4 : f64
        %6 = arith.addf %1, %5 : f64
        %7 = affine.load %alloca[] : memref<f64>
        %8 = arith.mulf %arg2, %7 : f64
        %9 = arith.addf %6, %8 : f64
        affine.store %9, %arg4[%arg7, %arg8] : memref<?x30xf64>
      }
    }
    return
  }
}

