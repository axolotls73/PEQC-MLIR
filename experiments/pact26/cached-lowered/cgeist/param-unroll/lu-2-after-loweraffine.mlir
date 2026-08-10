module {
  func.func @kernel_lu(%arg0: i32, %arg1: memref<?x40xf64>) {
    %0 = arith.index_cast %arg0 : i32 to index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %c0 to %0 step %c1 {
      %c0_0 = arith.constant 0 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg3 = %c0_0 to %arg2 step %c1_1 {
        %c0_3 = arith.constant 0 : index
        %c1_4 = arith.constant 1 : index
        scf.for %arg4 = %c0_3 to %arg3 step %c1_4 {
          %4 = memref.load %arg1[%arg2, %arg4] : memref<?x40xf64>
          %5 = memref.load %arg1[%arg4, %arg3] : memref<?x40xf64>
          %6 = arith.mulf %4, %5 : f64
          %7 = memref.load %arg1[%arg2, %arg3] : memref<?x40xf64>
          %8 = arith.subf %7, %6 : f64
          memref.store %8, %arg1[%arg2, %arg3] : memref<?x40xf64>
        }
        %1 = memref.load %arg1[%arg3, %arg3] : memref<?x40xf64>
        %2 = memref.load %arg1[%arg2, %arg3] : memref<?x40xf64>
        %3 = arith.divf %2, %1 : f64
        memref.store %3, %arg1[%arg2, %arg3] : memref<?x40xf64>
      }
      %c1_2 = arith.constant 1 : index
      scf.for %arg3 = %arg2 to %0 step %c1_2 {
        %c0_3 = arith.constant 0 : index
        %c1_4 = arith.constant 1 : index
        scf.for %arg4 = %c0_3 to %arg2 step %c1_4 {
          %1 = memref.load %arg1[%arg2, %arg4] : memref<?x40xf64>
          %2 = memref.load %arg1[%arg4, %arg3] : memref<?x40xf64>
          %3 = arith.mulf %1, %2 : f64
          %4 = memref.load %arg1[%arg2, %arg3] : memref<?x40xf64>
          %5 = arith.subf %4, %3 : f64
          memref.store %5, %arg1[%arg2, %arg3] : memref<?x40xf64>
        }
      }
    }
    return
  }
}

