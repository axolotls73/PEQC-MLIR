module {
  func.func @kernel_cholesky(%arg0: i32, %arg1: memref<?x40xf64>) {
    %c0 = arith.constant 0 : index
    %c40 = arith.constant 40 : index
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %c0 to %c40 step %c1 {
      %0 = arith.addi %arg2, %c1 : index
      scf.for %arg3 = %arg2 to %0 step %c1 {
        scf.for %arg4 = %c0 to %arg3 step %c1 {
          scf.for %arg5 = %c0 to %arg4 step %c1 {
            %6 = memref.load %arg1[%arg3, %arg5] : memref<?x40xf64>
            %7 = memref.load %arg1[%arg4, %arg5] : memref<?x40xf64>
            %8 = arith.mulf %6, %7 : f64
            %9 = memref.load %arg1[%arg3, %arg4] : memref<?x40xf64>
            %10 = arith.subf %9, %8 : f64
            memref.store %10, %arg1[%arg3, %arg4] : memref<?x40xf64>
          }
          %3 = memref.load %arg1[%arg4, %arg4] : memref<?x40xf64>
          %4 = memref.load %arg1[%arg3, %arg4] : memref<?x40xf64>
          %5 = arith.divf %4, %3 : f64
          memref.store %5, %arg1[%arg3, %arg4] : memref<?x40xf64>
        }
        scf.for %arg4 = %c0 to %arg3 step %c1 {
          %3 = memref.load %arg1[%arg3, %arg4] : memref<?x40xf64>
          %4 = arith.mulf %3, %3 : f64
          %5 = memref.load %arg1[%arg3, %arg3] : memref<?x40xf64>
          %6 = arith.subf %5, %4 : f64
          memref.store %6, %arg1[%arg3, %arg3] : memref<?x40xf64>
        }
        %1 = memref.load %arg1[%arg3, %arg3] : memref<?x40xf64>
        %2 = math.sqrt %1 : f64
        memref.store %2, %arg1[%arg3, %arg3] : memref<?x40xf64>
      }
    }
    return
  }
}

