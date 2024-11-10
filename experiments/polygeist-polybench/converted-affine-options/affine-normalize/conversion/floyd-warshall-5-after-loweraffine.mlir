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
          %c0_5 = arith.constant 0 : index
          %c-32 = arith.constant -32 : index
          %0 = arith.muli %arg3, %c-32 : index
          %c60_6 = arith.constant 60 : index
          %1 = arith.addi %0, %c60_6 : index
          %c32 = arith.constant 32 : index
          %2 = arith.minsi %1, %c32 : index
          %c1_7 = arith.constant 1 : index
          scf.for %arg5 = %c0_5 to %2 step %c1_7 {
            %c32_8 = arith.constant 32 : index
            %3 = arith.muli %arg3, %c32_8 : index
            %4 = arith.addi %3, %arg5 : index
            %c0_9 = arith.constant 0 : index
            %c-32_10 = arith.constant -32 : index
            %5 = arith.muli %arg4, %c-32_10 : index
            %c60_11 = arith.constant 60 : index
            %6 = arith.addi %5, %c60_11 : index
            %c32_12 = arith.constant 32 : index
            %7 = arith.minsi %6, %c32_12 : index
            %c1_13 = arith.constant 1 : index
            scf.for %arg6 = %c0_9 to %7 step %c1_13 {
              %c32_14 = arith.constant 32 : index
              %8 = arith.muli %arg4, %c32_14 : index
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

