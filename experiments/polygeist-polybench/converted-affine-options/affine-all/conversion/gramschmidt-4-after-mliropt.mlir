#map = affine_map<(d0, d1) -> (d0 + d1)>
#map1 = affine_map<(d0) -> ((-d0 + 29) floordiv 4)>
#map2 = affine_map<(d0, d1) -> (d0 + d1 * 4 + 1)>
#map3 = affine_map<(d0) -> (d0 + 1)>
#map4 = affine_map<(d0) -> (d0 + 2)>
#map5 = affine_map<(d0) -> (d0 + 3)>
#map6 = affine_map<(d0) -> (-d0 - ((-d0 + 29) floordiv 4) * 4 + 29)>
#map7 = affine_map<(d0, d1) -> (d0 + d1 + ((-d0 + 29) floordiv 4) * 4 + 1)>
#map8 = affine_map<(d0) -> (d0 * 4)>
#map9 = affine_map<(d0) -> (19, d0 * 32)>
#map10 = affine_map<(d0) -> (39, d0 * 32 + 32)>
#map11 = affine_map<(d0) -> (-((d0 * 5 + 4) ceildiv 16) + 10)>
#map12 = affine_map<(d0, d1) -> (d1 + (d0 * 5 + 4) ceildiv 16)>
#map13 = affine_map<(d0, d1) -> (d0 * 32, d1 * 10 + 38)>
#map14 = affine_map<(d0) -> (d0 * 32 + 31)>
#map15 = affine_map<(d0) -> (20, d0 * 32)>
#set = affine_set<(d0) : (d0 == 0)>
#set1 = affine_set<(d0) : ((d0 + 2) mod 10 == 0)>
module {
  func.func @kernel_gramschmidt(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
    affine.parallel (%arg5) = (0) to (29) {
      affine.for %arg6 = 0 to 1 {
        %1 = affine.apply #map(%arg5, %arg6)
        affine.for %arg7 = 0 to #map1(%1) {
          %2 = affine.apply #map2(%1, %arg7)
          affine.store %cst, %arg3[%1, %2] : memref<?x30xf64>
          %3 = affine.apply #map3(%2)
          affine.store %cst, %arg3[%1, %3] : memref<?x30xf64>
          %4 = affine.apply #map4(%2)
          affine.store %cst, %arg3[%1, %4] : memref<?x30xf64>
          %5 = affine.apply #map5(%2)
          affine.store %cst, %arg3[%1, %5] : memref<?x30xf64>
        }
        affine.for %arg7 = 0 to #map6(%1) {
          %2 = affine.apply #map7(%1, %arg7)
          affine.store %cst, %arg3[%1, %2] : memref<?x30xf64>
        }
      }
    }
    %0 = llvm.mlir.undef : f64
    affine.store %0, %alloca[] : memref<f64>
    affine.for %arg5 = 0 to 30 {
      affine.parallel (%arg6) = (0) to (1) {
        %1 = affine.apply #map(%arg5, %arg6)
        %2 = affine.load %arg3[%1, %1] : memref<?x30xf64>
        affine.for %arg7 = 0 to 2 {
          affine.if #set(%arg7) {
            affine.for %arg8 = 0 to 5 {
              %5 = affine.apply #map8(%arg8)
              %6 = affine.load %alloca[] : memref<f64>
              %7 = affine.load %arg2[%5, %1] : memref<?x30xf64>
              %8 = arith.mulf %7, %7 : f64
              %9 = arith.addf %6, %8 : f64
              affine.store %9, %alloca[] : memref<f64>
              %10 = affine.apply #map3(%5)
              %11 = affine.load %alloca[] : memref<f64>
              %12 = affine.load %arg2[%10, %1] : memref<?x30xf64>
              %13 = arith.mulf %12, %12 : f64
              %14 = arith.addf %11, %13 : f64
              affine.store %14, %alloca[] : memref<f64>
              %15 = affine.apply #map4(%5)
              %16 = affine.load %alloca[] : memref<f64>
              %17 = affine.load %arg2[%15, %1] : memref<?x30xf64>
              %18 = arith.mulf %17, %17 : f64
              %19 = arith.addf %16, %18 : f64
              affine.store %19, %alloca[] : memref<f64>
              %20 = affine.apply #map5(%5)
              %21 = affine.load %alloca[] : memref<f64>
              %22 = affine.load %arg2[%20, %1] : memref<?x30xf64>
              %23 = arith.mulf %22, %22 : f64
              %24 = arith.addf %21, %23 : f64
              affine.store %24, %alloca[] : memref<f64>
            }
          }
          affine.for %arg8 = max #map9(%arg7) to min #map10(%arg7) {
            %5 = affine.load %arg2[%arg8 - 19, %1] : memref<?x30xf64>
            %6 = arith.divf %5, %2 : f64
            affine.store %6, %arg4[%arg8 - 19, %1] : memref<?x30xf64>
          }
          affine.if #set(%arg7) {
            affine.store %cst, %alloca[] : memref<f64>
          }
        }
        affine.for %arg7 = 0 to #map11(%1) {
          %5 = affine.apply #map12(%1, %arg7)
          affine.for %arg8 = 0 to 2 {
            affine.if #set(%arg8) {
              affine.for %arg9 = 0 to 19 {
                affine.for %arg10 = max #map13(%5, %1) to #map14(%5) {
                  affine.if #set1(%arg10) {
                    %6 = affine.load %arg3[%1, (%arg10 - 28) ceildiv 10] : memref<?x30xf64>
                    %7 = affine.load %arg4[%arg9, %1] : memref<?x30xf64>
                    %8 = affine.load %arg2[%arg9, (%arg10 - 28) ceildiv 10] : memref<?x30xf64>
                    %9 = arith.mulf %7, %8 : f64
                    %10 = arith.addf %6, %9 : f64
                    affine.store %10, %arg3[%1, (%arg10 - 28) ceildiv 10] : memref<?x30xf64>
                  }
                }
              }
            }
            affine.if #set(%arg8) {
              affine.for %arg9 = max #map13(%5, %1) to #map14(%5) {
                affine.if #set1(%arg9) {
                  %6 = affine.load %arg3[%1, (%arg9 - 28) ceildiv 10] : memref<?x30xf64>
                  %7 = affine.load %arg4[19, %1] : memref<?x30xf64>
                  %8 = affine.load %arg2[19, (%arg9 - 28) ceildiv 10] : memref<?x30xf64>
                  %9 = arith.mulf %7, %8 : f64
                  %10 = arith.addf %6, %9 : f64
                  affine.store %10, %arg3[%1, (%arg9 - 28) ceildiv 10] : memref<?x30xf64>
                }
                affine.if #set1(%arg9) {
                  %6 = affine.load %arg2[0, (%arg9 - 28) ceildiv 10] : memref<?x30xf64>
                  %7 = affine.load %arg4[0, %1] : memref<?x30xf64>
                  %8 = affine.load %arg3[%1, (%arg9 - 28) ceildiv 10] : memref<?x30xf64>
                  %9 = arith.mulf %7, %8 : f64
                  %10 = arith.subf %6, %9 : f64
                  affine.store %10, %arg2[0, (%arg9 - 28) ceildiv 10] : memref<?x30xf64>
                }
              }
            }
            affine.for %arg9 = max #map15(%arg8) to min #map10(%arg8) {
              affine.for %arg10 = max #map13(%5, %1) to #map14(%5) {
                affine.if #set1(%arg10) {
                  %6 = affine.load %arg2[%arg9 - 19, (%arg10 - 28) ceildiv 10] : memref<?x30xf64>
                  %7 = affine.load %arg4[%arg9 - 19, %1] : memref<?x30xf64>
                  %8 = affine.load %arg3[%1, (%arg10 - 28) ceildiv 10] : memref<?x30xf64>
                  %9 = arith.mulf %7, %8 : f64
                  %10 = arith.subf %6, %9 : f64
                  affine.store %10, %arg2[%arg9 - 19, (%arg10 - 28) ceildiv 10] : memref<?x30xf64>
                }
              }
            }
          }
        }
        %3 = affine.load %alloca[] : memref<f64>
        %4 = math.sqrt %3 : f64
        affine.store %4, %arg3[%1, %1] : memref<?x30xf64>
      }
    }
    return
  }
}

