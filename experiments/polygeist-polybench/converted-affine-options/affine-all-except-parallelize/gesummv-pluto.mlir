module {
  func.func private @S0(%arg0: memref<?xf64>, %arg1: index) attributes {scop.stmt} {
    %cst = arith.constant 0.000000e+00 : f64
    affine.store %cst, %arg0[%arg1] : memref<?xf64>
    return
  }
  func.func private @S1(%arg0: memref<?xf64>, %arg1: index) attributes {scop.stmt} {
    %cst = arith.constant 0.000000e+00 : f64
    affine.store %cst, %arg0[%arg1] : memref<?xf64>
    return
  }
  func.func private @S2(%arg0: memref<?xf64>, %arg1: index, %arg2: memref<?xf64>, %arg3: index, %arg4: memref<?x30xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg4[%arg1, %arg3] : memref<?x30xf64>
    %1 = affine.load %arg2[%arg3] : memref<?xf64>
    %2 = arith.mulf %0, %1 : f64
    %3 = affine.load %arg0[%arg1] : memref<?xf64>
    %4 = arith.addf %2, %3 : f64
    affine.store %4, %arg0[%arg1] : memref<?xf64>
    return
  }
  func.func private @S3(%arg0: memref<?xf64>, %arg1: index, %arg2: memref<?xf64>, %arg3: index, %arg4: memref<?x30xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg4[%arg1, %arg3] : memref<?x30xf64>
    %1 = affine.load %arg2[%arg3] : memref<?xf64>
    %2 = arith.mulf %0, %1 : f64
    %3 = affine.load %arg0[%arg1] : memref<?xf64>
    %4 = arith.addf %2, %3 : f64
    affine.store %4, %arg0[%arg1] : memref<?xf64>
    return
  }
  func.func private @S4(%arg0: memref<?xf64>, %arg1: index, %arg2: f64, %arg3: f64, %arg4: memref<?xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg4[%arg1] : memref<?xf64>
    %1 = arith.mulf %arg3, %0 : f64
    %2 = affine.load %arg0[%arg1] : memref<?xf64>
    %3 = arith.mulf %arg2, %2 : f64
    %4 = arith.addf %1, %3 : f64
    affine.store %4, %arg0[%arg1] : memref<?xf64>
    return
  }
  func.func @kernel_gesummv(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>) {
    affine.for %arg8 = 0 to 30 {
      func.call @S1(%arg7, %arg8) : (memref<?xf64>, index) -> ()
    }
    affine.for %arg8 = 0 to 30 {
      affine.for %arg9 = 0 to 30 {
        func.call @S3(%arg7, %arg8, %arg6, %arg9, %arg4) : (memref<?xf64>, index, memref<?xf64>, index, memref<?x30xf64>) -> ()
      }
    }
    affine.for %arg8 = 0 to 30 {
      func.call @S0(%arg5, %arg8) : (memref<?xf64>, index) -> ()
    }
    affine.for %arg8 = 0 to 30 {
      affine.for %arg9 = 0 to 30 {
        func.call @S2(%arg5, %arg8, %arg6, %arg9, %arg3) : (memref<?xf64>, index, memref<?xf64>, index, memref<?x30xf64>) -> ()
      }
    }
    affine.for %arg8 = 0 to 30 {
      func.call @S4(%arg7, %arg8, %arg2, %arg1, %arg5) : (memref<?xf64>, index, f64, f64, memref<?xf64>) -> ()
    }
    return
  }
}

