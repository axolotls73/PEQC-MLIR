module {
  func.func @kernel_nussinov(%arg0: i32, %arg1: memref<?xi32>, %arg2: memref<?x60xi32>) {
    %c59 = arith.constant 59 : index
    %c-1 = arith.constant -1 : index
    %c3_i32 = arith.constant 3 : i32
    %c0 = arith.constant 0 : index
    %c60 = arith.constant 60 : index
    %c1 = arith.constant 1 : index
    scf.for %arg3 = %c0 to %c60 step %c1 {
      scf.for %arg4 = %c0 to %arg3 step %c1 {
        %0 = arith.muli %arg3, %c-1 : index
        %1 = arith.addi %0, %arg4 : index
        %2 = arith.addi %1, %c60 : index
        %3 = arith.muli %arg3, %c-1 : index
        %4 = arith.addi %3, %arg4 : index
        %5 = arith.addi %4, %c59 : index
        %6 = arith.cmpi sge, %5, %c0 : index
        scf.if %6 {
          %16 = arith.muli %arg3, %c-1 : index
          %17 = arith.addi %16, %c59 : index
          %18 = memref.load %arg2[%17, %2] : memref<?x60xi32>
          %19 = arith.muli %arg3, %c-1 : index
          %20 = arith.addi %19, %c59 : index
          %21 = arith.addi %2, %c-1 : index
          %22 = memref.load %arg2[%20, %21] : memref<?x60xi32>
          %23 = arith.cmpi sge, %18, %22 : i32
          %24 = arith.select %23, %18, %22 : i32
          %25 = arith.muli %arg3, %c-1 : index
          %26 = arith.addi %25, %c59 : index
          memref.store %24, %arg2[%26, %2] : memref<?x60xi32>
        }
        %7 = arith.addi %arg3, %c-1 : index
        %8 = arith.cmpi sge, %7, %c0 : index
        scf.if %8 {
          %16 = arith.muli %arg3, %c-1 : index
          %17 = arith.addi %16, %c59 : index
          %18 = memref.load %arg2[%17, %2] : memref<?x60xi32>
          %19 = arith.muli %arg3, %c-1 : index
          %20 = arith.addi %19, %c60 : index
          %21 = memref.load %arg2[%20, %2] : memref<?x60xi32>
          %22 = arith.cmpi sge, %18, %21 : i32
          %23 = arith.select %22, %18, %21 : i32
          %24 = arith.muli %arg3, %c-1 : index
          %25 = arith.addi %24, %c59 : index
          memref.store %23, %arg2[%25, %2] : memref<?x60xi32>
        }
        %9 = arith.muli %arg3, %c-1 : index
        %10 = arith.addi %9, %arg4 : index
        %11 = arith.addi %10, %c59 : index
        %12 = arith.cmpi sge, %11, %c0 : index
        %13 = arith.addi %arg3, %c-1 : index
        %14 = arith.cmpi sge, %13, %c0 : index
        %15 = arith.andi %12, %14 : i1
        scf.if %15 {
          %16 = arith.addi %arg4, %c-1 : index
          %17 = arith.cmpi sge, %16, %c0 : index
          scf.if %17 {
            %18 = arith.muli %arg3, %c-1 : index
            %19 = arith.addi %18, %c59 : index
            %20 = memref.load %arg2[%19, %2] : memref<?x60xi32>
            %21 = arith.muli %arg3, %c-1 : index
            %22 = arith.addi %21, %c60 : index
            %23 = arith.addi %2, %c-1 : index
            %24 = memref.load %arg2[%22, %23] : memref<?x60xi32>
            %25 = arith.muli %arg3, %c-1 : index
            %26 = arith.addi %25, %c59 : index
            %27 = memref.load %arg1[%26] : memref<?xi32>
            %28 = memref.load %arg1[%2] : memref<?xi32>
            %29 = arith.addi %27, %28 : i32
            %30 = arith.cmpi eq, %29, %c3_i32 : i32
            %31 = arith.extui %30 : i1 to i32
            %32 = arith.addi %24, %31 : i32
            %33 = arith.cmpi sge, %20, %32 : i32
            %34 = arith.select %33, %20, %32 : i32
            %35 = arith.muli %arg3, %c-1 : index
            %36 = arith.addi %35, %c59 : index
            memref.store %34, %arg2[%36, %2] : memref<?x60xi32>
          } else {
            %18 = arith.muli %arg3, %c-1 : index
            %19 = arith.addi %18, %c59 : index
            %20 = memref.load %arg2[%19, %2] : memref<?x60xi32>
            %21 = arith.muli %arg3, %c-1 : index
            %22 = arith.addi %21, %c60 : index
            %23 = arith.addi %2, %c-1 : index
            %24 = memref.load %arg2[%22, %23] : memref<?x60xi32>
            %25 = arith.cmpi sge, %20, %24 : i32
            %26 = arith.select %25, %20, %24 : i32
            %27 = arith.muli %arg3, %c-1 : index
            %28 = arith.addi %27, %c59 : index
            memref.store %26, %arg2[%28, %2] : memref<?x60xi32>
          }
        }
        scf.for %arg5 = %c0 to %arg4 step %c1 {
          %16 = arith.muli %arg3, %c-1 : index
          %17 = arith.addi %16, %arg5 : index
          %18 = arith.addi %17, %c60 : index
          %19 = arith.muli %arg3, %c-1 : index
          %20 = arith.addi %19, %c59 : index
          %21 = memref.load %arg2[%20, %2] : memref<?x60xi32>
          %22 = arith.muli %arg3, %c-1 : index
          %23 = arith.addi %22, %c59 : index
          %24 = memref.load %arg2[%23, %18] : memref<?x60xi32>
          %25 = arith.addi %18, %c1 : index
          %26 = memref.load %arg2[%25, %2] : memref<?x60xi32>
          %27 = arith.addi %24, %26 : i32
          %28 = arith.cmpi sge, %21, %27 : i32
          %29 = arith.select %28, %21, %27 : i32
          %30 = arith.muli %arg3, %c-1 : index
          %31 = arith.addi %30, %c59 : index
          memref.store %29, %arg2[%31, %2] : memref<?x60xi32>
        }
      }
    }
    return
  }
}

