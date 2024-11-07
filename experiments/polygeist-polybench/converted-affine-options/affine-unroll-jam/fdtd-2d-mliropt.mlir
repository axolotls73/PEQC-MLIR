#map = affine_map<(d0) -> (0, d0 * 32 - 29)>
#map1 = affine_map<(d0, d1) -> (d0 * 32, d1 + 1)>
#map2 = affine_map<(d0, d1) -> (d0 * 32 + 32, d1 + 30)>
#map3 = affine_map<(d0) -> (d0 + 1)>
#map4 = affine_map<(d0) -> (32, d0 + 20)>
#map5 = affine_map<(d0) -> (d0 + 20)>
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
            affine.for %arg10 = #map3(%arg9) to min #map4(%arg9) {
              affine.if #set(%arg7) {
                %0 = affine.load %arg4[-%arg10 + %arg9, 0] : memref<?x30xf64>
                %1 = affine.load %arg5[-%arg10 + %arg9, 0] : memref<?x30xf64>
                %2 = affine.load %arg5[-%arg10 + %arg9 - 1, 0] : memref<?x30xf64>
                %3 = arith.subf %1, %2 : f64
                %4 = arith.mulf %3, %cst_0 : f64
                %5 = arith.subf %0, %4 : f64
                affine.store %5, %arg4[-%arg10 + %arg9, 0] : memref<?x30xf64>
              }
              affine.for %arg11 = max #map1(%arg7, %arg9) to min #map2(%arg7, %arg9) {
                %0 = affine.load %arg4[-%arg10 + %arg9, -%arg9 + %arg11] : memref<?x30xf64>
                %1 = affine.load %arg5[-%arg10 + %arg9, -%arg9 + %arg11] : memref<?x30xf64>
                %2 = affine.load %arg5[-%arg10 + %arg9 - 1, -%arg9 + %arg11] : memref<?x30xf64>
                %3 = arith.subf %1, %2 : f64
                %4 = arith.mulf %3, %cst_0 : f64
                %5 = arith.subf %0, %4 : f64
                affine.store %5, %arg4[-%arg10 + %arg9, -%arg9 + %arg11] : memref<?x30xf64>
                %6 = affine.load %arg3[-%arg10 + %arg9, -%arg9 + %arg11] : memref<?x30xf64>
                %7 = affine.load %arg5[-%arg10 + %arg9, -%arg9 + %arg11] : memref<?x30xf64>
                %8 = affine.load %arg5[-%arg10 + %arg9, -%arg9 + %arg11 - 1] : memref<?x30xf64>
                %9 = arith.subf %7, %8 : f64
                %10 = arith.mulf %9, %cst_0 : f64
                %11 = arith.subf %6, %10 : f64
                affine.store %11, %arg3[-%arg10 + %arg9, -%arg9 + %arg11] : memref<?x30xf64>
                %12 = affine.load %arg5[-%arg10 + %arg9 - 1, -%arg9 + %arg11 - 1] : memref<?x30xf64>
                %13 = affine.load %arg3[-%arg10 + %arg9 - 1, -%arg9 + %arg11] : memref<?x30xf64>
                %14 = affine.load %arg3[-%arg10 + %arg9 - 1, -%arg9 + %arg11 - 1] : memref<?x30xf64>
                %15 = arith.subf %13, %14 : f64
                %16 = affine.load %arg4[-%arg10 + %arg9, -%arg9 + %arg11 - 1] : memref<?x30xf64>
                %17 = arith.addf %15, %16 : f64
                %18 = affine.load %arg4[-%arg10 + %arg9 - 1, -%arg9 + %arg11 - 1] : memref<?x30xf64>
                %19 = arith.subf %17, %18 : f64
                %20 = arith.mulf %19, %cst : f64
                %21 = arith.subf %12, %20 : f64
                affine.store %21, %arg5[-%arg10 + %arg9 - 1, -%arg9 + %arg11 - 1] : memref<?x30xf64>
              }
            }
          }
        }
        affine.if #set1(%arg8) {
          affine.for %arg9 = 13 to 20 {
            affine.for %arg10 = 32 to #map5(%arg9) {
              affine.if #set(%arg7) {
                %0 = affine.load %arg4[-%arg10 + %arg9, 0] : memref<?x30xf64>
                %1 = affine.load %arg5[-%arg10 + %arg9, 0] : memref<?x30xf64>
                %2 = affine.load %arg5[-%arg10 + %arg9 - 1, 0] : memref<?x30xf64>
                %3 = arith.subf %1, %2 : f64
                %4 = arith.mulf %3, %cst_0 : f64
                %5 = arith.subf %0, %4 : f64
                affine.store %5, %arg4[-%arg10 + %arg9, 0] : memref<?x30xf64>
              }
              affine.for %arg11 = max #map1(%arg7, %arg9) to min #map2(%arg7, %arg9) {
                %0 = affine.load %arg4[-%arg10 + %arg9, -%arg9 + %arg11] : memref<?x30xf64>
                %1 = affine.load %arg5[-%arg10 + %arg9, -%arg9 + %arg11] : memref<?x30xf64>
                %2 = affine.load %arg5[-%arg10 + %arg9 - 1, -%arg9 + %arg11] : memref<?x30xf64>
                %3 = arith.subf %1, %2 : f64
                %4 = arith.mulf %3, %cst_0 : f64
                %5 = arith.subf %0, %4 : f64
                affine.store %5, %arg4[-%arg10 + %arg9, -%arg9 + %arg11] : memref<?x30xf64>
                %6 = affine.load %arg3[-%arg10 + %arg9, -%arg9 + %arg11] : memref<?x30xf64>
                %7 = affine.load %arg5[-%arg10 + %arg9, -%arg9 + %arg11] : memref<?x30xf64>
                %8 = affine.load %arg5[-%arg10 + %arg9, -%arg9 + %arg11 - 1] : memref<?x30xf64>
                %9 = arith.subf %7, %8 : f64
                %10 = arith.mulf %9, %cst_0 : f64
                %11 = arith.subf %6, %10 : f64
                affine.store %11, %arg3[-%arg10 + %arg9, -%arg9 + %arg11] : memref<?x30xf64>
                %12 = affine.load %arg5[-%arg10 + %arg9 - 1, -%arg9 + %arg11 - 1] : memref<?x30xf64>
                %13 = affine.load %arg3[-%arg10 + %arg9 - 1, -%arg9 + %arg11] : memref<?x30xf64>
                %14 = affine.load %arg3[-%arg10 + %arg9 - 1, -%arg9 + %arg11 - 1] : memref<?x30xf64>
                %15 = arith.subf %13, %14 : f64
                %16 = affine.load %arg4[-%arg10 + %arg9, -%arg9 + %arg11 - 1] : memref<?x30xf64>
                %17 = arith.addf %15, %16 : f64
                %18 = affine.load %arg4[-%arg10 + %arg9 - 1, -%arg9 + %arg11 - 1] : memref<?x30xf64>
                %19 = arith.subf %17, %18 : f64
                %20 = arith.mulf %19, %cst : f64
                %21 = arith.subf %12, %20 : f64
                affine.store %21, %arg5[-%arg10 + %arg9 - 1, -%arg9 + %arg11 - 1] : memref<?x30xf64>
              }
            }
          }
        }
      }
    }
    return
  }
}

