#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0, d1) -> (d0 + d1)>
#map2 = affine_map<(d0) -> (d0 * 4 + 1)>
#map3 = affine_map<(d0) -> (d0 + 2)>
#map4 = affine_map<(d0) -> (d0 + 3)>
#map5 = affine_map<(d0) -> (d0 + 37)>
module {
  func.func @kernel_seidel_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x40xf64>) {
    %cst = arith.constant 9.000000e+00 : f64
    affine.for %arg3 = 0 to 20 {
      affine.for %arg4 = 0 to 38 {
        %0 = affine.apply #map(%arg4)
        affine.for %arg5 = 0 to 1 {
          %1 = affine.apply #map1(%arg3, %arg5)
          affine.for %arg6 = 0 to 1 {
            %2 = affine.apply #map1(%0, %arg6)
            affine.for %arg7 = 0 to 9 {
              %3 = affine.apply #map2(%arg7)
              %4 = affine.load %arg2[%2 - 1, %3 - 1] : memref<?x40xf64>
              %5 = affine.load %arg2[%2 - 1, %3] : memref<?x40xf64>
              %6 = arith.addf %4, %5 : f64
              %7 = affine.load %arg2[%2 - 1, %3 + 1] : memref<?x40xf64>
              %8 = arith.addf %6, %7 : f64
              %9 = affine.load %arg2[%2, %3 - 1] : memref<?x40xf64>
              %10 = arith.addf %8, %9 : f64
              %11 = affine.load %arg2[%2, %3] : memref<?x40xf64>
              %12 = arith.addf %10, %11 : f64
              %13 = affine.load %arg2[%2, %3 + 1] : memref<?x40xf64>
              %14 = arith.addf %12, %13 : f64
              %15 = affine.load %arg2[%2 + 1, %3 - 1] : memref<?x40xf64>
              %16 = arith.addf %14, %15 : f64
              %17 = affine.load %arg2[%2 + 1, %3] : memref<?x40xf64>
              %18 = arith.addf %16, %17 : f64
              %19 = affine.load %arg2[%2 + 1, %3 + 1] : memref<?x40xf64>
              %20 = arith.addf %18, %19 : f64
              %21 = arith.divf %20, %cst : f64
              affine.store %21, %arg2[%2, %3] : memref<?x40xf64>
              %22 = affine.apply #map(%3)
              %23 = affine.load %arg2[%2 - 1, %22 - 1] : memref<?x40xf64>
              %24 = affine.load %arg2[%2 - 1, %22] : memref<?x40xf64>
              %25 = arith.addf %23, %24 : f64
              %26 = affine.load %arg2[%2 - 1, %22 + 1] : memref<?x40xf64>
              %27 = arith.addf %25, %26 : f64
              %28 = affine.load %arg2[%2, %22 - 1] : memref<?x40xf64>
              %29 = arith.addf %27, %28 : f64
              %30 = affine.load %arg2[%2, %22] : memref<?x40xf64>
              %31 = arith.addf %29, %30 : f64
              %32 = affine.load %arg2[%2, %22 + 1] : memref<?x40xf64>
              %33 = arith.addf %31, %32 : f64
              %34 = affine.load %arg2[%2 + 1, %22 - 1] : memref<?x40xf64>
              %35 = arith.addf %33, %34 : f64
              %36 = affine.load %arg2[%2 + 1, %22] : memref<?x40xf64>
              %37 = arith.addf %35, %36 : f64
              %38 = affine.load %arg2[%2 + 1, %22 + 1] : memref<?x40xf64>
              %39 = arith.addf %37, %38 : f64
              %40 = arith.divf %39, %cst : f64
              affine.store %40, %arg2[%2, %22] : memref<?x40xf64>
              %41 = affine.apply #map3(%3)
              %42 = affine.load %arg2[%2 - 1, %41 - 1] : memref<?x40xf64>
              %43 = affine.load %arg2[%2 - 1, %41] : memref<?x40xf64>
              %44 = arith.addf %42, %43 : f64
              %45 = affine.load %arg2[%2 - 1, %41 + 1] : memref<?x40xf64>
              %46 = arith.addf %44, %45 : f64
              %47 = affine.load %arg2[%2, %41 - 1] : memref<?x40xf64>
              %48 = arith.addf %46, %47 : f64
              %49 = affine.load %arg2[%2, %41] : memref<?x40xf64>
              %50 = arith.addf %48, %49 : f64
              %51 = affine.load %arg2[%2, %41 + 1] : memref<?x40xf64>
              %52 = arith.addf %50, %51 : f64
              %53 = affine.load %arg2[%2 + 1, %41 - 1] : memref<?x40xf64>
              %54 = arith.addf %52, %53 : f64
              %55 = affine.load %arg2[%2 + 1, %41] : memref<?x40xf64>
              %56 = arith.addf %54, %55 : f64
              %57 = affine.load %arg2[%2 + 1, %41 + 1] : memref<?x40xf64>
              %58 = arith.addf %56, %57 : f64
              %59 = arith.divf %58, %cst : f64
              affine.store %59, %arg2[%2, %41] : memref<?x40xf64>
              %60 = affine.apply #map4(%3)
              %61 = affine.load %arg2[%2 - 1, %60 - 1] : memref<?x40xf64>
              %62 = affine.load %arg2[%2 - 1, %60] : memref<?x40xf64>
              %63 = arith.addf %61, %62 : f64
              %64 = affine.load %arg2[%2 - 1, %60 + 1] : memref<?x40xf64>
              %65 = arith.addf %63, %64 : f64
              %66 = affine.load %arg2[%2, %60 - 1] : memref<?x40xf64>
              %67 = arith.addf %65, %66 : f64
              %68 = affine.load %arg2[%2, %60] : memref<?x40xf64>
              %69 = arith.addf %67, %68 : f64
              %70 = affine.load %arg2[%2, %60 + 1] : memref<?x40xf64>
              %71 = arith.addf %69, %70 : f64
              %72 = affine.load %arg2[%2 + 1, %60 - 1] : memref<?x40xf64>
              %73 = arith.addf %71, %72 : f64
              %74 = affine.load %arg2[%2 + 1, %60] : memref<?x40xf64>
              %75 = arith.addf %73, %74 : f64
              %76 = affine.load %arg2[%2 + 1, %60 + 1] : memref<?x40xf64>
              %77 = arith.addf %75, %76 : f64
              %78 = arith.divf %77, %cst : f64
              affine.store %78, %arg2[%2, %60] : memref<?x40xf64>
            }
            affine.for %arg7 = 0 to 2 {
              %3 = affine.apply #map5(%arg7)
              %4 = affine.load %arg2[%2 - 1, %3 - 1] : memref<?x40xf64>
              %5 = affine.load %arg2[%2 - 1, %3] : memref<?x40xf64>
              %6 = arith.addf %4, %5 : f64
              %7 = affine.load %arg2[%2 - 1, %3 + 1] : memref<?x40xf64>
              %8 = arith.addf %6, %7 : f64
              %9 = affine.load %arg2[%2, %3 - 1] : memref<?x40xf64>
              %10 = arith.addf %8, %9 : f64
              %11 = affine.load %arg2[%2, %3] : memref<?x40xf64>
              %12 = arith.addf %10, %11 : f64
              %13 = affine.load %arg2[%2, %3 + 1] : memref<?x40xf64>
              %14 = arith.addf %12, %13 : f64
              %15 = affine.load %arg2[%2 + 1, %3 - 1] : memref<?x40xf64>
              %16 = arith.addf %14, %15 : f64
              %17 = affine.load %arg2[%2 + 1, %3] : memref<?x40xf64>
              %18 = arith.addf %16, %17 : f64
              %19 = affine.load %arg2[%2 + 1, %3 + 1] : memref<?x40xf64>
              %20 = arith.addf %18, %19 : f64
              %21 = arith.divf %20, %cst : f64
              affine.store %21, %arg2[%2, %3] : memref<?x40xf64>
            }
          }
        }
      }
    }
    return
  }
}

