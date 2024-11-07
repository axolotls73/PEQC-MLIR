module {
  func.func private @S0(%arg0: memref<?x25xf64>, %arg1: index, %arg2: index, %arg3: f64) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1, %arg2] : memref<?x25xf64>
    %1 = arith.mulf %0, %arg3 : f64
    affine.store %1, %arg0[%arg1, %arg2] : memref<?x25xf64>
    return
  }
  func.func private @S1(%arg0: memref<?x25xf64>, %arg1: index, %arg2: index, %arg3: memref<?x25xf64>, %arg4: index, %arg5: f64, %arg6: memref<?x30xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1, %arg2] : memref<?x25xf64>
    %1 = affine.load %arg6[%arg1, %arg4] : memref<?x30xf64>
    %2 = arith.mulf %arg5, %1 : f64
    %3 = affine.load %arg3[%arg4, %arg2] : memref<?x25xf64>
    %4 = arith.mulf %2, %3 : f64
    %5 = arith.addf %0, %4 : f64
    affine.store %5, %arg0[%arg1, %arg2] : memref<?x25xf64>
    return
  }
  func.func @kernel_gemm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: f64, %arg4: f64, %arg5: memref<?x25xf64>, %arg6: memref<?x30xf64>, %arg7: memref<?x25xf64>) {
    affine.for %arg8 = 0 to 20 {
      affine.for %arg9 = 0 to 25 {
        func.call @S0(%arg5, %arg8, %arg9, %arg4) : (memref<?x25xf64>, index, index, f64) -> ()
      }
    }
    affine.for %arg8 = 0 to 20 {
      affine.for %arg9 = 0 to 30 {
        affine.for %arg10 = 0 to 25 {
          func.call @S1(%arg5, %arg8, %arg10, %arg7, %arg9, %arg3, %arg6) : (memref<?x25xf64>, index, index, memref<?x25xf64>, index, f64, memref<?x30xf64>) -> ()
        }
      }
    }
    return
  }
}

