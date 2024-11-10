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
          %c3_15 = arith.constant 3 : index
          %c1_16 = arith.constant 1 : index
          scf.for %arg9 = %c0_14 to %c3_15 step %c1_16 {
            %c4 = arith.constant 4 : index
            %29 = arith.muli %arg9, %c4 : index
            memref.store %cst, %arg5[%29] : memref<?xf64>
            %c1_22 = arith.constant 1 : index
            %30 = arith.addi %29, %c1_22 : index
            memref.store %cst, %arg5[%30] : memref<?xf64>
            %c2 = arith.constant 2 : index
            %31 = arith.addi %29, %c2 : index
            memref.store %cst, %arg5[%31] : memref<?xf64>
            %c3_23 = arith.constant 3 : index
            %32 = arith.addi %29, %c3_23 : index
            memref.store %cst, %arg5[%32] : memref<?xf64>
          }
          %c0_17 = arith.constant 0 : index
          %c12 = arith.constant 12 : index
          %c1_18 = arith.constant 1 : index
          scf.for %arg9 = %c0_17 to %c12 step %c1_18 {
            %c-7_22 = arith.constant -7 : index
            %29 = arith.muli %arg7, %c-7_22 : index
            %30 = arith.addi %29, %arg8 : index
            %31 = memref.load %arg3[%arg7, %30, %arg9] : memref<?x8x12xf64>
            %c-7_23 = arith.constant -7 : index
            %32 = arith.muli %arg7, %c-7_23 : index
            %33 = arith.addi %32, %arg8 : index
            %34 = memref.load %arg3[%arg7, %33, %arg9] : memref<?x8x12xf64>
            %c-7_24 = arith.constant -7 : index
            %35 = arith.muli %arg7, %c-7_24 : index
            %36 = arith.addi %35, %arg8 : index
            %37 = memref.load %arg3[%arg7, %36, %arg9] : memref<?x8x12xf64>
            %c-7_25 = arith.constant -7 : index
            %38 = arith.muli %arg7, %c-7_25 : index
            %39 = arith.addi %38, %arg8 : index
            %40 = memref.load %arg3[%arg7, %39, %arg9] : memref<?x8x12xf64>
            %c0_26 = arith.constant 0 : index
            %c3_27 = arith.constant 3 : index
            %c1_28 = arith.constant 1 : index
            scf.for %arg10 = %c0_26 to %c3_27 step %c1_28 {
              %c4 = arith.constant 4 : index
              %41 = arith.muli %arg10, %c4 : index
              %42 = memref.load %arg5[%41] : memref<?xf64>
              %43 = memref.load %arg4[%arg9, %41] : memref<?x12xf64>
              %44 = arith.mulf %31, %43 : f64
              %45 = arith.addf %42, %44 : f64
              memref.store %45, %arg5[%41] : memref<?xf64>
              %c1_29 = arith.constant 1 : index
              %46 = arith.addi %41, %c1_29 : index
              %47 = memref.load %arg5[%46] : memref<?xf64>
              %48 = memref.load %arg4[%arg9, %46] : memref<?x12xf64>
              %49 = arith.mulf %34, %48 : f64
              %50 = arith.addf %47, %49 : f64
              memref.store %50, %arg5[%46] : memref<?xf64>
              %c2 = arith.constant 2 : index
              %51 = arith.addi %41, %c2 : index
              %52 = memref.load %arg5[%51] : memref<?xf64>
              %53 = memref.load %arg4[%arg9, %51] : memref<?x12xf64>
              %54 = arith.mulf %37, %53 : f64
              %55 = arith.addf %52, %54 : f64
              memref.store %55, %arg5[%51] : memref<?xf64>
              %c3_30 = arith.constant 3 : index
              %56 = arith.addi %41, %c3_30 : index
              %57 = memref.load %arg5[%56] : memref<?xf64>
              %58 = memref.load %arg4[%arg9, %56] : memref<?x12xf64>
              %59 = arith.mulf %40, %58 : f64
              %60 = arith.addf %57, %59 : f64
              memref.store %60, %arg5[%56] : memref<?xf64>
            }
          }
          %c0_19 = arith.constant 0 : index
          %c3_20 = arith.constant 3 : index
          %c1_21 = arith.constant 1 : index
          scf.for %arg9 = %c0_19 to %c3_20 step %c1_21 {
            %c4 = arith.constant 4 : index
            %29 = arith.muli %arg9, %c4 : index
            %30 = memref.load %arg5[%29] : memref<?xf64>
            %c-7_22 = arith.constant -7 : index
            %31 = arith.muli %arg7, %c-7_22 : index
            %32 = arith.addi %31, %arg8 : index
            memref.store %30, %arg3[%arg7, %32, %29] : memref<?x8x12xf64>
            %c1_23 = arith.constant 1 : index
            %33 = arith.addi %29, %c1_23 : index
            %34 = memref.load %arg5[%33] : memref<?xf64>
            %c-7_24 = arith.constant -7 : index
            %35 = arith.muli %arg7, %c-7_24 : index
            %36 = arith.addi %35, %arg8 : index
            memref.store %34, %arg3[%arg7, %36, %33] : memref<?x8x12xf64>
            %c2 = arith.constant 2 : index
            %37 = arith.addi %29, %c2 : index
            %38 = memref.load %arg5[%37] : memref<?xf64>
            %c-7_25 = arith.constant -7 : index
            %39 = arith.muli %arg7, %c-7_25 : index
            %40 = arith.addi %39, %arg8 : index
            memref.store %38, %arg3[%arg7, %40, %37] : memref<?x8x12xf64>
            %c3_26 = arith.constant 3 : index
            %41 = arith.addi %29, %c3_26 : index
            %42 = memref.load %arg5[%41] : memref<?xf64>
            %c-7_27 = arith.constant -7 : index
            %43 = arith.muli %arg7, %c-7_27 : index
            %44 = arith.addi %43, %arg8 : index
            memref.store %42, %arg3[%arg7, %44, %41] : memref<?x8x12xf64>
          }
        }
      }
    }
    return
  }
}

