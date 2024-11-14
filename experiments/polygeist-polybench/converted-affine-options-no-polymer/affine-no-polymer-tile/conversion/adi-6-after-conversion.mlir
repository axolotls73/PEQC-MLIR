module {
  func.func @kernel_adi(%arg0: i32, %arg1: i32, %arg2: memref<?x20xf64>, %arg3: memref<?x20xf64>, %arg4: memref<?x20xf64>, %arg5: memref<?x20xf64>) {
    %c-1 = arith.constant -1 : index
    %c0 = arith.constant 0 : index
    %c19 = arith.constant 19 : index
    %c20 = arith.constant 20 : index
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
    %c32 = arith.constant 32 : index
    scf.for %arg6 = %c1 to %c21 step %c32 {
      %0 = arith.addi %arg6, %c20 : index
      scf.for %arg7 = %arg6 to %0 step %c1 {
        scf.for %arg8 = %c1 to %c19 step %c1 {
          memref.store %cst_8, %arg3[%c0, %arg8] : memref<?x20xf64>
          memref.store %cst_7, %arg4[%arg8, %c0] : memref<?x20xf64>
          %1 = memref.load %arg3[%c0, %arg8] : memref<?x20xf64>
          memref.store %1, %arg5[%arg8, %c0] : memref<?x20xf64>
          scf.for %arg9 = %c1 to %c19 step %c1 {
            %2 = arith.addi %arg9, %c-1 : index
            %3 = memref.load %arg4[%arg8, %2] : memref<?x20xf64>
            %4 = arith.mulf %3, %cst_3 : f64
            %5 = arith.addf %4, %cst_5 : f64
            %6 = arith.divf %cst_6, %5 : f64
            memref.store %6, %arg4[%arg8, %arg9] : memref<?x20xf64>
            %7 = arith.addi %arg8, %c-1 : index
            %8 = memref.load %arg2[%arg9, %7] : memref<?x20xf64>
            %9 = arith.mulf %8, %cst : f64
            %10 = memref.load %arg2[%arg9, %arg8] : memref<?x20xf64>
            %11 = arith.mulf %10, %cst_0 : f64
            %12 = arith.addf %9, %11 : f64
            %13 = arith.addi %arg8, %c1 : index
            %14 = memref.load %arg2[%arg9, %13] : memref<?x20xf64>
            %15 = arith.mulf %14, %cst_2 : f64
            %16 = arith.subf %12, %15 : f64
            %17 = arith.addi %arg9, %c-1 : index
            %18 = memref.load %arg5[%arg8, %17] : memref<?x20xf64>
            %19 = arith.mulf %18, %cst_3 : f64
            %20 = arith.subf %16, %19 : f64
            %21 = arith.divf %20, %5 : f64
            memref.store %21, %arg5[%arg8, %arg9] : memref<?x20xf64>
          }
          memref.store %cst_8, %arg3[%c19, %arg8] : memref<?x20xf64>
          scf.for %arg9 = %c1 to %c19 step %c1 {
            %2 = arith.muli %arg9, %c-1 : index
            %3 = arith.addi %2, %c19 : index
            %4 = memref.load %arg4[%arg8, %3] : memref<?x20xf64>
            %5 = arith.muli %arg9, %c-1 : index
            %6 = arith.addi %5, %c20 : index
            %7 = memref.load %arg3[%6, %arg8] : memref<?x20xf64>
            %8 = arith.mulf %4, %7 : f64
            %9 = arith.muli %arg9, %c-1 : index
            %10 = arith.addi %9, %c19 : index
            %11 = memref.load %arg5[%arg8, %10] : memref<?x20xf64>
            %12 = arith.addf %8, %11 : f64
            %13 = arith.muli %arg9, %c-1 : index
            %14 = arith.addi %13, %c19 : index
            memref.store %12, %arg3[%14, %arg8] : memref<?x20xf64>
          }
        }
        scf.for %arg8 = %c1 to %c19 step %c1 {
          memref.store %cst_8, %arg2[%arg8, %c0] : memref<?x20xf64>
          memref.store %cst_7, %arg4[%arg8, %c0] : memref<?x20xf64>
          %1 = memref.load %arg2[%arg8, %c0] : memref<?x20xf64>
          memref.store %1, %arg5[%arg8, %c0] : memref<?x20xf64>
          scf.for %arg9 = %c1 to %c19 step %c1 {
            %2 = arith.addi %arg9, %c-1 : index
            %3 = memref.load %arg4[%arg8, %2] : memref<?x20xf64>
            %4 = arith.mulf %3, %cst_2 : f64
            %5 = arith.addf %4, %cst_4 : f64
            %6 = arith.divf %cst, %5 : f64
            memref.store %6, %arg4[%arg8, %arg9] : memref<?x20xf64>
            %7 = arith.addi %arg8, %c-1 : index
            %8 = memref.load %arg3[%7, %arg9] : memref<?x20xf64>
            %9 = arith.mulf %8, %cst_6 : f64
            %10 = memref.load %arg3[%arg8, %arg9] : memref<?x20xf64>
            %11 = arith.mulf %10, %cst_1 : f64
            %12 = arith.addf %9, %11 : f64
            %13 = arith.addi %arg8, %c1 : index
            %14 = memref.load %arg3[%13, %arg9] : memref<?x20xf64>
            %15 = arith.mulf %14, %cst_3 : f64
            %16 = arith.subf %12, %15 : f64
            %17 = arith.addi %arg9, %c-1 : index
            %18 = memref.load %arg5[%arg8, %17] : memref<?x20xf64>
            %19 = arith.mulf %18, %cst_2 : f64
            %20 = arith.subf %16, %19 : f64
            %21 = arith.divf %20, %5 : f64
            memref.store %21, %arg5[%arg8, %arg9] : memref<?x20xf64>
          }
          memref.store %cst_8, %arg2[%arg8, %c19] : memref<?x20xf64>
          scf.for %arg9 = %c1 to %c19 step %c1 {
            %2 = arith.muli %arg9, %c-1 : index
            %3 = arith.addi %2, %c19 : index
            %4 = memref.load %arg4[%arg8, %3] : memref<?x20xf64>
            %5 = arith.muli %arg9, %c-1 : index
            %6 = arith.addi %5, %c20 : index
            %7 = memref.load %arg2[%arg8, %6] : memref<?x20xf64>
            %8 = arith.mulf %4, %7 : f64
            %9 = arith.muli %arg9, %c-1 : index
            %10 = arith.addi %9, %c19 : index
            %11 = memref.load %arg5[%arg8, %10] : memref<?x20xf64>
            %12 = arith.addf %8, %11 : f64
            %13 = arith.muli %arg9, %c-1 : index
            %14 = arith.addi %13, %c19 : index
            memref.store %12, %arg2[%arg8, %14] : memref<?x20xf64>
          }
        }
      }
    }
    return
  }
}

