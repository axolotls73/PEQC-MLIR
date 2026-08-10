module {
  func.func @kernel_matmul(%arg0: memref<16x16xf64>, %arg1: memref<16x16xf64>, %arg2: memref<16x16xf64>) {
    %c0 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    scf.for %arg3 = %c0 to %c16 step %c1 {
      scf.for %arg4 = %c0 to %c16 step %c1 {
        scf.for %arg5 = %c0 to %c16 step %c1 {
          %0 = memref.load %arg0[%arg3, %arg5] : memref<16x16xf64>
          %1 = memref.load %arg1[%arg5, %arg4] : memref<16x16xf64>
          %2 = memref.load %arg2[%arg3, %arg4] : memref<16x16xf64>
          %3 = arith.mulf %0, %1 : f64
          %4 = arith.addf %2, %3 : f64
          memref.store %4, %arg2[%arg3, %arg4] : memref<16x16xf64>
        }
      }
    }
    return
  }
}

