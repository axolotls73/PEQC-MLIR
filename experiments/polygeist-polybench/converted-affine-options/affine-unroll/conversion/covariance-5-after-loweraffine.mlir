module {
  func.func @kernel_covariance(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %alloca = memref.alloca() : memref<1xf64>
    %alloca_1 = memref.alloca() {scop.scratchpad} : memref<1xf64>
    %c0 = arith.constant 0 : index
    %c28 = arith.constant 28 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c28 step %c1 {
      %c-1 = arith.constant -1 : index
      %1 = arith.muli %arg6, %c-1 : index
      %c4_18 = arith.constant 4 : index
      %c0_19 = arith.constant 0 : index
      %c-1_20 = arith.constant -1 : index
      %2 = arith.cmpi slt, %1, %c0_19 : index
      %3 = arith.subi %c-1_20, %1 : index
      %4 = arith.select %2, %3, %1 : index
      %5 = arith.divsi %4, %c4_18 : index
      %6 = arith.subi %c-1_20, %5 : index
      %7 = arith.select %2, %6, %5 : index
      %c4_21 = arith.constant 4 : index
      %8 = arith.muli %7, %c4_21 : index
      %9 = arith.addi %arg6, %8 : index
      %c28_22 = arith.constant 28 : index
      %10 = arith.addi %9, %c28_22 : index
      %c4_23 = arith.constant 4 : index
      scf.for %arg7 = %arg6 to %10 step %c4_23 {
        memref.store %cst_0, %arg4[%arg6, %arg7] : memref<?x28xf64>
        %c1_32 = arith.constant 1 : index
        %21 = arith.addi %arg7, %c1_32 : index
        memref.store %cst_0, %arg4[%arg6, %21] : memref<?x28xf64>
        %c2 = arith.constant 2 : index
        %22 = arith.addi %arg7, %c2 : index
        memref.store %cst_0, %arg4[%arg6, %22] : memref<?x28xf64>
        %c3 = arith.constant 3 : index
        %23 = arith.addi %arg7, %c3 : index
        memref.store %cst_0, %arg4[%arg6, %23] : memref<?x28xf64>
      }
      %c-1_24 = arith.constant -1 : index
      %11 = arith.muli %arg6, %c-1_24 : index
      %c4_25 = arith.constant 4 : index
      %c0_26 = arith.constant 0 : index
      %c-1_27 = arith.constant -1 : index
      %12 = arith.cmpi slt, %11, %c0_26 : index
      %13 = arith.subi %c-1_27, %11 : index
      %14 = arith.select %12, %13, %11 : index
      %15 = arith.divsi %14, %c4_25 : index
      %16 = arith.subi %c-1_27, %15 : index
      %17 = arith.select %12, %16, %15 : index
      %c4_28 = arith.constant 4 : index
      %18 = arith.muli %17, %c4_28 : index
      %19 = arith.addi %arg6, %18 : index
      %c28_29 = arith.constant 28 : index
      %20 = arith.addi %19, %c28_29 : index
      %c28_30 = arith.constant 28 : index
      %c1_31 = arith.constant 1 : index
      scf.for %arg7 = %20 to %c28_30 step %c1_31 {
        memref.store %cst_0, %arg4[%arg6, %arg7] : memref<?x28xf64>
      }
    }
    %0 = arith.subf %arg2, %cst : f64
    %c0_2 = arith.constant 0 : index
    memref.store %0, %alloca_1[%c0_2] : memref<1xf64>
    %c0_3 = arith.constant 0 : index
    %c28_4 = arith.constant 28 : index
    %c4 = arith.constant 4 : index
    scf.for %arg6 = %c0_3 to %c28_4 step %c4 {
      memref.store %cst_0, %arg5[%arg6] : memref<?xf64>
      %c1_18 = arith.constant 1 : index
      %1 = arith.addi %arg6, %c1_18 : index
      memref.store %cst_0, %arg5[%1] : memref<?xf64>
      %c2 = arith.constant 2 : index
      %2 = arith.addi %arg6, %c2 : index
      memref.store %cst_0, %arg5[%2] : memref<?xf64>
      %c3 = arith.constant 3 : index
      %3 = arith.addi %arg6, %c3 : index
      memref.store %cst_0, %arg5[%3] : memref<?xf64>
    }
    %c0_5 = arith.constant 0 : index
    %c32 = arith.constant 32 : index
    %c1_6 = arith.constant 1 : index
    scf.for %arg6 = %c0_5 to %c32 step %c1_6 {
      %c0_18 = arith.constant 0 : index
      %c28_19 = arith.constant 28 : index
      %c4_20 = arith.constant 4 : index
      scf.for %arg7 = %c0_18 to %c28_19 step %c4_20 {
        %1 = memref.load %arg5[%arg7] : memref<?xf64>
        %2 = memref.load %arg3[%arg6, %arg7] : memref<?x28xf64>
        %3 = arith.addf %1, %2 : f64
        memref.store %3, %arg5[%arg7] : memref<?xf64>
        %c1_21 = arith.constant 1 : index
        %4 = arith.addi %arg7, %c1_21 : index
        %5 = memref.load %arg5[%4] : memref<?xf64>
        %6 = memref.load %arg3[%arg6, %4] : memref<?x28xf64>
        %7 = arith.addf %5, %6 : f64
        memref.store %7, %arg5[%4] : memref<?xf64>
        %c2 = arith.constant 2 : index
        %8 = arith.addi %arg7, %c2 : index
        %9 = memref.load %arg5[%8] : memref<?xf64>
        %10 = memref.load %arg3[%arg6, %8] : memref<?x28xf64>
        %11 = arith.addf %9, %10 : f64
        memref.store %11, %arg5[%8] : memref<?xf64>
        %c3 = arith.constant 3 : index
        %12 = arith.addi %arg7, %c3 : index
        %13 = memref.load %arg5[%12] : memref<?xf64>
        %14 = memref.load %arg3[%arg6, %12] : memref<?x28xf64>
        %15 = arith.addf %13, %14 : f64
        memref.store %15, %arg5[%12] : memref<?xf64>
      }
    }
    %c0_7 = arith.constant 0 : index
    %c28_8 = arith.constant 28 : index
    %c4_9 = arith.constant 4 : index
    scf.for %arg6 = %c0_7 to %c28_8 step %c4_9 {
      %1 = memref.load %arg5[%arg6] : memref<?xf64>
      %2 = arith.divf %1, %arg2 : f64
      memref.store %2, %arg5[%arg6] : memref<?xf64>
      %c1_18 = arith.constant 1 : index
      %3 = arith.addi %arg6, %c1_18 : index
      %4 = memref.load %arg5[%3] : memref<?xf64>
      %5 = arith.divf %4, %arg2 : f64
      memref.store %5, %arg5[%3] : memref<?xf64>
      %c2 = arith.constant 2 : index
      %6 = arith.addi %arg6, %c2 : index
      %7 = memref.load %arg5[%6] : memref<?xf64>
      %8 = arith.divf %7, %arg2 : f64
      memref.store %8, %arg5[%6] : memref<?xf64>
      %c3 = arith.constant 3 : index
      %9 = arith.addi %arg6, %c3 : index
      %10 = memref.load %arg5[%9] : memref<?xf64>
      %11 = arith.divf %10, %arg2 : f64
      memref.store %11, %arg5[%9] : memref<?xf64>
    }
    %c0_10 = arith.constant 0 : index
    %c32_11 = arith.constant 32 : index
    %c1_12 = arith.constant 1 : index
    scf.for %arg6 = %c0_10 to %c32_11 step %c1_12 {
      %c0_18 = arith.constant 0 : index
      %c28_19 = arith.constant 28 : index
      %c4_20 = arith.constant 4 : index
      scf.for %arg7 = %c0_18 to %c28_19 step %c4_20 {
        %1 = memref.load %arg3[%arg6, %arg7] : memref<?x28xf64>
        %2 = memref.load %arg5[%arg7] : memref<?xf64>
        %3 = arith.subf %1, %2 : f64
        memref.store %3, %arg3[%arg6, %arg7] : memref<?x28xf64>
        %c1_21 = arith.constant 1 : index
        %4 = arith.addi %arg7, %c1_21 : index
        %5 = memref.load %arg3[%arg6, %4] : memref<?x28xf64>
        %6 = memref.load %arg5[%4] : memref<?xf64>
        %7 = arith.subf %5, %6 : f64
        memref.store %7, %arg3[%arg6, %4] : memref<?x28xf64>
        %c2 = arith.constant 2 : index
        %8 = arith.addi %arg7, %c2 : index
        %9 = memref.load %arg3[%arg6, %8] : memref<?x28xf64>
        %10 = memref.load %arg5[%8] : memref<?xf64>
        %11 = arith.subf %9, %10 : f64
        memref.store %11, %arg3[%arg6, %8] : memref<?x28xf64>
        %c3 = arith.constant 3 : index
        %12 = arith.addi %arg7, %c3 : index
        %13 = memref.load %arg3[%arg6, %12] : memref<?x28xf64>
        %14 = memref.load %arg5[%12] : memref<?xf64>
        %15 = arith.subf %13, %14 : f64
        memref.store %15, %arg3[%arg6, %12] : memref<?x28xf64>
      }
    }
    %c0_13 = arith.constant 0 : index
    %c28_14 = arith.constant 28 : index
    %c1_15 = arith.constant 1 : index
    scf.for %arg6 = %c0_13 to %c28_14 step %c1_15 {
      %c0_18 = arith.constant 0 : index
      %c32_19 = arith.constant 32 : index
      %c1_20 = arith.constant 1 : index
      scf.for %arg7 = %c0_18 to %c32_19 step %c1_20 {
        %c-1 = arith.constant -1 : index
        %1 = arith.muli %arg6, %c-1 : index
        %c4_21 = arith.constant 4 : index
        %c0_22 = arith.constant 0 : index
        %c-1_23 = arith.constant -1 : index
        %2 = arith.cmpi slt, %1, %c0_22 : index
        %3 = arith.subi %c-1_23, %1 : index
        %4 = arith.select %2, %3, %1 : index
        %5 = arith.divsi %4, %c4_21 : index
        %6 = arith.subi %c-1_23, %5 : index
        %7 = arith.select %2, %6, %5 : index
        %c4_24 = arith.constant 4 : index
        %8 = arith.muli %7, %c4_24 : index
        %9 = arith.addi %arg6, %8 : index
        %c28_25 = arith.constant 28 : index
        %10 = arith.addi %9, %c28_25 : index
        %c4_26 = arith.constant 4 : index
        scf.for %arg8 = %arg6 to %10 step %c4_26 {
          %21 = memref.load %arg4[%arg6, %arg8] : memref<?x28xf64>
          %22 = memref.load %arg3[%arg7, %arg6] : memref<?x28xf64>
          %23 = memref.load %arg3[%arg7, %arg8] : memref<?x28xf64>
          %24 = arith.mulf %22, %23 : f64
          %25 = arith.addf %21, %24 : f64
          memref.store %25, %arg4[%arg6, %arg8] : memref<?x28xf64>
          %c1_35 = arith.constant 1 : index
          %26 = arith.addi %arg8, %c1_35 : index
          %27 = memref.load %arg4[%arg6, %26] : memref<?x28xf64>
          %28 = memref.load %arg3[%arg7, %arg6] : memref<?x28xf64>
          %29 = memref.load %arg3[%arg7, %26] : memref<?x28xf64>
          %30 = arith.mulf %28, %29 : f64
          %31 = arith.addf %27, %30 : f64
          memref.store %31, %arg4[%arg6, %26] : memref<?x28xf64>
          %c2 = arith.constant 2 : index
          %32 = arith.addi %arg8, %c2 : index
          %33 = memref.load %arg4[%arg6, %32] : memref<?x28xf64>
          %34 = memref.load %arg3[%arg7, %arg6] : memref<?x28xf64>
          %35 = memref.load %arg3[%arg7, %32] : memref<?x28xf64>
          %36 = arith.mulf %34, %35 : f64
          %37 = arith.addf %33, %36 : f64
          memref.store %37, %arg4[%arg6, %32] : memref<?x28xf64>
          %c3 = arith.constant 3 : index
          %38 = arith.addi %arg8, %c3 : index
          %39 = memref.load %arg4[%arg6, %38] : memref<?x28xf64>
          %40 = memref.load %arg3[%arg7, %arg6] : memref<?x28xf64>
          %41 = memref.load %arg3[%arg7, %38] : memref<?x28xf64>
          %42 = arith.mulf %40, %41 : f64
          %43 = arith.addf %39, %42 : f64
          memref.store %43, %arg4[%arg6, %38] : memref<?x28xf64>
        }
        %c-1_27 = arith.constant -1 : index
        %11 = arith.muli %arg6, %c-1_27 : index
        %c4_28 = arith.constant 4 : index
        %c0_29 = arith.constant 0 : index
        %c-1_30 = arith.constant -1 : index
        %12 = arith.cmpi slt, %11, %c0_29 : index
        %13 = arith.subi %c-1_30, %11 : index
        %14 = arith.select %12, %13, %11 : index
        %15 = arith.divsi %14, %c4_28 : index
        %16 = arith.subi %c-1_30, %15 : index
        %17 = arith.select %12, %16, %15 : index
        %c4_31 = arith.constant 4 : index
        %18 = arith.muli %17, %c4_31 : index
        %19 = arith.addi %arg6, %18 : index
        %c28_32 = arith.constant 28 : index
        %20 = arith.addi %19, %c28_32 : index
        %c28_33 = arith.constant 28 : index
        %c1_34 = arith.constant 1 : index
        scf.for %arg8 = %20 to %c28_33 step %c1_34 {
          %21 = memref.load %arg4[%arg6, %arg8] : memref<?x28xf64>
          %22 = memref.load %arg3[%arg7, %arg6] : memref<?x28xf64>
          %23 = memref.load %arg3[%arg7, %arg8] : memref<?x28xf64>
          %24 = arith.mulf %22, %23 : f64
          %25 = arith.addf %21, %24 : f64
          memref.store %25, %arg4[%arg6, %arg8] : memref<?x28xf64>
        }
      }
    }
    %c0_16 = arith.constant 0 : index
    %c23 = arith.constant 23 : index
    %c1_17 = arith.constant 1 : index
    scf.for %arg6 = %c0_16 to %c23 step %c1_17 {
      %c0_18 = arith.constant 0 : index
      %c16 = arith.constant 16 : index
      %1 = arith.muli %arg6, %c16 : index
      %c-13 = arith.constant -13 : index
      %2 = arith.addi %1, %c-13 : index
      %c13 = arith.constant 13 : index
      %c0_19 = arith.constant 0 : index
      %c1_20 = arith.constant 1 : index
      %3 = arith.cmpi sle, %2, %c0_19 : index
      %4 = arith.subi %c0_19, %2 : index
      %5 = arith.subi %2, %c1_20 : index
      %6 = arith.select %3, %4, %5 : index
      %7 = arith.divsi %6, %c13 : index
      %8 = arith.subi %c0_19, %7 : index
      %9 = arith.addi %7, %c1_20 : index
      %10 = arith.select %3, %8, %9 : index
      %11 = arith.maxsi %c0_18, %10 : index
      %c32_21 = arith.constant 32 : index
      %12 = arith.muli %arg6, %c32_21 : index
      %c31 = arith.constant 31 : index
      %13 = arith.addi %12, %c31 : index
      %c27 = arith.constant 27 : index
      %c0_22 = arith.constant 0 : index
      %c-1 = arith.constant -1 : index
      %14 = arith.cmpi slt, %13, %c0_22 : index
      %15 = arith.subi %c-1, %13 : index
      %16 = arith.select %14, %15, %13 : index
      %17 = arith.divsi %16, %c27 : index
      %18 = arith.subi %c-1, %17 : index
      %19 = arith.select %14, %18, %17 : index
      %c1_23 = arith.constant 1 : index
      %20 = arith.addi %19, %c1_23 : index
      %c1_24 = arith.constant 1 : index
      scf.for %arg7 = %11 to %20 step %c1_24 {
        %c32_25 = arith.constant 32 : index
        %21 = arith.muli %arg6, %c32_25 : index
        %c27_26 = arith.constant 27 : index
        %22 = arith.muli %arg7, %c27_26 : index
        %23 = arith.maxsi %21, %22 : index
        %c32_27 = arith.constant 32 : index
        %24 = arith.muli %arg6, %c32_27 : index
        %c32_28 = arith.constant 32 : index
        %25 = arith.addi %24, %c32_28 : index
        %c26 = arith.constant 26 : index
        %26 = arith.muli %arg7, %c26 : index
        %c28_29 = arith.constant 28 : index
        %27 = arith.addi %26, %c28_29 : index
        %28 = arith.minsi %25, %27 : index
        %c1_30 = arith.constant 1 : index
        scf.for %arg8 = %23 to %28 step %c1_30 {
          %c-26 = arith.constant -26 : index
          %29 = arith.muli %arg8, %c-26 : index
          %30 = arith.addi %29, %arg7 : index
          %31 = memref.load %arg4[%arg7, %30] : memref<?x28xf64>
          %c0_31 = arith.constant 0 : index
          %32 = memref.load %alloca_1[%c0_31] : memref<1xf64>
          %33 = arith.divf %31, %32 : f64
          %c0_32 = arith.constant 0 : index
          memref.store %33, %alloca[%c0_32] : memref<1xf64>
          %c-26_33 = arith.constant -26 : index
          %34 = arith.muli %arg8, %c-26_33 : index
          %35 = arith.addi %34, %arg7 : index
          memref.store %33, %arg4[%arg7, %35] : memref<?x28xf64>
          %c0_34 = arith.constant 0 : index
          %36 = memref.load %alloca[%c0_34] : memref<1xf64>
          %c-26_35 = arith.constant -26 : index
          %37 = arith.muli %arg8, %c-26_35 : index
          %38 = arith.addi %37, %arg7 : index
          memref.store %36, %arg4[%38, %arg7] : memref<?x28xf64>
        }
      }
    }
    return
  }
}

