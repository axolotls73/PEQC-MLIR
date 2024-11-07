module {
  func.func @kernel_trisolv(%arg0: i32, %arg1: memref<?x40xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %c0 = arith.constant 0 : index
    %c40 = arith.constant 40 : index
    %c1 = arith.constant 1 : index
    scf.for %arg4 = %c0 to %c40 step %c1 {
      %0 = memref.load %arg3[%arg4] : memref<?xf64>
      memref.store %0, %arg2[%arg4] : memref<?xf64>
      scf.for %arg5 = %c0 to %arg4 step %c1 {
        %4 = memref.load %arg1[%arg4, %arg5] : memref<?x40xf64>
        %5 = memref.load %arg2[%arg5] : memref<?xf64>
        %6 = arith.mulf %4, %5 : f64
        %7 = memref.load %arg2[%arg4] : memref<?xf64>
        %8 = arith.subf %7, %6 : f64
        memref.store %8, %arg2[%arg4] : memref<?xf64>
      }
      %1 = memref.load %arg2[%arg4] : memref<?xf64>
      %2 = memref.load %arg1[%arg4, %arg4] : memref<?x40xf64>
      %3 = arith.divf %1, %2 : f64
      memref.store %3, %arg2[%arg4] : memref<?xf64>
    }
    return
  }
}

