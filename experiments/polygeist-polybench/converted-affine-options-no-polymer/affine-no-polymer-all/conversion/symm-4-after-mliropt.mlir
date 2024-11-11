#map = affine_map<(d0, d1) -> (d0 + d1)>
#map1 = affine_map<(d0) -> (d0 floordiv 4)>
#map2 = affine_map<(d0) -> (d0 * 4)>
#map3 = affine_map<(d0) -> (d0 + 1)>
#map4 = affine_map<(d0) -> (d0 + 2)>
#map5 = affine_map<(d0) -> (d0 + 3)>
#map6 = affine_map<(d0) -> (d0 mod 4)>
#map7 = affine_map<(d0, d1) -> (d1 + (d0 floordiv 4) * 4)>
module {
  func.func @kernel_symm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>, %arg6: memref<?x30xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
    affine.store %cst, %alloca[] : memref<f64>
    affine.for %arg7 = 0 to 20 {
      affine.for %arg8 = 0 to 30 {
        affine.parallel (%arg9) = (0) to (1) {
          %0 = affine.apply #map(%arg7, %arg9)
          %1 = affine.load %arg5[%0, %0] : memref<?x20xf64>
          affine.for %arg10 = 0 to 1 {
            %2 = affine.apply #map(%arg8, %arg10)
            affine.store %cst, %alloca[] : memref<f64>
            %3 = affine.load %arg6[%0, %2] : memref<?x30xf64>
            %4 = arith.mulf %arg2, %3 : f64
            %5 = affine.load %arg6[%0, %2] : memref<?x30xf64>
            %6 = arith.mulf %arg2, %5 : f64
            %7 = affine.load %arg6[%0, %2] : memref<?x30xf64>
            %8 = arith.mulf %arg2, %7 : f64
            %9 = affine.load %arg6[%0, %2] : memref<?x30xf64>
            %10 = arith.mulf %arg2, %9 : f64
            affine.for %arg11 = 0 to #map1(%0) {
              %22 = affine.apply #map2(%arg11)
              %23 = affine.load %arg5[%0, %22] : memref<?x20xf64>
              %24 = arith.mulf %4, %23 : f64
              %25 = affine.load %arg4[%22, %2] : memref<?x30xf64>
              %26 = arith.addf %25, %24 : f64
              affine.store %26, %arg4[%22, %2] : memref<?x30xf64>
              %27 = affine.load %arg6[%22, %2] : memref<?x30xf64>
              %28 = affine.load %arg5[%0, %22] : memref<?x20xf64>
              %29 = arith.mulf %27, %28 : f64
              %30 = affine.load %alloca[] : memref<f64>
              %31 = arith.addf %30, %29 : f64
              affine.store %31, %alloca[] : memref<f64>
              %32 = affine.apply #map3(%22)
              %33 = affine.load %arg5[%0, %32] : memref<?x20xf64>
              %34 = arith.mulf %6, %33 : f64
              %35 = affine.load %arg4[%32, %2] : memref<?x30xf64>
              %36 = arith.addf %35, %34 : f64
              affine.store %36, %arg4[%32, %2] : memref<?x30xf64>
              %37 = affine.load %arg6[%32, %2] : memref<?x30xf64>
              %38 = affine.load %arg5[%0, %32] : memref<?x20xf64>
              %39 = arith.mulf %37, %38 : f64
              %40 = affine.load %alloca[] : memref<f64>
              %41 = arith.addf %40, %39 : f64
              affine.store %41, %alloca[] : memref<f64>
              %42 = affine.apply #map4(%22)
              %43 = affine.load %arg5[%0, %42] : memref<?x20xf64>
              %44 = arith.mulf %8, %43 : f64
              %45 = affine.load %arg4[%42, %2] : memref<?x30xf64>
              %46 = arith.addf %45, %44 : f64
              affine.store %46, %arg4[%42, %2] : memref<?x30xf64>
              %47 = affine.load %arg6[%42, %2] : memref<?x30xf64>
              %48 = affine.load %arg5[%0, %42] : memref<?x20xf64>
              %49 = arith.mulf %47, %48 : f64
              %50 = affine.load %alloca[] : memref<f64>
              %51 = arith.addf %50, %49 : f64
              affine.store %51, %alloca[] : memref<f64>
              %52 = affine.apply #map5(%22)
              %53 = affine.load %arg5[%0, %52] : memref<?x20xf64>
              %54 = arith.mulf %10, %53 : f64
              %55 = affine.load %arg4[%52, %2] : memref<?x30xf64>
              %56 = arith.addf %55, %54 : f64
              affine.store %56, %arg4[%52, %2] : memref<?x30xf64>
              %57 = affine.load %arg6[%52, %2] : memref<?x30xf64>
              %58 = affine.load %arg5[%0, %52] : memref<?x20xf64>
              %59 = arith.mulf %57, %58 : f64
              %60 = affine.load %alloca[] : memref<f64>
              %61 = arith.addf %60, %59 : f64
              affine.store %61, %alloca[] : memref<f64>
            }
            %11 = affine.load %arg6[%0, %2] : memref<?x30xf64>
            %12 = arith.mulf %arg2, %11 : f64
            affine.for %arg11 = 0 to #map6(%0) {
              %22 = affine.apply #map7(%0, %arg11)
              %23 = affine.load %arg5[%0, %22] : memref<?x20xf64>
              %24 = arith.mulf %12, %23 : f64
              %25 = affine.load %arg4[%22, %2] : memref<?x30xf64>
              %26 = arith.addf %25, %24 : f64
              affine.store %26, %arg4[%22, %2] : memref<?x30xf64>
              %27 = affine.load %arg6[%22, %2] : memref<?x30xf64>
              %28 = affine.load %arg5[%0, %22] : memref<?x20xf64>
              %29 = arith.mulf %27, %28 : f64
              %30 = affine.load %alloca[] : memref<f64>
              %31 = arith.addf %30, %29 : f64
              affine.store %31, %alloca[] : memref<f64>
            }
            %13 = affine.load %arg4[%0, %2] : memref<?x30xf64>
            %14 = arith.mulf %arg3, %13 : f64
            %15 = affine.load %arg6[%0, %2] : memref<?x30xf64>
            %16 = arith.mulf %arg2, %15 : f64
            %17 = arith.mulf %16, %1 : f64
            %18 = arith.addf %14, %17 : f64
            %19 = affine.load %alloca[] : memref<f64>
            %20 = arith.mulf %arg2, %19 : f64
            %21 = arith.addf %18, %20 : f64
            affine.store %21, %arg4[%0, %2] : memref<?x30xf64>
          }
        }
      }
    }
    return
  }
}

