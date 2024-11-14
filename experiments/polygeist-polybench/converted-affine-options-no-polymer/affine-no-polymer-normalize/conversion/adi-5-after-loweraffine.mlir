module {
  func.func @kernel_adi(%arg0: i32, %arg1: i32, %arg2: memref<?x20xf64>, %arg3: memref<?x20xf64>, %arg4: memref<?x20xf64>, %arg5: memref<?x20xf64>) {
    %cst = arith.constant 9.9999999999999982 : f64
    %cst_0 = arith.constant -18.999999999999996 : f64
    %cst_1 = arith.constant -38.999999999999993 : f64
    %cst_2 = arith.constant -9.9999999999999982 : f64
    %cst_3 = arith.constant -19.999999999999996 : f64
    %cst_4 = arith.constant 20.999999999999996 : f64
    %cst_5 = arith.constant 40.999999999999993 : f64
    %cst_6 = arith.constant 19.999999999999996 : f64
    %cst_7 = arith.constant 0.000000e+00 : f64
    %cst_8 = arith.constant 1.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c20 step %c1 {
      %c1_9 = arith.constant 1 : index
      %0 = arith.addi %arg6, %c1_9 : index
      %c0_10 = arith.constant 0 : index
      %c18 = arith.constant 18 : index
      %c1_11 = arith.constant 1 : index
      scf.for %arg7 = %c0_10 to %c18 step %c1_11 {
        %c1_15 = arith.constant 1 : index
        %1 = arith.addi %arg7, %c1_15 : index
        %c0_16 = arith.constant 0 : index
        memref.store %cst_8, %arg3[%c0_16, %1] : memref<?x20xf64>
        %c0_17 = arith.constant 0 : index
        memref.store %cst_7, %arg4[%1, %c0_17] : memref<?x20xf64>
        %c0_18 = arith.constant 0 : index
        %2 = memref.load %arg3[%c0_18, %1] : memref<?x20xf64>
        %c0_19 = arith.constant 0 : index
        memref.store %2, %arg5[%1, %c0_19] : memref<?x20xf64>
        %c0_20 = arith.constant 0 : index
        %c18_21 = arith.constant 18 : index
        %c1_22 = arith.constant 1 : index
        scf.for %arg8 = %c0_20 to %c18_21 step %c1_22 {
          %c1_26 = arith.constant 1 : index
          %3 = arith.addi %arg8, %c1_26 : index
          %c-1 = arith.constant -1 : index
          %4 = arith.addi %3, %c-1 : index
          %5 = memref.load %arg4[%1, %4] : memref<?x20xf64>
          %6 = arith.mulf %5, %cst_3 : f64
          %7 = arith.addf %6, %cst_5 : f64
          %8 = arith.divf %cst_6, %7 : f64
          memref.store %8, %arg4[%1, %3] : memref<?x20xf64>
          %c-1_27 = arith.constant -1 : index
          %9 = arith.addi %1, %c-1_27 : index
          %10 = memref.load %arg2[%3, %9] : memref<?x20xf64>
          %11 = arith.mulf %10, %cst : f64
          %12 = memref.load %arg2[%3, %1] : memref<?x20xf64>
          %13 = arith.mulf %12, %cst_0 : f64
          %14 = arith.addf %11, %13 : f64
          %c1_28 = arith.constant 1 : index
          %15 = arith.addi %1, %c1_28 : index
          %16 = memref.load %arg2[%3, %15] : memref<?x20xf64>
          %17 = arith.mulf %16, %cst_2 : f64
          %18 = arith.subf %14, %17 : f64
          %c-1_29 = arith.constant -1 : index
          %19 = arith.addi %3, %c-1_29 : index
          %20 = memref.load %arg5[%1, %19] : memref<?x20xf64>
          %21 = arith.mulf %20, %cst_3 : f64
          %22 = arith.subf %18, %21 : f64
          %23 = arith.divf %22, %7 : f64
          memref.store %23, %arg5[%1, %3] : memref<?x20xf64>
        }
        %c19 = arith.constant 19 : index
        memref.store %cst_8, %arg3[%c19, %1] : memref<?x20xf64>
        %c0_23 = arith.constant 0 : index
        %c18_24 = arith.constant 18 : index
        %c1_25 = arith.constant 1 : index
        scf.for %arg8 = %c0_23 to %c18_24 step %c1_25 {
          %c1_26 = arith.constant 1 : index
          %3 = arith.addi %arg8, %c1_26 : index
          %c-1 = arith.constant -1 : index
          %4 = arith.muli %3, %c-1 : index
          %c19_27 = arith.constant 19 : index
          %5 = arith.addi %4, %c19_27 : index
          %6 = memref.load %arg4[%1, %5] : memref<?x20xf64>
          %c-1_28 = arith.constant -1 : index
          %7 = arith.muli %3, %c-1_28 : index
          %c20_29 = arith.constant 20 : index
          %8 = arith.addi %7, %c20_29 : index
          %9 = memref.load %arg3[%8, %1] : memref<?x20xf64>
          %10 = arith.mulf %6, %9 : f64
          %c-1_30 = arith.constant -1 : index
          %11 = arith.muli %3, %c-1_30 : index
          %c19_31 = arith.constant 19 : index
          %12 = arith.addi %11, %c19_31 : index
          %13 = memref.load %arg5[%1, %12] : memref<?x20xf64>
          %14 = arith.addf %10, %13 : f64
          %c-1_32 = arith.constant -1 : index
          %15 = arith.muli %3, %c-1_32 : index
          %c19_33 = arith.constant 19 : index
          %16 = arith.addi %15, %c19_33 : index
          memref.store %14, %arg3[%16, %1] : memref<?x20xf64>
        }
      }
      %c0_12 = arith.constant 0 : index
      %c18_13 = arith.constant 18 : index
      %c1_14 = arith.constant 1 : index
      scf.for %arg7 = %c0_12 to %c18_13 step %c1_14 {
        %c1_15 = arith.constant 1 : index
        %1 = arith.addi %arg7, %c1_15 : index
        %c0_16 = arith.constant 0 : index
        memref.store %cst_8, %arg2[%1, %c0_16] : memref<?x20xf64>
        %c0_17 = arith.constant 0 : index
        memref.store %cst_7, %arg4[%1, %c0_17] : memref<?x20xf64>
        %c0_18 = arith.constant 0 : index
        %2 = memref.load %arg2[%1, %c0_18] : memref<?x20xf64>
        %c0_19 = arith.constant 0 : index
        memref.store %2, %arg5[%1, %c0_19] : memref<?x20xf64>
        %c0_20 = arith.constant 0 : index
        %c18_21 = arith.constant 18 : index
        %c1_22 = arith.constant 1 : index
        scf.for %arg8 = %c0_20 to %c18_21 step %c1_22 {
          %c1_26 = arith.constant 1 : index
          %3 = arith.addi %arg8, %c1_26 : index
          %c-1 = arith.constant -1 : index
          %4 = arith.addi %3, %c-1 : index
          %5 = memref.load %arg4[%1, %4] : memref<?x20xf64>
          %6 = arith.mulf %5, %cst_2 : f64
          %7 = arith.addf %6, %cst_4 : f64
          %8 = arith.divf %cst, %7 : f64
          memref.store %8, %arg4[%1, %3] : memref<?x20xf64>
          %c-1_27 = arith.constant -1 : index
          %9 = arith.addi %1, %c-1_27 : index
          %10 = memref.load %arg3[%9, %3] : memref<?x20xf64>
          %11 = arith.mulf %10, %cst_6 : f64
          %12 = memref.load %arg3[%1, %3] : memref<?x20xf64>
          %13 = arith.mulf %12, %cst_1 : f64
          %14 = arith.addf %11, %13 : f64
          %c1_28 = arith.constant 1 : index
          %15 = arith.addi %1, %c1_28 : index
          %16 = memref.load %arg3[%15, %3] : memref<?x20xf64>
          %17 = arith.mulf %16, %cst_3 : f64
          %18 = arith.subf %14, %17 : f64
          %c-1_29 = arith.constant -1 : index
          %19 = arith.addi %3, %c-1_29 : index
          %20 = memref.load %arg5[%1, %19] : memref<?x20xf64>
          %21 = arith.mulf %20, %cst_2 : f64
          %22 = arith.subf %18, %21 : f64
          %23 = arith.divf %22, %7 : f64
          memref.store %23, %arg5[%1, %3] : memref<?x20xf64>
        }
        %c19 = arith.constant 19 : index
        memref.store %cst_8, %arg2[%1, %c19] : memref<?x20xf64>
        %c0_23 = arith.constant 0 : index
        %c18_24 = arith.constant 18 : index
        %c1_25 = arith.constant 1 : index
        scf.for %arg8 = %c0_23 to %c18_24 step %c1_25 {
          %c1_26 = arith.constant 1 : index
          %3 = arith.addi %arg8, %c1_26 : index
          %c-1 = arith.constant -1 : index
          %4 = arith.muli %3, %c-1 : index
          %c19_27 = arith.constant 19 : index
          %5 = arith.addi %4, %c19_27 : index
          %6 = memref.load %arg4[%1, %5] : memref<?x20xf64>
          %c-1_28 = arith.constant -1 : index
          %7 = arith.muli %3, %c-1_28 : index
          %c20_29 = arith.constant 20 : index
          %8 = arith.addi %7, %c20_29 : index
          %9 = memref.load %arg2[%1, %8] : memref<?x20xf64>
          %10 = arith.mulf %6, %9 : f64
          %c-1_30 = arith.constant -1 : index
          %11 = arith.muli %3, %c-1_30 : index
          %c19_31 = arith.constant 19 : index
          %12 = arith.addi %11, %c19_31 : index
          %13 = memref.load %arg5[%1, %12] : memref<?x20xf64>
          %14 = arith.addf %10, %13 : f64
          %c-1_32 = arith.constant -1 : index
          %15 = arith.muli %3, %c-1_32 : index
          %c19_33 = arith.constant 19 : index
          %16 = arith.addi %15, %c19_33 : index
          memref.store %14, %arg2[%1, %16] : memref<?x20xf64>
        }
      }
    }
    return
  }
}

