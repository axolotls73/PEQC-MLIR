#map = affine_map<(d0) -> (d0 + 1)>
module {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %alloc = memref.alloc() : memref<1x28xf64>
    %alloc_0 = memref.alloc() : memref<1xf64>
    %cst = arith.constant 1.000000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %cst_2 = arith.constant 1.000000e-01 : f64
    affine.for %arg7 = 0 to 28 {
      affine.store %cst_1, %arg6[%arg7] : memref<?xf64>
      affine.for %arg8 = 0 to 32 {
        affine.store %cst_1, %arg5[%arg7] : memref<?xf64>
        affine.for %arg9 = 0 to 32 {
          %14 = affine.load %arg3[%arg9, %arg7] : memref<?x28xf64>
          %15 = affine.load %arg5[%arg7] : memref<?xf64>
          %16 = arith.addf %15, %14 : f64
          affine.store %16, %arg5[%arg7] : memref<?xf64>
        }
        %6 = affine.load %arg5[%arg7] : memref<?xf64>
        %7 = arith.divf %6, %arg2 : f64
        affine.store %7, %arg5[%arg7] : memref<?xf64>
        %8 = affine.load %arg3[%arg8, %arg7] : memref<?x28xf64>
        %9 = affine.load %arg5[%arg7] : memref<?xf64>
        %10 = arith.subf %8, %9 : f64
        %11 = arith.mulf %10, %10 : f64
        %12 = affine.load %arg6[%arg7] : memref<?xf64>
        %13 = arith.addf %12, %11 : f64
        affine.store %13, %arg6[%arg7] : memref<?xf64>
      }
      %1 = affine.load %arg6[%arg7] : memref<?xf64>
      %2 = arith.divf %1, %arg2 : f64
      %3 = math.sqrt %2 : f64
      %4 = arith.cmpf ole, %3, %cst_2 : f64
      %5 = arith.select %4, %cst, %3 : f64
      affine.store %5, %arg6[%arg7] : memref<?xf64>
    }
    %0 = math.sqrt %arg2 : f64
    affine.for %arg7 = 0 to 32 {
      affine.for %arg8 = 0 to 28 {
        affine.store %cst_1, %alloc_0[0] : memref<1xf64>
        affine.for %arg9 = 0 to 32 {
          %12 = affine.load %arg3[%arg9, %arg8] : memref<?x28xf64>
          %13 = affine.load %arg5[%arg8] : memref<?xf64>
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
        %6 = affine.load %arg5[%arg8] : memref<?xf64>
        %7 = affine.load %arg3[%arg7, %arg8] : memref<?x28xf64>
        %8 = arith.subf %7, %6 : f64
        affine.store %8, %arg3[%arg7, %arg8] : memref<?x28xf64>
        %9 = affine.load %alloc_0[0] : memref<1xf64>
        %10 = arith.mulf %0, %9 : f64
        %11 = arith.divf %8, %10 : f64
        affine.store %11, %arg3[%arg7, %arg8] : memref<?x28xf64>
      }
    }
    affine.for %arg7 = 0 to 27 {
      affine.store %cst, %arg4[%arg7, %arg7] : memref<?x28xf64>
      affine.for %arg8 = #map(%arg7) to 28 {
        affine.store %cst_1, %arg4[%arg7, %arg8] : memref<?x28xf64>
        affine.for %arg9 = 0 to 32 {
          affine.for %arg10 = 0 to 28 {
            affine.store %cst_1, %alloc_0[0] : memref<1xf64>
            affine.for %arg11 = 0 to 32 {
              %18 = affine.load %alloc[-%arg9 + %arg11, %arg10] : memref<1x28xf64>
              %19 = affine.load %arg5[%arg10] : memref<?xf64>
              %20 = arith.subf %18, %19 : f64
              %21 = arith.mulf %20, %20 : f64
              %22 = affine.load %alloc_0[0] : memref<1xf64>
              %23 = arith.addf %22, %21 : f64
              affine.store %23, %alloc_0[0] : memref<1xf64>
            }
            %7 = affine.load %alloc_0[0] : memref<1xf64>
            %8 = arith.divf %7, %arg2 : f64
            %9 = math.sqrt %8 : f64
            %10 = arith.cmpf ole, %9, %cst_2 : f64
            %11 = arith.select %10, %cst, %9 : f64
            affine.store %11, %alloc_0[0] : memref<1xf64>
            %12 = affine.load %arg5[%arg10] : memref<?xf64>
            %13 = affine.load %alloc[0, %arg10] : memref<1x28xf64>
            %14 = arith.subf %13, %12 : f64
            affine.store %14, %alloc[0, %arg10] : memref<1x28xf64>
            %15 = affine.load %alloc_0[0] : memref<1xf64>
            %16 = arith.mulf %0, %15 : f64
            %17 = arith.divf %14, %16 : f64
            affine.store %17, %alloc[0, %arg10] : memref<1x28xf64>
          }
          %2 = affine.load %alloc[0, %arg7] : memref<1x28xf64>
          %3 = affine.load %alloc[0, %arg8] : memref<1x28xf64>
          %4 = arith.mulf %2, %3 : f64
          %5 = affine.load %arg4[%arg7, %arg8] : memref<?x28xf64>
          %6 = arith.addf %5, %4 : f64
          affine.store %6, %arg4[%arg7, %arg8] : memref<?x28xf64>
        }
        %1 = affine.load %arg4[%arg7, %arg8] : memref<?x28xf64>
        affine.store %1, %arg4[%arg8, %arg7] : memref<?x28xf64>
      }
    }
    affine.store %cst, %arg4[27, 27] : memref<?x28xf64>
    return
  }
}

