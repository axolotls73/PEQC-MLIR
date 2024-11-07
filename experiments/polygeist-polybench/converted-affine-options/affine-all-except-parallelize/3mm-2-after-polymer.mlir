#map = affine_map<(d0) -> (d0 - 19)>
#set = affine_set<(d0) : (d0 == 0)>
#set1 = affine_set<(d0) : (d0 - 1 == 0)>
module {
  func.func private @S0(%arg0: memref<?x18xf64>, %arg1: index, %arg2: index) attributes {scop.stmt} {
    %cst = arith.constant 0.000000e+00 : f64
    affine.store %cst, %arg0[%arg1, %arg2] : memref<?x18xf64>
    return
  }
  func.func private @S1(%arg0: memref<?x18xf64>, %arg1: index, %arg2: index, %arg3: memref<?x18xf64>, %arg4: index, %arg5: memref<?x20xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1, %arg2] : memref<?x18xf64>
    %1 = affine.load %arg5[%arg1, %arg4] : memref<?x20xf64>
    %2 = affine.load %arg3[%arg4, %arg2] : memref<?x18xf64>
    %3 = arith.mulf %1, %2 : f64
    %4 = arith.addf %0, %3 : f64
    affine.store %4, %arg0[%arg1, %arg2] : memref<?x18xf64>
    return
  }
  func.func private @S2(%arg0: memref<?x22xf64>, %arg1: index, %arg2: index) attributes {scop.stmt} {
    %cst = arith.constant 0.000000e+00 : f64
    affine.store %cst, %arg0[%arg1, %arg2] : memref<?x22xf64>
    return
  }
  func.func private @S3(%arg0: memref<?x22xf64>, %arg1: index, %arg2: index, %arg3: memref<?x22xf64>, %arg4: index, %arg5: memref<?x24xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1, %arg2] : memref<?x22xf64>
    %1 = affine.load %arg5[%arg1, %arg4] : memref<?x24xf64>
    %2 = affine.load %arg3[%arg4, %arg2] : memref<?x22xf64>
    %3 = arith.mulf %1, %2 : f64
    %4 = arith.addf %0, %3 : f64
    affine.store %4, %arg0[%arg1, %arg2] : memref<?x22xf64>
    return
  }
  func.func private @S4(%arg0: memref<?x22xf64>, %arg1: index, %arg2: index) attributes {scop.stmt} {
    %cst = arith.constant 0.000000e+00 : f64
    affine.store %cst, %arg0[%arg1, %arg2] : memref<?x22xf64>
    return
  }
  func.func private @S5(%arg0: memref<?x22xf64>, %arg1: index, %arg2: index, %arg3: memref<?x22xf64>, %arg4: index, %arg5: memref<?x18xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1, %arg2] : memref<?x22xf64>
    %1 = affine.load %arg5[%arg1, %arg4] : memref<?x18xf64>
    %2 = affine.load %arg3[%arg4, %arg2] : memref<?x22xf64>
    %3 = arith.mulf %1, %2 : f64
    %4 = arith.addf %0, %3 : f64
    affine.store %4, %arg0[%arg1, %arg2] : memref<?x22xf64>
    return
  }
  func.func @kernel_3mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: memref<?x18xf64>, %arg6: memref<?x20xf64>, %arg7: memref<?x18xf64>, %arg8: memref<?x22xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x22xf64>, %arg11: memref<?x22xf64>) {
    affine.for %arg12 = 0 to 16 {
      affine.for %arg13 = 0 to 22 {
        func.call @S4(%arg11, %arg12, %arg13) : (memref<?x22xf64>, index, index) -> ()
        func.call @S2(%arg8, %arg12, %arg13) : (memref<?x22xf64>, index, index) -> ()
      }
    }
    affine.for %arg12 = 16 to 18 {
      affine.for %arg13 = 0 to 22 {
        func.call @S2(%arg8, %arg12, %arg13) : (memref<?x22xf64>, index, index) -> ()
      }
    }
    affine.for %arg12 = 0 to 18 {
      affine.for %arg13 = 0 to 24 {
        affine.for %arg14 = 0 to 22 {
          func.call @S3(%arg8, %arg12, %arg14, %arg10, %arg13, %arg9) : (memref<?x22xf64>, index, index, memref<?x22xf64>, index, memref<?x24xf64>) -> ()
        }
      }
    }
    affine.for %arg12 = 0 to 16 {
      affine.for %arg13 = 0 to 18 {
        func.call @S0(%arg5, %arg12, %arg13) : (memref<?x18xf64>, index, index) -> ()
      }
    }
    affine.for %arg12 = 0 to 2 {
      affine.if #set(%arg12) {
        affine.for %arg13 = 0 to 16 {
          affine.for %arg14 = 0 to 18 {
            affine.for %arg15 = 0 to 20 {
              func.call @S1(%arg5, %arg13, %arg14, %arg7, %arg15, %arg6) : (memref<?x18xf64>, index, index, memref<?x18xf64>, index, memref<?x20xf64>) -> ()
            }
            affine.for %arg15 = 19 to 32 {
              %0 = affine.apply #map(%arg15)
              func.call @S5(%arg11, %arg13, %0, %arg8, %arg14, %arg5) : (memref<?x22xf64>, index, index, memref<?x22xf64>, index, memref<?x18xf64>) -> ()
            }
          }
        }
      }
      affine.if #set1(%arg12) {
        affine.for %arg13 = 0 to 16 {
          affine.for %arg14 = 0 to 18 {
            affine.for %arg15 = 32 to 41 {
              %0 = affine.apply #map(%arg15)
              func.call @S5(%arg11, %arg13, %0, %arg8, %arg14, %arg5) : (memref<?x22xf64>, index, index, memref<?x22xf64>, index, memref<?x18xf64>) -> ()
            }
          }
        }
      }
    }
    return
  }
}

