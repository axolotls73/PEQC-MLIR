#map = affine_map<(d0) -> (0, d0 * 32 - 29)>
#map1 = affine_map<(d0, d1) -> (d0 * 32, d1 + 1)>
#map2 = affine_map<(d0, d1) -> (d0 * 32 + 32, d1 + 30)>
#map3 = affine_map<(d0) -> (-d0 + 31, 19)>
#map4 = affine_map<(d0, d1) -> (d0 + d1 + 1)>
#map5 = affine_map<(d0) -> (d0 + 13)>
#map6 = affine_map<(d0) -> (d0 - 12)>
#map7 = affine_map<(d0) -> (d0 + 32)>
#set = affine_set<(d0) : (d0 == 0)>
#set1 = affine_set<(d0) : (d0 - 1 == 0)>
module {
  func.func @kernel_fdtd_2d(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?x30xf64>, %arg6: memref<?xf64>) {
    %cst = arith.constant 0.69999999999999996 : f64
    %cst_0 = arith.constant 5.000000e-01 : f64
    affine.for %arg7 = 0 to 2 {
      affine.for %arg8 = 0 to 2 {
        affine.if #set(%arg8) {
          affine.for %arg9 = max #map(%arg7) to 20 {
            affine.if #set(%arg7) {
              %0 = affine.load %arg6[%arg9] : memref<?xf64>
              affine.store %0, %arg4[0, 0] : memref<?x30xf64>
            }
            affine.for %arg10 = max #map1(%arg7, %arg9) to min #map2(%arg7, %arg9) {
              %0 = affine.load %arg6[%arg9] : memref<?xf64>
              affine.store %0, %arg4[0, -%arg9 + %arg10] : memref<?x30xf64>
              %1 = affine.load %arg3[0, -%arg9 + %arg10] : memref<?x30xf64>
              %2 = affine.load %arg5[0, -%arg9 + %arg10] : memref<?x30xf64>
              %3 = affine.load %arg5[0, -%arg9 + %arg10 - 1] : memref<?x30xf64>
              %4 = arith.subf %2, %3 : f64
              %5 = arith.mulf %4, %cst_0 : f64
              %6 = arith.subf %1, %5 : f64
              affine.store %6, %arg3[0, -%arg9 + %arg10] : memref<?x30xf64>
            }
            affine.for %arg10 = 0 to min #map3(%arg9) {
              %0 = affine.apply #map4(%arg9, %arg10)
              affine.if #set(%arg7) {
                %1 = affine.load %arg4[-%0 + %arg9, 0] : memref<?x30xf64>
                %2 = affine.load %arg5[-%0 + %arg9, 0] : memref<?x30xf64>
                %3 = affine.load %arg5[-%0 + %arg9 - 1, 0] : memref<?x30xf64>
                %4 = arith.subf %2, %3 : f64
                %5 = arith.mulf %4, %cst_0 : f64
                %6 = arith.subf %1, %5 : f64
                affine.store %6, %arg4[-%0 + %arg9, 0] : memref<?x30xf64>
              }
              affine.for %arg11 = max #map1(%arg7, %arg9) to min #map2(%arg7, %arg9) {
                %1 = affine.load %arg4[-%0 + %arg9, -%arg9 + %arg11] : memref<?x30xf64>
                %2 = affine.load %arg5[-%0 + %arg9, -%arg9 + %arg11] : memref<?x30xf64>
                %3 = affine.load %arg5[-%0 + %arg9 - 1, -%arg9 + %arg11] : memref<?x30xf64>
                %4 = arith.subf %2, %3 : f64
                %5 = arith.mulf %4, %cst_0 : f64
                %6 = arith.subf %1, %5 : f64
                affine.store %6, %arg4[-%0 + %arg9, -%arg9 + %arg11] : memref<?x30xf64>
                %7 = affine.load %arg3[-%0 + %arg9, -%arg9 + %arg11] : memref<?x30xf64>
                %8 = affine.load %arg5[-%0 + %arg9, -%arg9 + %arg11] : memref<?x30xf64>
                %9 = affine.load %arg5[-%0 + %arg9, -%arg9 + %arg11 - 1] : memref<?x30xf64>
                %10 = arith.subf %8, %9 : f64
                %11 = arith.mulf %10, %cst_0 : f64
                %12 = arith.subf %7, %11 : f64
                affine.store %12, %arg3[-%0 + %arg9, -%arg9 + %arg11] : memref<?x30xf64>
                %13 = affine.load %arg5[-%0 + %arg9 - 1, -%arg9 + %arg11 - 1] : memref<?x30xf64>
                %14 = affine.load %arg3[-%0 + %arg9 - 1, -%arg9 + %arg11] : memref<?x30xf64>
                %15 = affine.load %arg3[-%0 + %arg9 - 1, -%arg9 + %arg11 - 1] : memref<?x30xf64>
                %16 = arith.subf %14, %15 : f64
                %17 = affine.load %arg4[-%0 + %arg9, -%arg9 + %arg11 - 1] : memref<?x30xf64>
                %18 = arith.addf %16, %17 : f64
                %19 = affine.load %arg4[-%0 + %arg9 - 1, -%arg9 + %arg11 - 1] : memref<?x30xf64>
                %20 = arith.subf %18, %19 : f64
                %21 = arith.mulf %20, %cst : f64
                %22 = arith.subf %13, %21 : f64
                affine.store %22, %arg5[-%0 + %arg9 - 1, -%arg9 + %arg11 - 1] : memref<?x30xf64>
              }
            }
          }
        }
        affine.if #set1(%arg8) {
          affine.for %arg9 = 0 to 7 {
            %0 = affine.apply #map5(%arg9)
            affine.for %arg10 = 0 to #map6(%0) {
              %1 = affine.apply #map7(%arg10)
              affine.if #set(%arg7) {
                %2 = affine.load %arg4[-%1 + %0, 0] : memref<?x30xf64>
                %3 = affine.load %arg5[-%1 + %0, 0] : memref<?x30xf64>
                %4 = affine.load %arg5[-%1 + %0 - 1, 0] : memref<?x30xf64>
                %5 = arith.subf %3, %4 : f64
                %6 = arith.mulf %5, %cst_0 : f64
                %7 = arith.subf %2, %6 : f64
                affine.store %7, %arg4[-%1 + %0, 0] : memref<?x30xf64>
              }
              affine.for %arg11 = max #map1(%arg7, %0) to min #map2(%arg7, %0) {
                %2 = affine.load %arg4[-%1 + %0, -%0 + %arg11] : memref<?x30xf64>
                %3 = affine.load %arg5[-%1 + %0, -%0 + %arg11] : memref<?x30xf64>
                %4 = affine.load %arg5[-%1 + %0 - 1, -%0 + %arg11] : memref<?x30xf64>
                %5 = arith.subf %3, %4 : f64
                %6 = arith.mulf %5, %cst_0 : f64
                %7 = arith.subf %2, %6 : f64
                affine.store %7, %arg4[-%1 + %0, -%0 + %arg11] : memref<?x30xf64>
                %8 = affine.load %arg3[-%1 + %0, -%0 + %arg11] : memref<?x30xf64>
                %9 = affine.load %arg5[-%1 + %0, -%0 + %arg11] : memref<?x30xf64>
                %10 = affine.load %arg5[-%1 + %0, -%0 + %arg11 - 1] : memref<?x30xf64>
                %11 = arith.subf %9, %10 : f64
                %12 = arith.mulf %11, %cst_0 : f64
                %13 = arith.subf %8, %12 : f64
                affine.store %13, %arg3[-%1 + %0, -%0 + %arg11] : memref<?x30xf64>
                %14 = affine.load %arg5[-%1 + %0 - 1, -%0 + %arg11 - 1] : memref<?x30xf64>
                %15 = affine.load %arg3[-%1 + %0 - 1, -%0 + %arg11] : memref<?x30xf64>
                %16 = affine.load %arg3[-%1 + %0 - 1, -%0 + %arg11 - 1] : memref<?x30xf64>
                %17 = arith.subf %15, %16 : f64
                %18 = affine.load %arg4[-%1 + %0, -%0 + %arg11 - 1] : memref<?x30xf64>
                %19 = arith.addf %17, %18 : f64
                %20 = affine.load %arg4[-%1 + %0 - 1, -%0 + %arg11 - 1] : memref<?x30xf64>
                %21 = arith.subf %19, %20 : f64
                %22 = arith.mulf %21, %cst : f64
                %23 = arith.subf %14, %22 : f64
                affine.store %23, %arg5[-%1 + %0 - 1, -%0 + %arg11 - 1] : memref<?x30xf64>
              }
            }
          }
        }
      }
    }
    return
  }
}

