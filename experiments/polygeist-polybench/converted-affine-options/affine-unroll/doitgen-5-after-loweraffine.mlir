module {
  func.func @kernel_doitgen(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x8x12xf64>, %arg4: memref<?x12xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c3 = arith.constant 3 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c3 step %c1 {
      %c0_0 = arith.constant 0 : index
      %c32 = arith.constant 32 : index
      %0 = arith.muli %arg6, %c32 : index
      %c-7 = arith.constant -7 : index
      %1 = arith.addi %0, %c-7 : index
      %c7 = arith.constant 7 : index
      %c0_1 = arith.constant 0 : index
      %c1_2 = arith.constant 1 : index
      %2 = arith.cmpi sle, %1, %c0_1 : index
      %3 = arith.subi %c0_1, %1 : index
      %4 = arith.subi %1, %c1_2 : index
      %5 = arith.select %2, %3, %4 : index
      %6 = arith.divsi %5, %c7 : index
      %7 = arith.subi %c0_1, %6 : index
      %8 = arith.addi %6, %c1_2 : index
      %9 = arith.select %2, %7, %8 : index
      %10 = arith.maxsi %c0_0, %9 : index
      %c10 = arith.constant 10 : index
      %c32_3 = arith.constant 32 : index
      %11 = arith.muli %arg6, %c32_3 : index
      %c31 = arith.constant 31 : index
      %12 = arith.addi %11, %c31 : index
      %c7_4 = arith.constant 7 : index
      %c0_5 = arith.constant 0 : index
      %c-1 = arith.constant -1 : index
      %13 = arith.cmpi slt, %12, %c0_5 : index
      %14 = arith.subi %c-1, %12 : index
      %15 = arith.select %13, %14, %12 : index
      %16 = arith.divsi %15, %c7_4 : index
      %17 = arith.subi %c-1, %16 : index
      %18 = arith.select %13, %17, %16 : index
      %c1_6 = arith.constant 1 : index
      %19 = arith.addi %18, %c1_6 : index
      %20 = arith.minsi %c10, %19 : index
      %c1_7 = arith.constant 1 : index
      scf.for %arg7 = %10 to %20 step %c1_7 {
        %c32_8 = arith.constant 32 : index
        %21 = arith.muli %arg6, %c32_8 : index
        %c7_9 = arith.constant 7 : index
        %22 = arith.muli %arg7, %c7_9 : index
        %23 = arith.maxsi %21, %22 : index
        %c32_10 = arith.constant 32 : index
        %24 = arith.muli %arg6, %c32_10 : index
        %c32_11 = arith.constant 32 : index
        %25 = arith.addi %24, %c32_11 : index
        %c7_12 = arith.constant 7 : index
        %26 = arith.muli %arg7, %c7_12 : index
        %c8 = arith.constant 8 : index
        %27 = arith.addi %26, %c8 : index
        %28 = arith.minsi %25, %27 : index
        %c1_13 = arith.constant 1 : index
        scf.for %arg8 = %23 to %28 step %c1_13 {
          %c0_14 = arith.constant 0 : index
          %c12 = arith.constant 12 : index
          %c4 = arith.constant 4 : index
          scf.for %arg9 = %c0_14 to %c12 step %c4 {
            memref.store %cst, %arg5[%arg9] : memref<?xf64>
            %c1_21 = arith.constant 1 : index
            %29 = arith.addi %arg9, %c1_21 : index
            memref.store %cst, %arg5[%29] : memref<?xf64>
            %c2 = arith.constant 2 : index
            %30 = arith.addi %arg9, %c2 : index
            memref.store %cst, %arg5[%30] : memref<?xf64>
            %c3_22 = arith.constant 3 : index
            %31 = arith.addi %arg9, %c3_22 : index
            memref.store %cst, %arg5[%31] : memref<?xf64>
          }
          %c0_15 = arith.constant 0 : index
          %c12_16 = arith.constant 12 : index
          %c1_17 = arith.constant 1 : index
          scf.for %arg9 = %c0_15 to %c12_16 step %c1_17 {
            %c0_21 = arith.constant 0 : index
            %c12_22 = arith.constant 12 : index
            %c4_23 = arith.constant 4 : index
            scf.for %arg10 = %c0_21 to %c12_22 step %c4_23 {
              %29 = memref.load %arg5[%arg10] : memref<?xf64>
              %c-7_24 = arith.constant -7 : index
              %30 = arith.muli %arg7, %c-7_24 : index
              %31 = arith.addi %30, %arg8 : index
              %32 = memref.load %arg3[%arg7, %31, %arg9] : memref<?x8x12xf64>
              %33 = memref.load %arg4[%arg9, %arg10] : memref<?x12xf64>
              %34 = arith.mulf %32, %33 : f64
              %35 = arith.addf %29, %34 : f64
              memref.store %35, %arg5[%arg10] : memref<?xf64>
              %c1_25 = arith.constant 1 : index
              %36 = arith.addi %arg10, %c1_25 : index
              %37 = memref.load %arg5[%36] : memref<?xf64>
              %c-7_26 = arith.constant -7 : index
              %38 = arith.muli %arg7, %c-7_26 : index
              %39 = arith.addi %38, %arg8 : index
              %40 = memref.load %arg3[%arg7, %39, %arg9] : memref<?x8x12xf64>
              %41 = memref.load %arg4[%arg9, %36] : memref<?x12xf64>
              %42 = arith.mulf %40, %41 : f64
              %43 = arith.addf %37, %42 : f64
              memref.store %43, %arg5[%36] : memref<?xf64>
              %c2 = arith.constant 2 : index
              %44 = arith.addi %arg10, %c2 : index
              %45 = memref.load %arg5[%44] : memref<?xf64>
              %c-7_27 = arith.constant -7 : index
              %46 = arith.muli %arg7, %c-7_27 : index
              %47 = arith.addi %46, %arg8 : index
              %48 = memref.load %arg3[%arg7, %47, %arg9] : memref<?x8x12xf64>
              %49 = memref.load %arg4[%arg9, %44] : memref<?x12xf64>
              %50 = arith.mulf %48, %49 : f64
              %51 = arith.addf %45, %50 : f64
              memref.store %51, %arg5[%44] : memref<?xf64>
              %c3_28 = arith.constant 3 : index
              %52 = arith.addi %arg10, %c3_28 : index
              %53 = memref.load %arg5[%52] : memref<?xf64>
              %c-7_29 = arith.constant -7 : index
              %54 = arith.muli %arg7, %c-7_29 : index
              %55 = arith.addi %54, %arg8 : index
              %56 = memref.load %arg3[%arg7, %55, %arg9] : memref<?x8x12xf64>
              %57 = memref.load %arg4[%arg9, %52] : memref<?x12xf64>
              %58 = arith.mulf %56, %57 : f64
              %59 = arith.addf %53, %58 : f64
              memref.store %59, %arg5[%52] : memref<?xf64>
            }
          }
          %c0_18 = arith.constant 0 : index
          %c12_19 = arith.constant 12 : index
          %c4_20 = arith.constant 4 : index
          scf.for %arg9 = %c0_18 to %c12_19 step %c4_20 {
            %29 = memref.load %arg5[%arg9] : memref<?xf64>
            %c-7_21 = arith.constant -7 : index
            %30 = arith.muli %arg7, %c-7_21 : index
            %31 = arith.addi %30, %arg8 : index
            memref.store %29, %arg3[%arg7, %31, %arg9] : memref<?x8x12xf64>
            %c1_22 = arith.constant 1 : index
            %32 = arith.addi %arg9, %c1_22 : index
            %33 = memref.load %arg5[%32] : memref<?xf64>
            %c-7_23 = arith.constant -7 : index
            %34 = arith.muli %arg7, %c-7_23 : index
            %35 = arith.addi %34, %arg8 : index
            memref.store %33, %arg3[%arg7, %35, %32] : memref<?x8x12xf64>
            %c2 = arith.constant 2 : index
            %36 = arith.addi %arg9, %c2 : index
            %37 = memref.load %arg5[%36] : memref<?xf64>
            %c-7_24 = arith.constant -7 : index
            %38 = arith.muli %arg7, %c-7_24 : index
            %39 = arith.addi %38, %arg8 : index
            memref.store %37, %arg3[%arg7, %39, %36] : memref<?x8x12xf64>
            %c3_25 = arith.constant 3 : index
            %40 = arith.addi %arg9, %c3_25 : index
            %41 = memref.load %arg5[%40] : memref<?xf64>
            %c-7_26 = arith.constant -7 : index
            %42 = arith.muli %arg7, %c-7_26 : index
            %43 = arith.addi %42, %arg8 : index
            memref.store %41, %arg3[%arg7, %43, %40] : memref<?x8x12xf64>
          }
        }
      }
    }
    return
  }
}

