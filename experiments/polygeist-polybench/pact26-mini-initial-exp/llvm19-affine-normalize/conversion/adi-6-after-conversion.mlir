module {
  func.func @kernel_adi(%arg0: i32, %arg1: i32, %arg2: memref<?x20xf64>, %arg3: memref<?x20xf64>, %arg4: memref<?x20xf64>, %arg5: memref<?x20xf64>) {
    %c19 = arith.constant 19 : index
    %c-1 = arith.constant -1 : index
    %c18 = arith.constant 18 : index
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
      scf.for %arg7 = %c0 to %c18 step %c1 {
        %0 = arith.addi %arg7, %c1 : index
        memref.store %cst_8, %arg3[%c0, %0] : memref<?x20xf64>
        memref.store %cst_7, %arg4[%0, %c0] : memref<?x20xf64>
        %1 = memref.load %arg3[%c0, %0] : memref<?x20xf64>
        memref.store %1, %arg5[%0, %c0] : memref<?x20xf64>
        scf.for %arg8 = %c0 to %c18 step %c1 {
          %2 = arith.addi %arg8, %c1 : index
          %3 = arith.addi %2, %c-1 : index
          %4 = memref.load %arg4[%0, %3] : memref<?x20xf64>
          %5 = arith.mulf %4, %cst_3 : f64
          %6 = arith.addf %5, %cst_5 : f64
          %7 = arith.divf %cst_6, %6 : f64
          memref.store %7, %arg4[%0, %2] : memref<?x20xf64>
          %8 = arith.addi %0, %c-1 : index
          %9 = memref.load %arg2[%2, %8] : memref<?x20xf64>
          %10 = arith.mulf %9, %cst : f64
          %11 = memref.load %arg2[%2, %0] : memref<?x20xf64>
          %12 = arith.mulf %11, %cst_0 : f64
          %13 = arith.addf %10, %12 : f64
          %14 = arith.addi %0, %c1 : index
          %15 = memref.load %arg2[%2, %14] : memref<?x20xf64>
          %16 = arith.mulf %15, %cst_2 : f64
          %17 = arith.subf %13, %16 : f64
          %18 = arith.addi %2, %c-1 : index
          %19 = memref.load %arg5[%0, %18] : memref<?x20xf64>
          %20 = arith.mulf %19, %cst_3 : f64
          %21 = arith.subf %17, %20 : f64
          %22 = arith.divf %21, %6 : f64
          memref.store %22, %arg5[%0, %2] : memref<?x20xf64>
        }
        memref.store %cst_8, %arg3[%c19, %0] : memref<?x20xf64>
        scf.for %arg8 = %c0 to %c18 step %c1 {
          %2 = arith.addi %arg8, %c1 : index
          %3 = arith.muli %2, %c-1 : index
          %4 = arith.addi %3, %c19 : index
          %5 = memref.load %arg4[%0, %4] : memref<?x20xf64>
          %6 = arith.muli %2, %c-1 : index
          %7 = arith.addi %6, %c20 : index
          %8 = memref.load %arg3[%7, %0] : memref<?x20xf64>
          %9 = arith.mulf %5, %8 : f64
          %10 = arith.muli %2, %c-1 : index
          %11 = arith.addi %10, %c19 : index
          %12 = memref.load %arg5[%0, %11] : memref<?x20xf64>
          %13 = arith.addf %9, %12 : f64
          %14 = arith.muli %2, %c-1 : index
          %15 = arith.addi %14, %c19 : index
          memref.store %13, %arg3[%15, %0] : memref<?x20xf64>
        }
      }
      scf.for %arg7 = %c0 to %c18 step %c1 {
        %0 = arith.addi %arg7, %c1 : index
        memref.store %cst_8, %arg2[%0, %c0] : memref<?x20xf64>
        memref.store %cst_7, %arg4[%0, %c0] : memref<?x20xf64>
        %1 = memref.load %arg2[%0, %c0] : memref<?x20xf64>
        memref.store %1, %arg5[%0, %c0] : memref<?x20xf64>
        scf.for %arg8 = %c0 to %c18 step %c1 {
          %2 = arith.addi %arg8, %c1 : index
          %3 = arith.addi %2, %c-1 : index
          %4 = memref.load %arg4[%0, %3] : memref<?x20xf64>
          %5 = arith.mulf %4, %cst_2 : f64
          %6 = arith.addf %5, %cst_4 : f64
          %7 = arith.divf %cst, %6 : f64
          memref.store %7, %arg4[%0, %2] : memref<?x20xf64>
          %8 = arith.addi %0, %c-1 : index
          %9 = memref.load %arg3[%8, %2] : memref<?x20xf64>
          %10 = arith.mulf %9, %cst_6 : f64
          %11 = memref.load %arg3[%0, %2] : memref<?x20xf64>
          %12 = arith.mulf %11, %cst_1 : f64
          %13 = arith.addf %10, %12 : f64
          %14 = arith.addi %0, %c1 : index
          %15 = memref.load %arg3[%14, %2] : memref<?x20xf64>
          %16 = arith.mulf %15, %cst_3 : f64
          %17 = arith.subf %13, %16 : f64
          %18 = arith.addi %2, %c-1 : index
          %19 = memref.load %arg5[%0, %18] : memref<?x20xf64>
          %20 = arith.mulf %19, %cst_2 : f64
          %21 = arith.subf %17, %20 : f64
          %22 = arith.divf %21, %6 : f64
          memref.store %22, %arg5[%0, %2] : memref<?x20xf64>
        }
        memref.store %cst_8, %arg2[%0, %c19] : memref<?x20xf64>
        scf.for %arg8 = %c0 to %c18 step %c1 {
          %2 = arith.addi %arg8, %c1 : index
          %3 = arith.muli %2, %c-1 : index
          %4 = arith.addi %3, %c19 : index
          %5 = memref.load %arg4[%0, %4] : memref<?x20xf64>
          %6 = arith.muli %2, %c-1 : index
          %7 = arith.addi %6, %c20 : index
          %8 = memref.load %arg2[%0, %7] : memref<?x20xf64>
          %9 = arith.mulf %5, %8 : f64
          %10 = arith.muli %2, %c-1 : index
          %11 = arith.addi %10, %c19 : index
          %12 = memref.load %arg5[%0, %11] : memref<?x20xf64>
          %13 = arith.addf %9, %12 : f64
          %14 = arith.muli %2, %c-1 : index
          %15 = arith.addi %14, %c19 : index
          memref.store %13, %arg2[%0, %15] : memref<?x20xf64>
        }
      }
    }
    return
  }
}

