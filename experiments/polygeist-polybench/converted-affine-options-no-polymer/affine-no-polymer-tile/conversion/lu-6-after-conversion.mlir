module {
  func.func @kernel_lu(%arg0: i32, %arg1: memref<?x40xf64>) {
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
            %5 = memref.load %arg1[%arg3, %arg5] : memref<?x40xf64>
            %6 = memref.load %arg1[%arg5, %arg4] : memref<?x40xf64>
            %7 = arith.mulf %5, %6 : f64
            %8 = memref.load %arg1[%arg3, %arg4] : memref<?x40xf64>
            %9 = arith.subf %8, %7 : f64
            memref.store %9, %arg1[%arg3, %arg4] : memref<?x40xf64>
          }
          %2 = memref.load %arg1[%arg4, %arg4] : memref<?x40xf64>
          %3 = memref.load %arg1[%arg3, %arg4] : memref<?x40xf64>
          %4 = arith.divf %3, %2 : f64
          memref.store %4, %arg1[%arg3, %arg4] : memref<?x40xf64>
        }
        scf.for %arg4 = %arg3 to %c40 step %c1 {
          scf.for %arg5 = %c0 to %arg3 step %c1 {
            %2 = memref.load %arg1[%arg3, %arg5] : memref<?x40xf64>
            %3 = memref.load %arg1[%arg5, %arg4] : memref<?x40xf64>
            %4 = arith.mulf %2, %3 : f64
            %5 = memref.load %arg1[%arg3, %arg4] : memref<?x40xf64>
            %6 = arith.subf %5, %4 : f64
            memref.store %6, %arg1[%arg3, %arg4] : memref<?x40xf64>
          }
        }
      }
    }
    return
  }
}

