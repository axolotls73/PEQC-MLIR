module {
  func.func @kernel_floyd_warshall(%arg0: i32, %arg1: memref<?x60xi32>) {
    %c32 = arith.constant 32 : index
    %c-32 = arith.constant -32 : index
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %c60 = arith.constant 60 : index
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %c0 to %c60 step %c1 {
      scf.for %arg3 = %c0 to %c2 step %c1 {
        scf.for %arg4 = %c0 to %c2 step %c1 {
          %0 = arith.muli %arg3, %c-32 : index
          %1 = arith.addi %0, %c60 : index
          %2 = arith.minsi %1, %c32 : index
          scf.for %arg5 = %c0 to %2 step %c1 {
            %3 = arith.muli %arg3, %c32 : index
            %4 = arith.addi %3, %arg5 : index
            %5 = arith.muli %arg4, %c-32 : index
            %6 = arith.addi %5, %c60 : index
            %7 = arith.minsi %6, %c32 : index
            scf.for %arg6 = %c0 to %7 step %c1 {
              %8 = arith.muli %arg4, %c32 : index
              %9 = arith.addi %8, %arg6 : index
              %10 = memref.load %arg1[%4, %9] : memref<?x60xi32>
              %11 = memref.load %arg1[%4, %arg2] : memref<?x60xi32>
              %12 = memref.load %arg1[%arg2, %9] : memref<?x60xi32>
              %13 = arith.addi %11, %12 : i32
              %14 = arith.cmpi slt, %10, %13 : i32
              %15 = arith.select %14, %10, %13 : i32
              memref.store %15, %arg1[%4, %9] : memref<?x60xi32>
            }
          }
        }
      }
    }
    return
  }
}

