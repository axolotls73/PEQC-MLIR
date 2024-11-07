module {
  func.func @kernel_lu(%arg0: i32, %arg1: memref<?x40xf64>) {
    %c0 = arith.constant 0 : index
    %c40 = arith.constant 40 : index
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %c0 to %c40 step %c1 {
      %c0_0 = arith.constant 0 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg3 = %c0_0 to %arg2 step %c1_1 {
        %c0_5 = arith.constant 0 : index
        %c1_6 = arith.constant 1 : index
        scf.for %arg4 = %c0_5 to %arg3 step %c1_6 {
          %5 = memref.load %arg1[%arg2, %arg4] : memref<?x40xf64>
          %6 = memref.load %arg1[%arg4, %arg3] : memref<?x40xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = memref.load %arg1[%arg2, %arg3] : memref<?x40xf64>
          %9 = arith.subf %8, %7 : f64
          memref.store %9, %arg1[%arg2, %arg3] : memref<?x40xf64>
        }
        %2 = memref.load %arg1[%arg3, %arg3] : memref<?x40xf64>
        %3 = memref.load %arg1[%arg2, %arg3] : memref<?x40xf64>
        %4 = arith.divf %3, %2 : f64
        memref.store %4, %arg1[%arg2, %arg3] : memref<?x40xf64>
      }
      %c0_2 = arith.constant 0 : index
      %c-1 = arith.constant -1 : index
      %0 = arith.muli %arg2, %c-1 : index
      %c40_3 = arith.constant 40 : index
      %1 = arith.addi %0, %c40_3 : index
      %c1_4 = arith.constant 1 : index
      scf.for %arg3 = %c0_2 to %1 step %c1_4 {
        %2 = arith.addi %arg2, %arg3 : index
        %c0_5 = arith.constant 0 : index
        %c1_6 = arith.constant 1 : index
        scf.for %arg4 = %c0_5 to %arg2 step %c1_6 {
          %3 = memref.load %arg1[%arg2, %arg4] : memref<?x40xf64>
          %4 = memref.load %arg1[%arg4, %2] : memref<?x40xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = memref.load %arg1[%arg2, %2] : memref<?x40xf64>
          %7 = arith.subf %6, %5 : f64
          memref.store %7, %arg1[%arg2, %2] : memref<?x40xf64>
        }
      }
    }
    return
  }
}

