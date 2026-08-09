#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0)[s0] -> (-d0 + s0)>
module {
  func.func @kernel_ludcmp(%arg0: i32, %arg1: memref<?x40xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>) {
    %0 = arith.index_cast %arg0 : i32 to index
    %alloca = memref.alloca() : memref<f64>
    %1 = llvm.mlir.undef : f64
    affine.store %1, %alloca[] : memref<f64>
    affine.for %arg5 = 0 to %0 {
      affine.for %arg6 = 0 to #map(%arg5) {
        %2 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
        affine.store %2, %alloca[] : memref<f64>
        affine.for %arg7 = 0 to #map(%arg6) {
          %6 = affine.load %arg1[%arg5, %arg7] : memref<?x40xf64>
          %7 = affine.load %arg1[%arg7, %arg6] : memref<?x40xf64>
          %8 = arith.mulf %6, %7 : f64
          %9 = affine.load %alloca[] : memref<f64>
          %10 = arith.subf %9, %8 : f64
          affine.store %10, %alloca[] : memref<f64>
        }
        %3 = affine.load %alloca[] : memref<f64>
        %4 = affine.load %arg1[%arg6, %arg6] : memref<?x40xf64>
        %5 = arith.divf %3, %4 : f64
        affine.store %5, %arg1[%arg5, %arg6] : memref<?x40xf64>
      }
      affine.for %arg6 = #map(%arg5) to %0 {
        %2 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
        affine.store %2, %alloca[] : memref<f64>
        affine.for %arg7 = 0 to #map(%arg5) {
          %4 = affine.load %arg1[%arg5, %arg7] : memref<?x40xf64>
          %5 = affine.load %arg1[%arg7, %arg6] : memref<?x40xf64>
          %6 = arith.mulf %4, %5 : f64
          %7 = affine.load %alloca[] : memref<f64>
          %8 = arith.subf %7, %6 : f64
          affine.store %8, %alloca[] : memref<f64>
        }
        %3 = affine.load %alloca[] : memref<f64>
        affine.store %3, %arg1[%arg5, %arg6] : memref<?x40xf64>
      }
    }
    affine.for %arg5 = 0 to %0 {
      %2 = affine.load %arg2[%arg5] : memref<?xf64>
      affine.store %2, %alloca[] : memref<f64>
      affine.for %arg6 = 0 to #map(%arg5) {
        %4 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
        %5 = affine.load %arg4[%arg6] : memref<?xf64>
        %6 = arith.mulf %4, %5 : f64
        %7 = affine.load %alloca[] : memref<f64>
        %8 = arith.subf %7, %6 : f64
        affine.store %8, %alloca[] : memref<f64>
      }
      %3 = affine.load %alloca[] : memref<f64>
      affine.store %3, %arg4[%arg5] : memref<?xf64>
    }
    affine.for %arg5 = 0 to %0 {
      %2 = affine.load %arg4[-%arg5 + symbol(%0) - 1] : memref<?xf64>
      affine.store %2, %alloca[] : memref<f64>
      affine.for %arg6 = #map1(%arg5)[%0] to %0 {
        %6 = affine.load %arg1[-%arg5 + symbol(%0) - 1, %arg6] : memref<?x40xf64>
        %7 = affine.load %arg3[%arg6] : memref<?xf64>
        %8 = arith.mulf %6, %7 : f64
        %9 = affine.load %alloca[] : memref<f64>
        %10 = arith.subf %9, %8 : f64
        affine.store %10, %alloca[] : memref<f64>
      }
      %3 = affine.load %alloca[] : memref<f64>
      %4 = affine.load %arg1[-%arg5 + symbol(%0) - 1, -%arg5 + symbol(%0) - 1] : memref<?x40xf64>
      %5 = arith.divf %3, %4 : f64
      affine.store %5, %arg3[-%arg5 + symbol(%0) - 1] : memref<?xf64>
    }
    return
  }
}
