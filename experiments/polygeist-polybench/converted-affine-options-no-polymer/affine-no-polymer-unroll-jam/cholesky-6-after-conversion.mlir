module {
  func.func @kernel_cholesky(%arg0: i32, %arg1: memref<?x40xf64>) {
    %c0 = arith.constant 0 : index
    %c40 = arith.constant 40 : index
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %c0 to %c40 step %c1 {
      scf.for %arg3 = %c0 to %arg2 step %c1 {
        scf.for %arg4 = %c0 to %arg3 step %c1 {
          %5 = memref.load %arg1[%arg2, %arg4] : memref<?x40xf64>
          %6 = memref.load %arg1[%arg3, %arg4] : memref<?x40xf64>
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
      scf.for %arg3 = %c0 to %arg2 step %c1 {
        %2 = memref.load %arg1[%arg2, %arg3] : memref<?x40xf64>
        %3 = arith.mulf %2, %2 : f64
        %4 = memref.load %arg1[%arg2, %arg2] : memref<?x40xf64>
        %5 = arith.subf %4, %3 : f64
        memref.store %5, %arg1[%arg2, %arg2] : memref<?x40xf64>
      }
      %0 = memref.load %arg1[%arg2, %arg2] : memref<?x40xf64>
      %1 = math.sqrt %0 : f64
      memref.store %1, %arg1[%arg2, %arg2] : memref<?x40xf64>
    }
    return
  }
}

