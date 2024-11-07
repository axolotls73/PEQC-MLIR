module {
  func.func @kernel_floyd_warshall(%arg0: i32, %arg1: memref<?x60xi32>) {
    %c3 = arith.constant 3 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %c15 = arith.constant 15 : index
    %c-8 = arith.constant -8 : index
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
            %5 = arith.muli %arg4, %c-8 : index
            %6 = arith.addi %5, %c15 : index
            %7 = arith.minsi %6, %c8 : index
            scf.for %arg6 = %c0 to %7 step %c1 {
              %8 = arith.muli %arg4, %c32 : index
              %9 = arith.muli %arg6, %c4 : index
              %10 = arith.addi %8, %9 : index
              %11 = memref.load %arg1[%4, %10] : memref<?x60xi32>
              %12 = memref.load %arg1[%4, %arg2] : memref<?x60xi32>
              %13 = memref.load %arg1[%arg2, %10] : memref<?x60xi32>
              %14 = arith.addi %12, %13 : i32
              %15 = arith.cmpi slt, %11, %14 : i32
              %16 = arith.select %15, %11, %14 : i32
              memref.store %16, %arg1[%4, %10] : memref<?x60xi32>
              %17 = arith.addi %10, %c1 : index
              %18 = memref.load %arg1[%4, %17] : memref<?x60xi32>
              %19 = memref.load %arg1[%4, %arg2] : memref<?x60xi32>
              %20 = memref.load %arg1[%arg2, %17] : memref<?x60xi32>
              %21 = arith.addi %19, %20 : i32
              %22 = arith.cmpi slt, %18, %21 : i32
              %23 = arith.select %22, %18, %21 : i32
              memref.store %23, %arg1[%4, %17] : memref<?x60xi32>
              %24 = arith.addi %10, %c2 : index
              %25 = memref.load %arg1[%4, %24] : memref<?x60xi32>
              %26 = memref.load %arg1[%4, %arg2] : memref<?x60xi32>
              %27 = memref.load %arg1[%arg2, %24] : memref<?x60xi32>
              %28 = arith.addi %26, %27 : i32
              %29 = arith.cmpi slt, %25, %28 : i32
              %30 = arith.select %29, %25, %28 : i32
              memref.store %30, %arg1[%4, %24] : memref<?x60xi32>
              %31 = arith.addi %10, %c3 : index
              %32 = memref.load %arg1[%4, %31] : memref<?x60xi32>
              %33 = memref.load %arg1[%4, %arg2] : memref<?x60xi32>
              %34 = memref.load %arg1[%arg2, %31] : memref<?x60xi32>
              %35 = arith.addi %33, %34 : i32
              %36 = arith.cmpi slt, %32, %35 : i32
              %37 = arith.select %36, %32, %35 : i32
              memref.store %37, %arg1[%4, %31] : memref<?x60xi32>
            }
          }
        }
      }
    }
    return
  }
}

