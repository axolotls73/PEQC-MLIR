module {
  func.func @kernel_lu(%arg0: i32, %arg1: memref<?x40xf64>) {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c40 = arith.constant 40 : index
    %c4 = arith.constant 4 : index
    scf.for %arg2 = %c0 to %c40 step %c4 {
      %0 = arith.addi %arg2, %c4 : index
      scf.for %arg3 = %arg2 to %0 step %c1 {
        scf.for %arg4 = %c0 to %arg3 step %c1 {
          scf.for %arg5 = %c0 to %arg4 step %c1 {
            %4 = memref.load %arg1[%arg3, %arg5] : memref<?x40xf64>
            %5 = memref.load %arg1[%arg5, %arg4] : memref<?x40xf64>
            %6 = arith.mulf %4, %5 : f64
            %7 = memref.load %arg1[%arg3, %arg4] : memref<?x40xf64>
            %8 = arith.subf %7, %6 : f64
            memref.store %8, %arg1[%arg3, %arg4] : memref<?x40xf64>
          }
          %1 = memref.load %arg1[%arg4, %arg4] : memref<?x40xf64>
          %2 = memref.load %arg1[%arg3, %arg4] : memref<?x40xf64>
          %3 = arith.divf %2, %1 : f64
          memref.store %3, %arg1[%arg3, %arg4] : memref<?x40xf64>
        }
        scf.for %arg4 = %arg3 to %c40 step %c1 {
          scf.for %arg5 = %c0 to %arg3 step %c1 {
            %1 = memref.load %arg1[%arg3, %arg5] : memref<?x40xf64>
            %2 = memref.load %arg1[%arg5, %arg4] : memref<?x40xf64>
            %3 = arith.mulf %1, %2 : f64
            %4 = memref.load %arg1[%arg3, %arg4] : memref<?x40xf64>
            %5 = arith.subf %4, %3 : f64
            memref.store %5, %arg1[%arg3, %arg4] : memref<?x40xf64>
          }
        }
      }
    }
    return
  }
}

