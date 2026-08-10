module {
  func.func @kernel_nussinov(%arg0: i32, %arg1: memref<?xi32>, %arg2: memref<?x60xi32>) {
    %c3_i32 = arith.constant 3 : i32
    %0 = arith.index_cast %arg0 : i32 to index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg3 = %c0 to %0 step %c1 {
      %c-1 = arith.constant -1 : index
      %1 = arith.muli %arg3, %c-1 overflow<nsw> : index
      %2 = arith.addi %1, %0 : index
      %c1_0 = arith.constant 1 : index
      scf.for %arg4 = %2 to %0 step %c1_0 {
        %c0_1 = arith.constant 0 : index
        %c-1_2 = arith.constant -1 : index
        %3 = arith.addi %arg4, %c-1_2 : index
        %4 = arith.cmpi sge, %3, %c0_1 : index
        scf.if %4 {
          %c-1_10 = arith.constant -1 : index
          %14 = arith.muli %arg3, %c-1_10 overflow<nsw> : index
          %15 = arith.addi %14, %0 : index
          %c-1_11 = arith.constant -1 : index
          %16 = arith.addi %15, %c-1_11 : index
          %17 = memref.load %arg2[%16, %arg4] : memref<?x60xi32>
          %c-1_12 = arith.constant -1 : index
          %18 = arith.muli %arg3, %c-1_12 overflow<nsw> : index
          %19 = arith.addi %18, %0 : index
          %c-1_13 = arith.constant -1 : index
          %20 = arith.addi %19, %c-1_13 : index
          %c-1_14 = arith.constant -1 : index
          %21 = arith.addi %arg4, %c-1_14 : index
          %22 = memref.load %arg2[%20, %21] : memref<?x60xi32>
          %23 = arith.cmpi sge, %17, %22 : i32
          %24 = scf.if %23 -> (i32) {
            %c-1_17 = arith.constant -1 : index
            %28 = arith.muli %arg3, %c-1_17 overflow<nsw> : index
            %29 = arith.addi %28, %0 : index
            %c-1_18 = arith.constant -1 : index
            %30 = arith.addi %29, %c-1_18 : index
            %31 = memref.load %arg2[%30, %arg4] : memref<?x60xi32>
            scf.yield %31 : i32
          } else {
            %c-1_17 = arith.constant -1 : index
            %28 = arith.muli %arg3, %c-1_17 overflow<nsw> : index
            %29 = arith.addi %28, %0 : index
            %c-1_18 = arith.constant -1 : index
            %30 = arith.addi %29, %c-1_18 : index
            %c-1_19 = arith.constant -1 : index
            %31 = arith.addi %arg4, %c-1_19 : index
            %32 = memref.load %arg2[%30, %31] : memref<?x60xi32>
            scf.yield %32 : i32
          }
          %c-1_15 = arith.constant -1 : index
          %25 = arith.muli %arg3, %c-1_15 overflow<nsw> : index
          %26 = arith.addi %25, %0 : index
          %c-1_16 = arith.constant -1 : index
          %27 = arith.addi %26, %c-1_16 : index
          memref.store %24, %arg2[%27, %arg4] : memref<?x60xi32>
        }
        %c0_3 = arith.constant 0 : index
        %c-1_4 = arith.constant -1 : index
        %5 = arith.addi %arg3, %c-1_4 : index
        %6 = arith.cmpi sge, %5, %c0_3 : index
        scf.if %6 {
          %c-1_10 = arith.constant -1 : index
          %14 = arith.muli %arg3, %c-1_10 overflow<nsw> : index
          %15 = arith.addi %14, %0 : index
          %c-1_11 = arith.constant -1 : index
          %16 = arith.addi %15, %c-1_11 : index
          %17 = memref.load %arg2[%16, %arg4] : memref<?x60xi32>
          %c-1_12 = arith.constant -1 : index
          %18 = arith.muli %arg3, %c-1_12 overflow<nsw> : index
          %19 = arith.addi %18, %0 : index
          %20 = memref.load %arg2[%19, %arg4] : memref<?x60xi32>
          %21 = arith.cmpi sge, %17, %20 : i32
          %22 = scf.if %21 -> (i32) {
            %c-1_15 = arith.constant -1 : index
            %26 = arith.muli %arg3, %c-1_15 overflow<nsw> : index
            %27 = arith.addi %26, %0 : index
            %c-1_16 = arith.constant -1 : index
            %28 = arith.addi %27, %c-1_16 : index
            %29 = memref.load %arg2[%28, %arg4] : memref<?x60xi32>
            scf.yield %29 : i32
          } else {
            %c-1_15 = arith.constant -1 : index
            %26 = arith.muli %arg3, %c-1_15 overflow<nsw> : index
            %27 = arith.addi %26, %0 : index
            %28 = memref.load %arg2[%27, %arg4] : memref<?x60xi32>
            scf.yield %28 : i32
          }
          %c-1_13 = arith.constant -1 : index
          %23 = arith.muli %arg3, %c-1_13 overflow<nsw> : index
          %24 = arith.addi %23, %0 : index
          %c-1_14 = arith.constant -1 : index
          %25 = arith.addi %24, %c-1_14 : index
          memref.store %22, %arg2[%25, %arg4] : memref<?x60xi32>
        }
        %c0_5 = arith.constant 0 : index
        %c-1_6 = arith.constant -1 : index
        %7 = arith.addi %arg4, %c-1_6 : index
        %8 = arith.cmpi sge, %7, %c0_5 : index
        %c-1_7 = arith.constant -1 : index
        %9 = arith.addi %arg3, %c-1_7 : index
        %10 = arith.cmpi sge, %9, %c0_5 : index
        %11 = arith.andi %8, %10 : i1
        scf.if %11 {
          %c0_10 = arith.constant 0 : index
          %14 = arith.addi %arg3, %arg4 : index
          %c-1_11 = arith.constant -1 : index
          %15 = arith.muli %0, %c-1_11 overflow<nsw> : index
          %16 = arith.addi %14, %15 : index
          %c-1_12 = arith.constant -1 : index
          %17 = arith.addi %16, %c-1_12 : index
          %18 = arith.cmpi sge, %17, %c0_10 : index
          scf.if %18 {
            %c-1_13 = arith.constant -1 : index
            %19 = arith.muli %arg3, %c-1_13 overflow<nsw> : index
            %20 = arith.addi %19, %0 : index
            %c-1_14 = arith.constant -1 : index
            %21 = arith.addi %20, %c-1_14 : index
            %22 = memref.load %arg2[%21, %arg4] : memref<?x60xi32>
            %c-1_15 = arith.constant -1 : index
            %23 = arith.muli %arg3, %c-1_15 overflow<nsw> : index
            %24 = arith.addi %23, %0 : index
            %c-1_16 = arith.constant -1 : index
            %25 = arith.addi %arg4, %c-1_16 : index
            %26 = memref.load %arg2[%24, %25] : memref<?x60xi32>
            %c-1_17 = arith.constant -1 : index
            %27 = arith.muli %arg3, %c-1_17 overflow<nsw> : index
            %28 = arith.addi %27, %0 : index
            %c-1_18 = arith.constant -1 : index
            %29 = arith.addi %28, %c-1_18 : index
            %30 = memref.load %arg1[%29] : memref<?xi32>
            %31 = memref.load %arg1[%arg4] : memref<?xi32>
            %32 = arith.addi %30, %31 : i32
            %33 = arith.cmpi eq, %32, %c3_i32 : i32
            %34 = arith.extui %33 : i1 to i32
            %35 = arith.addi %26, %34 : i32
            %36 = arith.cmpi sge, %22, %35 : i32
            %37 = scf.if %36 -> (i32) {
              %c-1_21 = arith.constant -1 : index
              %41 = arith.muli %arg3, %c-1_21 overflow<nsw> : index
              %42 = arith.addi %41, %0 : index
              %c-1_22 = arith.constant -1 : index
              %43 = arith.addi %42, %c-1_22 : index
              %44 = memref.load %arg2[%43, %arg4] : memref<?x60xi32>
              scf.yield %44 : i32
            } else {
              %c-1_21 = arith.constant -1 : index
              %41 = arith.muli %arg3, %c-1_21 overflow<nsw> : index
              %42 = arith.addi %41, %0 : index
              %c-1_22 = arith.constant -1 : index
              %43 = arith.addi %arg4, %c-1_22 : index
              %44 = memref.load %arg2[%42, %43] : memref<?x60xi32>
              %c-1_23 = arith.constant -1 : index
              %45 = arith.muli %arg3, %c-1_23 overflow<nsw> : index
              %46 = arith.addi %45, %0 : index
              %c-1_24 = arith.constant -1 : index
              %47 = arith.addi %46, %c-1_24 : index
              %48 = memref.load %arg1[%47] : memref<?xi32>
              %49 = arith.addi %48, %31 : i32
              %50 = arith.cmpi eq, %49, %c3_i32 : i32
              %51 = arith.extui %50 : i1 to i32
              %52 = arith.addi %44, %51 : i32
              scf.yield %52 : i32
            }
            %c-1_19 = arith.constant -1 : index
            %38 = arith.muli %arg3, %c-1_19 overflow<nsw> : index
            %39 = arith.addi %38, %0 : index
            %c-1_20 = arith.constant -1 : index
            %40 = arith.addi %39, %c-1_20 : index
            memref.store %37, %arg2[%40, %arg4] : memref<?x60xi32>
          } else {
            %c-1_13 = arith.constant -1 : index
            %19 = arith.muli %arg3, %c-1_13 overflow<nsw> : index
            %20 = arith.addi %19, %0 : index
            %c-1_14 = arith.constant -1 : index
            %21 = arith.addi %20, %c-1_14 : index
            %22 = memref.load %arg2[%21, %arg4] : memref<?x60xi32>
            %c-1_15 = arith.constant -1 : index
            %23 = arith.muli %arg3, %c-1_15 overflow<nsw> : index
            %24 = arith.addi %23, %0 : index
            %c-1_16 = arith.constant -1 : index
            %25 = arith.addi %arg4, %c-1_16 : index
            %26 = memref.load %arg2[%24, %25] : memref<?x60xi32>
            %27 = arith.cmpi sge, %22, %26 : i32
            %28 = scf.if %27 -> (i32) {
              %c-1_19 = arith.constant -1 : index
              %32 = arith.muli %arg3, %c-1_19 overflow<nsw> : index
              %33 = arith.addi %32, %0 : index
              %c-1_20 = arith.constant -1 : index
              %34 = arith.addi %33, %c-1_20 : index
              %35 = memref.load %arg2[%34, %arg4] : memref<?x60xi32>
              scf.yield %35 : i32
            } else {
              %c-1_19 = arith.constant -1 : index
              %32 = arith.muli %arg3, %c-1_19 overflow<nsw> : index
              %33 = arith.addi %32, %0 : index
              %c-1_20 = arith.constant -1 : index
              %34 = arith.addi %arg4, %c-1_20 : index
              %35 = memref.load %arg2[%33, %34] : memref<?x60xi32>
              scf.yield %35 : i32
            }
            %c-1_17 = arith.constant -1 : index
            %29 = arith.muli %arg3, %c-1_17 overflow<nsw> : index
            %30 = arith.addi %29, %0 : index
            %c-1_18 = arith.constant -1 : index
            %31 = arith.addi %30, %c-1_18 : index
            memref.store %28, %arg2[%31, %arg4] : memref<?x60xi32>
          }
        }
        %c-1_8 = arith.constant -1 : index
        %12 = arith.muli %arg3, %c-1_8 overflow<nsw> : index
        %13 = arith.addi %12, %0 : index
        %c1_9 = arith.constant 1 : index
        scf.for %arg5 = %13 to %arg4 step %c1_9 {
          %c-1_10 = arith.constant -1 : index
          %14 = arith.muli %arg3, %c-1_10 overflow<nsw> : index
          %15 = arith.addi %14, %0 : index
          %c-1_11 = arith.constant -1 : index
          %16 = arith.addi %15, %c-1_11 : index
          %17 = memref.load %arg2[%16, %arg4] : memref<?x60xi32>
          %c-1_12 = arith.constant -1 : index
          %18 = arith.muli %arg3, %c-1_12 overflow<nsw> : index
          %19 = arith.addi %18, %0 : index
          %c-1_13 = arith.constant -1 : index
          %20 = arith.addi %19, %c-1_13 : index
          %21 = memref.load %arg2[%20, %arg5] : memref<?x60xi32>
          %c1_14 = arith.constant 1 : index
          %22 = arith.addi %arg5, %c1_14 : index
          %23 = memref.load %arg2[%22, %arg4] : memref<?x60xi32>
          %24 = arith.addi %21, %23 : i32
          %25 = arith.cmpi sge, %17, %24 : i32
          %26 = scf.if %25 -> (i32) {
            %c-1_17 = arith.constant -1 : index
            %30 = arith.muli %arg3, %c-1_17 overflow<nsw> : index
            %31 = arith.addi %30, %0 : index
            %c-1_18 = arith.constant -1 : index
            %32 = arith.addi %31, %c-1_18 : index
            %33 = memref.load %arg2[%32, %arg4] : memref<?x60xi32>
            scf.yield %33 : i32
          } else {
            %c-1_17 = arith.constant -1 : index
            %30 = arith.muli %arg3, %c-1_17 overflow<nsw> : index
            %31 = arith.addi %30, %0 : index
            %c-1_18 = arith.constant -1 : index
            %32 = arith.addi %31, %c-1_18 : index
            %33 = memref.load %arg2[%32, %arg5] : memref<?x60xi32>
            %34 = arith.addi %33, %23 : i32
            scf.yield %34 : i32
          }
          %c-1_15 = arith.constant -1 : index
          %27 = arith.muli %arg3, %c-1_15 overflow<nsw> : index
          %28 = arith.addi %27, %0 : index
          %c-1_16 = arith.constant -1 : index
          %29 = arith.addi %28, %c-1_16 : index
          memref.store %26, %arg2[%29, %arg4] : memref<?x60xi32>
        }
      }
    }
    return
  }
}

