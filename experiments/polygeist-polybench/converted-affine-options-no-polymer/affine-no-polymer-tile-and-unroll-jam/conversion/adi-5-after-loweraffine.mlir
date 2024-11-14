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
    %c32 = arith.constant 32 : index
    scf.for %arg6 = %c0 to %c20 step %c32 {
      %c20_9 = arith.constant 20 : index
      %0 = arith.addi %arg6, %c20_9 : index
      %c1 = arith.constant 1 : index
      scf.for %arg7 = %arg6 to %0 step %c1 {
        %c0_10 = arith.constant 0 : index
        %c18 = arith.constant 18 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg8 = %c0_10 to %c18 step %c1_11 {
          %c0_15 = arith.constant 0 : index
          %c1_16 = arith.constant 1 : index
          %1 = arith.addi %arg8, %c1_16 : index
          memref.store %cst_8, %arg3[%c0_15, %1] : memref<?x20xf64>
          %c1_17 = arith.constant 1 : index
          %2 = arith.addi %arg8, %c1_17 : index
          %c0_18 = arith.constant 0 : index
          memref.store %cst_7, %arg4[%2, %c0_18] : memref<?x20xf64>
          %c0_19 = arith.constant 0 : index
          %c1_20 = arith.constant 1 : index
          %3 = arith.addi %arg8, %c1_20 : index
          %4 = memref.load %arg3[%c0_19, %3] : memref<?x20xf64>
          %c1_21 = arith.constant 1 : index
          %5 = arith.addi %arg8, %c1_21 : index
          %c0_22 = arith.constant 0 : index
          memref.store %4, %arg5[%5, %c0_22] : memref<?x20xf64>
          %c0_23 = arith.constant 0 : index
          %c18_24 = arith.constant 18 : index
          %c1_25 = arith.constant 1 : index
          scf.for %arg9 = %c0_23 to %c18_24 step %c1_25 {
            %c1_30 = arith.constant 1 : index
            %7 = arith.addi %arg8, %c1_30 : index
            %8 = memref.load %arg4[%7, %arg9] : memref<?x20xf64>
            %9 = arith.mulf %8, %cst_3 : f64
            %10 = arith.addf %9, %cst_5 : f64
            %11 = arith.divf %cst_6, %10 : f64
            %c1_31 = arith.constant 1 : index
            %12 = arith.addi %arg8, %c1_31 : index
            %c1_32 = arith.constant 1 : index
            %13 = arith.addi %arg9, %c1_32 : index
            memref.store %11, %arg4[%12, %13] : memref<?x20xf64>
            %c1_33 = arith.constant 1 : index
            %14 = arith.addi %arg9, %c1_33 : index
            %15 = memref.load %arg2[%14, %arg8] : memref<?x20xf64>
            %16 = arith.mulf %15, %cst : f64
            %c1_34 = arith.constant 1 : index
            %17 = arith.addi %arg9, %c1_34 : index
            %c1_35 = arith.constant 1 : index
            %18 = arith.addi %arg8, %c1_35 : index
            %19 = memref.load %arg2[%17, %18] : memref<?x20xf64>
            %20 = arith.mulf %19, %cst_0 : f64
            %21 = arith.addf %16, %20 : f64
            %c1_36 = arith.constant 1 : index
            %22 = arith.addi %arg9, %c1_36 : index
            %c2 = arith.constant 2 : index
            %23 = arith.addi %arg8, %c2 : index
            %24 = memref.load %arg2[%22, %23] : memref<?x20xf64>
            %25 = arith.mulf %24, %cst_2 : f64
            %26 = arith.subf %21, %25 : f64
            %c1_37 = arith.constant 1 : index
            %27 = arith.addi %arg8, %c1_37 : index
            %28 = memref.load %arg5[%27, %arg9] : memref<?x20xf64>
            %29 = arith.mulf %28, %cst_3 : f64
            %30 = arith.subf %26, %29 : f64
            %31 = arith.divf %30, %10 : f64
            %c1_38 = arith.constant 1 : index
            %32 = arith.addi %arg8, %c1_38 : index
            %c1_39 = arith.constant 1 : index
            %33 = arith.addi %arg9, %c1_39 : index
            memref.store %31, %arg5[%32, %33] : memref<?x20xf64>
          }
          %c19 = arith.constant 19 : index
          %c1_26 = arith.constant 1 : index
          %6 = arith.addi %arg8, %c1_26 : index
          memref.store %cst_8, %arg3[%c19, %6] : memref<?x20xf64>
          %c0_27 = arith.constant 0 : index
          %c18_28 = arith.constant 18 : index
          %c1_29 = arith.constant 1 : index
          scf.for %arg9 = %c0_27 to %c18_28 step %c1_29 {
            %c1_30 = arith.constant 1 : index
            %7 = arith.addi %arg8, %c1_30 : index
            %c-1 = arith.constant -1 : index
            %8 = arith.muli %arg9, %c-1 : index
            %c18_31 = arith.constant 18 : index
            %9 = arith.addi %8, %c18_31 : index
            %10 = memref.load %arg4[%7, %9] : memref<?x20xf64>
            %c-1_32 = arith.constant -1 : index
            %11 = arith.muli %arg9, %c-1_32 : index
            %c19_33 = arith.constant 19 : index
            %12 = arith.addi %11, %c19_33 : index
            %c1_34 = arith.constant 1 : index
            %13 = arith.addi %arg8, %c1_34 : index
            %14 = memref.load %arg3[%12, %13] : memref<?x20xf64>
            %15 = arith.mulf %10, %14 : f64
            %c1_35 = arith.constant 1 : index
            %16 = arith.addi %arg8, %c1_35 : index
            %c-1_36 = arith.constant -1 : index
            %17 = arith.muli %arg9, %c-1_36 : index
            %c18_37 = arith.constant 18 : index
            %18 = arith.addi %17, %c18_37 : index
            %19 = memref.load %arg5[%16, %18] : memref<?x20xf64>
            %20 = arith.addf %15, %19 : f64
            %c-1_38 = arith.constant -1 : index
            %21 = arith.muli %arg9, %c-1_38 : index
            %c18_39 = arith.constant 18 : index
            %22 = arith.addi %21, %c18_39 : index
            %c1_40 = arith.constant 1 : index
            %23 = arith.addi %arg8, %c1_40 : index
            memref.store %20, %arg3[%22, %23] : memref<?x20xf64>
          }
        }
        %c0_12 = arith.constant 0 : index
        %c18_13 = arith.constant 18 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg8 = %c0_12 to %c18_13 step %c1_14 {
          %c1_15 = arith.constant 1 : index
          %1 = arith.addi %arg8, %c1_15 : index
          %c0_16 = arith.constant 0 : index
          memref.store %cst_8, %arg2[%1, %c0_16] : memref<?x20xf64>
          %c1_17 = arith.constant 1 : index
          %2 = arith.addi %arg8, %c1_17 : index
          %c0_18 = arith.constant 0 : index
          memref.store %cst_7, %arg4[%2, %c0_18] : memref<?x20xf64>
          %c1_19 = arith.constant 1 : index
          %3 = arith.addi %arg8, %c1_19 : index
          %c0_20 = arith.constant 0 : index
          %4 = memref.load %arg2[%3, %c0_20] : memref<?x20xf64>
          %c1_21 = arith.constant 1 : index
          %5 = arith.addi %arg8, %c1_21 : index
          %c0_22 = arith.constant 0 : index
          memref.store %4, %arg5[%5, %c0_22] : memref<?x20xf64>
          %c0_23 = arith.constant 0 : index
          %c18_24 = arith.constant 18 : index
          %c1_25 = arith.constant 1 : index
          scf.for %arg9 = %c0_23 to %c18_24 step %c1_25 {
            %c1_30 = arith.constant 1 : index
            %7 = arith.addi %arg8, %c1_30 : index
            %8 = memref.load %arg4[%7, %arg9] : memref<?x20xf64>
            %9 = arith.mulf %8, %cst_2 : f64
            %10 = arith.addf %9, %cst_4 : f64
            %11 = arith.divf %cst, %10 : f64
            %c1_31 = arith.constant 1 : index
            %12 = arith.addi %arg8, %c1_31 : index
            %c1_32 = arith.constant 1 : index
            %13 = arith.addi %arg9, %c1_32 : index
            memref.store %11, %arg4[%12, %13] : memref<?x20xf64>
            %c1_33 = arith.constant 1 : index
            %14 = arith.addi %arg9, %c1_33 : index
            %15 = memref.load %arg3[%arg8, %14] : memref<?x20xf64>
            %16 = arith.mulf %15, %cst_6 : f64
            %c1_34 = arith.constant 1 : index
            %17 = arith.addi %arg8, %c1_34 : index
            %c1_35 = arith.constant 1 : index
            %18 = arith.addi %arg9, %c1_35 : index
            %19 = memref.load %arg3[%17, %18] : memref<?x20xf64>
            %20 = arith.mulf %19, %cst_1 : f64
            %21 = arith.addf %16, %20 : f64
            %c2 = arith.constant 2 : index
            %22 = arith.addi %arg8, %c2 : index
            %c1_36 = arith.constant 1 : index
            %23 = arith.addi %arg9, %c1_36 : index
            %24 = memref.load %arg3[%22, %23] : memref<?x20xf64>
            %25 = arith.mulf %24, %cst_3 : f64
            %26 = arith.subf %21, %25 : f64
            %c1_37 = arith.constant 1 : index
            %27 = arith.addi %arg8, %c1_37 : index
            %28 = memref.load %arg5[%27, %arg9] : memref<?x20xf64>
            %29 = arith.mulf %28, %cst_2 : f64
            %30 = arith.subf %26, %29 : f64
            %31 = arith.divf %30, %10 : f64
            %c1_38 = arith.constant 1 : index
            %32 = arith.addi %arg8, %c1_38 : index
            %c1_39 = arith.constant 1 : index
            %33 = arith.addi %arg9, %c1_39 : index
            memref.store %31, %arg5[%32, %33] : memref<?x20xf64>
          }
          %c1_26 = arith.constant 1 : index
          %6 = arith.addi %arg8, %c1_26 : index
          %c19 = arith.constant 19 : index
          memref.store %cst_8, %arg2[%6, %c19] : memref<?x20xf64>
          %c0_27 = arith.constant 0 : index
          %c18_28 = arith.constant 18 : index
          %c1_29 = arith.constant 1 : index
          scf.for %arg9 = %c0_27 to %c18_28 step %c1_29 {
            %c1_30 = arith.constant 1 : index
            %7 = arith.addi %arg8, %c1_30 : index
            %c-1 = arith.constant -1 : index
            %8 = arith.muli %arg9, %c-1 : index
            %c18_31 = arith.constant 18 : index
            %9 = arith.addi %8, %c18_31 : index
            %10 = memref.load %arg4[%7, %9] : memref<?x20xf64>
            %c1_32 = arith.constant 1 : index
            %11 = arith.addi %arg8, %c1_32 : index
            %c-1_33 = arith.constant -1 : index
            %12 = arith.muli %arg9, %c-1_33 : index
            %c19_34 = arith.constant 19 : index
            %13 = arith.addi %12, %c19_34 : index
            %14 = memref.load %arg2[%11, %13] : memref<?x20xf64>
            %15 = arith.mulf %10, %14 : f64
            %c1_35 = arith.constant 1 : index
            %16 = arith.addi %arg8, %c1_35 : index
            %c-1_36 = arith.constant -1 : index
            %17 = arith.muli %arg9, %c-1_36 : index
            %c18_37 = arith.constant 18 : index
            %18 = arith.addi %17, %c18_37 : index
            %19 = memref.load %arg5[%16, %18] : memref<?x20xf64>
            %20 = arith.addf %15, %19 : f64
            %c1_38 = arith.constant 1 : index
            %21 = arith.addi %arg8, %c1_38 : index
            %c-1_39 = arith.constant -1 : index
            %22 = arith.muli %arg9, %c-1_39 : index
            %c18_40 = arith.constant 18 : index
            %23 = arith.addi %22, %c18_40 : index
            memref.store %20, %arg2[%21, %23] : memref<?x20xf64>
          }
        }
      }
    }
    return
  }
}

