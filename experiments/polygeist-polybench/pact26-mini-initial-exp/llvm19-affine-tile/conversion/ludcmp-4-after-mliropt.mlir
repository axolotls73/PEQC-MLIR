#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> (d0 + 32, 40)>
#map2 = affine_map<(d0) -> (-d0 + 40)>
module {
  func.func @kernel_ludcmp(%arg0: i32, %arg1: memref<?x40xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>) {
    %alloca = memref.alloca() : memref<f64>
    %0 = llvm.mlir.undef : f64
    affine.store %0, %alloca[] : memref<f64>
    affine.for %arg5 = 0 to 40 step 32 {
      affine.for %arg6 = #map(%arg5) to min #map1(%arg5) {
        affine.for %arg7 = 0 to #map(%arg6) {
          %1 = affine.load %arg1[%arg6, %arg7] : memref<?x40xf64>
          affine.store %1, %alloca[] : memref<f64>
          affine.for %arg8 = 0 to #map(%arg7) {
            %5 = affine.load %arg1[%arg6, %arg8] : memref<?x40xf64>
            %6 = affine.load %arg1[%arg8, %arg7] : memref<?x40xf64>
            %7 = arith.mulf %5, %6 : f64
            %8 = affine.load %alloca[] : memref<f64>
            %9 = arith.subf %8, %7 : f64
            affine.store %9, %alloca[] : memref<f64>
          }
          %2 = affine.load %alloca[] : memref<f64>
          %3 = affine.load %arg1[%arg7, %arg7] : memref<?x40xf64>
          %4 = arith.divf %2, %3 : f64
          affine.store %4, %arg1[%arg6, %arg7] : memref<?x40xf64>
        }
        affine.for %arg7 = #map(%arg6) to 40 {
          %1 = affine.load %arg1[%arg6, %arg7] : memref<?x40xf64>
          affine.store %1, %alloca[] : memref<f64>
          affine.for %arg8 = 0 to #map(%arg6) {
            %3 = affine.load %arg1[%arg6, %arg8] : memref<?x40xf64>
            %4 = affine.load %arg1[%arg8, %arg7] : memref<?x40xf64>
            %5 = arith.mulf %3, %4 : f64
            %6 = affine.load %alloca[] : memref<f64>
            %7 = arith.subf %6, %5 : f64
            affine.store %7, %alloca[] : memref<f64>
          }
          %2 = affine.load %alloca[] : memref<f64>
          affine.store %2, %arg1[%arg6, %arg7] : memref<?x40xf64>
        }
      }
    }
    affine.for %arg5 = 0 to 40 step 32 {
      affine.for %arg6 = #map(%arg5) to min #map1(%arg5) {
        %1 = affine.load %arg2[%arg6] : memref<?xf64>
        affine.store %1, %alloca[] : memref<f64>
        affine.for %arg7 = 0 to #map(%arg6) {
          %3 = affine.load %arg1[%arg6, %arg7] : memref<?x40xf64>
          %4 = affine.load %arg4[%arg7] : memref<?xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = affine.load %alloca[] : memref<f64>
          %7 = arith.subf %6, %5 : f64
          affine.store %7, %alloca[] : memref<f64>
        }
        %2 = affine.load %alloca[] : memref<f64>
        affine.store %2, %arg4[%arg6] : memref<?xf64>
      }
    }
    affine.for %arg5 = 0 to 40 step 32 {
      affine.for %arg6 = #map(%arg5) to min #map1(%arg5) {
        %1 = affine.load %arg4[-%arg6 + 39] : memref<?xf64>
        affine.store %1, %alloca[] : memref<f64>
        affine.for %arg7 = #map2(%arg6) to 40 {
          %5 = affine.load %arg1[-%arg6 + 39, %arg7] : memref<?x40xf64>
          %6 = affine.load %arg3[%arg7] : memref<?xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = affine.load %alloca[] : memref<f64>
          %9 = arith.subf %8, %7 : f64
          affine.store %9, %alloca[] : memref<f64>
        }
        %2 = affine.load %alloca[] : memref<f64>
        %3 = affine.load %arg1[-%arg6 + 39, -%arg6 + 39] : memref<?x40xf64>
        %4 = arith.divf %2, %3 : f64
        affine.store %4, %arg3[-%arg6 + 39] : memref<?xf64>
      }
    }
    return
  }
}

