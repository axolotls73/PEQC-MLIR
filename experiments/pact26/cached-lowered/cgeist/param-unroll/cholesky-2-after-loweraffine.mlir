module {
  func.func @kernel_cholesky(%arg0: i32, %arg1: memref<?x40xf64>) {
    %0 = arith.index_cast %arg0 : i32 to index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %c0 to %0 step %c1 {
      %c0_0 = arith.constant 0 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg3 = %c0_0 to %arg2 step %c1_1 {
        %c0_4 = arith.constant 0 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg4 = %c0_4 to %arg3 step %c1_5 {
          %6 = memref.load %arg1[%arg2, %arg4] : memref<?x40xf64>
          %7 = memref.load %arg1[%arg3, %arg4] : memref<?x40xf64>
          %8 = arith.mulf %6, %7 : f64
          %9 = memref.load %arg1[%arg2, %arg3] : memref<?x40xf64>
          %10 = arith.subf %9, %8 : f64
          memref.store %10, %arg1[%arg2, %arg3] : memref<?x40xf64>
        }
        %3 = memref.load %arg1[%arg3, %arg3] : memref<?x40xf64>
        %4 = memref.load %arg1[%arg2, %arg3] : memref<?x40xf64>
        %5 = arith.divf %4, %3 : f64
        memref.store %5, %arg1[%arg2, %arg3] : memref<?x40xf64>
      }
      %c0_2 = arith.constant 0 : index
      %c1_3 = arith.constant 1 : index
      scf.for %arg3 = %c0_2 to %arg2 step %c1_3 {
        %3 = memref.load %arg1[%arg2, %arg3] : memref<?x40xf64>
        %4 = arith.mulf %3, %3 : f64
        %5 = memref.load %arg1[%arg2, %arg2] : memref<?x40xf64>
        %6 = arith.subf %5, %4 : f64
        memref.store %6, %arg1[%arg2, %arg2] : memref<?x40xf64>
      }
      %1 = memref.load %arg1[%arg2, %arg2] : memref<?x40xf64>
      %2 = math.sqrt %1 : f64
      memref.store %2, %arg1[%arg2, %arg2] : memref<?x40xf64>
    }
    return
  }
}

