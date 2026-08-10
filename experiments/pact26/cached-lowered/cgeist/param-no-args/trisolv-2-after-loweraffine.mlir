module {
  func.func @kernel_trisolv(%arg0: i32, %arg1: memref<?x40xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %0 = arith.index_cast %arg0 : i32 to index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg4 = %c0 to %0 step %c1 {
      %1 = memref.load %arg3[%arg4] : memref<?xf64>
      memref.store %1, %arg2[%arg4] : memref<?xf64>
      %c0_0 = arith.constant 0 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg5 = %c0_0 to %arg4 step %c1_1 {
        %5 = memref.load %arg1[%arg4, %arg5] : memref<?x40xf64>
        %6 = memref.load %arg2[%arg5] : memref<?xf64>
        %7 = arith.mulf %5, %6 : f64
        %8 = memref.load %arg2[%arg4] : memref<?xf64>
        %9 = arith.subf %8, %7 : f64
        memref.store %9, %arg2[%arg4] : memref<?xf64>
      }
      %2 = memref.load %arg2[%arg4] : memref<?xf64>
      %3 = memref.load %arg1[%arg4, %arg4] : memref<?x40xf64>
      %4 = arith.divf %2, %3 : f64
      memref.store %4, %arg2[%arg4] : memref<?xf64>
    }
    return
  }
}

