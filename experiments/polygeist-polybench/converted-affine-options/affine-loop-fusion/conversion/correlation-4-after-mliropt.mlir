#map = affine_map<(d0) -> (d0 + 1)>
module {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %alloc = memref.alloc() : memref<1xf64>
    %cst = arith.constant 1.000000e-01 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %cst_1 = arith.constant 1.000000e+00 : f64
    %alloca = memref.alloca() {scop.scratchpad} : memref<1xf64>
    affine.store %cst_1, %arg4[27, 27] : memref<?x28xf64>
    affine.for %arg7 = 0 to 27 {
      affine.for %arg8 = #map(%arg7) to 28 {
        affine.store %cst_0, %arg4[%arg7, %arg8] : memref<?x28xf64>
      }
    }
    affine.for %arg7 = 0 to 27 {
      affine.store %cst_1, %arg4[%arg7, %arg7] : memref<?x28xf64>
    }
    %0 = math.sqrt %arg2 : f64
    affine.store %0, %alloca[0] : memref<1xf64>
    affine.for %arg7 = 0 to 28 {
      affine.store %cst_0, %arg6[%arg7] : memref<?xf64>
      affine.store %cst_0, %arg5[%arg7] : memref<?xf64>
      affine.for %arg8 = 0 to 32 {
        %6 = affine.load %arg5[%arg7] : memref<?xf64>
        %7 = affine.load %arg3[%arg8, %arg7] : memref<?x28xf64>
        %8 = arith.addf %6, %7 : f64
        affine.store %8, %arg5[%arg7] : memref<?xf64>
      }
      affine.for %arg8 = 0 to 32 {
        %6 = affine.load %arg5[%arg7] : memref<?xf64>
        %7 = affine.load %arg3[%arg8, %arg7] : memref<?x28xf64>
        %8 = arith.addf %6, %7 : f64
        affine.store %8, %arg5[%arg7] : memref<?xf64>
      }
      affine.for %arg8 = 0 to 32 {
        %6 = affine.load %arg5[%arg7] : memref<?xf64>
        %7 = arith.divf %6, %arg2 : f64
        affine.store %7, %arg5[%arg7] : memref<?xf64>
        %8 = affine.load %arg6[%arg7] : memref<?xf64>
        %9 = affine.load %arg3[%arg8, %arg7] : memref<?x28xf64>
        %10 = affine.load %arg5[%arg7] : memref<?xf64>
        %11 = arith.subf %9, %10 : f64
        %12 = arith.mulf %11, %11 : f64
        %13 = arith.addf %8, %12 : f64
        affine.store %13, %arg6[%arg7] : memref<?xf64>
        %14 = affine.load %arg3[%arg8, %arg7] : memref<?x28xf64>
        %15 = affine.load %arg5[%arg7] : memref<?xf64>
        %16 = arith.subf %14, %15 : f64
        affine.store %16, %arg3[%arg8, %arg7] : memref<?x28xf64>
      }
      %1 = affine.load %arg6[%arg7] : memref<?xf64>
      %2 = arith.divf %1, %arg2 : f64
      %3 = math.sqrt %2 : f64
      %4 = arith.cmpf ole, %3, %cst : f64
      %5 = arith.select %4, %cst_1, %3 : f64
      affine.store %5, %arg6[%arg7] : memref<?xf64>
    }
    affine.for %arg7 = 0 to 32 {
      affine.for %arg8 = 0 to 28 {
        affine.store %cst_0, %alloc[0] : memref<1xf64>
        affine.store %cst_0, %arg5[%arg8] : memref<?xf64>
        affine.for %arg9 = 0 to 32 {
          %11 = affine.load %arg5[%arg8] : memref<?xf64>
          %12 = affine.load %arg3[%arg9, %arg8] : memref<?x28xf64>
          %13 = arith.addf %11, %12 : f64
          affine.store %13, %arg5[%arg8] : memref<?xf64>
        }
        affine.for %arg9 = 0 to 32 {
          %11 = affine.load %arg5[%arg8] : memref<?xf64>
          %12 = affine.load %arg3[%arg9, %arg8] : memref<?x28xf64>
          %13 = arith.addf %11, %12 : f64
          affine.store %13, %arg5[%arg8] : memref<?xf64>
        }
        affine.for %arg9 = 0 to 32 {
          %11 = affine.load %arg5[%arg8] : memref<?xf64>
          %12 = arith.divf %11, %arg2 : f64
          affine.store %12, %arg5[%arg8] : memref<?xf64>
          %13 = affine.load %alloc[0] : memref<1xf64>
          %14 = affine.load %arg3[%arg9, %arg8] : memref<?x28xf64>
          %15 = affine.load %arg5[%arg8] : memref<?xf64>
          %16 = arith.subf %14, %15 : f64
          %17 = arith.mulf %16, %16 : f64
          %18 = arith.addf %13, %17 : f64
          affine.store %18, %alloc[0] : memref<1xf64>
          %19 = affine.load %arg3[%arg9, %arg8] : memref<?x28xf64>
          %20 = affine.load %arg5[%arg8] : memref<?xf64>
          %21 = arith.subf %19, %20 : f64
          affine.store %21, %arg3[%arg9, %arg8] : memref<?x28xf64>
        }
        %1 = affine.load %alloc[0] : memref<1xf64>
        %2 = arith.divf %1, %arg2 : f64
        %3 = math.sqrt %2 : f64
        %4 = arith.cmpf ole, %3, %cst : f64
        %5 = arith.select %4, %cst_1, %3 : f64
        affine.store %5, %alloc[0] : memref<1xf64>
        %6 = affine.load %arg3[%arg7, %arg8] : memref<?x28xf64>
        %7 = affine.load %alloca[0] : memref<1xf64>
        %8 = affine.load %alloc[0] : memref<1xf64>
        %9 = arith.mulf %7, %8 : f64
        %10 = arith.divf %6, %9 : f64
        affine.store %10, %arg3[%arg7, %arg8] : memref<?x28xf64>
      }
    }
    affine.for %arg7 = 0 to 27 {
      affine.for %arg8 = #map(%arg7) to 28 {
        affine.for %arg9 = 0 to 32 {
          %1 = affine.load %arg4[%arg7, %arg8] : memref<?x28xf64>
          %2 = affine.load %arg3[%arg9, %arg7] : memref<?x28xf64>
          %3 = affine.load %arg3[%arg9, %arg8] : memref<?x28xf64>
          %4 = arith.mulf %2, %3 : f64
          %5 = arith.addf %1, %4 : f64
          affine.store %5, %arg4[%arg7, %arg8] : memref<?x28xf64>
        }
      }
    }
    affine.for %arg7 = 0 to 27 {
      affine.for %arg8 = #map(%arg7) to 28 {
        %1 = affine.load %arg4[%arg7, %arg8] : memref<?x28xf64>
        affine.store %1, %arg4[%arg8, %arg7] : memref<?x28xf64>
      }
    }
    return
  }
}

