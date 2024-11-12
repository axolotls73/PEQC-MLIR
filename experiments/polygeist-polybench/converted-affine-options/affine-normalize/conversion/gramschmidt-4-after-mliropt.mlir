#map = affine_map<(d0) -> (-d0 + 29)>
#map1 = affine_map<(d0, d1) -> (d0 + d1 + 1)>
#map2 = affine_map<(d0) -> (19, d0 * 32)>
#map3 = affine_map<(d0) -> (39, d0 * 32 + 32)>
#map4 = affine_map<(d0) -> (-((d0 * 5 + 4) ceildiv 16) + 10)>
#map5 = affine_map<(d0, d1) -> (d1 + (d0 * 5 + 4) ceildiv 16)>
#map6 = affine_map<(d0, d1) -> (d0 * 32, d1 * 10 + 38)>
#map7 = affine_map<(d0) -> (d0 * 32 + 31)>
#map8 = affine_map<(d0) -> (20, d0 * 32)>
#set = affine_set<(d0) : (d0 == 0)>
#set1 = affine_set<(d0) : ((d0 + 2) mod 10 == 0)>
module {
  func.func @kernel_gramschmidt(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
    affine.for %arg5 = 0 to 29 {
      affine.for %arg6 = 0 to #map(%arg5) {
        %1 = affine.apply #map1(%arg5, %arg6)
        affine.store %cst, %arg3[%arg5, %1] : memref<?x30xf64>
      }
    }
    %0 = llvm.mlir.undef : f64
    affine.store %0, %alloca[] : memref<f64>
    affine.for %arg5 = 0 to 30 {
      affine.for %arg6 = 0 to 2 {
        affine.if #set(%arg6) {
          affine.for %arg7 = 0 to 20 {
            %3 = affine.load %alloca[] : memref<f64>
            %4 = affine.load %arg2[%arg7, %arg5] : memref<?x30xf64>
            %5 = arith.mulf %4, %4 : f64
            %6 = arith.addf %3, %5 : f64
            affine.store %6, %alloca[] : memref<f64>
          }
        }
        affine.for %arg7 = max #map2(%arg6) to min #map3(%arg6) {
          %3 = affine.load %arg2[%arg7 - 19, %arg5] : memref<?x30xf64>
          %4 = affine.load %arg3[%arg5, %arg5] : memref<?x30xf64>
          %5 = arith.divf %3, %4 : f64
          affine.store %5, %arg4[%arg7 - 19, %arg5] : memref<?x30xf64>
        }
        affine.if #set(%arg6) {
          affine.store %cst, %alloca[] : memref<f64>
        }
      }
      affine.for %arg6 = 0 to #map4(%arg5) {
        %3 = affine.apply #map5(%arg5, %arg6)
        affine.for %arg7 = 0 to 2 {
          affine.if #set(%arg7) {
            affine.for %arg8 = 0 to 19 {
              affine.for %arg9 = max #map6(%3, %arg5) to #map7(%3) {
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
            affine.for %arg8 = max #map6(%3, %arg5) to #map7(%3) {
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
          affine.for %arg8 = max #map8(%arg7) to min #map3(%arg7) {
            affine.for %arg9 = max #map6(%3, %arg5) to #map7(%3) {
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
      %1 = affine.load %alloca[] : memref<f64>
      %2 = math.sqrt %1 : f64
      affine.store %2, %arg3[%arg5, %arg5] : memref<?x30xf64>
    }
    return
  }
}

