#map = affine_map<(d0) -> (d0 * 32 + 1)>
#map1 = affine_map<(d0, d1) -> (d0 + d1)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0) -> (d0 * 4 + 1)>
#map4 = affine_map<(d0) -> (d0 + 2)>
#map5 = affine_map<(d0) -> (d0 + 3)>
#map6 = affine_map<(d0) -> (d0 + 17)>
module {
  func.func @kernel_adi(%arg0: i32, %arg1: i32, %arg2: memref<?x20xf64>, %arg3: memref<?x20xf64>, %arg4: memref<?x20xf64>, %arg5: memref<?x20xf64>) {
    %cst = arith.constant 9.9999999999999982 : f64
    %cst_0 = arith.constant -18.999999999999996 : f64
    %cst_1 = arith.constant -38.999999999999993 : f64
    %cst_2 = arith.constant -9.9999999999999982 : f64
    %cst_3 = arith.constant -19.999999999999996 : f64
    %cst_4 = arith.constant 20.999999999999996 : f64
    %cst_5 = arith.constant 40.999999999999993 : f64
    %cst_6 = arith.constant 19.999999999999996 : f64
    %cst_7 = arith.constant 0.000000e+00 : f64
    %cst_8 = arith.constant 1.000000e+00 : f64
    affine.for %arg6 = 0 to 1 {
      %0 = affine.apply #map(%arg6)
      affine.for %arg7 = 0 to 20 {
        %1 = affine.apply #map1(%0, %arg7)
        affine.for %arg8 = 0 to 18 {
          %2 = affine.apply #map2(%arg8)
          affine.store %cst_8, %arg3[0, %2] : memref<?x20xf64>
          affine.store %cst_7, %arg4[%2, 0] : memref<?x20xf64>
          %3 = affine.load %arg3[0, %2] : memref<?x20xf64>
          affine.store %3, %arg5[%2, 0] : memref<?x20xf64>
          affine.for %arg9 = 0 to 4 {
            %4 = affine.apply #map3(%arg9)
            %5 = affine.load %arg4[%2, %4 - 1] : memref<?x20xf64>
            %6 = arith.mulf %5, %cst_3 : f64
            %7 = arith.addf %6, %cst_5 : f64
            %8 = arith.divf %cst_6, %7 : f64
            affine.store %8, %arg4[%2, %4] : memref<?x20xf64>
            %9 = affine.load %arg2[%4, %2 - 1] : memref<?x20xf64>
            %10 = arith.mulf %9, %cst : f64
            %11 = affine.load %arg2[%4, %2] : memref<?x20xf64>
            %12 = arith.mulf %11, %cst_0 : f64
            %13 = arith.addf %10, %12 : f64
            %14 = affine.load %arg2[%4, %2 + 1] : memref<?x20xf64>
            %15 = arith.mulf %14, %cst_2 : f64
            %16 = arith.subf %13, %15 : f64
            %17 = affine.load %arg5[%2, %4 - 1] : memref<?x20xf64>
            %18 = arith.mulf %17, %cst_3 : f64
            %19 = arith.subf %16, %18 : f64
            %20 = arith.divf %19, %7 : f64
            affine.store %20, %arg5[%2, %4] : memref<?x20xf64>
            %21 = affine.apply #map2(%4)
            %22 = affine.load %arg4[%2, %21 - 1] : memref<?x20xf64>
            %23 = arith.mulf %22, %cst_3 : f64
            %24 = arith.addf %23, %cst_5 : f64
            %25 = arith.divf %cst_6, %24 : f64
            affine.store %25, %arg4[%2, %21] : memref<?x20xf64>
            %26 = affine.load %arg2[%21, %2 - 1] : memref<?x20xf64>
            %27 = arith.mulf %26, %cst : f64
            %28 = affine.load %arg2[%21, %2] : memref<?x20xf64>
            %29 = arith.mulf %28, %cst_0 : f64
            %30 = arith.addf %27, %29 : f64
            %31 = affine.load %arg2[%21, %2 + 1] : memref<?x20xf64>
            %32 = arith.mulf %31, %cst_2 : f64
            %33 = arith.subf %30, %32 : f64
            %34 = affine.load %arg5[%2, %21 - 1] : memref<?x20xf64>
            %35 = arith.mulf %34, %cst_3 : f64
            %36 = arith.subf %33, %35 : f64
            %37 = arith.divf %36, %24 : f64
            affine.store %37, %arg5[%2, %21] : memref<?x20xf64>
            %38 = affine.apply #map4(%4)
            %39 = affine.load %arg4[%2, %38 - 1] : memref<?x20xf64>
            %40 = arith.mulf %39, %cst_3 : f64
            %41 = arith.addf %40, %cst_5 : f64
            %42 = arith.divf %cst_6, %41 : f64
            affine.store %42, %arg4[%2, %38] : memref<?x20xf64>
            %43 = affine.load %arg2[%38, %2 - 1] : memref<?x20xf64>
            %44 = arith.mulf %43, %cst : f64
            %45 = affine.load %arg2[%38, %2] : memref<?x20xf64>
            %46 = arith.mulf %45, %cst_0 : f64
            %47 = arith.addf %44, %46 : f64
            %48 = affine.load %arg2[%38, %2 + 1] : memref<?x20xf64>
            %49 = arith.mulf %48, %cst_2 : f64
            %50 = arith.subf %47, %49 : f64
            %51 = affine.load %arg5[%2, %38 - 1] : memref<?x20xf64>
            %52 = arith.mulf %51, %cst_3 : f64
            %53 = arith.subf %50, %52 : f64
            %54 = arith.divf %53, %41 : f64
            affine.store %54, %arg5[%2, %38] : memref<?x20xf64>
            %55 = affine.apply #map5(%4)
            %56 = affine.load %arg4[%2, %55 - 1] : memref<?x20xf64>
            %57 = arith.mulf %56, %cst_3 : f64
            %58 = arith.addf %57, %cst_5 : f64
            %59 = arith.divf %cst_6, %58 : f64
            affine.store %59, %arg4[%2, %55] : memref<?x20xf64>
            %60 = affine.load %arg2[%55, %2 - 1] : memref<?x20xf64>
            %61 = arith.mulf %60, %cst : f64
            %62 = affine.load %arg2[%55, %2] : memref<?x20xf64>
            %63 = arith.mulf %62, %cst_0 : f64
            %64 = arith.addf %61, %63 : f64
            %65 = affine.load %arg2[%55, %2 + 1] : memref<?x20xf64>
            %66 = arith.mulf %65, %cst_2 : f64
            %67 = arith.subf %64, %66 : f64
            %68 = affine.load %arg5[%2, %55 - 1] : memref<?x20xf64>
            %69 = arith.mulf %68, %cst_3 : f64
            %70 = arith.subf %67, %69 : f64
            %71 = arith.divf %70, %58 : f64
            affine.store %71, %arg5[%2, %55] : memref<?x20xf64>
          }
          affine.for %arg9 = 0 to 2 {
            %4 = affine.apply #map6(%arg9)
            %5 = affine.load %arg4[%2, %4 - 1] : memref<?x20xf64>
            %6 = arith.mulf %5, %cst_3 : f64
            %7 = arith.addf %6, %cst_5 : f64
            %8 = arith.divf %cst_6, %7 : f64
            affine.store %8, %arg4[%2, %4] : memref<?x20xf64>
            %9 = affine.load %arg2[%4, %2 - 1] : memref<?x20xf64>
            %10 = arith.mulf %9, %cst : f64
            %11 = affine.load %arg2[%4, %2] : memref<?x20xf64>
            %12 = arith.mulf %11, %cst_0 : f64
            %13 = arith.addf %10, %12 : f64
            %14 = affine.load %arg2[%4, %2 + 1] : memref<?x20xf64>
            %15 = arith.mulf %14, %cst_2 : f64
            %16 = arith.subf %13, %15 : f64
            %17 = affine.load %arg5[%2, %4 - 1] : memref<?x20xf64>
            %18 = arith.mulf %17, %cst_3 : f64
            %19 = arith.subf %16, %18 : f64
            %20 = arith.divf %19, %7 : f64
            affine.store %20, %arg5[%2, %4] : memref<?x20xf64>
          }
          affine.store %cst_8, %arg3[19, %2] : memref<?x20xf64>
          affine.for %arg9 = 0 to 4 {
            %4 = affine.apply #map3(%arg9)
            %5 = affine.load %arg4[%2, -%4 + 19] : memref<?x20xf64>
            %6 = affine.load %arg3[-%4 + 20, %2] : memref<?x20xf64>
            %7 = arith.mulf %5, %6 : f64
            %8 = affine.load %arg5[%2, -%4 + 19] : memref<?x20xf64>
            %9 = arith.addf %7, %8 : f64
            affine.store %9, %arg3[-%4 + 19, %2] : memref<?x20xf64>
            %10 = affine.apply #map2(%4)
            %11 = affine.load %arg4[%2, -%10 + 19] : memref<?x20xf64>
            %12 = affine.load %arg3[-%10 + 20, %2] : memref<?x20xf64>
            %13 = arith.mulf %11, %12 : f64
            %14 = affine.load %arg5[%2, -%10 + 19] : memref<?x20xf64>
            %15 = arith.addf %13, %14 : f64
            affine.store %15, %arg3[-%10 + 19, %2] : memref<?x20xf64>
            %16 = affine.apply #map4(%4)
            %17 = affine.load %arg4[%2, -%16 + 19] : memref<?x20xf64>
            %18 = affine.load %arg3[-%16 + 20, %2] : memref<?x20xf64>
            %19 = arith.mulf %17, %18 : f64
            %20 = affine.load %arg5[%2, -%16 + 19] : memref<?x20xf64>
            %21 = arith.addf %19, %20 : f64
            affine.store %21, %arg3[-%16 + 19, %2] : memref<?x20xf64>
            %22 = affine.apply #map5(%4)
            %23 = affine.load %arg4[%2, -%22 + 19] : memref<?x20xf64>
            %24 = affine.load %arg3[-%22 + 20, %2] : memref<?x20xf64>
            %25 = arith.mulf %23, %24 : f64
            %26 = affine.load %arg5[%2, -%22 + 19] : memref<?x20xf64>
            %27 = arith.addf %25, %26 : f64
            affine.store %27, %arg3[-%22 + 19, %2] : memref<?x20xf64>
          }
          affine.for %arg9 = 0 to 2 {
            %4 = affine.apply #map6(%arg9)
            %5 = affine.load %arg4[%2, -%4 + 19] : memref<?x20xf64>
            %6 = affine.load %arg3[-%4 + 20, %2] : memref<?x20xf64>
            %7 = arith.mulf %5, %6 : f64
            %8 = affine.load %arg5[%2, -%4 + 19] : memref<?x20xf64>
            %9 = arith.addf %7, %8 : f64
            affine.store %9, %arg3[-%4 + 19, %2] : memref<?x20xf64>
          }
        }
        affine.for %arg8 = 0 to 18 {
          %2 = affine.apply #map2(%arg8)
          affine.store %cst_8, %arg2[%2, 0] : memref<?x20xf64>
          affine.store %cst_7, %arg4[%2, 0] : memref<?x20xf64>
          %3 = affine.load %arg2[%2, 0] : memref<?x20xf64>
          affine.store %3, %arg5[%2, 0] : memref<?x20xf64>
          affine.for %arg9 = 0 to 4 {
            %4 = affine.apply #map3(%arg9)
            %5 = affine.load %arg4[%2, %4 - 1] : memref<?x20xf64>
            %6 = arith.mulf %5, %cst_2 : f64
            %7 = arith.addf %6, %cst_4 : f64
            %8 = arith.divf %cst, %7 : f64
            affine.store %8, %arg4[%2, %4] : memref<?x20xf64>
            %9 = affine.load %arg3[%2 - 1, %4] : memref<?x20xf64>
            %10 = arith.mulf %9, %cst_6 : f64
            %11 = affine.load %arg3[%2, %4] : memref<?x20xf64>
            %12 = arith.mulf %11, %cst_1 : f64
            %13 = arith.addf %10, %12 : f64
            %14 = affine.load %arg3[%2 + 1, %4] : memref<?x20xf64>
            %15 = arith.mulf %14, %cst_3 : f64
            %16 = arith.subf %13, %15 : f64
            %17 = affine.load %arg5[%2, %4 - 1] : memref<?x20xf64>
            %18 = arith.mulf %17, %cst_2 : f64
            %19 = arith.subf %16, %18 : f64
            %20 = arith.divf %19, %7 : f64
            affine.store %20, %arg5[%2, %4] : memref<?x20xf64>
            %21 = affine.apply #map2(%4)
            %22 = affine.load %arg4[%2, %21 - 1] : memref<?x20xf64>
            %23 = arith.mulf %22, %cst_2 : f64
            %24 = arith.addf %23, %cst_4 : f64
            %25 = arith.divf %cst, %24 : f64
            affine.store %25, %arg4[%2, %21] : memref<?x20xf64>
            %26 = affine.load %arg3[%2 - 1, %21] : memref<?x20xf64>
            %27 = arith.mulf %26, %cst_6 : f64
            %28 = affine.load %arg3[%2, %21] : memref<?x20xf64>
            %29 = arith.mulf %28, %cst_1 : f64
            %30 = arith.addf %27, %29 : f64
            %31 = affine.load %arg3[%2 + 1, %21] : memref<?x20xf64>
            %32 = arith.mulf %31, %cst_3 : f64
            %33 = arith.subf %30, %32 : f64
            %34 = affine.load %arg5[%2, %21 - 1] : memref<?x20xf64>
            %35 = arith.mulf %34, %cst_2 : f64
            %36 = arith.subf %33, %35 : f64
            %37 = arith.divf %36, %24 : f64
            affine.store %37, %arg5[%2, %21] : memref<?x20xf64>
            %38 = affine.apply #map4(%4)
            %39 = affine.load %arg4[%2, %38 - 1] : memref<?x20xf64>
            %40 = arith.mulf %39, %cst_2 : f64
            %41 = arith.addf %40, %cst_4 : f64
            %42 = arith.divf %cst, %41 : f64
            affine.store %42, %arg4[%2, %38] : memref<?x20xf64>
            %43 = affine.load %arg3[%2 - 1, %38] : memref<?x20xf64>
            %44 = arith.mulf %43, %cst_6 : f64
            %45 = affine.load %arg3[%2, %38] : memref<?x20xf64>
            %46 = arith.mulf %45, %cst_1 : f64
            %47 = arith.addf %44, %46 : f64
            %48 = affine.load %arg3[%2 + 1, %38] : memref<?x20xf64>
            %49 = arith.mulf %48, %cst_3 : f64
            %50 = arith.subf %47, %49 : f64
            %51 = affine.load %arg5[%2, %38 - 1] : memref<?x20xf64>
            %52 = arith.mulf %51, %cst_2 : f64
            %53 = arith.subf %50, %52 : f64
            %54 = arith.divf %53, %41 : f64
            affine.store %54, %arg5[%2, %38] : memref<?x20xf64>
            %55 = affine.apply #map5(%4)
            %56 = affine.load %arg4[%2, %55 - 1] : memref<?x20xf64>
            %57 = arith.mulf %56, %cst_2 : f64
            %58 = arith.addf %57, %cst_4 : f64
            %59 = arith.divf %cst, %58 : f64
            affine.store %59, %arg4[%2, %55] : memref<?x20xf64>
            %60 = affine.load %arg3[%2 - 1, %55] : memref<?x20xf64>
            %61 = arith.mulf %60, %cst_6 : f64
            %62 = affine.load %arg3[%2, %55] : memref<?x20xf64>
            %63 = arith.mulf %62, %cst_1 : f64
            %64 = arith.addf %61, %63 : f64
            %65 = affine.load %arg3[%2 + 1, %55] : memref<?x20xf64>
            %66 = arith.mulf %65, %cst_3 : f64
            %67 = arith.subf %64, %66 : f64
            %68 = affine.load %arg5[%2, %55 - 1] : memref<?x20xf64>
            %69 = arith.mulf %68, %cst_2 : f64
            %70 = arith.subf %67, %69 : f64
            %71 = arith.divf %70, %58 : f64
            affine.store %71, %arg5[%2, %55] : memref<?x20xf64>
          }
          affine.for %arg9 = 0 to 2 {
            %4 = affine.apply #map6(%arg9)
            %5 = affine.load %arg4[%2, %4 - 1] : memref<?x20xf64>
            %6 = arith.mulf %5, %cst_2 : f64
            %7 = arith.addf %6, %cst_4 : f64
            %8 = arith.divf %cst, %7 : f64
            affine.store %8, %arg4[%2, %4] : memref<?x20xf64>
            %9 = affine.load %arg3[%2 - 1, %4] : memref<?x20xf64>
            %10 = arith.mulf %9, %cst_6 : f64
            %11 = affine.load %arg3[%2, %4] : memref<?x20xf64>
            %12 = arith.mulf %11, %cst_1 : f64
            %13 = arith.addf %10, %12 : f64
            %14 = affine.load %arg3[%2 + 1, %4] : memref<?x20xf64>
            %15 = arith.mulf %14, %cst_3 : f64
            %16 = arith.subf %13, %15 : f64
            %17 = affine.load %arg5[%2, %4 - 1] : memref<?x20xf64>
            %18 = arith.mulf %17, %cst_2 : f64
            %19 = arith.subf %16, %18 : f64
            %20 = arith.divf %19, %7 : f64
            affine.store %20, %arg5[%2, %4] : memref<?x20xf64>
          }
          affine.store %cst_8, %arg2[%2, 19] : memref<?x20xf64>
          affine.for %arg9 = 0 to 4 {
            %4 = affine.apply #map3(%arg9)
            %5 = affine.load %arg4[%2, -%4 + 19] : memref<?x20xf64>
            %6 = affine.load %arg2[%2, -%4 + 20] : memref<?x20xf64>
            %7 = arith.mulf %5, %6 : f64
            %8 = affine.load %arg5[%2, -%4 + 19] : memref<?x20xf64>
            %9 = arith.addf %7, %8 : f64
            affine.store %9, %arg2[%2, -%4 + 19] : memref<?x20xf64>
            %10 = affine.apply #map2(%4)
            %11 = affine.load %arg4[%2, -%10 + 19] : memref<?x20xf64>
            %12 = affine.load %arg2[%2, -%10 + 20] : memref<?x20xf64>
            %13 = arith.mulf %11, %12 : f64
            %14 = affine.load %arg5[%2, -%10 + 19] : memref<?x20xf64>
            %15 = arith.addf %13, %14 : f64
            affine.store %15, %arg2[%2, -%10 + 19] : memref<?x20xf64>
            %16 = affine.apply #map4(%4)
            %17 = affine.load %arg4[%2, -%16 + 19] : memref<?x20xf64>
            %18 = affine.load %arg2[%2, -%16 + 20] : memref<?x20xf64>
            %19 = arith.mulf %17, %18 : f64
            %20 = affine.load %arg5[%2, -%16 + 19] : memref<?x20xf64>
            %21 = arith.addf %19, %20 : f64
            affine.store %21, %arg2[%2, -%16 + 19] : memref<?x20xf64>
            %22 = affine.apply #map5(%4)
            %23 = affine.load %arg4[%2, -%22 + 19] : memref<?x20xf64>
            %24 = affine.load %arg2[%2, -%22 + 20] : memref<?x20xf64>
            %25 = arith.mulf %23, %24 : f64
            %26 = affine.load %arg5[%2, -%22 + 19] : memref<?x20xf64>
            %27 = arith.addf %25, %26 : f64
            affine.store %27, %arg2[%2, -%22 + 19] : memref<?x20xf64>
          }
          affine.for %arg9 = 0 to 2 {
            %4 = affine.apply #map6(%arg9)
            %5 = affine.load %arg4[%2, -%4 + 19] : memref<?x20xf64>
            %6 = affine.load %arg2[%2, -%4 + 20] : memref<?x20xf64>
            %7 = arith.mulf %5, %6 : f64
            %8 = affine.load %arg5[%2, -%4 + 19] : memref<?x20xf64>
            %9 = arith.addf %7, %8 : f64
            affine.store %9, %arg2[%2, -%4 + 19] : memref<?x20xf64>
          }
        }
      }
    }
    return
  }
}

