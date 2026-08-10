module {
  func.func @kernel_adi(%arg0: i32, %arg1: i32, %arg2: memref<?x20xf64>, %arg3: memref<?x20xf64>, %arg4: memref<?x20xf64>, %arg5: memref<?x20xf64>) {
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 2.000000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.sitofp %arg1 : i32 to f64
    %2 = arith.divf %cst, %1 : f64
    %3 = arith.sitofp %arg0 : i32 to f64
    %4 = arith.divf %cst, %3 : f64
    %5 = arith.mulf %4, %cst_0 : f64
    %6 = arith.mulf %2, %2 : f64
    %7 = arith.divf %5, %6 : f64
    %8 = arith.divf %4, %6 : f64
    %9 = arith.negf %7 : f64
    %10 = arith.divf %9, %cst_0 : f64
    %11 = arith.addf %7, %cst : f64
    %12 = arith.negf %8 : f64
    %13 = arith.divf %12, %cst_0 : f64
    %14 = arith.addf %8, %cst : f64
    %15 = arith.index_cast %arg0 : i32 to index
    %16 = arith.negf %10 : f64
    %17 = arith.negf %13 : f64
    %18 = arith.mulf %13, %cst_0 : f64
    %19 = arith.addf %18, %cst : f64
    %20 = arith.mulf %10, %cst_0 : f64
    %21 = arith.addf %20, %cst : f64
    %c1 = arith.constant 1 : index
    %c1_2 = arith.constant 1 : index
    %22 = arith.addi %15, %c1_2 : index
    %c1_3 = arith.constant 1 : index
    scf.for %arg6 = %c1 to %22 step %c1_3 {
      %c1_4 = arith.constant 1 : index
      %c-1 = arith.constant -1 : index
      %23 = arith.addi %0, %c-1 : index
      %c1_5 = arith.constant 1 : index
      scf.for %arg7 = %c1_4 to %23 step %c1_5 {
        %c0 = arith.constant 0 : index
        memref.store %cst, %arg3[%c0, %arg7] : memref<?x20xf64>
        %c0_9 = arith.constant 0 : index
        memref.store %cst_1, %arg4[%arg7, %c0_9] : memref<?x20xf64>
        %c0_10 = arith.constant 0 : index
        %25 = memref.load %arg3[%c0_10, %arg7] : memref<?x20xf64>
        %c0_11 = arith.constant 0 : index
        memref.store %25, %arg5[%arg7, %c0_11] : memref<?x20xf64>
        %c1_12 = arith.constant 1 : index
        %c-1_13 = arith.constant -1 : index
        %26 = arith.addi %0, %c-1_13 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg8 = %c1_12 to %26 step %c1_14 {
          %c-1_19 = arith.constant -1 : index
          %29 = arith.addi %arg8, %c-1_19 : index
          %30 = memref.load %arg4[%arg7, %29] : memref<?x20xf64>
          %31 = arith.mulf %10, %30 : f64
          %32 = arith.addf %31, %11 : f64
          %33 = arith.divf %16, %32 : f64
          memref.store %33, %arg4[%arg7, %arg8] : memref<?x20xf64>
          %c-1_20 = arith.constant -1 : index
          %34 = arith.addi %arg7, %c-1_20 : index
          %35 = memref.load %arg2[%arg8, %34] : memref<?x20xf64>
          %36 = arith.mulf %17, %35 : f64
          %37 = memref.load %arg2[%arg8, %arg7] : memref<?x20xf64>
          %38 = arith.mulf %19, %37 : f64
          %39 = arith.addf %36, %38 : f64
          %c1_21 = arith.constant 1 : index
          %40 = arith.addi %arg7, %c1_21 : index
          %41 = memref.load %arg2[%arg8, %40] : memref<?x20xf64>
          %42 = arith.mulf %13, %41 : f64
          %43 = arith.subf %39, %42 : f64
          %c-1_22 = arith.constant -1 : index
          %44 = arith.addi %arg8, %c-1_22 : index
          %45 = memref.load %arg5[%arg7, %44] : memref<?x20xf64>
          %46 = arith.mulf %10, %45 : f64
          %47 = arith.subf %43, %46 : f64
          %48 = arith.divf %47, %32 : f64
          memref.store %48, %arg5[%arg7, %arg8] : memref<?x20xf64>
        }
        %c-1_15 = arith.constant -1 : index
        %27 = arith.addi %0, %c-1_15 : index
        memref.store %cst, %arg3[%27, %arg7] : memref<?x20xf64>
        %c1_16 = arith.constant 1 : index
        %c-1_17 = arith.constant -1 : index
        %28 = arith.addi %0, %c-1_17 : index
        %c1_18 = arith.constant 1 : index
        scf.for %arg8 = %c1_16 to %28 step %c1_18 {
          %c-1_19 = arith.constant -1 : index
          %29 = arith.muli %arg8, %c-1_19 overflow<nsw> : index
          %30 = arith.addi %29, %0 : index
          %c-1_20 = arith.constant -1 : index
          %31 = arith.addi %30, %c-1_20 : index
          %32 = memref.load %arg4[%arg7, %31] : memref<?x20xf64>
          %c-1_21 = arith.constant -1 : index
          %33 = arith.muli %arg8, %c-1_21 overflow<nsw> : index
          %34 = arith.addi %33, %0 : index
          %35 = memref.load %arg3[%34, %arg7] : memref<?x20xf64>
          %36 = arith.mulf %32, %35 : f64
          %c-1_22 = arith.constant -1 : index
          %37 = arith.muli %arg8, %c-1_22 overflow<nsw> : index
          %38 = arith.addi %37, %0 : index
          %c-1_23 = arith.constant -1 : index
          %39 = arith.addi %38, %c-1_23 : index
          %40 = memref.load %arg5[%arg7, %39] : memref<?x20xf64>
          %41 = arith.addf %36, %40 : f64
          %c-1_24 = arith.constant -1 : index
          %42 = arith.muli %arg8, %c-1_24 overflow<nsw> : index
          %43 = arith.addi %42, %0 : index
          %c-1_25 = arith.constant -1 : index
          %44 = arith.addi %43, %c-1_25 : index
          memref.store %41, %arg3[%44, %arg7] : memref<?x20xf64>
        }
      }
      %c1_6 = arith.constant 1 : index
      %c-1_7 = arith.constant -1 : index
      %24 = arith.addi %0, %c-1_7 : index
      %c1_8 = arith.constant 1 : index
      scf.for %arg7 = %c1_6 to %24 step %c1_8 {
        %c0 = arith.constant 0 : index
        memref.store %cst, %arg2[%arg7, %c0] : memref<?x20xf64>
        %c0_9 = arith.constant 0 : index
        memref.store %cst_1, %arg4[%arg7, %c0_9] : memref<?x20xf64>
        %c0_10 = arith.constant 0 : index
        %25 = memref.load %arg2[%arg7, %c0_10] : memref<?x20xf64>
        %c0_11 = arith.constant 0 : index
        memref.store %25, %arg5[%arg7, %c0_11] : memref<?x20xf64>
        %c1_12 = arith.constant 1 : index
        %c-1_13 = arith.constant -1 : index
        %26 = arith.addi %0, %c-1_13 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg8 = %c1_12 to %26 step %c1_14 {
          %c-1_19 = arith.constant -1 : index
          %29 = arith.addi %arg8, %c-1_19 : index
          %30 = memref.load %arg4[%arg7, %29] : memref<?x20xf64>
          %31 = arith.mulf %13, %30 : f64
          %32 = arith.addf %31, %14 : f64
          %33 = arith.divf %17, %32 : f64
          memref.store %33, %arg4[%arg7, %arg8] : memref<?x20xf64>
          %c-1_20 = arith.constant -1 : index
          %34 = arith.addi %arg7, %c-1_20 : index
          %35 = memref.load %arg3[%34, %arg8] : memref<?x20xf64>
          %36 = arith.mulf %16, %35 : f64
          %37 = memref.load %arg3[%arg7, %arg8] : memref<?x20xf64>
          %38 = arith.mulf %21, %37 : f64
          %39 = arith.addf %36, %38 : f64
          %c1_21 = arith.constant 1 : index
          %40 = arith.addi %arg7, %c1_21 : index
          %41 = memref.load %arg3[%40, %arg8] : memref<?x20xf64>
          %42 = arith.mulf %10, %41 : f64
          %43 = arith.subf %39, %42 : f64
          %c-1_22 = arith.constant -1 : index
          %44 = arith.addi %arg8, %c-1_22 : index
          %45 = memref.load %arg5[%arg7, %44] : memref<?x20xf64>
          %46 = arith.mulf %13, %45 : f64
          %47 = arith.subf %43, %46 : f64
          %48 = arith.divf %47, %32 : f64
          memref.store %48, %arg5[%arg7, %arg8] : memref<?x20xf64>
        }
        %c-1_15 = arith.constant -1 : index
        %27 = arith.addi %0, %c-1_15 : index
        memref.store %cst, %arg2[%arg7, %27] : memref<?x20xf64>
        %c1_16 = arith.constant 1 : index
        %c-1_17 = arith.constant -1 : index
        %28 = arith.addi %0, %c-1_17 : index
        %c1_18 = arith.constant 1 : index
        scf.for %arg8 = %c1_16 to %28 step %c1_18 {
          %c-1_19 = arith.constant -1 : index
          %29 = arith.muli %arg8, %c-1_19 overflow<nsw> : index
          %30 = arith.addi %29, %0 : index
          %c-1_20 = arith.constant -1 : index
          %31 = arith.addi %30, %c-1_20 : index
          %32 = memref.load %arg4[%arg7, %31] : memref<?x20xf64>
          %c-1_21 = arith.constant -1 : index
          %33 = arith.muli %arg8, %c-1_21 overflow<nsw> : index
          %34 = arith.addi %33, %0 : index
          %35 = memref.load %arg2[%arg7, %34] : memref<?x20xf64>
          %36 = arith.mulf %32, %35 : f64
          %c-1_22 = arith.constant -1 : index
          %37 = arith.muli %arg8, %c-1_22 overflow<nsw> : index
          %38 = arith.addi %37, %0 : index
          %c-1_23 = arith.constant -1 : index
          %39 = arith.addi %38, %c-1_23 : index
          %40 = memref.load %arg5[%arg7, %39] : memref<?x20xf64>
          %41 = arith.addf %36, %40 : f64
          %c-1_24 = arith.constant -1 : index
          %42 = arith.muli %arg8, %c-1_24 overflow<nsw> : index
          %43 = arith.addi %42, %0 : index
          %c-1_25 = arith.constant -1 : index
          %44 = arith.addi %43, %c-1_25 : index
          memref.store %41, %arg2[%arg7, %44] : memref<?x20xf64>
        }
      }
    }
    return
  }
}

