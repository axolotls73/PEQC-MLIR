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
    %c1 = arith.constant 1 : index
    %c21 = arith.constant 21 : index
    %c1_9 = arith.constant 1 : index
    scf.for %arg6 = %c1 to %c21 step %c1_9 {
      %c1_10 = arith.constant 1 : index
      %c19 = arith.constant 19 : index
      %c1_11 = arith.constant 1 : index
      scf.parallel (%arg7) = (%c1_10) to (%c19) step (%c1_11) {
        %c0 = arith.constant 0 : index
        memref.store %cst_8, %arg3[%c0, %arg7] : memref<?x20xf64>
        %c0_15 = arith.constant 0 : index
        memref.store %cst_7, %arg4[%arg7, %c0_15] : memref<?x20xf64>
        %c0_16 = arith.constant 0 : index
        %0 = memref.load %arg3[%c0_16, %arg7] : memref<?x20xf64>
        %c0_17 = arith.constant 0 : index
        memref.store %0, %arg5[%arg7, %c0_17] : memref<?x20xf64>
        %c1_18 = arith.constant 1 : index
        %c19_19 = arith.constant 19 : index
        %c1_20 = arith.constant 1 : index
        scf.for %arg8 = %c1_18 to %c19_19 step %c1_20 {
          %c-1 = arith.constant -1 : index
          %1 = arith.addi %arg8, %c-1 : index
          %2 = memref.load %arg4[%arg7, %1] : memref<?x20xf64>
          %3 = arith.mulf %2, %cst_3 : f64
          %4 = arith.addf %3, %cst_5 : f64
          %5 = arith.divf %cst_6, %4 : f64
          memref.store %5, %arg4[%arg7, %arg8] : memref<?x20xf64>
          %c-1_25 = arith.constant -1 : index
          %6 = arith.addi %arg7, %c-1_25 : index
          %7 = memref.load %arg2[%arg8, %6] : memref<?x20xf64>
          %8 = arith.mulf %7, %cst : f64
          %9 = memref.load %arg2[%arg8, %arg7] : memref<?x20xf64>
          %10 = arith.mulf %9, %cst_0 : f64
          %11 = arith.addf %8, %10 : f64
          %c1_26 = arith.constant 1 : index
          %12 = arith.addi %arg7, %c1_26 : index
          %13 = memref.load %arg2[%arg8, %12] : memref<?x20xf64>
          %14 = arith.mulf %13, %cst_2 : f64
          %15 = arith.subf %11, %14 : f64
          %c-1_27 = arith.constant -1 : index
          %16 = arith.addi %arg8, %c-1_27 : index
          %17 = memref.load %arg5[%arg7, %16] : memref<?x20xf64>
          %18 = arith.mulf %17, %cst_3 : f64
          %19 = arith.subf %15, %18 : f64
          %20 = arith.divf %19, %4 : f64
          memref.store %20, %arg5[%arg7, %arg8] : memref<?x20xf64>
        }
        %c19_21 = arith.constant 19 : index
        memref.store %cst_8, %arg3[%c19_21, %arg7] : memref<?x20xf64>
        %c1_22 = arith.constant 1 : index
        %c19_23 = arith.constant 19 : index
        %c1_24 = arith.constant 1 : index
        scf.for %arg8 = %c1_22 to %c19_23 step %c1_24 {
          %c-1 = arith.constant -1 : index
          %1 = arith.muli %arg8, %c-1 : index
          %c19_25 = arith.constant 19 : index
          %2 = arith.addi %1, %c19_25 : index
          %3 = memref.load %arg4[%arg7, %2] : memref<?x20xf64>
          %c-1_26 = arith.constant -1 : index
          %4 = arith.muli %arg8, %c-1_26 : index
          %c20 = arith.constant 20 : index
          %5 = arith.addi %4, %c20 : index
          %6 = memref.load %arg3[%5, %arg7] : memref<?x20xf64>
          %7 = arith.mulf %3, %6 : f64
          %c-1_27 = arith.constant -1 : index
          %8 = arith.muli %arg8, %c-1_27 : index
          %c19_28 = arith.constant 19 : index
          %9 = arith.addi %8, %c19_28 : index
          %10 = memref.load %arg5[%arg7, %9] : memref<?x20xf64>
          %11 = arith.addf %7, %10 : f64
          %c-1_29 = arith.constant -1 : index
          %12 = arith.muli %arg8, %c-1_29 : index
          %c19_30 = arith.constant 19 : index
          %13 = arith.addi %12, %c19_30 : index
          memref.store %11, %arg3[%13, %arg7] : memref<?x20xf64>
        }
        scf.reduce 
      }
      %c1_12 = arith.constant 1 : index
      %c19_13 = arith.constant 19 : index
      %c1_14 = arith.constant 1 : index
      scf.parallel (%arg7) = (%c1_12) to (%c19_13) step (%c1_14) {
        %c0 = arith.constant 0 : index
        memref.store %cst_8, %arg2[%arg7, %c0] : memref<?x20xf64>
        %c0_15 = arith.constant 0 : index
        memref.store %cst_7, %arg4[%arg7, %c0_15] : memref<?x20xf64>
        %c0_16 = arith.constant 0 : index
        %0 = memref.load %arg2[%arg7, %c0_16] : memref<?x20xf64>
        %c0_17 = arith.constant 0 : index
        memref.store %0, %arg5[%arg7, %c0_17] : memref<?x20xf64>
        %c1_18 = arith.constant 1 : index
        %c19_19 = arith.constant 19 : index
        %c1_20 = arith.constant 1 : index
        scf.for %arg8 = %c1_18 to %c19_19 step %c1_20 {
          %c-1 = arith.constant -1 : index
          %1 = arith.addi %arg8, %c-1 : index
          %2 = memref.load %arg4[%arg7, %1] : memref<?x20xf64>
          %3 = arith.mulf %2, %cst_2 : f64
          %4 = arith.addf %3, %cst_4 : f64
          %5 = arith.divf %cst, %4 : f64
          memref.store %5, %arg4[%arg7, %arg8] : memref<?x20xf64>
          %c-1_25 = arith.constant -1 : index
          %6 = arith.addi %arg7, %c-1_25 : index
          %7 = memref.load %arg3[%6, %arg8] : memref<?x20xf64>
          %8 = arith.mulf %7, %cst_6 : f64
          %9 = memref.load %arg3[%arg7, %arg8] : memref<?x20xf64>
          %10 = arith.mulf %9, %cst_1 : f64
          %11 = arith.addf %8, %10 : f64
          %c1_26 = arith.constant 1 : index
          %12 = arith.addi %arg7, %c1_26 : index
          %13 = memref.load %arg3[%12, %arg8] : memref<?x20xf64>
          %14 = arith.mulf %13, %cst_3 : f64
          %15 = arith.subf %11, %14 : f64
          %c-1_27 = arith.constant -1 : index
          %16 = arith.addi %arg8, %c-1_27 : index
          %17 = memref.load %arg5[%arg7, %16] : memref<?x20xf64>
          %18 = arith.mulf %17, %cst_2 : f64
          %19 = arith.subf %15, %18 : f64
          %20 = arith.divf %19, %4 : f64
          memref.store %20, %arg5[%arg7, %arg8] : memref<?x20xf64>
        }
        %c19_21 = arith.constant 19 : index
        memref.store %cst_8, %arg2[%arg7, %c19_21] : memref<?x20xf64>
        %c1_22 = arith.constant 1 : index
        %c19_23 = arith.constant 19 : index
        %c1_24 = arith.constant 1 : index
        scf.for %arg8 = %c1_22 to %c19_23 step %c1_24 {
          %c-1 = arith.constant -1 : index
          %1 = arith.muli %arg8, %c-1 : index
          %c19_25 = arith.constant 19 : index
          %2 = arith.addi %1, %c19_25 : index
          %3 = memref.load %arg4[%arg7, %2] : memref<?x20xf64>
          %c-1_26 = arith.constant -1 : index
          %4 = arith.muli %arg8, %c-1_26 : index
          %c20 = arith.constant 20 : index
          %5 = arith.addi %4, %c20 : index
          %6 = memref.load %arg2[%arg7, %5] : memref<?x20xf64>
          %7 = arith.mulf %3, %6 : f64
          %c-1_27 = arith.constant -1 : index
          %8 = arith.muli %arg8, %c-1_27 : index
          %c19_28 = arith.constant 19 : index
          %9 = arith.addi %8, %c19_28 : index
          %10 = memref.load %arg5[%arg7, %9] : memref<?x20xf64>
          %11 = arith.addf %7, %10 : f64
          %c-1_29 = arith.constant -1 : index
          %12 = arith.muli %arg8, %c-1_29 : index
          %c19_30 = arith.constant 19 : index
          %13 = arith.addi %12, %c19_30 : index
          memref.store %11, %arg2[%arg7, %13] : memref<?x20xf64>
        }
        scf.reduce 
      }
    }
    return
  }
}

