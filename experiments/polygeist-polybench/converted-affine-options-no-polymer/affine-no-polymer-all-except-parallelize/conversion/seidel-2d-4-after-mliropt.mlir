#map = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0) -> (d0 * 32 + 1)>
#map2 = affine_map<(d0, d1) -> (d0 + d1)>
#map3 = affine_map<(d0) -> (32, -d0 + 39)>
#map4 = affine_map<(d0) -> (d0 * 4 + 1)>
#map5 = affine_map<(d0) -> (d0 + 1)>
#map6 = affine_map<(d0) -> (d0 + 2)>
#map7 = affine_map<(d0) -> (d0 + 3)>
#map8 = affine_map<(d0) -> (d0 + 37)>
module {
  func.func @kernel_seidel_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x40xf64>) {
    %cst = arith.constant 9.000000e+00 : f64
    affine.for %arg3 = 0 to 1 {
      %0 = affine.apply #map(%arg3)
      affine.for %arg4 = 0 to 2 {
        %1 = affine.apply #map1(%arg4)
        affine.for %arg5 = 0 to 20 {
          %2 = affine.apply #map2(%0, %arg5)
          affine.for %arg6 = 0 to min #map3(%1) {
            %3 = affine.apply #map2(%1, %arg6)
            affine.for %arg7 = 0 to 9 {
              %4 = affine.apply #map4(%arg7)
              %5 = affine.load %arg2[%3 - 1, %4 - 1] : memref<?x40xf64>
              %6 = affine.load %arg2[%3 - 1, %4] : memref<?x40xf64>
              %7 = arith.addf %5, %6 : f64
              %8 = affine.load %arg2[%3 - 1, %4 + 1] : memref<?x40xf64>
              %9 = arith.addf %7, %8 : f64
              %10 = affine.load %arg2[%3, %4 - 1] : memref<?x40xf64>
              %11 = arith.addf %9, %10 : f64
              %12 = affine.load %arg2[%3, %4] : memref<?x40xf64>
              %13 = arith.addf %11, %12 : f64
              %14 = affine.load %arg2[%3, %4 + 1] : memref<?x40xf64>
              %15 = arith.addf %13, %14 : f64
              %16 = affine.load %arg2[%3 + 1, %4 - 1] : memref<?x40xf64>
              %17 = arith.addf %15, %16 : f64
              %18 = affine.load %arg2[%3 + 1, %4] : memref<?x40xf64>
              %19 = arith.addf %17, %18 : f64
              %20 = affine.load %arg2[%3 + 1, %4 + 1] : memref<?x40xf64>
              %21 = arith.addf %19, %20 : f64
              %22 = arith.divf %21, %cst : f64
              affine.store %22, %arg2[%3, %4] : memref<?x40xf64>
              %23 = affine.apply #map5(%4)
              %24 = affine.load %arg2[%3 - 1, %23 - 1] : memref<?x40xf64>
              %25 = affine.load %arg2[%3 - 1, %23] : memref<?x40xf64>
              %26 = arith.addf %24, %25 : f64
              %27 = affine.load %arg2[%3 - 1, %23 + 1] : memref<?x40xf64>
              %28 = arith.addf %26, %27 : f64
              %29 = affine.load %arg2[%3, %23 - 1] : memref<?x40xf64>
              %30 = arith.addf %28, %29 : f64
              %31 = affine.load %arg2[%3, %23] : memref<?x40xf64>
              %32 = arith.addf %30, %31 : f64
              %33 = affine.load %arg2[%3, %23 + 1] : memref<?x40xf64>
              %34 = arith.addf %32, %33 : f64
              %35 = affine.load %arg2[%3 + 1, %23 - 1] : memref<?x40xf64>
              %36 = arith.addf %34, %35 : f64
              %37 = affine.load %arg2[%3 + 1, %23] : memref<?x40xf64>
              %38 = arith.addf %36, %37 : f64
              %39 = affine.load %arg2[%3 + 1, %23 + 1] : memref<?x40xf64>
              %40 = arith.addf %38, %39 : f64
              %41 = arith.divf %40, %cst : f64
              affine.store %41, %arg2[%3, %23] : memref<?x40xf64>
              %42 = affine.apply #map6(%4)
              %43 = affine.load %arg2[%3 - 1, %42 - 1] : memref<?x40xf64>
              %44 = affine.load %arg2[%3 - 1, %42] : memref<?x40xf64>
              %45 = arith.addf %43, %44 : f64
              %46 = affine.load %arg2[%3 - 1, %42 + 1] : memref<?x40xf64>
              %47 = arith.addf %45, %46 : f64
              %48 = affine.load %arg2[%3, %42 - 1] : memref<?x40xf64>
              %49 = arith.addf %47, %48 : f64
              %50 = affine.load %arg2[%3, %42] : memref<?x40xf64>
              %51 = arith.addf %49, %50 : f64
              %52 = affine.load %arg2[%3, %42 + 1] : memref<?x40xf64>
              %53 = arith.addf %51, %52 : f64
              %54 = affine.load %arg2[%3 + 1, %42 - 1] : memref<?x40xf64>
              %55 = arith.addf %53, %54 : f64
              %56 = affine.load %arg2[%3 + 1, %42] : memref<?x40xf64>
              %57 = arith.addf %55, %56 : f64
              %58 = affine.load %arg2[%3 + 1, %42 + 1] : memref<?x40xf64>
              %59 = arith.addf %57, %58 : f64
              %60 = arith.divf %59, %cst : f64
              affine.store %60, %arg2[%3, %42] : memref<?x40xf64>
              %61 = affine.apply #map7(%4)
              %62 = affine.load %arg2[%3 - 1, %61 - 1] : memref<?x40xf64>
              %63 = affine.load %arg2[%3 - 1, %61] : memref<?x40xf64>
              %64 = arith.addf %62, %63 : f64
              %65 = affine.load %arg2[%3 - 1, %61 + 1] : memref<?x40xf64>
              %66 = arith.addf %64, %65 : f64
              %67 = affine.load %arg2[%3, %61 - 1] : memref<?x40xf64>
              %68 = arith.addf %66, %67 : f64
              %69 = affine.load %arg2[%3, %61] : memref<?x40xf64>
              %70 = arith.addf %68, %69 : f64
              %71 = affine.load %arg2[%3, %61 + 1] : memref<?x40xf64>
              %72 = arith.addf %70, %71 : f64
              %73 = affine.load %arg2[%3 + 1, %61 - 1] : memref<?x40xf64>
              %74 = arith.addf %72, %73 : f64
              %75 = affine.load %arg2[%3 + 1, %61] : memref<?x40xf64>
              %76 = arith.addf %74, %75 : f64
              %77 = affine.load %arg2[%3 + 1, %61 + 1] : memref<?x40xf64>
              %78 = arith.addf %76, %77 : f64
              %79 = arith.divf %78, %cst : f64
              affine.store %79, %arg2[%3, %61] : memref<?x40xf64>
            }
            affine.for %arg7 = 0 to 2 {
              %4 = affine.apply #map8(%arg7)
              %5 = affine.load %arg2[%3 - 1, %4 - 1] : memref<?x40xf64>
              %6 = affine.load %arg2[%3 - 1, %4] : memref<?x40xf64>
              %7 = arith.addf %5, %6 : f64
              %8 = affine.load %arg2[%3 - 1, %4 + 1] : memref<?x40xf64>
              %9 = arith.addf %7, %8 : f64
              %10 = affine.load %arg2[%3, %4 - 1] : memref<?x40xf64>
              %11 = arith.addf %9, %10 : f64
              %12 = affine.load %arg2[%3, %4] : memref<?x40xf64>
              %13 = arith.addf %11, %12 : f64
              %14 = affine.load %arg2[%3, %4 + 1] : memref<?x40xf64>
              %15 = arith.addf %13, %14 : f64
              %16 = affine.load %arg2[%3 + 1, %4 - 1] : memref<?x40xf64>
              %17 = arith.addf %15, %16 : f64
              %18 = affine.load %arg2[%3 + 1, %4] : memref<?x40xf64>
              %19 = arith.addf %17, %18 : f64
              %20 = affine.load %arg2[%3 + 1, %4 + 1] : memref<?x40xf64>
              %21 = arith.addf %19, %20 : f64
              %22 = arith.divf %21, %cst : f64
              affine.store %22, %arg2[%3, %4] : memref<?x40xf64>
            }
          }
        }
      }
    }
    return
  }
}

