module {
  func.func @kernel_nussinov(%arg0: i32, %arg1: memref<?xi32>, %arg2: memref<?x60xi32>) {
    %c3_i32 = arith.constant 3 : i32
    %c0 = arith.constant 0 : index
    %c60 = arith.constant 60 : index
    %c1 = arith.constant 1 : index
    scf.for %arg3 = %c0 to %c60 step %c1 {
      %c-1 = arith.constant -1 : index
      %0 = arith.muli %arg3, %c-1 : index
      %c60_0 = arith.constant 60 : index
      %1 = arith.addi %0, %c60_0 : index
      %c60_1 = arith.constant 60 : index
      %c1_2 = arith.constant 1 : index
      scf.for %arg4 = %1 to %c60_1 step %c1_2 {
        %c0_3 = arith.constant 0 : index
        %c-1_4 = arith.constant -1 : index
        %2 = arith.addi %arg4, %c-1_4 : index
        %3 = arith.cmpi sge, %2, %c0_3 : index
        scf.if %3 {
          %c-1_13 = arith.constant -1 : index
          %13 = arith.muli %arg3, %c-1_13 : index
          %c59 = arith.constant 59 : index
          %14 = arith.addi %13, %c59 : index
          %15 = memref.load %arg2[%14, %arg4] : memref<?x60xi32>
          %c-1_14 = arith.constant -1 : index
          %16 = arith.muli %arg3, %c-1_14 : index
          %c59_15 = arith.constant 59 : index
          %17 = arith.addi %16, %c59_15 : index
          %c-1_16 = arith.constant -1 : index
          %18 = arith.addi %arg4, %c-1_16 : index
          %19 = memref.load %arg2[%17, %18] : memref<?x60xi32>
          %20 = arith.cmpi sge, %15, %19 : i32
          %21 = arith.select %20, %15, %19 : i32
          %c-1_17 = arith.constant -1 : index
          %22 = arith.muli %arg3, %c-1_17 : index
          %c59_18 = arith.constant 59 : index
          %23 = arith.addi %22, %c59_18 : index
          memref.store %21, %arg2[%23, %arg4] : memref<?x60xi32>
        }
        %c0_5 = arith.constant 0 : index
        %c-1_6 = arith.constant -1 : index
        %4 = arith.addi %arg3, %c-1_6 : index
        %5 = arith.cmpi sge, %4, %c0_5 : index
        scf.if %5 {
          %c-1_13 = arith.constant -1 : index
          %13 = arith.muli %arg3, %c-1_13 : index
          %c59 = arith.constant 59 : index
          %14 = arith.addi %13, %c59 : index
          %15 = memref.load %arg2[%14, %arg4] : memref<?x60xi32>
          %c-1_14 = arith.constant -1 : index
          %16 = arith.muli %arg3, %c-1_14 : index
          %c60_15 = arith.constant 60 : index
          %17 = arith.addi %16, %c60_15 : index
          %18 = memref.load %arg2[%17, %arg4] : memref<?x60xi32>
          %19 = arith.cmpi sge, %15, %18 : i32
          %20 = arith.select %19, %15, %18 : i32
          %c-1_16 = arith.constant -1 : index
          %21 = arith.muli %arg3, %c-1_16 : index
          %c59_17 = arith.constant 59 : index
          %22 = arith.addi %21, %c59_17 : index
          memref.store %20, %arg2[%22, %arg4] : memref<?x60xi32>
        }
        %c0_7 = arith.constant 0 : index
        %c-1_8 = arith.constant -1 : index
        %6 = arith.addi %arg4, %c-1_8 : index
        %7 = arith.cmpi sge, %6, %c0_7 : index
        %c-1_9 = arith.constant -1 : index
        %8 = arith.addi %arg3, %c-1_9 : index
        %9 = arith.cmpi sge, %8, %c0_7 : index
        %10 = arith.andi %7, %9 : i1
        scf.if %10 {
          %c0_13 = arith.constant 0 : index
          %13 = arith.addi %arg3, %arg4 : index
          %c-61 = arith.constant -61 : index
          %14 = arith.addi %13, %c-61 : index
          %15 = arith.cmpi sge, %14, %c0_13 : index
          scf.if %15 {
            %c-1_14 = arith.constant -1 : index
            %16 = arith.muli %arg3, %c-1_14 : index
            %c59 = arith.constant 59 : index
            %17 = arith.addi %16, %c59 : index
            %18 = memref.load %arg2[%17, %arg4] : memref<?x60xi32>
            %c-1_15 = arith.constant -1 : index
            %19 = arith.muli %arg3, %c-1_15 : index
            %c60_16 = arith.constant 60 : index
            %20 = arith.addi %19, %c60_16 : index
            %c-1_17 = arith.constant -1 : index
            %21 = arith.addi %arg4, %c-1_17 : index
            %22 = memref.load %arg2[%20, %21] : memref<?x60xi32>
            %c-1_18 = arith.constant -1 : index
            %23 = arith.muli %arg3, %c-1_18 : index
            %c59_19 = arith.constant 59 : index
            %24 = arith.addi %23, %c59_19 : index
            %25 = memref.load %arg1[%24] : memref<?xi32>
            %26 = memref.load %arg1[%arg4] : memref<?xi32>
            %27 = arith.addi %25, %26 : i32
            %28 = arith.cmpi eq, %27, %c3_i32 : i32
            %29 = arith.extui %28 : i1 to i32
            %30 = arith.addi %22, %29 : i32
            %31 = arith.cmpi sge, %18, %30 : i32
            %32 = arith.select %31, %18, %30 : i32
            %c-1_20 = arith.constant -1 : index
            %33 = arith.muli %arg3, %c-1_20 : index
            %c59_21 = arith.constant 59 : index
            %34 = arith.addi %33, %c59_21 : index
            memref.store %32, %arg2[%34, %arg4] : memref<?x60xi32>
          } else {
            %c-1_14 = arith.constant -1 : index
            %16 = arith.muli %arg3, %c-1_14 : index
            %c59 = arith.constant 59 : index
            %17 = arith.addi %16, %c59 : index
            %18 = memref.load %arg2[%17, %arg4] : memref<?x60xi32>
            %c-1_15 = arith.constant -1 : index
            %19 = arith.muli %arg3, %c-1_15 : index
            %c60_16 = arith.constant 60 : index
            %20 = arith.addi %19, %c60_16 : index
            %c-1_17 = arith.constant -1 : index
            %21 = arith.addi %arg4, %c-1_17 : index
            %22 = memref.load %arg2[%20, %21] : memref<?x60xi32>
            %23 = arith.cmpi sge, %18, %22 : i32
            %24 = arith.select %23, %18, %22 : i32
            %c-1_18 = arith.constant -1 : index
            %25 = arith.muli %arg3, %c-1_18 : index
            %c59_19 = arith.constant 59 : index
            %26 = arith.addi %25, %c59_19 : index
            memref.store %24, %arg2[%26, %arg4] : memref<?x60xi32>
          }
        }
        %c-1_10 = arith.constant -1 : index
        %11 = arith.muli %arg3, %c-1_10 : index
        %c60_11 = arith.constant 60 : index
        %12 = arith.addi %11, %c60_11 : index
        %c1_12 = arith.constant 1 : index
        scf.for %arg5 = %12 to %arg4 step %c1_12 {
          %c-1_13 = arith.constant -1 : index
          %13 = arith.muli %arg3, %c-1_13 : index
          %c59 = arith.constant 59 : index
          %14 = arith.addi %13, %c59 : index
          %15 = memref.load %arg2[%14, %arg4] : memref<?x60xi32>
          %c-1_14 = arith.constant -1 : index
          %16 = arith.muli %arg3, %c-1_14 : index
          %c59_15 = arith.constant 59 : index
          %17 = arith.addi %16, %c59_15 : index
          %18 = memref.load %arg2[%17, %arg5] : memref<?x60xi32>
          %c1_16 = arith.constant 1 : index
          %19 = arith.addi %arg5, %c1_16 : index
          %20 = memref.load %arg2[%19, %arg4] : memref<?x60xi32>
          %21 = arith.addi %18, %20 : i32
          %22 = arith.cmpi sge, %15, %21 : i32
          %23 = arith.select %22, %15, %21 : i32
          %c-1_17 = arith.constant -1 : index
          %24 = arith.muli %arg3, %c-1_17 : index
          %c59_18 = arith.constant 59 : index
          %25 = arith.addi %24, %c59_18 : index
          memref.store %23, %arg2[%25, %arg4] : memref<?x60xi32>
        }
      }
    }
    return
  }
}

