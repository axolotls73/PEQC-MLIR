#map = affine_map<(d0) -> (d0 + 1)>
module {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
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
    }
    affine.for %arg7 = 0 to 32 {
      affine.for %arg8 = 0 to 28 {
        %2 = affine.load %arg5[%arg8] : memref<?xf64>
        %3 = affine.load %arg3[%arg7, %arg8] : memref<?x28xf64>
        %4 = arith.addf %2, %3 : f64
        affine.store %4, %arg5[%arg8] : memref<?xf64>
      }
    }
    affine.for %arg7 = 0 to 28 {
      %2 = affine.load %arg5[%arg7] : memref<?xf64>
      %3 = arith.divf %2, %arg2 : f64
      affine.store %3, %arg5[%arg7] : memref<?xf64>
    }
    affine.for %arg7 = 0 to 32 {
      affine.for %arg8 = 0 to 28 {
        %2 = affine.load %arg6[%arg8] : memref<?xf64>
        %3 = affine.load %arg3[%arg7, %arg8] : memref<?x28xf64>
        %4 = affine.load %arg5[%arg8] : memref<?xf64>
        %5 = arith.subf %3, %4 : f64
        %6 = arith.mulf %5, %5 : f64
        %7 = arith.addf %2, %6 : f64
        affine.store %7, %arg6[%arg8] : memref<?xf64>
        %8 = affine.load %arg3[%arg7, %arg8] : memref<?x28xf64>
        %9 = affine.load %arg5[%arg8] : memref<?xf64>
        %10 = arith.subf %8, %9 : f64
        affine.store %10, %arg3[%arg7, %arg8] : memref<?x28xf64>
      }
    }
    affine.for %arg7 = 0 to 28 {
      %2 = affine.load %arg6[%arg7] : memref<?xf64>
      %3 = arith.divf %2, %arg2 : f64
      %4 = math.sqrt %3 : f64
      %5 = arith.cmpf ole, %4, %cst : f64
      %6 = arith.select %5, %cst_1, %4 : f64
      affine.store %6, %arg6[%arg7] : memref<?xf64>
    }
    %1 = affine.load %alloca[0] : memref<1xf64>
    affine.for %arg7 = 0 to 32 {
      affine.for %arg8 = 0 to 28 {
        %2 = affine.load %arg3[%arg7, %arg8] : memref<?x28xf64>
        %3 = affine.load %arg6[%arg8] : memref<?xf64>
        %4 = arith.mulf %1, %3 : f64
        %5 = arith.divf %2, %4 : f64
        affine.store %5, %arg3[%arg7, %arg8] : memref<?x28xf64>
      }
    }
    affine.for %arg7 = 0 to 27 {
      affine.for %arg8 = 0 to 32 {
        %2 = affine.load %arg3[%arg8, %arg7] : memref<?x28xf64>
        affine.for %arg9 = #map(%arg7) to 28 {
          %3 = affine.load %arg4[%arg7, %arg9] : memref<?x28xf64>
          %4 = affine.load %arg3[%arg8, %arg9] : memref<?x28xf64>
          %5 = arith.mulf %2, %4 : f64
          %6 = arith.addf %3, %5 : f64
          affine.store %6, %arg4[%arg7, %arg9] : memref<?x28xf64>
        }
      }
    }
    affine.for %arg7 = 0 to 27 {
      affine.for %arg8 = #map(%arg7) to 28 {
        %2 = affine.load %arg4[%arg7, %arg8] : memref<?x28xf64>
        affine.store %2, %arg4[%arg8, %arg7] : memref<?x28xf64>
      }
    }
    return
  }
}

