module {
  func.func @kernel_nussinov(%arg0: i32, %arg1: memref<?xi32>, %arg2: memref<?x60xi32>) {
    %c3_i32 = arith.constant 3 : i32
    %c0 = arith.constant 0 : index
    %c60 = arith.constant 60 : index
    %c1 = arith.constant 1 : index
    scf.for %arg3 = %c0 to %c60 step %c1 {
      %c0_0 = arith.constant 0 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg4 = %c0_0 to %arg3 step %c1_1 {
        %c-1 = arith.constant -1 : index
        %0 = arith.muli %arg3, %c-1 : index
        %1 = arith.addi %0, %arg4 : index
        %c60_2 = arith.constant 60 : index
        %2 = arith.addi %1, %c60_2 : index
        %c0_3 = arith.constant 0 : index
        %c-1_4 = arith.constant -1 : index
        %3 = arith.muli %arg3, %c-1_4 : index
        %4 = arith.addi %3, %arg4 : index
        %c59 = arith.constant 59 : index
        %5 = arith.addi %4, %c59 : index
        %6 = arith.cmpi sge, %5, %c0_3 : index
        scf.if %6 {
          %c-1_13 = arith.constant -1 : index
          %16 = arith.muli %arg3, %c-1_13 : index
          %c59_14 = arith.constant 59 : index
          %17 = arith.addi %16, %c59_14 : index
          %18 = memref.load %arg2[%17, %2] : memref<?x60xi32>
          %c-1_15 = arith.constant -1 : index
          %19 = arith.muli %arg3, %c-1_15 : index
          %c59_16 = arith.constant 59 : index
          %20 = arith.addi %19, %c59_16 : index
          %c-1_17 = arith.constant -1 : index
          %21 = arith.addi %2, %c-1_17 : index
          %22 = memref.load %arg2[%20, %21] : memref<?x60xi32>
          %23 = arith.cmpi sge, %18, %22 : i32
          %24 = arith.select %23, %18, %22 : i32
          %c-1_18 = arith.constant -1 : index
          %25 = arith.muli %arg3, %c-1_18 : index
          %c59_19 = arith.constant 59 : index
          %26 = arith.addi %25, %c59_19 : index
          memref.store %24, %arg2[%26, %2] : memref<?x60xi32>
        }
        %c0_5 = arith.constant 0 : index
        %c-1_6 = arith.constant -1 : index
        %7 = arith.addi %arg3, %c-1_6 : index
        %8 = arith.cmpi sge, %7, %c0_5 : index
        scf.if %8 {
          %c-1_13 = arith.constant -1 : index
          %16 = arith.muli %arg3, %c-1_13 : index
          %c59_14 = arith.constant 59 : index
          %17 = arith.addi %16, %c59_14 : index
          %18 = memref.load %arg2[%17, %2] : memref<?x60xi32>
          %c-1_15 = arith.constant -1 : index
          %19 = arith.muli %arg3, %c-1_15 : index
          %c60_16 = arith.constant 60 : index
          %20 = arith.addi %19, %c60_16 : index
          %21 = memref.load %arg2[%20, %2] : memref<?x60xi32>
          %22 = arith.cmpi sge, %18, %21 : i32
          %23 = arith.select %22, %18, %21 : i32
          %c-1_17 = arith.constant -1 : index
          %24 = arith.muli %arg3, %c-1_17 : index
          %c59_18 = arith.constant 59 : index
          %25 = arith.addi %24, %c59_18 : index
          memref.store %23, %arg2[%25, %2] : memref<?x60xi32>
        }
        %c0_7 = arith.constant 0 : index
        %c-1_8 = arith.constant -1 : index
        %9 = arith.muli %arg3, %c-1_8 : index
        %10 = arith.addi %9, %arg4 : index
        %c59_9 = arith.constant 59 : index
        %11 = arith.addi %10, %c59_9 : index
        %12 = arith.cmpi sge, %11, %c0_7 : index
        %c-1_10 = arith.constant -1 : index
        %13 = arith.addi %arg3, %c-1_10 : index
        %14 = arith.cmpi sge, %13, %c0_7 : index
        %15 = arith.andi %12, %14 : i1
        scf.if %15 {
          %c0_13 = arith.constant 0 : index
          %c-1_14 = arith.constant -1 : index
          %16 = arith.addi %arg4, %c-1_14 : index
          %17 = arith.cmpi sge, %16, %c0_13 : index
          scf.if %17 {
            %c-1_15 = arith.constant -1 : index
            %18 = arith.muli %arg3, %c-1_15 : index
            %c59_16 = arith.constant 59 : index
            %19 = arith.addi %18, %c59_16 : index
            %20 = memref.load %arg2[%19, %2] : memref<?x60xi32>
            %c-1_17 = arith.constant -1 : index
            %21 = arith.muli %arg3, %c-1_17 : index
            %c60_18 = arith.constant 60 : index
            %22 = arith.addi %21, %c60_18 : index
            %c-1_19 = arith.constant -1 : index
            %23 = arith.addi %2, %c-1_19 : index
            %24 = memref.load %arg2[%22, %23] : memref<?x60xi32>
            %c-1_20 = arith.constant -1 : index
            %25 = arith.muli %arg3, %c-1_20 : index
            %c59_21 = arith.constant 59 : index
            %26 = arith.addi %25, %c59_21 : index
            %27 = memref.load %arg1[%26] : memref<?xi32>
            %28 = memref.load %arg1[%2] : memref<?xi32>
            %29 = arith.addi %27, %28 : i32
            %30 = arith.cmpi eq, %29, %c3_i32 : i32
            %31 = arith.extui %30 : i1 to i32
            %32 = arith.addi %24, %31 : i32
            %33 = arith.cmpi sge, %20, %32 : i32
            %34 = arith.select %33, %20, %32 : i32
            %c-1_22 = arith.constant -1 : index
            %35 = arith.muli %arg3, %c-1_22 : index
            %c59_23 = arith.constant 59 : index
            %36 = arith.addi %35, %c59_23 : index
            memref.store %34, %arg2[%36, %2] : memref<?x60xi32>
          } else {
            %c-1_15 = arith.constant -1 : index
            %18 = arith.muli %arg3, %c-1_15 : index
            %c59_16 = arith.constant 59 : index
            %19 = arith.addi %18, %c59_16 : index
            %20 = memref.load %arg2[%19, %2] : memref<?x60xi32>
            %c-1_17 = arith.constant -1 : index
            %21 = arith.muli %arg3, %c-1_17 : index
            %c60_18 = arith.constant 60 : index
            %22 = arith.addi %21, %c60_18 : index
            %c-1_19 = arith.constant -1 : index
            %23 = arith.addi %2, %c-1_19 : index
            %24 = memref.load %arg2[%22, %23] : memref<?x60xi32>
            %25 = arith.cmpi sge, %20, %24 : i32
            %26 = arith.select %25, %20, %24 : i32
            %c-1_20 = arith.constant -1 : index
            %27 = arith.muli %arg3, %c-1_20 : index
            %c59_21 = arith.constant 59 : index
            %28 = arith.addi %27, %c59_21 : index
            memref.store %26, %arg2[%28, %2] : memref<?x60xi32>
          }
        }
        %c0_11 = arith.constant 0 : index
        %c1_12 = arith.constant 1 : index
        scf.for %arg5 = %c0_11 to %arg4 step %c1_12 {
          %c-1_13 = arith.constant -1 : index
          %16 = arith.muli %arg3, %c-1_13 : index
          %17 = arith.addi %16, %arg5 : index
          %c60_14 = arith.constant 60 : index
          %18 = arith.addi %17, %c60_14 : index
          %c-1_15 = arith.constant -1 : index
          %19 = arith.muli %arg3, %c-1_15 : index
          %c59_16 = arith.constant 59 : index
          %20 = arith.addi %19, %c59_16 : index
          %21 = memref.load %arg2[%20, %2] : memref<?x60xi32>
          %c-1_17 = arith.constant -1 : index
          %22 = arith.muli %arg3, %c-1_17 : index
          %c59_18 = arith.constant 59 : index
          %23 = arith.addi %22, %c59_18 : index
          %24 = memref.load %arg2[%23, %18] : memref<?x60xi32>
          %c1_19 = arith.constant 1 : index
          %25 = arith.addi %18, %c1_19 : index
          %26 = memref.load %arg2[%25, %2] : memref<?x60xi32>
          %27 = arith.addi %24, %26 : i32
          %28 = arith.cmpi sge, %21, %27 : i32
          %29 = arith.select %28, %21, %27 : i32
          %c-1_20 = arith.constant -1 : index
          %30 = arith.muli %arg3, %c-1_20 : index
          %c59_21 = arith.constant 59 : index
          %31 = arith.addi %30, %c59_21 : index
          memref.store %29, %arg2[%31, %2] : memref<?x60xi32>
        }
      }
    }
    return
  }
}

