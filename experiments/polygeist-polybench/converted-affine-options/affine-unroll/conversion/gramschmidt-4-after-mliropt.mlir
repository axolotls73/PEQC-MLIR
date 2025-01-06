#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0 + ((-d0 + 29) floordiv 4) * 4 + 1)>
#map2 = affine_map<(d0) -> (d0 + 2)>
#map3 = affine_map<(d0) -> (d0 + 3)>
#map4 = affine_map<(d0) -> (19, d0 * 32)>
#map5 = affine_map<(d0) -> (39, d0 * 32 + 32)>
#map6 = affine_map<(d0) -> ((d0 * 5 + 4) ceildiv 16)>
#map7 = affine_map<(d0, d1) -> (d0 * 32, d1 * 10 + 38)>
#map8 = affine_map<(d0) -> (d0 * 32 + 31)>
#map9 = affine_map<(d0) -> (20, d0 * 32)>
#set = affine_set<(d0) : (d0 == 0)>
#set1 = affine_set<(d0) : ((d0 + 2) mod 10 == 0)>
module {
  func.func @kernel_gramschmidt(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>) {
    %0 = llvm.mlir.undef : f64
    %cst = arith.constant 0.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
    affine.for %arg5 = 0 to 29 {
      affine.for %arg6 = #map(%arg5) to #map1(%arg5) step 4 {
        affine.store %cst, %arg3[%arg5, %arg6] : memref<?x30xf64>
        %1 = affine.apply #map(%arg6)
        affine.store %cst, %arg3[%arg5, %1] : memref<?x30xf64>
        %2 = affine.apply #map2(%arg6)
        affine.store %cst, %arg3[%arg5, %2] : memref<?x30xf64>
        %3 = affine.apply #map3(%arg6)
        affine.store %cst, %arg3[%arg5, %3] : memref<?x30xf64>
      }
      affine.for %arg6 = #map1(%arg5) to 30 {
        affine.store %cst, %arg3[%arg5, %arg6] : memref<?x30xf64>
      }
    }
    affine.store %0, %alloca[] : memref<f64>
    affine.for %arg5 = 0 to 30 {
      affine.for %arg6 = 0 to 2 {
        affine.if #set(%arg6) {
          affine.for %arg7 = 0 to 20 step 4 {
            %3 = affine.load %alloca[] : memref<f64>
            %4 = affine.load %arg2[%arg7, %arg5] : memref<?x30xf64>
            %5 = arith.mulf %4, %4 : f64
            %6 = arith.addf %3, %5 : f64
            affine.store %6, %alloca[] : memref<f64>
            %7 = affine.apply #map(%arg7)
            %8 = affine.load %alloca[] : memref<f64>
            %9 = affine.load %arg2[%7, %arg5] : memref<?x30xf64>
            %10 = arith.mulf %9, %9 : f64
            %11 = arith.addf %8, %10 : f64
            affine.store %11, %alloca[] : memref<f64>
            %12 = affine.apply #map2(%arg7)
            %13 = affine.load %alloca[] : memref<f64>
            %14 = affine.load %arg2[%12, %arg5] : memref<?x30xf64>
            %15 = arith.mulf %14, %14 : f64
            %16 = arith.addf %13, %15 : f64
            affine.store %16, %alloca[] : memref<f64>
            %17 = affine.apply #map3(%arg7)
            %18 = affine.load %alloca[] : memref<f64>
            %19 = affine.load %arg2[%17, %arg5] : memref<?x30xf64>
            %20 = arith.mulf %19, %19 : f64
            %21 = arith.addf %18, %20 : f64
            affine.store %21, %alloca[] : memref<f64>
          }
        }
        affine.for %arg7 = max #map4(%arg6) to min #map5(%arg6) {
          %3 = affine.load %arg2[%arg7 - 19, %arg5] : memref<?x30xf64>
          %4 = affine.load %arg3[%arg5, %arg5] : memref<?x30xf64>
          %5 = arith.divf %3, %4 : f64
          affine.store %5, %arg4[%arg7 - 19, %arg5] : memref<?x30xf64>
        }
        affine.if #set(%arg6) {
          affine.store %cst, %alloca[] : memref<f64>
        }
      }
      affine.for %arg6 = #map6(%arg5) to 10 {
        affine.for %arg7 = 0 to 2 {
          affine.if #set(%arg7) {
            affine.for %arg8 = 0 to 19 {
              affine.for %arg9 = max #map7(%arg6, %arg5) to #map8(%arg6) {
                affine.if #set1(%arg9) {
                  %3 = affine.load %arg3[%arg5, (%arg9 - 28) ceildiv 10] : memref<?x30xf64>
                  %4 = affine.load %arg4[%arg8, %arg5] : memref<?x30xf64>
                  %5 = affine.load %arg2[%arg8, (%arg9 - 28) ceildiv 10] : memref<?x30xf64>
                  %6 = arith.mulf %4, %5 : f64
                  %7 = arith.addf %3, %6 : f64
                  affine.store %7, %arg3[%arg5, (%arg9 - 28) ceildiv 10] : memref<?x30xf64>
                }
              }
            }
          }
          affine.if #set(%arg7) {
            affine.for %arg8 = max #map7(%arg6, %arg5) to #map8(%arg6) {
              affine.if #set1(%arg8) {
                %3 = affine.load %arg3[%arg5, (%arg8 - 28) ceildiv 10] : memref<?x30xf64>
                %4 = affine.load %arg4[19, %arg5] : memref<?x30xf64>
                %5 = affine.load %arg2[19, (%arg8 - 28) ceildiv 10] : memref<?x30xf64>
                %6 = arith.mulf %4, %5 : f64
                %7 = arith.addf %3, %6 : f64
                affine.store %7, %arg3[%arg5, (%arg8 - 28) ceildiv 10] : memref<?x30xf64>
              }
              affine.if #set1(%arg8) {
                %3 = affine.load %arg2[0, (%arg8 - 28) ceildiv 10] : memref<?x30xf64>
                %4 = affine.load %arg4[0, %arg5] : memref<?x30xf64>
                %5 = affine.load %arg3[%arg5, (%arg8 - 28) ceildiv 10] : memref<?x30xf64>
                %6 = arith.mulf %4, %5 : f64
                %7 = arith.subf %3, %6 : f64
                affine.store %7, %arg2[0, (%arg8 - 28) ceildiv 10] : memref<?x30xf64>
              }
            }
          }
          affine.for %arg8 = max #map9(%arg7) to min #map5(%arg7) {
            affine.for %arg9 = max #map7(%arg6, %arg5) to #map8(%arg6) {
              affine.if #set1(%arg9) {
                %3 = affine.load %arg2[%arg8 - 19, (%arg9 - 28) ceildiv 10] : memref<?x30xf64>
                %4 = affine.load %arg4[%arg8 - 19, %arg5] : memref<?x30xf64>
                %5 = affine.load %arg3[%arg5, (%arg9 - 28) ceildiv 10] : memref<?x30xf64>
                %6 = arith.mulf %4, %5 : f64
                %7 = arith.subf %3, %6 : f64
                affine.store %7, %arg2[%arg8 - 19, (%arg9 - 28) ceildiv 10] : memref<?x30xf64>
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

