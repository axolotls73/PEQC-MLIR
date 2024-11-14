#map = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0, d1) -> (d0 + d1)>
#map2 = affine_map<(d0) -> (d0 floordiv 4)>
#map3 = affine_map<(d0) -> (d0 * 4)>
#map4 = affine_map<(d0) -> (d0 + 1)>
#map5 = affine_map<(d0) -> (d0 + 2)>
#map6 = affine_map<(d0) -> (d0 + 3)>
#map7 = affine_map<(d0) -> (d0 mod 4)>
#map8 = affine_map<(d0, d1) -> (d1 + (d0 floordiv 4) * 4)>
module {
  func.func @kernel_symm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>, %arg6: memref<?x30xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
    affine.store %cst, %alloca[] : memref<f64>
    affine.parallel (%arg7) = (0) to (1) {
      %0 = affine.apply #map(%arg7)
      affine.for %arg8 = 0 to 1 {
        %1 = affine.apply #map(%arg8)
        affine.for %arg9 = 0 to 20 {
          %2 = affine.apply #map1(%0, %arg9)
          %3 = affine.load %arg5[%2, %2] : memref<?x20xf64>
          affine.for %arg10 = 0 to 30 {
            %4 = affine.apply #map1(%1, %arg10)
            affine.store %cst, %alloca[] : memref<f64>
            %5 = affine.load %arg6[%2, %4] : memref<?x30xf64>
            %6 = arith.mulf %arg2, %5 : f64
            %7 = affine.load %arg6[%2, %4] : memref<?x30xf64>
            %8 = arith.mulf %arg2, %7 : f64
            %9 = affine.load %arg6[%2, %4] : memref<?x30xf64>
            %10 = arith.mulf %arg2, %9 : f64
            %11 = affine.load %arg6[%2, %4] : memref<?x30xf64>
            %12 = arith.mulf %arg2, %11 : f64
            affine.for %arg11 = 0 to #map2(%2) {
              %24 = affine.apply #map3(%arg11)
              %25 = affine.load %arg5[%2, %24] : memref<?x20xf64>
              %26 = arith.mulf %6, %25 : f64
              %27 = affine.load %arg4[%24, %4] : memref<?x30xf64>
              %28 = arith.addf %27, %26 : f64
              affine.store %28, %arg4[%24, %4] : memref<?x30xf64>
              %29 = affine.load %arg6[%24, %4] : memref<?x30xf64>
              %30 = affine.load %arg5[%2, %24] : memref<?x20xf64>
              %31 = arith.mulf %29, %30 : f64
              %32 = affine.load %alloca[] : memref<f64>
              %33 = arith.addf %32, %31 : f64
              affine.store %33, %alloca[] : memref<f64>
              %34 = affine.apply #map4(%24)
              %35 = affine.load %arg5[%2, %34] : memref<?x20xf64>
              %36 = arith.mulf %8, %35 : f64
              %37 = affine.load %arg4[%34, %4] : memref<?x30xf64>
              %38 = arith.addf %37, %36 : f64
              affine.store %38, %arg4[%34, %4] : memref<?x30xf64>
              %39 = affine.load %arg6[%34, %4] : memref<?x30xf64>
              %40 = affine.load %arg5[%2, %34] : memref<?x20xf64>
              %41 = arith.mulf %39, %40 : f64
              %42 = affine.load %alloca[] : memref<f64>
              %43 = arith.addf %42, %41 : f64
              affine.store %43, %alloca[] : memref<f64>
              %44 = affine.apply #map5(%24)
              %45 = affine.load %arg5[%2, %44] : memref<?x20xf64>
              %46 = arith.mulf %10, %45 : f64
              %47 = affine.load %arg4[%44, %4] : memref<?x30xf64>
              %48 = arith.addf %47, %46 : f64
              affine.store %48, %arg4[%44, %4] : memref<?x30xf64>
              %49 = affine.load %arg6[%44, %4] : memref<?x30xf64>
              %50 = affine.load %arg5[%2, %44] : memref<?x20xf64>
              %51 = arith.mulf %49, %50 : f64
              %52 = affine.load %alloca[] : memref<f64>
              %53 = arith.addf %52, %51 : f64
              affine.store %53, %alloca[] : memref<f64>
              %54 = affine.apply #map6(%24)
              %55 = affine.load %arg5[%2, %54] : memref<?x20xf64>
              %56 = arith.mulf %12, %55 : f64
              %57 = affine.load %arg4[%54, %4] : memref<?x30xf64>
              %58 = arith.addf %57, %56 : f64
              affine.store %58, %arg4[%54, %4] : memref<?x30xf64>
              %59 = affine.load %arg6[%54, %4] : memref<?x30xf64>
              %60 = affine.load %arg5[%2, %54] : memref<?x20xf64>
              %61 = arith.mulf %59, %60 : f64
              %62 = affine.load %alloca[] : memref<f64>
              %63 = arith.addf %62, %61 : f64
              affine.store %63, %alloca[] : memref<f64>
            }
            %13 = affine.load %arg6[%2, %4] : memref<?x30xf64>
            %14 = arith.mulf %arg2, %13 : f64
            affine.for %arg11 = 0 to #map7(%2) {
              %24 = affine.apply #map8(%2, %arg11)
              %25 = affine.load %arg5[%2, %24] : memref<?x20xf64>
              %26 = arith.mulf %14, %25 : f64
              %27 = affine.load %arg4[%24, %4] : memref<?x30xf64>
              %28 = arith.addf %27, %26 : f64
              affine.store %28, %arg4[%24, %4] : memref<?x30xf64>
              %29 = affine.load %arg6[%24, %4] : memref<?x30xf64>
              %30 = affine.load %arg5[%2, %24] : memref<?x20xf64>
              %31 = arith.mulf %29, %30 : f64
              %32 = affine.load %alloca[] : memref<f64>
              %33 = arith.addf %32, %31 : f64
              affine.store %33, %alloca[] : memref<f64>
            }
            %15 = affine.load %arg4[%2, %4] : memref<?x30xf64>
            %16 = arith.mulf %arg3, %15 : f64
            %17 = affine.load %arg6[%2, %4] : memref<?x30xf64>
            %18 = arith.mulf %arg2, %17 : f64
            %19 = arith.mulf %18, %3 : f64
            %20 = arith.addf %16, %19 : f64
            %21 = affine.load %alloca[] : memref<f64>
            %22 = arith.mulf %arg2, %21 : f64
            %23 = arith.addf %20, %22 : f64
            affine.store %23, %arg4[%2, %4] : memref<?x30xf64>
          }
        }
      }
    }
    return
  }
}

