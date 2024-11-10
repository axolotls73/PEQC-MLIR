#map = affine_map<(d0, d1) -> (d0 + d1)>
#map1 = affine_map<(d0) -> ((-d0 + 27) floordiv 4)>
#map2 = affine_map<(d0, d1) -> (d0 + d1 * 4 + 1)>
#map3 = affine_map<(d0) -> (d0 + 1)>
#map4 = affine_map<(d0) -> (d0 + 2)>
#map5 = affine_map<(d0) -> (d0 + 3)>
#map6 = affine_map<(d0) -> (-d0 - ((-d0 + 27) floordiv 4) * 4 + 27)>
#map7 = affine_map<(d0, d1) -> (d0 + d1 + ((-d0 + 27) floordiv 4) * 4 + 1)>
#map8 = affine_map<(d0) -> (d0 * 4)>
#map9 = affine_map<(d0, d1) -> (d0 + d1 * 4)>
#map10 = affine_map<(d0) -> (d0 + 24)>
module {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %cst = arith.constant 1.000000e-01 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %cst_1 = arith.constant 1.000000e+00 : f64
    %alloca = memref.alloca() {scop.scratchpad} : memref<1xf64>
    affine.store %cst_1, %arg4[27, 27] : memref<?x28xf64>
    affine.for %arg7 = 0 to 27 {
      affine.for %arg8 = 0 to 1 {
        %5 = affine.apply #map(%arg7, %arg8)
        affine.for %arg9 = 0 to #map1(%5) {
          %6 = affine.apply #map2(%5, %arg9)
          affine.store %cst_0, %arg4[%5, %6] : memref<?x28xf64>
          %7 = affine.apply #map3(%6)
          affine.store %cst_0, %arg4[%5, %7] : memref<?x28xf64>
          %8 = affine.apply #map4(%6)
          affine.store %cst_0, %arg4[%5, %8] : memref<?x28xf64>
          %9 = affine.apply #map5(%6)
          affine.store %cst_0, %arg4[%5, %9] : memref<?x28xf64>
        }
        affine.for %arg9 = 0 to #map6(%5) {
          %6 = affine.apply #map7(%5, %arg9)
          affine.store %cst_0, %arg4[%5, %6] : memref<?x28xf64>
        }
      }
    }
    affine.for %arg7 = 0 to 6 {
      %5 = affine.apply #map8(%arg7)
      affine.for %arg8 = 0 to 1 {
        %6 = affine.apply #map9(%5, %arg8)
        affine.store %cst_1, %arg4[%6, %6] : memref<?x28xf64>
        %7 = affine.apply #map3(%6)
        affine.store %cst_1, %arg4[%7, %7] : memref<?x28xf64>
        %8 = affine.apply #map4(%6)
        affine.store %cst_1, %arg4[%8, %8] : memref<?x28xf64>
        %9 = affine.apply #map5(%6)
        affine.store %cst_1, %arg4[%9, %9] : memref<?x28xf64>
      }
    }
    affine.for %arg7 = 0 to 3 {
      %5 = affine.apply #map10(%arg7)
      affine.for %arg8 = 0 to 1 {
        %6 = affine.apply #map(%5, %arg8)
        affine.store %cst_1, %arg4[%6, %6] : memref<?x28xf64>
      }
    }
    %0 = math.sqrt %arg2 : f64
    affine.store %0, %alloca[0] : memref<1xf64>
    affine.for %arg7 = 0 to 7 {
      %5 = affine.apply #map8(%arg7)
      affine.for %arg8 = 0 to 1 {
        %6 = affine.apply #map9(%5, %arg8)
        affine.store %cst_0, %arg6[%6] : memref<?xf64>
        affine.store %cst_0, %arg5[%6] : memref<?xf64>
        %7 = affine.apply #map3(%6)
        affine.store %cst_0, %arg6[%7] : memref<?xf64>
        affine.store %cst_0, %arg5[%7] : memref<?xf64>
        %8 = affine.apply #map4(%6)
        affine.store %cst_0, %arg6[%8] : memref<?xf64>
        affine.store %cst_0, %arg5[%8] : memref<?xf64>
        %9 = affine.apply #map5(%6)
        affine.store %cst_0, %arg6[%9] : memref<?xf64>
        affine.store %cst_0, %arg5[%9] : memref<?xf64>
      }
    }
    affine.for %arg7 = 0 to 32 {
      affine.for %arg8 = 0 to 7 {
        %5 = affine.apply #map8(%arg8)
        affine.for %arg9 = 0 to 1 {
          %6 = affine.apply #map(%arg7, %arg9)
          affine.for %arg10 = 0 to 1 {
            %7 = affine.apply #map9(%5, %arg10)
            %8 = affine.load %arg5[%7] : memref<?xf64>
            %9 = affine.load %arg3[%6, %7] : memref<?x28xf64>
            %10 = arith.addf %8, %9 : f64
            affine.store %10, %arg5[%7] : memref<?xf64>
            %11 = affine.apply #map3(%7)
            %12 = affine.load %arg5[%11] : memref<?xf64>
            %13 = affine.load %arg3[%6, %11] : memref<?x28xf64>
            %14 = arith.addf %12, %13 : f64
            affine.store %14, %arg5[%11] : memref<?xf64>
            %15 = affine.apply #map4(%7)
            %16 = affine.load %arg5[%15] : memref<?xf64>
            %17 = affine.load %arg3[%6, %15] : memref<?x28xf64>
            %18 = arith.addf %16, %17 : f64
            affine.store %18, %arg5[%15] : memref<?xf64>
            %19 = affine.apply #map5(%7)
            %20 = affine.load %arg5[%19] : memref<?xf64>
            %21 = affine.load %arg3[%6, %19] : memref<?x28xf64>
            %22 = arith.addf %20, %21 : f64
            affine.store %22, %arg5[%19] : memref<?xf64>
          }
        }
      }
    }
    affine.for %arg7 = 0 to 7 {
      %5 = affine.apply #map8(%arg7)
      affine.for %arg8 = 0 to 1 {
        %6 = affine.apply #map9(%5, %arg8)
        %7 = affine.load %arg5[%6] : memref<?xf64>
        %8 = arith.divf %7, %arg2 : f64
        affine.store %8, %arg5[%6] : memref<?xf64>
        %9 = affine.apply #map3(%6)
        %10 = affine.load %arg5[%9] : memref<?xf64>
        %11 = arith.divf %10, %arg2 : f64
        affine.store %11, %arg5[%9] : memref<?xf64>
        %12 = affine.apply #map4(%6)
        %13 = affine.load %arg5[%12] : memref<?xf64>
        %14 = arith.divf %13, %arg2 : f64
        affine.store %14, %arg5[%12] : memref<?xf64>
        %15 = affine.apply #map5(%6)
        %16 = affine.load %arg5[%15] : memref<?xf64>
        %17 = arith.divf %16, %arg2 : f64
        affine.store %17, %arg5[%15] : memref<?xf64>
      }
    }
    affine.for %arg7 = 0 to 32 {
      affine.for %arg8 = 0 to 7 {
        %5 = affine.apply #map8(%arg8)
        affine.for %arg9 = 0 to 1 {
          %6 = affine.apply #map(%arg7, %arg9)
          affine.for %arg10 = 0 to 1 {
            %7 = affine.apply #map9(%5, %arg10)
            %8 = affine.load %arg6[%7] : memref<?xf64>
            %9 = affine.load %arg3[%6, %7] : memref<?x28xf64>
            %10 = affine.load %arg5[%7] : memref<?xf64>
            %11 = arith.subf %9, %10 : f64
            %12 = arith.mulf %11, %11 : f64
            %13 = arith.addf %8, %12 : f64
            affine.store %13, %arg6[%7] : memref<?xf64>
            %14 = affine.load %arg3[%6, %7] : memref<?x28xf64>
            %15 = affine.load %arg5[%7] : memref<?xf64>
            %16 = arith.subf %14, %15 : f64
            affine.store %16, %arg3[%6, %7] : memref<?x28xf64>
            %17 = affine.apply #map3(%7)
            %18 = affine.load %arg6[%17] : memref<?xf64>
            %19 = affine.load %arg3[%6, %17] : memref<?x28xf64>
            %20 = affine.load %arg5[%17] : memref<?xf64>
            %21 = arith.subf %19, %20 : f64
            %22 = arith.mulf %21, %21 : f64
            %23 = arith.addf %18, %22 : f64
            affine.store %23, %arg6[%17] : memref<?xf64>
            %24 = affine.load %arg3[%6, %17] : memref<?x28xf64>
            %25 = affine.load %arg5[%17] : memref<?xf64>
            %26 = arith.subf %24, %25 : f64
            affine.store %26, %arg3[%6, %17] : memref<?x28xf64>
            %27 = affine.apply #map4(%7)
            %28 = affine.load %arg6[%27] : memref<?xf64>
            %29 = affine.load %arg3[%6, %27] : memref<?x28xf64>
            %30 = affine.load %arg5[%27] : memref<?xf64>
            %31 = arith.subf %29, %30 : f64
            %32 = arith.mulf %31, %31 : f64
            %33 = arith.addf %28, %32 : f64
            affine.store %33, %arg6[%27] : memref<?xf64>
            %34 = affine.load %arg3[%6, %27] : memref<?x28xf64>
            %35 = affine.load %arg5[%27] : memref<?xf64>
            %36 = arith.subf %34, %35 : f64
            affine.store %36, %arg3[%6, %27] : memref<?x28xf64>
            %37 = affine.apply #map5(%7)
            %38 = affine.load %arg6[%37] : memref<?xf64>
            %39 = affine.load %arg3[%6, %37] : memref<?x28xf64>
            %40 = affine.load %arg5[%37] : memref<?xf64>
            %41 = arith.subf %39, %40 : f64
            %42 = arith.mulf %41, %41 : f64
            %43 = arith.addf %38, %42 : f64
            affine.store %43, %arg6[%37] : memref<?xf64>
            %44 = affine.load %arg3[%6, %37] : memref<?x28xf64>
            %45 = affine.load %arg5[%37] : memref<?xf64>
            %46 = arith.subf %44, %45 : f64
            affine.store %46, %arg3[%6, %37] : memref<?x28xf64>
          }
        }
      }
    }
    affine.for %arg7 = 0 to 7 {
      %5 = affine.apply #map8(%arg7)
      affine.for %arg8 = 0 to 1 {
        %6 = affine.apply #map9(%5, %arg8)
        %7 = affine.load %arg6[%6] : memref<?xf64>
        %8 = arith.divf %7, %arg2 : f64
        %9 = math.sqrt %8 : f64
        %10 = arith.cmpf ole, %9, %cst : f64
        %11 = arith.select %10, %cst_1, %9 : f64
        affine.store %11, %arg6[%6] : memref<?xf64>
        %12 = affine.apply #map3(%6)
        %13 = affine.load %arg6[%12] : memref<?xf64>
        %14 = arith.divf %13, %arg2 : f64
        %15 = math.sqrt %14 : f64
        %16 = arith.cmpf ole, %15, %cst : f64
        %17 = arith.select %16, %cst_1, %15 : f64
        affine.store %17, %arg6[%12] : memref<?xf64>
        %18 = affine.apply #map4(%6)
        %19 = affine.load %arg6[%18] : memref<?xf64>
        %20 = arith.divf %19, %arg2 : f64
        %21 = math.sqrt %20 : f64
        %22 = arith.cmpf ole, %21, %cst : f64
        %23 = arith.select %22, %cst_1, %21 : f64
        affine.store %23, %arg6[%18] : memref<?xf64>
        %24 = affine.apply #map5(%6)
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
    affine.for %arg7 = 0 to 32 {
      affine.for %arg8 = 0 to 1 {
        %5 = affine.apply #map(%arg7, %arg8)
        affine.for %arg9 = 0 to 7 {
          %6 = affine.apply #map8(%arg9)
          affine.for %arg10 = 0 to 1 {
            %7 = affine.apply #map9(%6, %arg10)
            %8 = affine.load %arg3[%5, %7] : memref<?x28xf64>
            %9 = affine.load %arg6[%7] : memref<?xf64>
            %10 = arith.mulf %1, %9 : f64
            %11 = arith.divf %8, %10 : f64
            affine.store %11, %arg3[%5, %7] : memref<?x28xf64>
            %12 = affine.apply #map3(%7)
            %13 = affine.load %arg3[%5, %12] : memref<?x28xf64>
            %14 = affine.load %arg6[%12] : memref<?xf64>
            %15 = arith.mulf %2, %14 : f64
            %16 = arith.divf %13, %15 : f64
            affine.store %16, %arg3[%5, %12] : memref<?x28xf64>
            %17 = affine.apply #map4(%7)
            %18 = affine.load %arg3[%5, %17] : memref<?x28xf64>
            %19 = affine.load %arg6[%17] : memref<?xf64>
            %20 = arith.mulf %3, %19 : f64
            %21 = arith.divf %18, %20 : f64
            affine.store %21, %arg3[%5, %17] : memref<?x28xf64>
            %22 = affine.apply #map5(%7)
            %23 = affine.load %arg3[%5, %22] : memref<?x28xf64>
            %24 = affine.load %arg6[%22] : memref<?xf64>
            %25 = arith.mulf %4, %24 : f64
            %26 = arith.divf %23, %25 : f64
            affine.store %26, %arg3[%5, %22] : memref<?x28xf64>
          }
        }
      }
    }
    affine.for %arg7 = 0 to 27 {
      affine.for %arg8 = 0 to 1 {
        %5 = affine.apply #map(%arg7, %arg8)
        affine.for %arg9 = 0 to 32 {
          affine.for %arg10 = 0 to 1 {
            %6 = affine.apply #map(%arg9, %arg10)
            %7 = affine.load %arg3[%6, %5] : memref<?x28xf64>
            %8 = affine.load %arg3[%6, %5] : memref<?x28xf64>
            %9 = affine.load %arg3[%6, %5] : memref<?x28xf64>
            %10 = affine.load %arg3[%6, %5] : memref<?x28xf64>
            affine.for %arg11 = 0 to #map1(%5) {
              %12 = affine.apply #map2(%5, %arg11)
              %13 = affine.load %arg4[%5, %12] : memref<?x28xf64>
              %14 = affine.load %arg3[%6, %12] : memref<?x28xf64>
              %15 = arith.mulf %7, %14 : f64
              %16 = arith.addf %13, %15 : f64
              affine.store %16, %arg4[%5, %12] : memref<?x28xf64>
              %17 = affine.apply #map3(%12)
              %18 = affine.load %arg4[%5, %17] : memref<?x28xf64>
              %19 = affine.load %arg3[%6, %17] : memref<?x28xf64>
              %20 = arith.mulf %8, %19 : f64
              %21 = arith.addf %18, %20 : f64
              affine.store %21, %arg4[%5, %17] : memref<?x28xf64>
              %22 = affine.apply #map4(%12)
              %23 = affine.load %arg4[%5, %22] : memref<?x28xf64>
              %24 = affine.load %arg3[%6, %22] : memref<?x28xf64>
              %25 = arith.mulf %9, %24 : f64
              %26 = arith.addf %23, %25 : f64
              affine.store %26, %arg4[%5, %22] : memref<?x28xf64>
              %27 = affine.apply #map5(%12)
              %28 = affine.load %arg4[%5, %27] : memref<?x28xf64>
              %29 = affine.load %arg3[%6, %27] : memref<?x28xf64>
              %30 = arith.mulf %10, %29 : f64
              %31 = arith.addf %28, %30 : f64
              affine.store %31, %arg4[%5, %27] : memref<?x28xf64>
            }
            %11 = affine.load %arg3[%6, %5] : memref<?x28xf64>
            affine.for %arg11 = 0 to #map6(%5) {
              %12 = affine.apply #map7(%5, %arg11)
              %13 = affine.load %arg4[%5, %12] : memref<?x28xf64>
              %14 = affine.load %arg3[%6, %12] : memref<?x28xf64>
              %15 = arith.mulf %11, %14 : f64
              %16 = arith.addf %13, %15 : f64
              affine.store %16, %arg4[%5, %12] : memref<?x28xf64>
            }
          }
        }
      }
    }
    affine.for %arg7 = 0 to 27 {
      affine.for %arg8 = 0 to 1 {
        %5 = affine.apply #map(%arg7, %arg8)
        affine.for %arg9 = 0 to #map1(%5) {
          %6 = affine.apply #map2(%5, %arg9)
          %7 = affine.load %arg4[%5, %6] : memref<?x28xf64>
          affine.store %7, %arg4[%6, %5] : memref<?x28xf64>
          %8 = affine.apply #map3(%6)
          %9 = affine.load %arg4[%5, %8] : memref<?x28xf64>
          affine.store %9, %arg4[%8, %5] : memref<?x28xf64>
          %10 = affine.apply #map4(%6)
          %11 = affine.load %arg4[%5, %10] : memref<?x28xf64>
          affine.store %11, %arg4[%10, %5] : memref<?x28xf64>
          %12 = affine.apply #map5(%6)
          %13 = affine.load %arg4[%5, %12] : memref<?x28xf64>
          affine.store %13, %arg4[%12, %5] : memref<?x28xf64>
        }
        affine.for %arg9 = 0 to #map6(%5) {
          %6 = affine.apply #map7(%5, %arg9)
          %7 = affine.load %arg4[%5, %6] : memref<?x28xf64>
          affine.store %7, %arg4[%6, %5] : memref<?x28xf64>
        }
      }
    }
    return
  }
}

