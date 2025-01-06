#map = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0, d1) -> (d0 + d1)>
#map2 = affine_map<(d0) -> ((-d0 + 29) floordiv 4)>
#map3 = affine_map<(d0, d1) -> (d0 + d1 * 4 + 1)>
#map4 = affine_map<(d0) -> (d0 + 1)>
#map5 = affine_map<(d0) -> (d0 + 2)>
#map6 = affine_map<(d0) -> (d0 + 3)>
#map7 = affine_map<(d0) -> (-d0 - ((-d0 + 29) floordiv 4) * 4 + 29)>
#map8 = affine_map<(d0, d1) -> (d0 + d1 + ((-d0 + 29) floordiv 4) * 4 + 1)>
#map9 = affine_map<(d0) -> (d0 * 4)>
#map10 = affine_map<(d0) -> (19, d0 * 32)>
#map11 = affine_map<(d0) -> (39, d0 * 32 + 32)>
#map12 = affine_map<(d0) -> (-((d0 * 5 + 4) ceildiv 16) + 10)>
#map13 = affine_map<(d0, d1) -> (d1 + (d0 * 5 + 4) ceildiv 16)>
#map14 = affine_map<(d0, d1) -> (d0 * 32, d1 * 10 + 38)>
#map15 = affine_map<(d0) -> (d0 * 32 + 31)>
#map16 = affine_map<(d0) -> (20, d0 * 32)>
#set = affine_set<(d0) : (d0 == 0)>
#set1 = affine_set<(d0) : ((d0 + 2) mod 10 == 0)>
module {
  func.func @kernel_gramschmidt(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>) {
    %0 = llvm.mlir.undef : f64
    %cst = arith.constant 0.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
    affine.for %arg5 = 0 to 1 {
      %1 = affine.apply #map(%arg5)
      affine.for %arg6 = 0 to 29 {
        %2 = affine.apply #map1(%1, %arg6)
        affine.for %arg7 = 0 to #map2(%2) {
          %3 = affine.apply #map3(%2, %arg7)
          affine.store %cst, %arg3[%2, %3] : memref<?x30xf64>
          %4 = affine.apply #map4(%3)
          affine.store %cst, %arg3[%2, %4] : memref<?x30xf64>
          %5 = affine.apply #map5(%3)
          affine.store %cst, %arg3[%2, %5] : memref<?x30xf64>
          %6 = affine.apply #map6(%3)
          affine.store %cst, %arg3[%2, %6] : memref<?x30xf64>
        }
        affine.for %arg7 = 0 to #map7(%2) {
          %3 = affine.apply #map8(%2, %arg7)
          affine.store %cst, %arg3[%2, %3] : memref<?x30xf64>
        }
      }
    }
    affine.store %0, %alloca[] : memref<f64>
    affine.for %arg5 = 0 to 1 {
      %1 = affine.apply #map(%arg5)
      affine.for %arg6 = 0 to 30 {
        %2 = affine.apply #map1(%1, %arg6)
        %3 = affine.load %arg3[%2, %2] : memref<?x30xf64>
        affine.for %arg7 = 0 to 2 {
          affine.if #set(%arg7) {
            affine.for %arg8 = 0 to 5 {
              %6 = affine.apply #map9(%arg8)
              %7 = affine.load %alloca[] : memref<f64>
              %8 = affine.load %arg2[%6, %2] : memref<?x30xf64>
              %9 = arith.mulf %8, %8 : f64
              %10 = arith.addf %7, %9 : f64
              affine.store %10, %alloca[] : memref<f64>
              %11 = affine.apply #map4(%6)
              %12 = affine.load %alloca[] : memref<f64>
              %13 = affine.load %arg2[%11, %2] : memref<?x30xf64>
              %14 = arith.mulf %13, %13 : f64
              %15 = arith.addf %12, %14 : f64
              affine.store %15, %alloca[] : memref<f64>
              %16 = affine.apply #map5(%6)
              %17 = affine.load %alloca[] : memref<f64>
              %18 = affine.load %arg2[%16, %2] : memref<?x30xf64>
              %19 = arith.mulf %18, %18 : f64
              %20 = arith.addf %17, %19 : f64
              affine.store %20, %alloca[] : memref<f64>
              %21 = affine.apply #map6(%6)
              %22 = affine.load %alloca[] : memref<f64>
              %23 = affine.load %arg2[%21, %2] : memref<?x30xf64>
              %24 = arith.mulf %23, %23 : f64
              %25 = arith.addf %22, %24 : f64
              affine.store %25, %alloca[] : memref<f64>
            }
          }
          affine.for %arg8 = max #map10(%arg7) to min #map11(%arg7) {
            %6 = affine.load %arg2[%arg8 - 19, %2] : memref<?x30xf64>
            %7 = arith.divf %6, %3 : f64
            affine.store %7, %arg4[%arg8 - 19, %2] : memref<?x30xf64>
          }
          affine.if #set(%arg7) {
            affine.store %cst, %alloca[] : memref<f64>
          }
        }
        affine.for %arg7 = 0 to #map12(%2) {
          %6 = affine.apply #map13(%2, %arg7)
          affine.for %arg8 = 0 to 2 {
            affine.if #set(%arg8) {
              affine.for %arg9 = 0 to 19 {
                affine.for %arg10 = max #map14(%6, %2) to #map15(%6) {
                  affine.if #set1(%arg10) {
                    %7 = affine.load %arg3[%2, (%arg10 - 28) ceildiv 10] : memref<?x30xf64>
                    %8 = affine.load %arg4[%arg9, %2] : memref<?x30xf64>
                    %9 = affine.load %arg2[%arg9, (%arg10 - 28) ceildiv 10] : memref<?x30xf64>
                    %10 = arith.mulf %8, %9 : f64
                    %11 = arith.addf %7, %10 : f64
                    affine.store %11, %arg3[%2, (%arg10 - 28) ceildiv 10] : memref<?x30xf64>
                  }
                }
              }
            }
            affine.if #set(%arg8) {
              affine.for %arg9 = max #map14(%6, %2) to #map15(%6) {
                affine.if #set1(%arg9) {
                  %7 = affine.load %arg3[%2, (%arg9 - 28) ceildiv 10] : memref<?x30xf64>
                  %8 = affine.load %arg4[19, %2] : memref<?x30xf64>
                  %9 = affine.load %arg2[19, (%arg9 - 28) ceildiv 10] : memref<?x30xf64>
                  %10 = arith.mulf %8, %9 : f64
                  %11 = arith.addf %7, %10 : f64
                  affine.store %11, %arg3[%2, (%arg9 - 28) ceildiv 10] : memref<?x30xf64>
                }
                affine.if #set1(%arg9) {
                  %7 = affine.load %arg2[0, (%arg9 - 28) ceildiv 10] : memref<?x30xf64>
                  %8 = affine.load %arg4[0, %2] : memref<?x30xf64>
                  %9 = affine.load %arg3[%2, (%arg9 - 28) ceildiv 10] : memref<?x30xf64>
                  %10 = arith.mulf %8, %9 : f64
                  %11 = arith.subf %7, %10 : f64
                  affine.store %11, %arg2[0, (%arg9 - 28) ceildiv 10] : memref<?x30xf64>
                }
              }
            }
            affine.for %arg9 = max #map16(%arg8) to min #map11(%arg8) {
              affine.for %arg10 = max #map14(%6, %2) to #map15(%6) {
                affine.if #set1(%arg10) {
                  %7 = affine.load %arg2[%arg9 - 19, (%arg10 - 28) ceildiv 10] : memref<?x30xf64>
                  %8 = affine.load %arg4[%arg9 - 19, %2] : memref<?x30xf64>
                  %9 = affine.load %arg3[%2, (%arg10 - 28) ceildiv 10] : memref<?x30xf64>
                  %10 = arith.mulf %8, %9 : f64
                  %11 = arith.subf %7, %10 : f64
                  affine.store %11, %arg2[%arg9 - 19, (%arg10 - 28) ceildiv 10] : memref<?x30xf64>
                }
              }
            }
          }
        }
        %4 = affine.load %alloca[] : memref<f64>
        %5 = math.sqrt %4 : f64
        affine.store %5, %arg3[%2, %2] : memref<?x30xf64>
      }
    }
    return
  }
}

