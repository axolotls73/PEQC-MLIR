module {
  func.func @kernel_conv2d(%arg0: memref<18x18xf64>, %arg1: memref<3x3xf64>, %arg2: memref<16x16xf64>) {
    %c0 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    %c3 = arith.constant 3 : index
    scf.parallel (%arg3, %arg4) = (%c0, %c0) to (%c16, %c16) step (%c1, %c1) {
      scf.for %arg5 = %c0 to %c3 step %c1 {
        scf.for %arg6 = %c0 to %c3 step %c1 {
          %0 = arith.addi %arg3, %arg5 : index
          %1 = arith.addi %arg4, %arg6 : index
          %2 = memref.load %arg0[%0, %1] : memref<18x18xf64>
          %3 = memref.load %arg1[%arg5, %arg6] : memref<3x3xf64>
          %4 = memref.load %arg2[%arg3, %arg4] : memref<16x16xf64>
          %5 = arith.mulf %2, %3 : f64
          %6 = arith.addf %4, %5 : f64
          memref.store %6, %arg2[%arg3, %arg4] : memref<16x16xf64>
        }
      }
      scf.reduce 
    }
    return
  }
}

