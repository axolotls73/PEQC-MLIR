#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0 + 2)>
#map2 = affine_map<(d0) -> (d0 + 3)>
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
    affine.for %arg6 = 1 to 21 {
      affine.for %arg7 = 1 to 19 {
        affine.store %cst_8, %arg3[0, %arg7] : memref<?x20xf64>
        affine.store %cst_7, %arg4[%arg7, 0] : memref<?x20xf64>
        %0 = affine.load %arg3[0, %arg7] : memref<?x20xf64>
        affine.store %0, %arg5[%arg7, 0] : memref<?x20xf64>
        affine.for %arg8 = 1 to 17 step 4 {
          %1 = affine.load %arg4[%arg7, %arg8 - 1] : memref<?x20xf64>
          %2 = arith.mulf %1, %cst_3 : f64
          %3 = arith.addf %2, %cst_5 : f64
          %4 = arith.divf %cst_6, %3 : f64
          affine.store %4, %arg4[%arg7, %arg8] : memref<?x20xf64>
          %5 = affine.load %arg2[%arg8, %arg7 - 1] : memref<?x20xf64>
          %6 = arith.mulf %5, %cst : f64
          %7 = affine.load %arg2[%arg8, %arg7] : memref<?x20xf64>
          %8 = arith.mulf %7, %cst_0 : f64
          %9 = arith.addf %6, %8 : f64
          %10 = affine.load %arg2[%arg8, %arg7 + 1] : memref<?x20xf64>
          %11 = arith.mulf %10, %cst_2 : f64
          %12 = arith.subf %9, %11 : f64
          %13 = affine.load %arg5[%arg7, %arg8 - 1] : memref<?x20xf64>
          %14 = arith.mulf %13, %cst_3 : f64
          %15 = arith.subf %12, %14 : f64
          %16 = arith.divf %15, %3 : f64
          affine.store %16, %arg5[%arg7, %arg8] : memref<?x20xf64>
          %17 = affine.apply #map(%arg8)
          %18 = affine.load %arg4[%arg7, %17 - 1] : memref<?x20xf64>
          %19 = arith.mulf %18, %cst_3 : f64
          %20 = arith.addf %19, %cst_5 : f64
          %21 = arith.divf %cst_6, %20 : f64
          affine.store %21, %arg4[%arg7, %17] : memref<?x20xf64>
          %22 = affine.load %arg2[%17, %arg7 - 1] : memref<?x20xf64>
          %23 = arith.mulf %22, %cst : f64
          %24 = affine.load %arg2[%17, %arg7] : memref<?x20xf64>
          %25 = arith.mulf %24, %cst_0 : f64
          %26 = arith.addf %23, %25 : f64
          %27 = affine.load %arg2[%17, %arg7 + 1] : memref<?x20xf64>
          %28 = arith.mulf %27, %cst_2 : f64
          %29 = arith.subf %26, %28 : f64
          %30 = affine.load %arg5[%arg7, %17 - 1] : memref<?x20xf64>
          %31 = arith.mulf %30, %cst_3 : f64
          %32 = arith.subf %29, %31 : f64
          %33 = arith.divf %32, %20 : f64
          affine.store %33, %arg5[%arg7, %17] : memref<?x20xf64>
          %34 = affine.apply #map1(%arg8)
          %35 = affine.load %arg4[%arg7, %34 - 1] : memref<?x20xf64>
          %36 = arith.mulf %35, %cst_3 : f64
          %37 = arith.addf %36, %cst_5 : f64
          %38 = arith.divf %cst_6, %37 : f64
          affine.store %38, %arg4[%arg7, %34] : memref<?x20xf64>
          %39 = affine.load %arg2[%34, %arg7 - 1] : memref<?x20xf64>
          %40 = arith.mulf %39, %cst : f64
          %41 = affine.load %arg2[%34, %arg7] : memref<?x20xf64>
          %42 = arith.mulf %41, %cst_0 : f64
          %43 = arith.addf %40, %42 : f64
          %44 = affine.load %arg2[%34, %arg7 + 1] : memref<?x20xf64>
          %45 = arith.mulf %44, %cst_2 : f64
          %46 = arith.subf %43, %45 : f64
          %47 = affine.load %arg5[%arg7, %34 - 1] : memref<?x20xf64>
          %48 = arith.mulf %47, %cst_3 : f64
          %49 = arith.subf %46, %48 : f64
          %50 = arith.divf %49, %37 : f64
          affine.store %50, %arg5[%arg7, %34] : memref<?x20xf64>
          %51 = affine.apply #map2(%arg8)
          %52 = affine.load %arg4[%arg7, %51 - 1] : memref<?x20xf64>
          %53 = arith.mulf %52, %cst_3 : f64
          %54 = arith.addf %53, %cst_5 : f64
          %55 = arith.divf %cst_6, %54 : f64
          affine.store %55, %arg4[%arg7, %51] : memref<?x20xf64>
          %56 = affine.load %arg2[%51, %arg7 - 1] : memref<?x20xf64>
          %57 = arith.mulf %56, %cst : f64
          %58 = affine.load %arg2[%51, %arg7] : memref<?x20xf64>
          %59 = arith.mulf %58, %cst_0 : f64
          %60 = arith.addf %57, %59 : f64
          %61 = affine.load %arg2[%51, %arg7 + 1] : memref<?x20xf64>
          %62 = arith.mulf %61, %cst_2 : f64
          %63 = arith.subf %60, %62 : f64
          %64 = affine.load %arg5[%arg7, %51 - 1] : memref<?x20xf64>
          %65 = arith.mulf %64, %cst_3 : f64
          %66 = arith.subf %63, %65 : f64
          %67 = arith.divf %66, %54 : f64
          affine.store %67, %arg5[%arg7, %51] : memref<?x20xf64>
        }
        affine.for %arg8 = 17 to 19 {
          %1 = affine.load %arg4[%arg7, %arg8 - 1] : memref<?x20xf64>
          %2 = arith.mulf %1, %cst_3 : f64
          %3 = arith.addf %2, %cst_5 : f64
          %4 = arith.divf %cst_6, %3 : f64
          affine.store %4, %arg4[%arg7, %arg8] : memref<?x20xf64>
          %5 = affine.load %arg2[%arg8, %arg7 - 1] : memref<?x20xf64>
          %6 = arith.mulf %5, %cst : f64
          %7 = affine.load %arg2[%arg8, %arg7] : memref<?x20xf64>
          %8 = arith.mulf %7, %cst_0 : f64
          %9 = arith.addf %6, %8 : f64
          %10 = affine.load %arg2[%arg8, %arg7 + 1] : memref<?x20xf64>
          %11 = arith.mulf %10, %cst_2 : f64
          %12 = arith.subf %9, %11 : f64
          %13 = affine.load %arg5[%arg7, %arg8 - 1] : memref<?x20xf64>
          %14 = arith.mulf %13, %cst_3 : f64
          %15 = arith.subf %12, %14 : f64
          %16 = arith.divf %15, %3 : f64
          affine.store %16, %arg5[%arg7, %arg8] : memref<?x20xf64>
        }
        affine.store %cst_8, %arg3[19, %arg7] : memref<?x20xf64>
        affine.for %arg8 = 1 to 17 step 4 {
          %1 = affine.load %arg4[%arg7, -%arg8 + 19] : memref<?x20xf64>
          %2 = affine.load %arg3[-%arg8 + 20, %arg7] : memref<?x20xf64>
          %3 = arith.mulf %1, %2 : f64
          %4 = affine.load %arg5[%arg7, -%arg8 + 19] : memref<?x20xf64>
          %5 = arith.addf %3, %4 : f64
          affine.store %5, %arg3[-%arg8 + 19, %arg7] : memref<?x20xf64>
          %6 = affine.apply #map(%arg8)
          %7 = affine.load %arg4[%arg7, -%6 + 19] : memref<?x20xf64>
          %8 = affine.load %arg3[-%6 + 20, %arg7] : memref<?x20xf64>
          %9 = arith.mulf %7, %8 : f64
          %10 = affine.load %arg5[%arg7, -%6 + 19] : memref<?x20xf64>
          %11 = arith.addf %9, %10 : f64
          affine.store %11, %arg3[-%6 + 19, %arg7] : memref<?x20xf64>
          %12 = affine.apply #map1(%arg8)
          %13 = affine.load %arg4[%arg7, -%12 + 19] : memref<?x20xf64>
          %14 = affine.load %arg3[-%12 + 20, %arg7] : memref<?x20xf64>
          %15 = arith.mulf %13, %14 : f64
          %16 = affine.load %arg5[%arg7, -%12 + 19] : memref<?x20xf64>
          %17 = arith.addf %15, %16 : f64
          affine.store %17, %arg3[-%12 + 19, %arg7] : memref<?x20xf64>
          %18 = affine.apply #map2(%arg8)
          %19 = affine.load %arg4[%arg7, -%18 + 19] : memref<?x20xf64>
          %20 = affine.load %arg3[-%18 + 20, %arg7] : memref<?x20xf64>
          %21 = arith.mulf %19, %20 : f64
          %22 = affine.load %arg5[%arg7, -%18 + 19] : memref<?x20xf64>
          %23 = arith.addf %21, %22 : f64
          affine.store %23, %arg3[-%18 + 19, %arg7] : memref<?x20xf64>
        }
        affine.for %arg8 = 17 to 19 {
          %1 = affine.load %arg4[%arg7, -%arg8 + 19] : memref<?x20xf64>
          %2 = affine.load %arg3[-%arg8 + 20, %arg7] : memref<?x20xf64>
          %3 = arith.mulf %1, %2 : f64
          %4 = affine.load %arg5[%arg7, -%arg8 + 19] : memref<?x20xf64>
          %5 = arith.addf %3, %4 : f64
          affine.store %5, %arg3[-%arg8 + 19, %arg7] : memref<?x20xf64>
        }
      }
      affine.for %arg7 = 1 to 19 {
        affine.store %cst_8, %arg2[%arg7, 0] : memref<?x20xf64>
        affine.store %cst_7, %arg4[%arg7, 0] : memref<?x20xf64>
        %0 = affine.load %arg2[%arg7, 0] : memref<?x20xf64>
        affine.store %0, %arg5[%arg7, 0] : memref<?x20xf64>
        affine.for %arg8 = 1 to 17 step 4 {
          %1 = affine.load %arg4[%arg7, %arg8 - 1] : memref<?x20xf64>
          %2 = arith.mulf %1, %cst_2 : f64
          %3 = arith.addf %2, %cst_4 : f64
          %4 = arith.divf %cst, %3 : f64
          affine.store %4, %arg4[%arg7, %arg8] : memref<?x20xf64>
          %5 = affine.load %arg3[%arg7 - 1, %arg8] : memref<?x20xf64>
          %6 = arith.mulf %5, %cst_6 : f64
          %7 = affine.load %arg3[%arg7, %arg8] : memref<?x20xf64>
          %8 = arith.mulf %7, %cst_1 : f64
          %9 = arith.addf %6, %8 : f64
          %10 = affine.load %arg3[%arg7 + 1, %arg8] : memref<?x20xf64>
          %11 = arith.mulf %10, %cst_3 : f64
          %12 = arith.subf %9, %11 : f64
          %13 = affine.load %arg5[%arg7, %arg8 - 1] : memref<?x20xf64>
          %14 = arith.mulf %13, %cst_2 : f64
          %15 = arith.subf %12, %14 : f64
          %16 = arith.divf %15, %3 : f64
          affine.store %16, %arg5[%arg7, %arg8] : memref<?x20xf64>
          %17 = affine.apply #map(%arg8)
          %18 = affine.load %arg4[%arg7, %17 - 1] : memref<?x20xf64>
          %19 = arith.mulf %18, %cst_2 : f64
          %20 = arith.addf %19, %cst_4 : f64
          %21 = arith.divf %cst, %20 : f64
          affine.store %21, %arg4[%arg7, %17] : memref<?x20xf64>
          %22 = affine.load %arg3[%arg7 - 1, %17] : memref<?x20xf64>
          %23 = arith.mulf %22, %cst_6 : f64
          %24 = affine.load %arg3[%arg7, %17] : memref<?x20xf64>
          %25 = arith.mulf %24, %cst_1 : f64
          %26 = arith.addf %23, %25 : f64
          %27 = affine.load %arg3[%arg7 + 1, %17] : memref<?x20xf64>
          %28 = arith.mulf %27, %cst_3 : f64
          %29 = arith.subf %26, %28 : f64
          %30 = affine.load %arg5[%arg7, %17 - 1] : memref<?x20xf64>
          %31 = arith.mulf %30, %cst_2 : f64
          %32 = arith.subf %29, %31 : f64
          %33 = arith.divf %32, %20 : f64
          affine.store %33, %arg5[%arg7, %17] : memref<?x20xf64>
          %34 = affine.apply #map1(%arg8)
          %35 = affine.load %arg4[%arg7, %34 - 1] : memref<?x20xf64>
          %36 = arith.mulf %35, %cst_2 : f64
          %37 = arith.addf %36, %cst_4 : f64
          %38 = arith.divf %cst, %37 : f64
          affine.store %38, %arg4[%arg7, %34] : memref<?x20xf64>
          %39 = affine.load %arg3[%arg7 - 1, %34] : memref<?x20xf64>
          %40 = arith.mulf %39, %cst_6 : f64
          %41 = affine.load %arg3[%arg7, %34] : memref<?x20xf64>
          %42 = arith.mulf %41, %cst_1 : f64
          %43 = arith.addf %40, %42 : f64
          %44 = affine.load %arg3[%arg7 + 1, %34] : memref<?x20xf64>
          %45 = arith.mulf %44, %cst_3 : f64
          %46 = arith.subf %43, %45 : f64
          %47 = affine.load %arg5[%arg7, %34 - 1] : memref<?x20xf64>
          %48 = arith.mulf %47, %cst_2 : f64
          %49 = arith.subf %46, %48 : f64
          %50 = arith.divf %49, %37 : f64
          affine.store %50, %arg5[%arg7, %34] : memref<?x20xf64>
          %51 = affine.apply #map2(%arg8)
          %52 = affine.load %arg4[%arg7, %51 - 1] : memref<?x20xf64>
          %53 = arith.mulf %52, %cst_2 : f64
          %54 = arith.addf %53, %cst_4 : f64
          %55 = arith.divf %cst, %54 : f64
          affine.store %55, %arg4[%arg7, %51] : memref<?x20xf64>
          %56 = affine.load %arg3[%arg7 - 1, %51] : memref<?x20xf64>
          %57 = arith.mulf %56, %cst_6 : f64
          %58 = affine.load %arg3[%arg7, %51] : memref<?x20xf64>
          %59 = arith.mulf %58, %cst_1 : f64
          %60 = arith.addf %57, %59 : f64
          %61 = affine.load %arg3[%arg7 + 1, %51] : memref<?x20xf64>
          %62 = arith.mulf %61, %cst_3 : f64
          %63 = arith.subf %60, %62 : f64
          %64 = affine.load %arg5[%arg7, %51 - 1] : memref<?x20xf64>
          %65 = arith.mulf %64, %cst_2 : f64
          %66 = arith.subf %63, %65 : f64
          %67 = arith.divf %66, %54 : f64
          affine.store %67, %arg5[%arg7, %51] : memref<?x20xf64>
        }
        affine.for %arg8 = 17 to 19 {
          %1 = affine.load %arg4[%arg7, %arg8 - 1] : memref<?x20xf64>
          %2 = arith.mulf %1, %cst_2 : f64
          %3 = arith.addf %2, %cst_4 : f64
          %4 = arith.divf %cst, %3 : f64
          affine.store %4, %arg4[%arg7, %arg8] : memref<?x20xf64>
          %5 = affine.load %arg3[%arg7 - 1, %arg8] : memref<?x20xf64>
          %6 = arith.mulf %5, %cst_6 : f64
          %7 = affine.load %arg3[%arg7, %arg8] : memref<?x20xf64>
          %8 = arith.mulf %7, %cst_1 : f64
          %9 = arith.addf %6, %8 : f64
          %10 = affine.load %arg3[%arg7 + 1, %arg8] : memref<?x20xf64>
          %11 = arith.mulf %10, %cst_3 : f64
          %12 = arith.subf %9, %11 : f64
          %13 = affine.load %arg5[%arg7, %arg8 - 1] : memref<?x20xf64>
          %14 = arith.mulf %13, %cst_2 : f64
          %15 = arith.subf %12, %14 : f64
          %16 = arith.divf %15, %3 : f64
          affine.store %16, %arg5[%arg7, %arg8] : memref<?x20xf64>
        }
        affine.store %cst_8, %arg2[%arg7, 19] : memref<?x20xf64>
        affine.for %arg8 = 1 to 17 step 4 {
          %1 = affine.load %arg4[%arg7, -%arg8 + 19] : memref<?x20xf64>
          %2 = affine.load %arg2[%arg7, -%arg8 + 20] : memref<?x20xf64>
          %3 = arith.mulf %1, %2 : f64
          %4 = affine.load %arg5[%arg7, -%arg8 + 19] : memref<?x20xf64>
          %5 = arith.addf %3, %4 : f64
          affine.store %5, %arg2[%arg7, -%arg8 + 19] : memref<?x20xf64>
          %6 = affine.apply #map(%arg8)
          %7 = affine.load %arg4[%arg7, -%6 + 19] : memref<?x20xf64>
          %8 = affine.load %arg2[%arg7, -%6 + 20] : memref<?x20xf64>
          %9 = arith.mulf %7, %8 : f64
          %10 = affine.load %arg5[%arg7, -%6 + 19] : memref<?x20xf64>
          %11 = arith.addf %9, %10 : f64
          affine.store %11, %arg2[%arg7, -%6 + 19] : memref<?x20xf64>
          %12 = affine.apply #map1(%arg8)
          %13 = affine.load %arg4[%arg7, -%12 + 19] : memref<?x20xf64>
          %14 = affine.load %arg2[%arg7, -%12 + 20] : memref<?x20xf64>
          %15 = arith.mulf %13, %14 : f64
          %16 = affine.load %arg5[%arg7, -%12 + 19] : memref<?x20xf64>
          %17 = arith.addf %15, %16 : f64
          affine.store %17, %arg2[%arg7, -%12 + 19] : memref<?x20xf64>
          %18 = affine.apply #map2(%arg8)
          %19 = affine.load %arg4[%arg7, -%18 + 19] : memref<?x20xf64>
          %20 = affine.load %arg2[%arg7, -%18 + 20] : memref<?x20xf64>
          %21 = arith.mulf %19, %20 : f64
          %22 = affine.load %arg5[%arg7, -%18 + 19] : memref<?x20xf64>
          %23 = arith.addf %21, %22 : f64
          affine.store %23, %arg2[%arg7, -%18 + 19] : memref<?x20xf64>
        }
        affine.for %arg8 = 17 to 19 {
          %1 = affine.load %arg4[%arg7, -%arg8 + 19] : memref<?x20xf64>
          %2 = affine.load %arg2[%arg7, -%arg8 + 20] : memref<?x20xf64>
          %3 = arith.mulf %1, %2 : f64
          %4 = affine.load %arg5[%arg7, -%arg8 + 19] : memref<?x20xf64>
          %5 = arith.addf %3, %4 : f64
          affine.store %5, %arg2[%arg7, -%arg8 + 19] : memref<?x20xf64>
        }
      }
    }
    return
  }
}

