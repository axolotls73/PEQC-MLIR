module {
  func.func @kernel_floyd_warshall(%arg0: i32, %arg1: memref<?x60xi32>) {
    %c3 = arith.constant 3 : index
    %c4 = arith.constant 4 : index
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
            scf.for %arg6 = %4 to %7 step %c4 {
              %8 = memref.load %arg1[%arg5, %arg6] : memref<?x60xi32>
              %9 = memref.load %arg1[%arg5, %arg2] : memref<?x60xi32>
              %10 = memref.load %arg1[%arg2, %arg6] : memref<?x60xi32>
              %11 = arith.addi %9, %10 : i32
              %12 = arith.cmpi slt, %8, %11 : i32
              %13 = arith.select %12, %8, %11 : i32
              memref.store %13, %arg1[%arg5, %arg6] : memref<?x60xi32>
              %14 = arith.addi %arg6, %c1 : index
              %15 = memref.load %arg1[%arg5, %14] : memref<?x60xi32>
              %16 = memref.load %arg1[%arg5, %arg2] : memref<?x60xi32>
              %17 = memref.load %arg1[%arg2, %14] : memref<?x60xi32>
              %18 = arith.addi %16, %17 : i32
              %19 = arith.cmpi slt, %15, %18 : i32
              %20 = arith.select %19, %15, %18 : i32
              memref.store %20, %arg1[%arg5, %14] : memref<?x60xi32>
              %21 = arith.addi %arg6, %c2 : index
              %22 = memref.load %arg1[%arg5, %21] : memref<?x60xi32>
              %23 = memref.load %arg1[%arg5, %arg2] : memref<?x60xi32>
              %24 = memref.load %arg1[%arg2, %21] : memref<?x60xi32>
              %25 = arith.addi %23, %24 : i32
              %26 = arith.cmpi slt, %22, %25 : i32
              %27 = arith.select %26, %22, %25 : i32
              memref.store %27, %arg1[%arg5, %21] : memref<?x60xi32>
              %28 = arith.addi %arg6, %c3 : index
              %29 = memref.load %arg1[%arg5, %28] : memref<?x60xi32>
              %30 = memref.load %arg1[%arg5, %arg2] : memref<?x60xi32>
              %31 = memref.load %arg1[%arg2, %28] : memref<?x60xi32>
              %32 = arith.addi %30, %31 : i32
              %33 = arith.cmpi slt, %29, %32 : i32
              %34 = arith.select %33, %29, %32 : i32
              memref.store %34, %arg1[%arg5, %28] : memref<?x60xi32>
            }
          }
        }
      }
    }
    return
  }
}

