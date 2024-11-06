module {
  func.func @kernel_floyd_warshall(%arg0: i32, %arg1: memref<?x60xi32>) {
    %c0 = arith.constant 0 : index
    %c60 = arith.constant 60 : index
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %c0 to %c60 step %c1 {
      %c0_0 = arith.constant 0 : index
      %c2 = arith.constant 2 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg3 = %c0_0 to %c2 step %c1_1 {
        %c0_2 = arith.constant 0 : index
        %c2_3 = arith.constant 2 : index
        %c1_4 = arith.constant 1 : index
        scf.for %arg4 = %c0_2 to %c2_3 step %c1_4 {
          %c32 = arith.constant 32 : index
          %0 = arith.muli %arg3, %c32 : index
          %c60_5 = arith.constant 60 : index
          %c32_6 = arith.constant 32 : index
          %1 = arith.muli %arg3, %c32_6 : index
          %c32_7 = arith.constant 32 : index
          %2 = arith.addi %1, %c32_7 : index
          %3 = arith.minsi %c60_5, %2 : index
          %c1_8 = arith.constant 1 : index
          scf.for %arg5 = %0 to %3 step %c1_8 {
            %c32_9 = arith.constant 32 : index
            %4 = arith.muli %arg4, %c32_9 : index
            %c60_10 = arith.constant 60 : index
            %c32_11 = arith.constant 32 : index
            %5 = arith.muli %arg4, %c32_11 : index
            %c32_12 = arith.constant 32 : index
            %6 = arith.addi %5, %c32_12 : index
            %7 = arith.minsi %c60_10, %6 : index
            %c1_13 = arith.constant 1 : index
            scf.for %arg6 = %4 to %7 step %c1_13 {
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

