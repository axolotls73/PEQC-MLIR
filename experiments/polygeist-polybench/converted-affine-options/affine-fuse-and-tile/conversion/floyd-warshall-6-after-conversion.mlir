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
            %3 = arith.muli %arg4, %c-32 : index
            %4 = arith.addi %3, %c60 : index
            %5 = arith.minsi %4, %c32 : index
            scf.for %arg6 = %c0 to %5 step %c1 {
              %6 = arith.muli %arg3, %c32 : index
              %7 = arith.addi %6, %arg5 : index
              %8 = arith.muli %arg4, %c32 : index
              %9 = arith.addi %8, %arg6 : index
              %10 = memref.load %arg1[%7, %9] : memref<?x60xi32>
              %11 = arith.muli %arg3, %c32 : index
              %12 = arith.addi %11, %arg5 : index
              %13 = memref.load %arg1[%12, %arg2] : memref<?x60xi32>
              %14 = arith.muli %arg4, %c32 : index
              %15 = arith.addi %14, %arg6 : index
              %16 = memref.load %arg1[%arg2, %15] : memref<?x60xi32>
              %17 = arith.addi %13, %16 : i32
              %18 = arith.cmpi slt, %10, %17 : i32
              %19 = arith.select %18, %10, %17 : i32
              %20 = arith.muli %arg3, %c32 : index
              %21 = arith.addi %20, %arg5 : index
              %22 = arith.muli %arg4, %c32 : index
              %23 = arith.addi %22, %arg6 : index
              memref.store %19, %arg1[%21, %23] : memref<?x60xi32>
            }
          }
        }
      }
    }
    return
  }
}

