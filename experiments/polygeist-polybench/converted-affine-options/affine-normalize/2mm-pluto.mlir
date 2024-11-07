#map = affine_map<(d0) -> (d0 - 21)>
#set = affine_set<(d0) : (d0 == 0)>
#set1 = affine_set<(d0) : (d0 - 1 == 0)>
module {
  func.func private @S0(%arg0: memref<?x18xf64>, %arg1: index, %arg2: index) attributes {scop.stmt} {
    %cst = arith.constant 0.000000e+00 : f64
    affine.store %cst, %arg0[%arg1, %arg2] : memref<?x18xf64>
    return
  }
  func.func private @S1(%arg0: memref<?x18xf64>, %arg1: index, %arg2: index, %arg3: memref<?x18xf64>, %arg4: index, %arg5: f64, %arg6: memref<?x22xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1, %arg2] : memref<?x18xf64>
    %1 = affine.load %arg6[%arg1, %arg4] : memref<?x22xf64>
    %2 = arith.mulf %arg5, %1 : f64
    %3 = affine.load %arg3[%arg4, %arg2] : memref<?x18xf64>
    %4 = arith.mulf %2, %3 : f64
    %5 = arith.addf %0, %4 : f64
    affine.store %5, %arg0[%arg1, %arg2] : memref<?x18xf64>
    return
  }
  func.func private @S2(%arg0: memref<?x24xf64>, %arg1: index, %arg2: index, %arg3: f64) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1, %arg2] : memref<?x24xf64>
    %1 = arith.mulf %0, %arg3 : f64
    affine.store %1, %arg0[%arg1, %arg2] : memref<?x24xf64>
    return
  }
  func.func private @S3(%arg0: memref<?x24xf64>, %arg1: index, %arg2: index, %arg3: memref<?x24xf64>, %arg4: index, %arg5: memref<?x18xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1, %arg2] : memref<?x24xf64>
    %1 = affine.load %arg5[%arg1, %arg4] : memref<?x18xf64>
    %2 = affine.load %arg3[%arg4, %arg2] : memref<?x24xf64>
    %3 = arith.mulf %1, %2 : f64
    %4 = arith.addf %0, %3 : f64
    affine.store %4, %arg0[%arg1, %arg2] : memref<?x24xf64>
    return
  }
  func.func @kernel_2mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: f64, %arg5: f64, %arg6: memref<?x18xf64>, %arg7: memref<?x22xf64>, %arg8: memref<?x18xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x24xf64>) {
    affine.for %arg11 = 0 to 16 {
      affine.for %arg12 = 0 to 18 {
        func.call @S2(%arg10, %arg11, %arg12, %arg5) : (memref<?x24xf64>, index, index, f64) -> ()
        func.call @S0(%arg6, %arg11, %arg12) : (memref<?x18xf64>, index, index) -> ()
      }
      affine.for %arg12 = 18 to 24 {
        func.call @S2(%arg10, %arg11, %arg12, %arg5) : (memref<?x24xf64>, index, index, f64) -> ()
      }
    }
    affine.for %arg11 = 0 to 2 {
      affine.if #set(%arg11) {
        affine.for %arg12 = 0 to 16 {
          affine.for %arg13 = 0 to 18 {
            affine.for %arg14 = 0 to 22 {
              func.call @S1(%arg6, %arg12, %arg13, %arg8, %arg14, %arg4, %arg7) : (memref<?x18xf64>, index, index, memref<?x18xf64>, index, f64, memref<?x22xf64>) -> ()
            }
            affine.for %arg14 = 21 to 32 {
              %0 = affine.apply #map(%arg14)
              func.call @S3(%arg10, %arg12, %0, %arg9, %arg13, %arg6) : (memref<?x24xf64>, index, index, memref<?x24xf64>, index, memref<?x18xf64>) -> ()
            }
          }
        }
      }
      affine.if #set1(%arg11) {
        affine.for %arg12 = 0 to 16 {
          affine.for %arg13 = 0 to 18 {
            affine.for %arg14 = 32 to 45 {
              %0 = affine.apply #map(%arg14)
              func.call @S3(%arg10, %arg12, %0, %arg9, %arg13, %arg6) : (memref<?x24xf64>, index, index, memref<?x24xf64>, index, memref<?x18xf64>) -> ()
            }
          }
        }
      }
    }
    return
  }
}

