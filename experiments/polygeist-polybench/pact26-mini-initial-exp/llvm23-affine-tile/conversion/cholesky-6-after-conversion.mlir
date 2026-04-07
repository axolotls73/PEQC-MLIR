module {
  func.func @kernel_cholesky(%arg0: i32, %arg1: memref<?x40xf64>) {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c40 = arith.constant 40 : index
    %c32 = arith.constant 32 : index
    scf.for %arg2 = %c0 to %c40 step %c32 {
      %0 = arith.addi %arg2, %c32 : index
      %1 = arith.minsi %0, %c40 : index
      scf.for %arg3 = %arg2 to %1 step %c1 {
        scf.for %arg4 = %c0 to %arg3 step %c1 {
          scf.for %arg5 = %c0 to %arg4 step %c1 {
            %7 = memref.load %arg1[%arg3, %arg5] : memref<?x40xf64>
            %8 = memref.load %arg1[%arg4, %arg5] : memref<?x40xf64>
            %9 = arith.mulf %7, %8 : f64
            %10 = memref.load %arg1[%arg3, %arg4] : memref<?x40xf64>
            %11 = arith.subf %10, %9 : f64
            memref.store %11, %arg1[%arg3, %arg4] : memref<?x40xf64>
          }
          %4 = memref.load %arg1[%arg4, %arg4] : memref<?x40xf64>
          %5 = memref.load %arg1[%arg3, %arg4] : memref<?x40xf64>
          %6 = arith.divf %5, %4 : f64
          memref.store %6, %arg1[%arg3, %arg4] : memref<?x40xf64>
        }
        scf.for %arg4 = %c0 to %arg3 step %c1 {
          %4 = memref.load %arg1[%arg3, %arg4] : memref<?x40xf64>
          %5 = arith.mulf %4, %4 : f64
          %6 = memref.load %arg1[%arg3, %arg3] : memref<?x40xf64>
          %7 = arith.subf %6, %5 : f64
          memref.store %7, %arg1[%arg3, %arg3] : memref<?x40xf64>
        }
        %2 = memref.load %arg1[%arg3, %arg3] : memref<?x40xf64>
        %3 = math.sqrt %2 : f64
        memref.store %3, %arg1[%arg3, %arg3] : memref<?x40xf64>
      }
    }
    return
  }
}

