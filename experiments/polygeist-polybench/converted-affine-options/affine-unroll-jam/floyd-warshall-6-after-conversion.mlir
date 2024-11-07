module {
  func.func @kernel_floyd_warshall(%arg0: i32, %arg1: memref<?x60xi32>) {
    %c32 = arith.constant 32 : index
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %c60 = arith.constant 60 : index
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %c0 to %c60 step %c1 {
      scf.for %arg3 = %c0 to %c2 step %c1 {
        scf.for %arg4 = %c0 to %c2 step %c1 {
          %0 = arith.muli %arg3, %c32 : index
          %1 = arith.muli %arg3, %c32 : index
          %2 = arith.addi %1, %c32 : index
          %3 = arith.minsi %2, %c60 : index
          scf.for %arg5 = %0 to %3 step %c1 {
            %4 = arith.muli %arg4, %c32 : index
            %5 = arith.muli %arg4, %c32 : index
            %6 = arith.addi %5, %c32 : index
            %7 = arith.minsi %6, %c60 : index
            scf.for %arg6 = %4 to %7 step %c1 {
              %8 = memref.load %arg1[%arg5, %arg6] : memref<?x60xi32>
              %9 = memref.load %arg1[%arg5, %arg2] : memref<?x60xi32>
              %10 = memref.load %arg1[%arg2, %arg6] : memref<?x60xi32>
              %11 = arith.addi %9, %10 : i32
              %12 = arith.cmpi slt, %8, %11 : i32
              %13 = arith.select %12, %8, %11 : i32
              memref.store %13, %arg1[%arg5, %arg6] : memref<?x60xi32>
            }
          }
        }
      }
    }
    return
  }
}

