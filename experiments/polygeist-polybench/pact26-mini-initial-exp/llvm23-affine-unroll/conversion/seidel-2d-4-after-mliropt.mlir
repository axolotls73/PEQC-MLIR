#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0 + 2)>
#map2 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_seidel_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x40xf64>) {
    %cst = arith.constant 9.000000e+00 : f64
    affine.for %arg3 = 0 to 20 {
      affine.for %arg4 = 1 to 39 {
        affine.for %arg5 = 1 to 37 step 4 {
          %0 = affine.load %arg2[%arg4 - 1, %arg5 - 1] : memref<?x40xf64>
          %1 = affine.load %arg2[%arg4 - 1, %arg5] : memref<?x40xf64>
          %2 = arith.addf %0, %1 : f64
          %3 = affine.load %arg2[%arg4 - 1, %arg5 + 1] : memref<?x40xf64>
          %4 = arith.addf %2, %3 : f64
          %5 = affine.load %arg2[%arg4, %arg5 - 1] : memref<?x40xf64>
          %6 = arith.addf %4, %5 : f64
          %7 = affine.load %arg2[%arg4, %arg5] : memref<?x40xf64>
          %8 = arith.addf %6, %7 : f64
          %9 = affine.load %arg2[%arg4, %arg5 + 1] : memref<?x40xf64>
          %10 = arith.addf %8, %9 : f64
          %11 = affine.load %arg2[%arg4 + 1, %arg5 - 1] : memref<?x40xf64>
          %12 = arith.addf %10, %11 : f64
          %13 = affine.load %arg2[%arg4 + 1, %arg5] : memref<?x40xf64>
          %14 = arith.addf %12, %13 : f64
          %15 = affine.load %arg2[%arg4 + 1, %arg5 + 1] : memref<?x40xf64>
          %16 = arith.addf %14, %15 : f64
          %17 = arith.divf %16, %cst : f64
          affine.store %17, %arg2[%arg4, %arg5] : memref<?x40xf64>
          %18 = affine.apply #map(%arg5)
          %19 = affine.load %arg2[%arg4 - 1, %18 - 1] : memref<?x40xf64>
          %20 = affine.load %arg2[%arg4 - 1, %18] : memref<?x40xf64>
          %21 = arith.addf %19, %20 : f64
          %22 = affine.load %arg2[%arg4 - 1, %18 + 1] : memref<?x40xf64>
          %23 = arith.addf %21, %22 : f64
          %24 = affine.load %arg2[%arg4, %18 - 1] : memref<?x40xf64>
          %25 = arith.addf %23, %24 : f64
          %26 = affine.load %arg2[%arg4, %18] : memref<?x40xf64>
          %27 = arith.addf %25, %26 : f64
          %28 = affine.load %arg2[%arg4, %18 + 1] : memref<?x40xf64>
          %29 = arith.addf %27, %28 : f64
          %30 = affine.load %arg2[%arg4 + 1, %18 - 1] : memref<?x40xf64>
          %31 = arith.addf %29, %30 : f64
          %32 = affine.load %arg2[%arg4 + 1, %18] : memref<?x40xf64>
          %33 = arith.addf %31, %32 : f64
          %34 = affine.load %arg2[%arg4 + 1, %18 + 1] : memref<?x40xf64>
          %35 = arith.addf %33, %34 : f64
          %36 = arith.divf %35, %cst : f64
          affine.store %36, %arg2[%arg4, %18] : memref<?x40xf64>
          %37 = affine.apply #map1(%arg5)
          %38 = affine.load %arg2[%arg4 - 1, %37 - 1] : memref<?x40xf64>
          %39 = affine.load %arg2[%arg4 - 1, %37] : memref<?x40xf64>
          %40 = arith.addf %38, %39 : f64
          %41 = affine.load %arg2[%arg4 - 1, %37 + 1] : memref<?x40xf64>
          %42 = arith.addf %40, %41 : f64
          %43 = affine.load %arg2[%arg4, %37 - 1] : memref<?x40xf64>
          %44 = arith.addf %42, %43 : f64
          %45 = affine.load %arg2[%arg4, %37] : memref<?x40xf64>
          %46 = arith.addf %44, %45 : f64
          %47 = affine.load %arg2[%arg4, %37 + 1] : memref<?x40xf64>
          %48 = arith.addf %46, %47 : f64
          %49 = affine.load %arg2[%arg4 + 1, %37 - 1] : memref<?x40xf64>
          %50 = arith.addf %48, %49 : f64
          %51 = affine.load %arg2[%arg4 + 1, %37] : memref<?x40xf64>
          %52 = arith.addf %50, %51 : f64
          %53 = affine.load %arg2[%arg4 + 1, %37 + 1] : memref<?x40xf64>
          %54 = arith.addf %52, %53 : f64
          %55 = arith.divf %54, %cst : f64
          affine.store %55, %arg2[%arg4, %37] : memref<?x40xf64>
          %56 = affine.apply #map2(%arg5)
          %57 = affine.load %arg2[%arg4 - 1, %56 - 1] : memref<?x40xf64>
          %58 = affine.load %arg2[%arg4 - 1, %56] : memref<?x40xf64>
          %59 = arith.addf %57, %58 : f64
          %60 = affine.load %arg2[%arg4 - 1, %56 + 1] : memref<?x40xf64>
          %61 = arith.addf %59, %60 : f64
          %62 = affine.load %arg2[%arg4, %56 - 1] : memref<?x40xf64>
          %63 = arith.addf %61, %62 : f64
          %64 = affine.load %arg2[%arg4, %56] : memref<?x40xf64>
          %65 = arith.addf %63, %64 : f64
          %66 = affine.load %arg2[%arg4, %56 + 1] : memref<?x40xf64>
          %67 = arith.addf %65, %66 : f64
          %68 = affine.load %arg2[%arg4 + 1, %56 - 1] : memref<?x40xf64>
          %69 = arith.addf %67, %68 : f64
          %70 = affine.load %arg2[%arg4 + 1, %56] : memref<?x40xf64>
          %71 = arith.addf %69, %70 : f64
          %72 = affine.load %arg2[%arg4 + 1, %56 + 1] : memref<?x40xf64>
          %73 = arith.addf %71, %72 : f64
          %74 = arith.divf %73, %cst : f64
          affine.store %74, %arg2[%arg4, %56] : memref<?x40xf64>
        }
        affine.for %arg5 = 37 to 39 {
          %0 = affine.load %arg2[%arg4 - 1, %arg5 - 1] : memref<?x40xf64>
          %1 = affine.load %arg2[%arg4 - 1, %arg5] : memref<?x40xf64>
          %2 = arith.addf %0, %1 : f64
          %3 = affine.load %arg2[%arg4 - 1, %arg5 + 1] : memref<?x40xf64>
          %4 = arith.addf %2, %3 : f64
          %5 = affine.load %arg2[%arg4, %arg5 - 1] : memref<?x40xf64>
          %6 = arith.addf %4, %5 : f64
          %7 = affine.load %arg2[%arg4, %arg5] : memref<?x40xf64>
          %8 = arith.addf %6, %7 : f64
          %9 = affine.load %arg2[%arg4, %arg5 + 1] : memref<?x40xf64>
          %10 = arith.addf %8, %9 : f64
          %11 = affine.load %arg2[%arg4 + 1, %arg5 - 1] : memref<?x40xf64>
          %12 = arith.addf %10, %11 : f64
          %13 = affine.load %arg2[%arg4 + 1, %arg5] : memref<?x40xf64>
          %14 = arith.addf %12, %13 : f64
          %15 = affine.load %arg2[%arg4 + 1, %arg5 + 1] : memref<?x40xf64>
          %16 = arith.addf %14, %15 : f64
          %17 = arith.divf %16, %cst : f64
          affine.store %17, %arg2[%arg4, %arg5] : memref<?x40xf64>
        }
      }
    }
    return
  }
}

