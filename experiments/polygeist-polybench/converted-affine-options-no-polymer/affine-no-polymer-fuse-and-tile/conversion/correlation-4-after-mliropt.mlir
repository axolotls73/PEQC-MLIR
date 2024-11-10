#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> (d0 + 28)>
#map2 = affine_map<(d0) -> (d0 + 32)>
#map3 = affine_map<(d0) -> (d0 + 27)>
#map4 = affine_map<(d0) -> (-d0 + 27)>
#map5 = affine_map<(d0, d1, d2) -> (d0)>
#map6 = affine_map<(d0, d1, d2) -> (d1 + d2 + 1)>
module {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %alloc = memref.alloc() : memref<1x28xf64>
    %alloc_0 = memref.alloc() : memref<1xf64>
    %cst = arith.constant 1.000000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %cst_2 = arith.constant 1.000000e-01 : f64
    affine.for %arg7 = 0 to 28 step 32 {
      affine.for %arg8 = #map(%arg7) to #map1(%arg7) {
        affine.store %cst_1, %arg6[%arg8] : memref<?xf64>
        affine.for %arg9 = 0 to 32 {
          affine.store %cst_1, %arg5[%arg8] : memref<?xf64>
          affine.for %arg10 = 0 to 32 {
            %14 = affine.load %arg3[%arg10, %arg8] : memref<?x28xf64>
            %15 = affine.load %arg5[%arg8] : memref<?xf64>
            %16 = arith.addf %15, %14 : f64
            affine.store %16, %arg5[%arg8] : memref<?xf64>
          }
          %6 = affine.load %arg5[%arg8] : memref<?xf64>
          %7 = arith.divf %6, %arg2 : f64
          affine.store %7, %arg5[%arg8] : memref<?xf64>
          %8 = affine.load %arg3[%arg9, %arg8] : memref<?x28xf64>
          %9 = affine.load %arg5[%arg8] : memref<?xf64>
          %10 = arith.subf %8, %9 : f64
          %11 = arith.mulf %10, %10 : f64
          %12 = affine.load %arg6[%arg8] : memref<?xf64>
          %13 = arith.addf %12, %11 : f64
          affine.store %13, %arg6[%arg8] : memref<?xf64>
        }
        %1 = affine.load %arg6[%arg8] : memref<?xf64>
        %2 = arith.divf %1, %arg2 : f64
        %3 = math.sqrt %2 : f64
        %4 = arith.cmpf ole, %3, %cst_2 : f64
        %5 = arith.select %4, %cst, %3 : f64
        affine.store %5, %arg6[%arg8] : memref<?xf64>
      }
    }
    %0 = math.sqrt %arg2 : f64
    affine.for %arg7 = 0 to 32 step 32 {
      affine.for %arg8 = 0 to 28 step 32 {
        affine.for %arg9 = #map(%arg7) to #map2(%arg7) {
          affine.for %arg10 = #map(%arg8) to #map1(%arg8) {
            affine.store %cst_1, %alloc_0[0] : memref<1xf64>
            affine.for %arg11 = 0 to 32 {
              %12 = affine.load %arg3[%arg11, %arg10] : memref<?x28xf64>
              %13 = affine.load %arg5[%arg10] : memref<?xf64>
              %14 = arith.subf %12, %13 : f64
              %15 = arith.mulf %14, %14 : f64
              %16 = affine.load %alloc_0[0] : memref<1xf64>
              %17 = arith.addf %16, %15 : f64
              affine.store %17, %alloc_0[0] : memref<1xf64>
            }
            %1 = affine.load %alloc_0[0] : memref<1xf64>
            %2 = arith.divf %1, %arg2 : f64
            %3 = math.sqrt %2 : f64
            %4 = arith.cmpf ole, %3, %cst_2 : f64
            %5 = arith.select %4, %cst, %3 : f64
            affine.store %5, %alloc_0[0] : memref<1xf64>
            %6 = affine.load %arg5[%arg10] : memref<?xf64>
            %7 = affine.load %arg3[%arg9, %arg10] : memref<?x28xf64>
            %8 = arith.subf %7, %6 : f64
            affine.store %8, %arg3[%arg9, %arg10] : memref<?x28xf64>
            %9 = affine.load %alloc_0[0] : memref<1xf64>
            %10 = arith.mulf %0, %9 : f64
            %11 = arith.divf %8, %10 : f64
            affine.store %11, %arg3[%arg9, %arg10] : memref<?x28xf64>
          }
        }
      }
    }
    affine.for %arg7 = 0 to 27 step 32 {
      affine.for %arg8 = #map(%arg7) to #map3(%arg7) {
        affine.store %cst, %arg4[%arg8, %arg8] : memref<?x28xf64>
        affine.for %arg9 = 0 to #map4(%arg8) {
          affine.store %cst_1, %arg4[%arg8, %arg8 + %arg9 + 1] : memref<?x28xf64>
          affine.for %arg10 = 0 to 32 {
            affine.for %arg11 = 0 to 28 {
              affine.store %cst_1, %alloc_0[0] : memref<1xf64>
              affine.for %arg12 = 0 to 32 {
                %20 = affine.load %alloc[-%arg10 + %arg12, %arg11] : memref<1x28xf64>
                %21 = affine.load %arg5[%arg11] : memref<?xf64>
                %22 = arith.subf %20, %21 : f64
                %23 = arith.mulf %22, %22 : f64
                %24 = affine.load %alloc_0[0] : memref<1xf64>
                %25 = arith.addf %24, %23 : f64
                affine.store %25, %alloc_0[0] : memref<1xf64>
              }
              %9 = affine.load %alloc_0[0] : memref<1xf64>
              %10 = arith.divf %9, %arg2 : f64
              %11 = math.sqrt %10 : f64
              %12 = arith.cmpf ole, %11, %cst_2 : f64
              %13 = arith.select %12, %cst, %11 : f64
              affine.store %13, %alloc_0[0] : memref<1xf64>
              %14 = affine.load %arg5[%arg11] : memref<?xf64>
              %15 = affine.load %alloc[0, %arg11] : memref<1x28xf64>
              %16 = arith.subf %15, %14 : f64
              affine.store %16, %alloc[0, %arg11] : memref<1x28xf64>
              %17 = affine.load %alloc_0[0] : memref<1xf64>
              %18 = arith.mulf %0, %17 : f64
              %19 = arith.divf %16, %18 : f64
              affine.store %19, %alloc[0, %arg11] : memref<1x28xf64>
            }
            %2 = affine.load %alloc[0, %arg8] : memref<1x28xf64>
            %3 = affine.apply #map5(%arg10, %arg8, %arg9)
            %4 = affine.apply #map6(%arg10, %arg8, %arg9)
            %5 = affine.load %alloc[0, %arg8 + %arg9 + 1] : memref<1x28xf64>
            %6 = arith.mulf %2, %5 : f64
            %7 = affine.load %arg4[%arg8, %arg8 + %arg9 + 1] : memref<?x28xf64>
            %8 = arith.addf %7, %6 : f64
            affine.store %8, %arg4[%arg8, %arg8 + %arg9 + 1] : memref<?x28xf64>
          }
          %1 = affine.load %arg4[%arg8, %arg8 + %arg9 + 1] : memref<?x28xf64>
          affine.store %1, %arg4[%arg8 + %arg9 + 1, %arg8] : memref<?x28xf64>
        }
      }
    }
    affine.store %cst, %arg4[27, 27] : memref<?x28xf64>
    return
  }
}

