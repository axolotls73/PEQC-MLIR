#map = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0) -> (40, d0 * 32 + 32)>
module {
  func.func private @S0(%arg0: memref<?x40xf64>, %arg1: index, %arg2: index, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1, %arg2] : memref<?x40xf64>
    %1 = affine.load %arg6[%arg1] : memref<?xf64>
    %2 = affine.load %arg5[%arg2] : memref<?xf64>
    %3 = arith.mulf %1, %2 : f64
    %4 = arith.addf %0, %3 : f64
    %5 = affine.load %arg4[%arg1] : memref<?xf64>
    %6 = affine.load %arg3[%arg2] : memref<?xf64>
    %7 = arith.mulf %5, %6 : f64
    %8 = arith.addf %4, %7 : f64
    affine.store %8, %arg0[%arg1, %arg2] : memref<?x40xf64>
    return
  }
  func.func private @S1(%arg0: memref<?xf64>, %arg1: index, %arg2: memref<?xf64>, %arg3: index, %arg4: f64, %arg5: memref<?x40xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1] : memref<?xf64>
    %1 = affine.load %arg5[%arg3, %arg1] : memref<?x40xf64>
    %2 = arith.mulf %arg4, %1 : f64
    %3 = affine.load %arg2[%arg3] : memref<?xf64>
    %4 = arith.mulf %2, %3 : f64
    %5 = arith.addf %0, %4 : f64
    affine.store %5, %arg0[%arg1] : memref<?xf64>
    return
  }
  func.func private @S2(%arg0: memref<?xf64>, %arg1: index, %arg2: memref<?xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1] : memref<?xf64>
    %1 = affine.load %arg2[%arg1] : memref<?xf64>
    %2 = arith.addf %0, %1 : f64
    affine.store %2, %arg0[%arg1] : memref<?xf64>
    return
  }
  func.func private @S3(%arg0: memref<?xf64>, %arg1: index, %arg2: memref<?xf64>, %arg3: index, %arg4: f64, %arg5: memref<?x40xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1] : memref<?xf64>
    %1 = affine.load %arg5[%arg1, %arg3] : memref<?x40xf64>
    %2 = arith.mulf %arg4, %1 : f64
    %3 = affine.load %arg2[%arg3] : memref<?xf64>
    %4 = arith.mulf %2, %3 : f64
    %5 = arith.addf %0, %4 : f64
    affine.store %5, %arg0[%arg1] : memref<?xf64>
    return
  }
  func.func @kernel_gemver(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x40xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>, %arg8: memref<?xf64>, %arg9: memref<?xf64>, %arg10: memref<?xf64>, %arg11: memref<?xf64>) {
    affine.for %arg12 = 0 to 2 {
      affine.for %arg13 = 0 to 2 {
        affine.for %arg14 = #map(%arg13) to min #map1(%arg13) {
          affine.for %arg15 = #map(%arg12) to min #map1(%arg12) {
            func.call @S0(%arg3, %arg14, %arg15, %arg7, %arg6, %arg5, %arg4) : (memref<?x40xf64>, index, index, memref<?xf64>, memref<?xf64>, memref<?xf64>, memref<?xf64>) -> ()
            func.call @S1(%arg9, %arg15, %arg10, %arg14, %arg2, %arg3) : (memref<?xf64>, index, memref<?xf64>, index, f64, memref<?x40xf64>) -> ()
          }
        }
      }
    }
    affine.for %arg12 = 0 to 2 {
      affine.for %arg13 = #map(%arg12) to min #map1(%arg12) {
        func.call @S2(%arg9, %arg13, %arg11) : (memref<?xf64>, index, memref<?xf64>) -> ()
      }
    }
    affine.for %arg12 = 0 to 2 {
      affine.for %arg13 = 0 to 2 {
        affine.for %arg14 = #map(%arg12) to min #map1(%arg12) {
          affine.for %arg15 = #map(%arg13) to min #map1(%arg13) {
            func.call @S3(%arg8, %arg14, %arg9, %arg15, %arg1, %arg3) : (memref<?xf64>, index, memref<?xf64>, index, f64, memref<?x40xf64>) -> ()
          }
        }
      }
    }
    return
  }
}

