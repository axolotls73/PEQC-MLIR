#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (19, d0 * 32)>
#map2 = affine_map<(d0) -> (39, d0 * 32 + 32)>
#map3 = affine_map<(d0) -> ((d0 * 5 + 4) ceildiv 16)>
#map4 = affine_map<(d0, d1) -> (d0 * 32, d1 * 10 + 38)>
#map5 = affine_map<(d0) -> (d0 * 32 + 31)>
#map6 = affine_map<(d0) -> (20, d0 * 32)>
#set = affine_set<(d0) : (d0 == 0)>
#set1 = affine_set<(d0) : ((d0 + 2) mod 10 == 0)>
module {
  func.func @kernel_gramschmidt(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
    affine.for %arg5 = 0 to 29 {
      affine.for %arg6 = #map(%arg5) to 30 {
        affine.store %cst, %arg3[%arg5, %arg6] : memref<?x30xf64>
      }
    }
    %0 = llvm.mlir.undef : f64
    affine.store %0, %alloca[] : memref<f64>
    affine.for %arg5 = 0 to 30 {
      %1 = affine.load %arg3[%arg5, %arg5] : memref<?x30xf64>
      affine.for %arg6 = 0 to 2 {
        affine.if #set(%arg6) {
          affine.for %arg7 = 0 to 20 {
            %4 = affine.load %alloca[] : memref<f64>
            %5 = affine.load %arg2[%arg7, %arg5] : memref<?x30xf64>
            %6 = arith.mulf %5, %5 : f64
            %7 = arith.addf %4, %6 : f64
            affine.store %7, %alloca[] : memref<f64>
          }
        }
        affine.for %arg7 = max #map1(%arg6) to min #map2(%arg6) {
          %4 = affine.load %arg2[%arg7 - 19, %arg5] : memref<?x30xf64>
          %5 = arith.divf %4, %1 : f64
          affine.store %5, %arg4[%arg7 - 19, %arg5] : memref<?x30xf64>
        }
        affine.if #set(%arg6) {
          affine.store %cst, %alloca[] : memref<f64>
        }
      }
      affine.for %arg6 = #map3(%arg5) to 10 {
        affine.for %arg7 = 0 to 2 {
          affine.if #set(%arg7) {
            affine.for %arg8 = 0 to 19 {
              affine.for %arg9 = max #map4(%arg6, %arg5) to #map5(%arg6) {
                affine.if #set1(%arg9) {
                  %4 = affine.load %arg3[%arg5, (%arg9 - 28) ceildiv 10] : memref<?x30xf64>
                  %5 = affine.load %arg4[%arg8, %arg5] : memref<?x30xf64>
                  %6 = affine.load %arg2[%arg8, (%arg9 - 28) ceildiv 10] : memref<?x30xf64>
                  %7 = arith.mulf %5, %6 : f64
                  %8 = arith.addf %4, %7 : f64
                  affine.store %8, %arg3[%arg5, (%arg9 - 28) ceildiv 10] : memref<?x30xf64>
                }
              }
            }
          }
          affine.if #set(%arg7) {
            affine.for %arg8 = max #map4(%arg6, %arg5) to #map5(%arg6) {
              affine.if #set1(%arg8) {
                %4 = affine.load %arg3[%arg5, (%arg8 - 28) ceildiv 10] : memref<?x30xf64>
                %5 = affine.load %arg4[19, %arg5] : memref<?x30xf64>
                %6 = affine.load %arg2[19, (%arg8 - 28) ceildiv 10] : memref<?x30xf64>
                %7 = arith.mulf %5, %6 : f64
                %8 = arith.addf %4, %7 : f64
                affine.store %8, %arg3[%arg5, (%arg8 - 28) ceildiv 10] : memref<?x30xf64>
              }
              affine.if #set1(%arg8) {
                %4 = affine.load %arg2[0, (%arg8 - 28) ceildiv 10] : memref<?x30xf64>
                %5 = affine.load %arg4[0, %arg5] : memref<?x30xf64>
                %6 = affine.load %arg3[%arg5, (%arg8 - 28) ceildiv 10] : memref<?x30xf64>
                %7 = arith.mulf %5, %6 : f64
                %8 = arith.subf %4, %7 : f64
                affine.store %8, %arg2[0, (%arg8 - 28) ceildiv 10] : memref<?x30xf64>
              }
            }
          }
          affine.for %arg8 = max #map6(%arg7) to min #map2(%arg7) {
            affine.for %arg9 = max #map4(%arg6, %arg5) to #map5(%arg6) {
              affine.if #set1(%arg9) {
                %4 = affine.load %arg2[%arg8 - 19, (%arg9 - 28) ceildiv 10] : memref<?x30xf64>
                %5 = affine.load %arg4[%arg8 - 19, %arg5] : memref<?x30xf64>
                %6 = affine.load %arg3[%arg5, (%arg9 - 28) ceildiv 10] : memref<?x30xf64>
                %7 = arith.mulf %5, %6 : f64
                %8 = arith.subf %4, %7 : f64
                affine.store %8, %arg2[%arg8 - 19, (%arg9 - 28) ceildiv 10] : memref<?x30xf64>
              }
            }
          }
        }
      }
      %2 = affine.load %alloca[] : memref<f64>
      %3 = math.sqrt %2 : f64
      affine.store %3, %arg3[%arg5, %arg5] : memref<?x30xf64>
    }
    return
  }
}

