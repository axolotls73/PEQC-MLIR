#map = affine_map<(d0) -> (d0 + 1)>
module {
  func.func private @S0(%arg0: memref<?xf64>, %arg1: index) attributes {scop.stmt} {
    %cst = arith.constant 0.000000e+00 : f64
    affine.store %cst, %arg0[%arg1] : memref<?xf64>
    return
  }
  func.func private @S1(%arg0: memref<?xf64>, %arg1: index, %arg2: memref<?x28xf64>, %arg3: index) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1] : memref<?xf64>
    %1 = affine.load %arg2[%arg3, %arg1] : memref<?x28xf64>
    %2 = arith.addf %0, %1 : f64
    affine.store %2, %arg0[%arg1] : memref<?xf64>
    return
  }
  func.func private @S2(%arg0: memref<?xf64>, %arg1: index, %arg2: f64) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1] : memref<?xf64>
    %1 = arith.divf %0, %arg2 : f64
    affine.store %1, %arg0[%arg1] : memref<?xf64>
    return
  }
  func.func private @S3(%arg0: memref<?xf64>, %arg1: index) attributes {scop.stmt} {
    %cst = arith.constant 0.000000e+00 : f64
    affine.store %cst, %arg0[%arg1] : memref<?xf64>
    return
  }
  func.func private @S4(%arg0: memref<?xf64>, %arg1: index, %arg2: memref<?xf64>, %arg3: memref<?x28xf64>, %arg4: index) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1] : memref<?xf64>
    %1 = affine.load %arg3[%arg4, %arg1] : memref<?x28xf64>
    %2 = affine.load %arg2[%arg1] : memref<?xf64>
    %3 = arith.subf %1, %2 : f64
    %4 = arith.mulf %3, %3 : f64
    %5 = arith.addf %0, %4 : f64
    affine.store %5, %arg0[%arg1] : memref<?xf64>
    return
  }
  func.func private @S5(%arg0: memref<?xf64>, %arg1: index, %arg2: f64) attributes {scop.stmt} {
    %cst = arith.constant 1.000000e-01 : f64
    %cst_0 = arith.constant 1.000000e+00 : f64
    %0 = affine.load %arg0[%arg1] : memref<?xf64>
    %1 = arith.divf %0, %arg2 : f64
    %2 = math.sqrt %1 : f64
    %3 = arith.cmpf ole, %2, %cst : f64
    %4 = arith.select %3, %cst_0, %2 : f64
    affine.store %4, %arg0[%arg1] : memref<?xf64>
    return
  }
  func.func private @S6(%arg0: memref<1xf64>, %arg1: f64) attributes {scop.stmt} {
    %0 = math.sqrt %arg1 : f64
    affine.store %0, %arg0[0] : memref<1xf64>
    return
  }
  func.func private @S7(%arg0: memref<?x28xf64>, %arg1: index, %arg2: index, %arg3: memref<?xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1, %arg2] : memref<?x28xf64>
    %1 = affine.load %arg3[%arg2] : memref<?xf64>
    %2 = arith.subf %0, %1 : f64
    affine.store %2, %arg0[%arg1, %arg2] : memref<?x28xf64>
    return
  }
  func.func private @S8(%arg0: memref<?x28xf64>, %arg1: index, %arg2: index, %arg3: memref<?xf64>, %arg4: memref<1xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1, %arg2] : memref<?x28xf64>
    %1 = affine.load %arg4[0] : memref<1xf64>
    %2 = affine.load %arg3[%arg2] : memref<?xf64>
    %3 = arith.mulf %1, %2 : f64
    %4 = arith.divf %0, %3 : f64
    affine.store %4, %arg0[%arg1, %arg2] : memref<?x28xf64>
    return
  }
  func.func private @S9(%arg0: memref<?x28xf64>, %arg1: index) attributes {scop.stmt} {
    %cst = arith.constant 1.000000e+00 : f64
    affine.store %cst, %arg0[%arg1, %arg1] : memref<?x28xf64>
    return
  }
  func.func private @S10(%arg0: memref<?x28xf64>, %arg1: index, %arg2: index) attributes {scop.stmt} {
    %cst = arith.constant 0.000000e+00 : f64
    affine.store %cst, %arg0[%arg1, %arg2] : memref<?x28xf64>
    return
  }
  func.func private @S11(%arg0: memref<?x28xf64>, %arg1: index, %arg2: index, %arg3: memref<?x28xf64>, %arg4: index) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1, %arg2] : memref<?x28xf64>
    %1 = affine.load %arg3[%arg4, %arg1] : memref<?x28xf64>
    %2 = affine.load %arg3[%arg4, %arg2] : memref<?x28xf64>
    %3 = arith.mulf %1, %2 : f64
    %4 = arith.addf %0, %3 : f64
    affine.store %4, %arg0[%arg1, %arg2] : memref<?x28xf64>
    return
  }
  func.func private @S12(%arg0: memref<?x28xf64>, %arg1: index, %arg2: index) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg2, %arg1] : memref<?x28xf64>
    affine.store %0, %arg0[%arg1, %arg2] : memref<?x28xf64>
    return
  }
  func.func private @S13(%arg0: memref<?x28xf64>) attributes {scop.stmt} {
    %cst = arith.constant 1.000000e+00 : f64
    affine.store %cst, %arg0[27, 27] : memref<?x28xf64>
    return
  }
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %alloca = memref.alloca() {scop.scratchpad} : memref<1xf64>
    call @S13(%arg4) : (memref<?x28xf64>) -> ()
    affine.for %arg7 = 0 to 27 {
      affine.for %arg8 = #map(%arg7) to 28 {
        func.call @S10(%arg4, %arg7, %arg8) : (memref<?x28xf64>, index, index) -> ()
      }
    }
    affine.for %arg7 = 0 to 27 {
      func.call @S9(%arg4, %arg7) : (memref<?x28xf64>, index) -> ()
    }
    call @S6(%alloca, %arg2) : (memref<1xf64>, f64) -> ()
    affine.for %arg7 = 0 to 28 {
      func.call @S3(%arg6, %arg7) : (memref<?xf64>, index) -> ()
      func.call @S0(%arg5, %arg7) : (memref<?xf64>, index) -> ()
    }
    affine.for %arg7 = 0 to 32 {
      affine.for %arg8 = 0 to 28 {
        func.call @S1(%arg5, %arg8, %arg3, %arg7) : (memref<?xf64>, index, memref<?x28xf64>, index) -> ()
      }
    }
    affine.for %arg7 = 0 to 28 {
      func.call @S2(%arg5, %arg7, %arg2) : (memref<?xf64>, index, f64) -> ()
    }
    affine.for %arg7 = 0 to 32 {
      affine.for %arg8 = 0 to 28 {
        func.call @S4(%arg6, %arg8, %arg5, %arg3, %arg7) : (memref<?xf64>, index, memref<?xf64>, memref<?x28xf64>, index) -> ()
        func.call @S7(%arg3, %arg7, %arg8, %arg5) : (memref<?x28xf64>, index, index, memref<?xf64>) -> ()
      }
    }
    affine.for %arg7 = 0 to 28 {
      func.call @S5(%arg6, %arg7, %arg2) : (memref<?xf64>, index, f64) -> ()
    }
    affine.for %arg7 = 0 to 32 {
      affine.for %arg8 = 0 to 28 {
        func.call @S8(%arg3, %arg7, %arg8, %arg6, %alloca) : (memref<?x28xf64>, index, index, memref<?xf64>, memref<1xf64>) -> ()
      }
    }
    affine.for %arg7 = 0 to 27 {
      affine.for %arg8 = 0 to 32 {
        affine.for %arg9 = #map(%arg7) to 28 {
          func.call @S11(%arg4, %arg7, %arg9, %arg3, %arg8) : (memref<?x28xf64>, index, index, memref<?x28xf64>, index) -> ()
        }
      }
    }
    affine.for %arg7 = 0 to 27 {
      affine.for %arg8 = #map(%arg7) to 28 {
        func.call @S12(%arg4, %arg8, %arg7) : (memref<?x28xf64>, index, index) -> ()
      }
    }
    return
  }
}

