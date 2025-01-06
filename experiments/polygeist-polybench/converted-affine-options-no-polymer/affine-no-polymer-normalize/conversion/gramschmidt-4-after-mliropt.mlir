#map = affine_map<(d0) -> (-d0 + 29)>
#map1 = affine_map<(d0, d1) -> (d0 + d1 + 1)>
module {
  func.func @kernel_gramschmidt(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>) {
    %0 = llvm.mlir.undef : f64
    %cst = arith.constant 0.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
    affine.store %0, %alloca[] : memref<f64>
    affine.for %arg5 = 0 to 30 {
      affine.store %cst, %alloca[] : memref<f64>
      affine.for %arg6 = 0 to 20 {
        %3 = affine.load %arg2[%arg6, %arg5] : memref<?x30xf64>
        %4 = arith.mulf %3, %3 : f64
        %5 = affine.load %alloca[] : memref<f64>
        %6 = arith.addf %5, %4 : f64
        affine.store %6, %alloca[] : memref<f64>
      }
      %1 = affine.load %alloca[] : memref<f64>
      %2 = math.sqrt %1 : f64
      affine.store %2, %arg3[%arg5, %arg5] : memref<?x30xf64>
      affine.for %arg6 = 0 to 20 {
        %3 = affine.load %arg2[%arg6, %arg5] : memref<?x30xf64>
        %4 = affine.load %arg3[%arg5, %arg5] : memref<?x30xf64>
        %5 = arith.divf %3, %4 : f64
        affine.store %5, %arg4[%arg6, %arg5] : memref<?x30xf64>
      }
      affine.for %arg6 = 0 to #map(%arg5) {
        %3 = affine.apply #map1(%arg5, %arg6)
        affine.store %cst, %arg3[%arg5, %3] : memref<?x30xf64>
        affine.for %arg7 = 0 to 20 {
          %4 = affine.load %arg4[%arg7, %arg5] : memref<?x30xf64>
          %5 = affine.load %arg2[%arg7, %3] : memref<?x30xf64>
          %6 = arith.mulf %4, %5 : f64
          %7 = affine.load %arg3[%arg5, %3] : memref<?x30xf64>
          %8 = arith.addf %7, %6 : f64
          affine.store %8, %arg3[%arg5, %3] : memref<?x30xf64>
        }
        affine.for %arg7 = 0 to 20 {
          %4 = affine.load %arg2[%arg7, %3] : memref<?x30xf64>
          %5 = affine.load %arg4[%arg7, %arg5] : memref<?x30xf64>
          %6 = affine.load %arg3[%arg5, %3] : memref<?x30xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = arith.subf %4, %7 : f64
          affine.store %8, %arg2[%arg7, %3] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

