module {
  func.func @kernel_lu(%arg0: i32, %arg1: memref<?x40xf64>) {
    %c0 = arith.constant 0 : index
    %c40 = arith.constant 40 : index
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %c0 to %c40 step %c1 {
      scf.for %arg3 = %c0 to %arg2 step %c1 {
        scf.for %arg4 = %c0 to %arg3 step %c1 {
          %3 = memref.load %arg1[%arg2, %arg4] : memref<?x40xf64>
          %4 = memref.load %arg1[%arg4, %arg3] : memref<?x40xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = memref.load %arg1[%arg2, %arg3] : memref<?x40xf64>
          %7 = arith.subf %6, %5 : f64
          memref.store %7, %arg1[%arg2, %arg3] : memref<?x40xf64>
        }
        %0 = memref.load %arg1[%arg3, %arg3] : memref<?x40xf64>
        %1 = memref.load %arg1[%arg2, %arg3] : memref<?x40xf64>
        %2 = arith.divf %1, %0 : f64
        memref.store %2, %arg1[%arg2, %arg3] : memref<?x40xf64>
      }
      scf.for %arg3 = %c0 to %arg2 step %c1 {
        scf.for %arg4 = %arg2 to %c40 step %c1 {
          %0 = memref.load %arg1[%arg2, %arg3] : memref<?x40xf64>
          %1 = memref.load %arg1[%arg3, %arg4] : memref<?x40xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = memref.load %arg1[%arg2, %arg4] : memref<?x40xf64>
          %4 = arith.subf %3, %2 : f64
          memref.store %4, %arg1[%arg2, %arg4] : memref<?x40xf64>
        }
      }
    }
    return
  }
}

