module {
  func.func @kernel_trisolv(%arg0: i32, %arg1: memref<?x40xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %c0 = arith.constant 0 : index
    %c40 = arith.constant 40 : index
    %c32 = arith.constant 32 : index
    scf.for %arg4 = %c0 to %c40 step %c32 {
      %c32_0 = arith.constant 32 : index
      %0 = arith.addi %arg4, %c32_0 : index
      %c40_1 = arith.constant 40 : index
      %1 = arith.minsi %0, %c40_1 : index
      %c1 = arith.constant 1 : index
      scf.for %arg5 = %arg4 to %1 step %c1 {
        %2 = memref.load %arg3[%arg5] : memref<?xf64>
        memref.store %2, %arg2[%arg5] : memref<?xf64>
        %c0_2 = arith.constant 0 : index
        %c1_3 = arith.constant 1 : index
        scf.for %arg6 = %c0_2 to %arg5 step %c1_3 {
          %6 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
          %7 = memref.load %arg2[%arg6] : memref<?xf64>
          %8 = arith.mulf %6, %7 : f64
          %9 = memref.load %arg2[%arg5] : memref<?xf64>
          %10 = arith.subf %9, %8 : f64
          memref.store %10, %arg2[%arg5] : memref<?xf64>
        }
        %3 = memref.load %arg2[%arg5] : memref<?xf64>
        %4 = memref.load %arg1[%arg5, %arg5] : memref<?x40xf64>
        %5 = arith.divf %3, %4 : f64
        memref.store %5, %arg2[%arg5] : memref<?xf64>
      }
    }
    return
  }
}

