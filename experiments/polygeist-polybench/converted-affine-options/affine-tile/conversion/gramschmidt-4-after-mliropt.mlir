#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0)>
#map2 = affine_map<(d0) -> (d0 + 30)>
#map3 = affine_map<(d0) -> (19, d0 * 32)>
#map4 = affine_map<(d0) -> (39, d0 * 32 + 32)>
#map5 = affine_map<(d0) -> ((d0 * 5 + 4) ceildiv 16)>
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
      affine.for %arg6 = #map(%arg5) to 30 {
        affine.store %cst, %arg3[%arg5, %arg6] : memref<?x30xf64>
      }
    }
    %0 = llvm.mlir.undef : f64
    affine.store %0, %alloca[] : memref<f64>
    affine.for %arg5 = 0 to 30 step 32 {
      affine.for %arg6 = #map1(%arg5) to #map2(%arg5) {
        affine.for %arg7 = 0 to 2 {
          affine.if #set(%arg7) {
            affine.for %arg8 = 0 to 20 {
              %3 = affine.load %alloca[] : memref<f64>
              %4 = affine.load %arg2[%arg8, %arg6] : memref<?x30xf64>
              %5 = arith.mulf %4, %4 : f64
              %6 = arith.addf %3, %5 : f64
              affine.store %6, %alloca[] : memref<f64>
            }
          }
          affine.for %arg8 = max #map3(%arg7) to min #map4(%arg7) {
            %3 = affine.load %arg2[%arg8 - 19, %arg6] : memref<?x30xf64>
            %4 = affine.load %arg3[%arg6, %arg6] : memref<?x30xf64>
            %5 = arith.divf %3, %4 : f64
            affine.store %5, %arg4[%arg8 - 19, %arg6] : memref<?x30xf64>
          }
          affine.if #set(%arg7) {
            affine.store %cst, %alloca[] : memref<f64>
          }
        }
        affine.for %arg7 = #map5(%arg6) to 10 {
          affine.for %arg8 = 0 to 2 {
            affine.if #set(%arg8) {
              affine.for %arg9 = 0 to 19 {
                affine.for %arg10 = max #map6(%arg7, %arg6) to #map7(%arg7) {
                  affine.if #set1(%arg10) {
                    %3 = affine.load %arg3[%arg6, (%arg10 - 28) ceildiv 10] : memref<?x30xf64>
                    %4 = affine.load %arg4[%arg9, %arg6] : memref<?x30xf64>
                    %5 = affine.load %arg2[%arg9, (%arg10 - 28) ceildiv 10] : memref<?x30xf64>
                    %6 = arith.mulf %4, %5 : f64
                    %7 = arith.addf %3, %6 : f64
                    affine.store %7, %arg3[%arg6, (%arg10 - 28) ceildiv 10] : memref<?x30xf64>
                  }
                }
              }
            }
            affine.if #set(%arg8) {
              affine.for %arg9 = max #map6(%arg7, %arg6) to #map7(%arg7) {
                affine.if #set1(%arg9) {
                  %3 = affine.load %arg3[%arg6, (%arg9 - 28) ceildiv 10] : memref<?x30xf64>
                  %4 = affine.load %arg4[19, %arg6] : memref<?x30xf64>
                  %5 = affine.load %arg2[19, (%arg9 - 28) ceildiv 10] : memref<?x30xf64>
                  %6 = arith.mulf %4, %5 : f64
                  %7 = arith.addf %3, %6 : f64
                  affine.store %7, %arg3[%arg6, (%arg9 - 28) ceildiv 10] : memref<?x30xf64>
                }
                affine.if #set1(%arg9) {
                  %3 = affine.load %arg2[0, (%arg9 - 28) ceildiv 10] : memref<?x30xf64>
                  %4 = affine.load %arg4[0, %arg6] : memref<?x30xf64>
                  %5 = affine.load %arg3[%arg6, (%arg9 - 28) ceildiv 10] : memref<?x30xf64>
                  %6 = arith.mulf %4, %5 : f64
                  %7 = arith.subf %3, %6 : f64
                  affine.store %7, %arg2[0, (%arg9 - 28) ceildiv 10] : memref<?x30xf64>
                }
              }
            }
            affine.for %arg9 = max #map8(%arg8) to min #map4(%arg8) {
              affine.for %arg10 = max #map6(%arg7, %arg6) to #map7(%arg7) {
                affine.if #set1(%arg10) {
                  %3 = affine.load %arg2[%arg9 - 19, (%arg10 - 28) ceildiv 10] : memref<?x30xf64>
                  %4 = affine.load %arg4[%arg9 - 19, %arg6] : memref<?x30xf64>
                  %5 = affine.load %arg3[%arg6, (%arg10 - 28) ceildiv 10] : memref<?x30xf64>
                  %6 = arith.mulf %4, %5 : f64
                  %7 = arith.subf %3, %6 : f64
                  affine.store %7, %arg2[%arg9 - 19, (%arg10 - 28) ceildiv 10] : memref<?x30xf64>
                }
              }
            }
          }
        }
        %1 = affine.load %alloca[] : memref<f64>
        %2 = math.sqrt %1 : f64
        affine.store %2, %arg3[%arg6, %arg6] : memref<?x30xf64>
      }
    }
    return
  }
}

