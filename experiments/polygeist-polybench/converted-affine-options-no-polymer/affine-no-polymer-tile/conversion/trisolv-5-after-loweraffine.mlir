module {
  func.func @kernel_trisolv(%arg0: i32, %arg1: memref<?x40xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %c0 = arith.constant 0 : index
    %c40 = arith.constant 40 : index
    %c1 = arith.constant 1 : index
    scf.for %arg4 = %c0 to %c40 step %c1 {
      %c1_0 = arith.constant 1 : index
      %0 = arith.addi %arg4, %c1_0 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg5 = %arg4 to %0 step %c1_1 {
        %1 = memref.load %arg3[%arg5] : memref<?xf64>
        memref.store %1, %arg2[%arg5] : memref<?xf64>
        %c0_2 = arith.constant 0 : index
        %c1_3 = arith.constant 1 : index
        scf.for %arg6 = %c0_2 to %arg5 step %c1_3 {
          %5 = memref.load %arg1[%arg5, %arg6] : memref<?x40xf64>
          %6 = memref.load %arg2[%arg6] : memref<?xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = memref.load %arg2[%arg5] : memref<?xf64>
          %9 = arith.subf %8, %7 : f64
          memref.store %9, %arg2[%arg5] : memref<?xf64>
        }
        %2 = memref.load %arg2[%arg5] : memref<?xf64>
        %3 = memref.load %arg1[%arg5, %arg5] : memref<?x40xf64>
        %4 = arith.divf %2, %3 : f64
        memref.store %4, %arg2[%arg5] : memref<?xf64>
      }
    }
    return
  }
}

