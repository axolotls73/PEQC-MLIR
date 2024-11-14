#map = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0, d1) -> (d0 + d1)>
#map2 = affine_map<(d0) -> ((-d0 + 27) floordiv 4)>
#map3 = affine_map<(d0, d1) -> (d0 + d1 * 4 + 1)>
#map4 = affine_map<(d0) -> (d0 + 1)>
#map5 = affine_map<(d0) -> (d0 + 2)>
#map6 = affine_map<(d0) -> (d0 + 3)>
#map7 = affine_map<(d0) -> (-d0 - ((-d0 + 27) floordiv 4) * 4 + 27)>
#map8 = affine_map<(d0, d1) -> (d0 + d1 + ((-d0 + 27) floordiv 4) * 4 + 1)>
#map9 = affine_map<(d0) -> (d0 * 128)>
#map10 = affine_map<(d0, d1) -> (d0 + d1 * 4)>
#map11 = affine_map<(d0) -> (d0 * 32 + 24)>
module {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %cst = arith.constant 1.000000e-01 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %cst_1 = arith.constant 1.000000e+00 : f64
    %alloca = memref.alloca() {scop.scratchpad} : memref<1xf64>
    affine.store %cst_1, %arg4[27, 27] : memref<?x28xf64>
    affine.for %arg7 = 0 to 1 {
      %5 = affine.apply #map(%arg7)
      affine.for %arg8 = 0 to 27 {
        %6 = affine.apply #map1(%5, %arg8)
        affine.for %arg9 = 0 to #map2(%6) {
          %7 = affine.apply #map3(%6, %arg9)
          affine.store %cst_0, %arg4[%6, %7] : memref<?x28xf64>
          %8 = affine.apply #map4(%7)
          affine.store %cst_0, %arg4[%6, %8] : memref<?x28xf64>
          %9 = affine.apply #map5(%7)
          affine.store %cst_0, %arg4[%6, %9] : memref<?x28xf64>
          %10 = affine.apply #map6(%7)
          affine.store %cst_0, %arg4[%6, %10] : memref<?x28xf64>
        }
        affine.for %arg9 = 0 to #map7(%6) {
          %7 = affine.apply #map8(%6, %arg9)
          affine.store %cst_0, %arg4[%6, %7] : memref<?x28xf64>
        }
      }
    }
    affine.for %arg7 = 0 to 1 {
      %5 = affine.apply #map9(%arg7)
      affine.for %arg8 = 0 to 6 {
        %6 = affine.apply #map10(%5, %arg8)
        affine.store %cst_1, %arg4[%6, %6] : memref<?x28xf64>
        %7 = affine.apply #map4(%6)
        affine.store %cst_1, %arg4[%7, %7] : memref<?x28xf64>
        %8 = affine.apply #map5(%6)
        affine.store %cst_1, %arg4[%8, %8] : memref<?x28xf64>
        %9 = affine.apply #map6(%6)
        affine.store %cst_1, %arg4[%9, %9] : memref<?x28xf64>
      }
    }
    affine.for %arg7 = 0 to 1 {
      %5 = affine.apply #map11(%arg7)
      affine.for %arg8 = 0 to 3 {
        %6 = affine.apply #map1(%5, %arg8)
        affine.store %cst_1, %arg4[%6, %6] : memref<?x28xf64>
      }
    }
    %0 = math.sqrt %arg2 : f64
    affine.store %0, %alloca[0] : memref<1xf64>
    affine.for %arg7 = 0 to 1 {
      %5 = affine.apply #map9(%arg7)
      affine.for %arg8 = 0 to 7 {
        %6 = affine.apply #map10(%5, %arg8)
        affine.store %cst_0, %arg6[%6] : memref<?xf64>
        affine.store %cst_0, %arg5[%6] : memref<?xf64>
        %7 = affine.apply #map4(%6)
        affine.store %cst_0, %arg6[%7] : memref<?xf64>
        affine.store %cst_0, %arg5[%7] : memref<?xf64>
        %8 = affine.apply #map5(%6)
        affine.store %cst_0, %arg6[%8] : memref<?xf64>
        affine.store %cst_0, %arg5[%8] : memref<?xf64>
        %9 = affine.apply #map6(%6)
        affine.store %cst_0, %arg6[%9] : memref<?xf64>
        affine.store %cst_0, %arg5[%9] : memref<?xf64>
      }
    }
    affine.for %arg7 = 0 to 1 {
      %5 = affine.apply #map(%arg7)
      affine.for %arg8 = 0 to 1 {
        %6 = affine.apply #map9(%arg8)
        affine.for %arg9 = 0 to 32 {
          %7 = affine.apply #map1(%5, %arg9)
          affine.for %arg10 = 0 to 7 {
            %8 = affine.apply #map10(%6, %arg10)
            %9 = affine.load %arg5[%8] : memref<?xf64>
            %10 = affine.load %arg3[%7, %8] : memref<?x28xf64>
            %11 = arith.addf %9, %10 : f64
            affine.store %11, %arg5[%8] : memref<?xf64>
            %12 = affine.apply #map4(%8)
            %13 = affine.load %arg5[%12] : memref<?xf64>
            %14 = affine.load %arg3[%7, %12] : memref<?x28xf64>
            %15 = arith.addf %13, %14 : f64
            affine.store %15, %arg5[%12] : memref<?xf64>
            %16 = affine.apply #map5(%8)
            %17 = affine.load %arg5[%16] : memref<?xf64>
            %18 = affine.load %arg3[%7, %16] : memref<?x28xf64>
            %19 = arith.addf %17, %18 : f64
            affine.store %19, %arg5[%16] : memref<?xf64>
            %20 = affine.apply #map6(%8)
            %21 = affine.load %arg5[%20] : memref<?xf64>
            %22 = affine.load %arg3[%7, %20] : memref<?x28xf64>
            %23 = arith.addf %21, %22 : f64
            affine.store %23, %arg5[%20] : memref<?xf64>
          }
        }
      }
    }
    affine.for %arg7 = 0 to 1 {
      %5 = affine.apply #map9(%arg7)
      affine.for %arg8 = 0 to 7 {
        %6 = affine.apply #map10(%5, %arg8)
        %7 = affine.load %arg5[%6] : memref<?xf64>
        %8 = arith.divf %7, %arg2 : f64
        affine.store %8, %arg5[%6] : memref<?xf64>
        %9 = affine.apply #map4(%6)
        %10 = affine.load %arg5[%9] : memref<?xf64>
        %11 = arith.divf %10, %arg2 : f64
        affine.store %11, %arg5[%9] : memref<?xf64>
        %12 = affine.apply #map5(%6)
        %13 = affine.load %arg5[%12] : memref<?xf64>
        %14 = arith.divf %13, %arg2 : f64
        affine.store %14, %arg5[%12] : memref<?xf64>
        %15 = affine.apply #map6(%6)
        %16 = affine.load %arg5[%15] : memref<?xf64>
        %17 = arith.divf %16, %arg2 : f64
        affine.store %17, %arg5[%15] : memref<?xf64>
      }
    }
    affine.for %arg7 = 0 to 1 {
      %5 = affine.apply #map(%arg7)
      affine.for %arg8 = 0 to 1 {
        %6 = affine.apply #map9(%arg8)
        affine.for %arg9 = 0 to 32 {
          %7 = affine.apply #map1(%5, %arg9)
          affine.for %arg10 = 0 to 7 {
            %8 = affine.apply #map10(%6, %arg10)
            %9 = affine.load %arg6[%8] : memref<?xf64>
            %10 = affine.load %arg3[%7, %8] : memref<?x28xf64>
            %11 = affine.load %arg5[%8] : memref<?xf64>
            %12 = arith.subf %10, %11 : f64
            %13 = arith.mulf %12, %12 : f64
            %14 = arith.addf %9, %13 : f64
            affine.store %14, %arg6[%8] : memref<?xf64>
            %15 = affine.load %arg3[%7, %8] : memref<?x28xf64>
            %16 = affine.load %arg5[%8] : memref<?xf64>
            %17 = arith.subf %15, %16 : f64
            affine.store %17, %arg3[%7, %8] : memref<?x28xf64>
            %18 = affine.apply #map4(%8)
            %19 = affine.load %arg6[%18] : memref<?xf64>
            %20 = affine.load %arg3[%7, %18] : memref<?x28xf64>
            %21 = affine.load %arg5[%18] : memref<?xf64>
            %22 = arith.subf %20, %21 : f64
            %23 = arith.mulf %22, %22 : f64
            %24 = arith.addf %19, %23 : f64
            affine.store %24, %arg6[%18] : memref<?xf64>
            %25 = affine.load %arg3[%7, %18] : memref<?x28xf64>
            %26 = affine.load %arg5[%18] : memref<?xf64>
            %27 = arith.subf %25, %26 : f64
            affine.store %27, %arg3[%7, %18] : memref<?x28xf64>
            %28 = affine.apply #map5(%8)
            %29 = affine.load %arg6[%28] : memref<?xf64>
            %30 = affine.load %arg3[%7, %28] : memref<?x28xf64>
            %31 = affine.load %arg5[%28] : memref<?xf64>
            %32 = arith.subf %30, %31 : f64
            %33 = arith.mulf %32, %32 : f64
            %34 = arith.addf %29, %33 : f64
            affine.store %34, %arg6[%28] : memref<?xf64>
            %35 = affine.load %arg3[%7, %28] : memref<?x28xf64>
            %36 = affine.load %arg5[%28] : memref<?xf64>
            %37 = arith.subf %35, %36 : f64
            affine.store %37, %arg3[%7, %28] : memref<?x28xf64>
            %38 = affine.apply #map6(%8)
            %39 = affine.load %arg6[%38] : memref<?xf64>
            %40 = affine.load %arg3[%7, %38] : memref<?x28xf64>
            %41 = affine.load %arg5[%38] : memref<?xf64>
            %42 = arith.subf %40, %41 : f64
            %43 = arith.mulf %42, %42 : f64
            %44 = arith.addf %39, %43 : f64
            affine.store %44, %arg6[%38] : memref<?xf64>
            %45 = affine.load %arg3[%7, %38] : memref<?x28xf64>
            %46 = affine.load %arg5[%38] : memref<?xf64>
            %47 = arith.subf %45, %46 : f64
            affine.store %47, %arg3[%7, %38] : memref<?x28xf64>
          }
        }
      }
    }
    affine.for %arg7 = 0 to 1 {
      %5 = affine.apply #map9(%arg7)
      affine.for %arg8 = 0 to 7 {
        %6 = affine.apply #map10(%5, %arg8)
        %7 = affine.load %arg6[%6] : memref<?xf64>
        %8 = arith.divf %7, %arg2 : f64
        %9 = math.sqrt %8 : f64
        %10 = arith.cmpf ole, %9, %cst : f64
        %11 = arith.select %10, %cst_1, %9 : f64
        affine.store %11, %arg6[%6] : memref<?xf64>
        %12 = affine.apply #map4(%6)
        %13 = affine.load %arg6[%12] : memref<?xf64>
        %14 = arith.divf %13, %arg2 : f64
        %15 = math.sqrt %14 : f64
        %16 = arith.cmpf ole, %15, %cst : f64
        %17 = arith.select %16, %cst_1, %15 : f64
        affine.store %17, %arg6[%12] : memref<?xf64>
        %18 = affine.apply #map5(%6)
        %19 = affine.load %arg6[%18] : memref<?xf64>
        %20 = arith.divf %19, %arg2 : f64
        %21 = math.sqrt %20 : f64
        %22 = arith.cmpf ole, %21, %cst : f64
        %23 = arith.select %22, %cst_1, %21 : f64
        affine.store %23, %arg6[%18] : memref<?xf64>
        %24 = affine.apply #map6(%6)
        %25 = affine.load %arg6[%24] : memref<?xf64>
        %26 = arith.divf %25, %arg2 : f64
        %27 = math.sqrt %26 : f64
        %28 = arith.cmpf ole, %27, %cst : f64
        %29 = arith.select %28, %cst_1, %27 : f64
        affine.store %29, %arg6[%24] : memref<?xf64>
      }
    }
    %1 = affine.load %alloca[0] : memref<1xf64>
    %2 = affine.load %alloca[0] : memref<1xf64>
    %3 = affine.load %alloca[0] : memref<1xf64>
    %4 = affine.load %alloca[0] : memref<1xf64>
    affine.for %arg7 = 0 to 1 {
      %5 = affine.apply #map(%arg7)
      affine.for %arg8 = 0 to 1 {
        %6 = affine.apply #map9(%arg8)
        affine.for %arg9 = 0 to 32 {
          %7 = affine.apply #map1(%5, %arg9)
          affine.for %arg10 = 0 to 7 {
            %8 = affine.apply #map10(%6, %arg10)
            %9 = affine.load %arg3[%7, %8] : memref<?x28xf64>
            %10 = affine.load %arg6[%8] : memref<?xf64>
            %11 = arith.mulf %1, %10 : f64
            %12 = arith.divf %9, %11 : f64
            affine.store %12, %arg3[%7, %8] : memref<?x28xf64>
            %13 = affine.apply #map4(%8)
            %14 = affine.load %arg3[%7, %13] : memref<?x28xf64>
            %15 = affine.load %arg6[%13] : memref<?xf64>
            %16 = arith.mulf %2, %15 : f64
            %17 = arith.divf %14, %16 : f64
            affine.store %17, %arg3[%7, %13] : memref<?x28xf64>
            %18 = affine.apply #map5(%8)
            %19 = affine.load %arg3[%7, %18] : memref<?x28xf64>
            %20 = affine.load %arg6[%18] : memref<?xf64>
            %21 = arith.mulf %3, %20 : f64
            %22 = arith.divf %19, %21 : f64
            affine.store %22, %arg3[%7, %18] : memref<?x28xf64>
            %23 = affine.apply #map6(%8)
            %24 = affine.load %arg3[%7, %23] : memref<?x28xf64>
            %25 = affine.load %arg6[%23] : memref<?xf64>
            %26 = arith.mulf %4, %25 : f64
            %27 = arith.divf %24, %26 : f64
            affine.store %27, %arg3[%7, %23] : memref<?x28xf64>
          }
        }
      }
    }
    affine.for %arg7 = 0 to 1 {
      %5 = affine.apply #map(%arg7)
      affine.for %arg8 = 0 to 1 {
        %6 = affine.apply #map(%arg8)
        affine.for %arg9 = 0 to 27 {
          %7 = affine.apply #map1(%5, %arg9)
          affine.for %arg10 = 0 to 32 {
            %8 = affine.apply #map1(%6, %arg10)
            %9 = affine.load %arg3[%8, %7] : memref<?x28xf64>
            %10 = affine.load %arg3[%8, %7] : memref<?x28xf64>
            %11 = affine.load %arg3[%8, %7] : memref<?x28xf64>
            %12 = affine.load %arg3[%8, %7] : memref<?x28xf64>
            affine.for %arg11 = 0 to #map2(%7) {
              %14 = affine.apply #map3(%7, %arg11)
              %15 = affine.load %arg4[%7, %14] : memref<?x28xf64>
              %16 = affine.load %arg3[%8, %14] : memref<?x28xf64>
              %17 = arith.mulf %9, %16 : f64
              %18 = arith.addf %15, %17 : f64
              affine.store %18, %arg4[%7, %14] : memref<?x28xf64>
              %19 = affine.apply #map4(%14)
              %20 = affine.load %arg4[%7, %19] : memref<?x28xf64>
              %21 = affine.load %arg3[%8, %19] : memref<?x28xf64>
              %22 = arith.mulf %10, %21 : f64
              %23 = arith.addf %20, %22 : f64
              affine.store %23, %arg4[%7, %19] : memref<?x28xf64>
              %24 = affine.apply #map5(%14)
              %25 = affine.load %arg4[%7, %24] : memref<?x28xf64>
              %26 = affine.load %arg3[%8, %24] : memref<?x28xf64>
              %27 = arith.mulf %11, %26 : f64
              %28 = arith.addf %25, %27 : f64
              affine.store %28, %arg4[%7, %24] : memref<?x28xf64>
              %29 = affine.apply #map6(%14)
              %30 = affine.load %arg4[%7, %29] : memref<?x28xf64>
              %31 = affine.load %arg3[%8, %29] : memref<?x28xf64>
              %32 = arith.mulf %12, %31 : f64
              %33 = arith.addf %30, %32 : f64
              affine.store %33, %arg4[%7, %29] : memref<?x28xf64>
            }
            %13 = affine.load %arg3[%8, %7] : memref<?x28xf64>
            affine.for %arg11 = 0 to #map7(%7) {
              %14 = affine.apply #map8(%7, %arg11)
              %15 = affine.load %arg4[%7, %14] : memref<?x28xf64>
              %16 = affine.load %arg3[%8, %14] : memref<?x28xf64>
              %17 = arith.mulf %13, %16 : f64
              %18 = arith.addf %15, %17 : f64
              affine.store %18, %arg4[%7, %14] : memref<?x28xf64>
            }
          }
        }
      }
    }
    affine.for %arg7 = 0 to 1 {
      %5 = affine.apply #map(%arg7)
      affine.for %arg8 = 0 to 27 {
        %6 = affine.apply #map1(%5, %arg8)
        affine.for %arg9 = 0 to #map2(%6) {
          %7 = affine.apply #map3(%6, %arg9)
          %8 = affine.load %arg4[%6, %7] : memref<?x28xf64>
          affine.store %8, %arg4[%7, %6] : memref<?x28xf64>
          %9 = affine.apply #map4(%7)
          %10 = affine.load %arg4[%6, %9] : memref<?x28xf64>
          affine.store %10, %arg4[%9, %6] : memref<?x28xf64>
          %11 = affine.apply #map5(%7)
          %12 = affine.load %arg4[%6, %11] : memref<?x28xf64>
          affine.store %12, %arg4[%11, %6] : memref<?x28xf64>
          %13 = affine.apply #map6(%7)
          %14 = affine.load %arg4[%6, %13] : memref<?x28xf64>
          affine.store %14, %arg4[%13, %6] : memref<?x28xf64>
        }
        affine.for %arg9 = 0 to #map7(%6) {
          %7 = affine.apply #map8(%6, %arg9)
          %8 = affine.load %arg4[%6, %7] : memref<?x28xf64>
          affine.store %8, %arg4[%7, %6] : memref<?x28xf64>
        }
      }
    }
    return
  }
}

