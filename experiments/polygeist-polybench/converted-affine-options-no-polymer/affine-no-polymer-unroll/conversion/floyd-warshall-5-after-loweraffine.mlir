module {
  func.func @kernel_floyd_warshall(%arg0: i32, %arg1: memref<?x60xi32>) {
    %c0 = arith.constant 0 : index
    %c60 = arith.constant 60 : index
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %c0 to %c60 step %c1 {
      %c0_0 = arith.constant 0 : index
      %c60_1 = arith.constant 60 : index
      %c1_2 = arith.constant 1 : index
      scf.for %arg3 = %c0_0 to %c60_1 step %c1_2 {
        %c0_3 = arith.constant 0 : index
        %c60_4 = arith.constant 60 : index
        %c4 = arith.constant 4 : index
        scf.for %arg4 = %c0_3 to %c60_4 step %c4 {
          %0 = memref.load %arg1[%arg3, %arg4] : memref<?x60xi32>
          %1 = memref.load %arg1[%arg3, %arg2] : memref<?x60xi32>
          %2 = memref.load %arg1[%arg2, %arg4] : memref<?x60xi32>
          %3 = arith.addi %1, %2 : i32
          %4 = arith.cmpi slt, %0, %3 : i32
          %5 = arith.select %4, %0, %3 : i32
          memref.store %5, %arg1[%arg3, %arg4] : memref<?x60xi32>
          %c1_5 = arith.constant 1 : index
          %6 = arith.addi %arg4, %c1_5 : index
          %7 = memref.load %arg1[%arg3, %6] : memref<?x60xi32>
          %8 = memref.load %arg1[%arg3, %arg2] : memref<?x60xi32>
          %9 = memref.load %arg1[%arg2, %6] : memref<?x60xi32>
          %10 = arith.addi %8, %9 : i32
          %11 = arith.cmpi slt, %7, %10 : i32
          %12 = arith.select %11, %7, %10 : i32
          memref.store %12, %arg1[%arg3, %6] : memref<?x60xi32>
          %c2 = arith.constant 2 : index
          %13 = arith.addi %arg4, %c2 : index
          %14 = memref.load %arg1[%arg3, %13] : memref<?x60xi32>
          %15 = memref.load %arg1[%arg3, %arg2] : memref<?x60xi32>
          %16 = memref.load %arg1[%arg2, %13] : memref<?x60xi32>
          %17 = arith.addi %15, %16 : i32
          %18 = arith.cmpi slt, %14, %17 : i32
          %19 = arith.select %18, %14, %17 : i32
          memref.store %19, %arg1[%arg3, %13] : memref<?x60xi32>
          %c3 = arith.constant 3 : index
          %20 = arith.addi %arg4, %c3 : index
          %21 = memref.load %arg1[%arg3, %20] : memref<?x60xi32>
          %22 = memref.load %arg1[%arg3, %arg2] : memref<?x60xi32>
          %23 = memref.load %arg1[%arg2, %20] : memref<?x60xi32>
          %24 = arith.addi %22, %23 : i32
          %25 = arith.cmpi slt, %21, %24 : i32
          %26 = arith.select %25, %21, %24 : i32
          memref.store %26, %arg1[%arg3, %20] : memref<?x60xi32>
        }
      }
    }
    return
  }
}

