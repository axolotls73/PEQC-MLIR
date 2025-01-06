#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> (-d0 + 40)>
#map2 = affine_map<(d0, d1) -> (d0 + d1)>
#map3 = affine_map<(d0, d1) -> (-d0 + d1 + 40)>
module {
  func.func @kernel_ludcmp(%arg0: i32, %arg1: memref<?x40xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>) {
    %0 = llvm.mlir.undef : f64
    %alloca = memref.alloca() : memref<f64>
    affine.store %0, %alloca[] : memref<f64>
    affine.for %arg5 = 0 to 40 {
      affine.for %arg6 = 0 to #map(%arg5) {
        %1 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
        affine.store %1, %alloca[] : memref<f64>
        affine.for %arg7 = 0 to #map(%arg6) {
          %5 = affine.load %arg1[%arg5, %arg7] : memref<?x40xf64>
          %6 = affine.load %arg1[%arg7, %arg6] : memref<?x40xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = affine.load %alloca[] : memref<f64>
          %9 = arith.subf %8, %7 : f64
          affine.store %9, %alloca[] : memref<f64>
        }
        %2 = affine.load %alloca[] : memref<f64>
        %3 = affine.load %arg1[%arg6, %arg6] : memref<?x40xf64>
        %4 = arith.divf %2, %3 : f64
        affine.store %4, %arg1[%arg5, %arg6] : memref<?x40xf64>
      }
      affine.for %arg6 = 0 to #map1(%arg5) {
        %1 = affine.apply #map2(%arg5, %arg6)
        %2 = affine.load %arg1[%arg5, %1] : memref<?x40xf64>
        affine.store %2, %alloca[] : memref<f64>
        affine.for %arg7 = 0 to #map(%arg5) {
          %4 = affine.load %arg1[%arg5, %arg7] : memref<?x40xf64>
          %5 = affine.load %arg1[%arg7, %1] : memref<?x40xf64>
          %6 = arith.mulf %4, %5 : f64
          %7 = affine.load %alloca[] : memref<f64>
          %8 = arith.subf %7, %6 : f64
          affine.store %8, %alloca[] : memref<f64>
        }
        %3 = affine.load %alloca[] : memref<f64>
        affine.store %3, %arg1[%arg5, %1] : memref<?x40xf64>
      }
    }
    affine.for %arg5 = 0 to 40 {
      %1 = affine.load %arg2[%arg5] : memref<?xf64>
      affine.store %1, %alloca[] : memref<f64>
      affine.for %arg6 = 0 to #map(%arg5) {
        %3 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
        %4 = affine.load %arg4[%arg6] : memref<?xf64>
        %5 = arith.mulf %3, %4 : f64
        %6 = affine.load %alloca[] : memref<f64>
        %7 = arith.subf %6, %5 : f64
        affine.store %7, %alloca[] : memref<f64>
      }
      %2 = affine.load %alloca[] : memref<f64>
      affine.store %2, %arg4[%arg5] : memref<?xf64>
    }
    affine.for %arg5 = 0 to 40 {
      %1 = affine.load %arg4[-%arg5 + 39] : memref<?xf64>
      affine.store %1, %alloca[] : memref<f64>
      affine.for %arg6 = 0 to #map(%arg5) {
        %5 = affine.apply #map3(%arg5, %arg6)
        %6 = affine.load %arg1[-%arg5 + 39, %5] : memref<?x40xf64>
        %7 = affine.load %arg3[%5] : memref<?xf64>
        %8 = arith.mulf %6, %7 : f64
        %9 = affine.load %alloca[] : memref<f64>
        %10 = arith.subf %9, %8 : f64
        affine.store %10, %alloca[] : memref<f64>
      }
      %2 = affine.load %alloca[] : memref<f64>
      %3 = affine.load %arg1[-%arg5 + 39, -%arg5 + 39] : memref<?x40xf64>
      %4 = arith.divf %2, %3 : f64
      affine.store %4, %arg3[-%arg5 + 39] : memref<?xf64>
    }
    return
  }
}

