module {
  func.func @kernel_adi(%arg0: i32, %arg1: i32, %arg2: memref<?x20xf64>, %arg3: memref<?x20xf64>, %arg4: memref<?x20xf64>, %arg5: memref<?x20xf64>) {
    %c20 = arith.constant 20 : index
    %c-1 = arith.constant -1 : index
    %c0 = arith.constant 0 : index
    %c19 = arith.constant 19 : index
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
    scf.for %arg6 = %c1 to %c21 step %c1 {
      scf.for %arg7 = %c1 to %c19 step %c1 {
        memref.store %cst_8, %arg3[%c0, %arg7] : memref<?x20xf64>
        memref.store %cst_7, %arg4[%arg7, %c0] : memref<?x20xf64>
        %0 = memref.load %arg3[%c0, %arg7] : memref<?x20xf64>
        memref.store %0, %arg5[%arg7, %c0] : memref<?x20xf64>
        scf.for %arg8 = %c1 to %c19 step %c1 {
          %1 = arith.addi %arg8, %c-1 : index
          %2 = memref.load %arg4[%arg7, %1] : memref<?x20xf64>
          %3 = arith.mulf %2, %cst_3 : f64
          %4 = arith.addf %3, %cst_5 : f64
          %5 = arith.divf %cst_6, %4 : f64
          memref.store %5, %arg4[%arg7, %arg8] : memref<?x20xf64>
          %6 = arith.addi %arg7, %c-1 : index
          %7 = memref.load %arg2[%arg8, %6] : memref<?x20xf64>
          %8 = arith.mulf %7, %cst : f64
          %9 = memref.load %arg2[%arg8, %arg7] : memref<?x20xf64>
          %10 = arith.mulf %9, %cst_0 : f64
          %11 = arith.addf %8, %10 : f64
          %12 = arith.addi %arg7, %c1 : index
          %13 = memref.load %arg2[%arg8, %12] : memref<?x20xf64>
          %14 = arith.mulf %13, %cst_2 : f64
          %15 = arith.subf %11, %14 : f64
          %16 = arith.addi %arg8, %c-1 : index
          %17 = memref.load %arg5[%arg7, %16] : memref<?x20xf64>
          %18 = arith.mulf %17, %cst_3 : f64
          %19 = arith.subf %15, %18 : f64
          %20 = arith.divf %19, %4 : f64
          memref.store %20, %arg5[%arg7, %arg8] : memref<?x20xf64>
        }
        memref.store %cst_8, %arg3[%c19, %arg7] : memref<?x20xf64>
        scf.for %arg8 = %c1 to %c19 step %c1 {
          %1 = arith.muli %arg8, %c-1 : index
          %2 = arith.addi %1, %c19 : index
          %3 = arith.addi %2, %c-1 : index
          %4 = memref.load %arg4[%arg7, %3] : memref<?x20xf64>
          %5 = arith.mulf %4, %cst_3 : f64
          %6 = arith.addf %5, %cst_5 : f64
          %7 = arith.divf %cst_6, %6 : f64
          memref.store %7, %arg4[%arg7, %2] : memref<?x20xf64>
          %8 = arith.addi %arg7, %c-1 : index
          %9 = memref.load %arg2[%2, %8] : memref<?x20xf64>
          %10 = arith.mulf %9, %cst : f64
          %11 = memref.load %arg2[%2, %arg7] : memref<?x20xf64>
          %12 = arith.mulf %11, %cst_0 : f64
          %13 = arith.addf %10, %12 : f64
          %14 = arith.addi %arg7, %c1 : index
          %15 = memref.load %arg2[%2, %14] : memref<?x20xf64>
          %16 = arith.mulf %15, %cst_2 : f64
          %17 = arith.subf %13, %16 : f64
          %18 = arith.addi %2, %c-1 : index
          %19 = memref.load %arg5[%arg7, %18] : memref<?x20xf64>
          %20 = arith.mulf %19, %cst_3 : f64
          %21 = arith.subf %17, %20 : f64
          %22 = arith.divf %21, %6 : f64
          memref.store %22, %arg5[%arg7, %2] : memref<?x20xf64>
          %23 = arith.muli %arg8, %c-1 : index
          %24 = arith.addi %23, %c19 : index
          %25 = memref.load %arg4[%arg7, %24] : memref<?x20xf64>
          %26 = arith.muli %arg8, %c-1 : index
          %27 = arith.addi %26, %c20 : index
          %28 = memref.load %arg3[%27, %arg7] : memref<?x20xf64>
          %29 = arith.mulf %25, %28 : f64
          %30 = arith.muli %arg8, %c-1 : index
          %31 = arith.addi %30, %c19 : index
          %32 = memref.load %arg5[%arg7, %31] : memref<?x20xf64>
          %33 = arith.addf %29, %32 : f64
          %34 = arith.muli %arg8, %c-1 : index
          %35 = arith.addi %34, %c19 : index
          memref.store %33, %arg3[%35, %arg7] : memref<?x20xf64>
        }
      }
      scf.for %arg7 = %c1 to %c19 step %c1 {
        memref.store %cst_8, %arg2[%arg7, %c0] : memref<?x20xf64>
        memref.store %cst_7, %arg4[%arg7, %c0] : memref<?x20xf64>
        %0 = memref.load %arg2[%arg7, %c0] : memref<?x20xf64>
        memref.store %0, %arg5[%arg7, %c0] : memref<?x20xf64>
        scf.for %arg8 = %c1 to %c19 step %c1 {
          %1 = arith.addi %arg8, %c-1 : index
          %2 = memref.load %arg4[%arg7, %1] : memref<?x20xf64>
          %3 = arith.mulf %2, %cst_2 : f64
          %4 = arith.addf %3, %cst_4 : f64
          %5 = arith.divf %cst, %4 : f64
          memref.store %5, %arg4[%arg7, %arg8] : memref<?x20xf64>
          %6 = arith.addi %arg7, %c-1 : index
          %7 = memref.load %arg3[%6, %arg8] : memref<?x20xf64>
          %8 = arith.mulf %7, %cst_6 : f64
          %9 = memref.load %arg3[%arg7, %arg8] : memref<?x20xf64>
          %10 = arith.mulf %9, %cst_1 : f64
          %11 = arith.addf %8, %10 : f64
          %12 = arith.addi %arg7, %c1 : index
          %13 = memref.load %arg3[%12, %arg8] : memref<?x20xf64>
          %14 = arith.mulf %13, %cst_3 : f64
          %15 = arith.subf %11, %14 : f64
          %16 = arith.addi %arg8, %c-1 : index
          %17 = memref.load %arg5[%arg7, %16] : memref<?x20xf64>
          %18 = arith.mulf %17, %cst_2 : f64
          %19 = arith.subf %15, %18 : f64
          %20 = arith.divf %19, %4 : f64
          memref.store %20, %arg5[%arg7, %arg8] : memref<?x20xf64>
        }
        memref.store %cst_8, %arg2[%arg7, %c19] : memref<?x20xf64>
        scf.for %arg8 = %c1 to %c19 step %c1 {
          %1 = arith.muli %arg8, %c-1 : index
          %2 = arith.addi %1, %c19 : index
          %3 = arith.addi %2, %c-1 : index
          %4 = memref.load %arg4[%arg7, %3] : memref<?x20xf64>
          %5 = arith.mulf %4, %cst_2 : f64
          %6 = arith.addf %5, %cst_4 : f64
          %7 = arith.divf %cst, %6 : f64
          memref.store %7, %arg4[%arg7, %2] : memref<?x20xf64>
          %8 = arith.addi %arg7, %c-1 : index
          %9 = memref.load %arg3[%8, %2] : memref<?x20xf64>
          %10 = arith.mulf %9, %cst_6 : f64
          %11 = memref.load %arg3[%arg7, %2] : memref<?x20xf64>
          %12 = arith.mulf %11, %cst_1 : f64
          %13 = arith.addf %10, %12 : f64
          %14 = arith.addi %arg7, %c1 : index
          %15 = memref.load %arg3[%14, %2] : memref<?x20xf64>
          %16 = arith.mulf %15, %cst_3 : f64
          %17 = arith.subf %13, %16 : f64
          %18 = arith.addi %2, %c-1 : index
          %19 = memref.load %arg5[%arg7, %18] : memref<?x20xf64>
          %20 = arith.mulf %19, %cst_2 : f64
          %21 = arith.subf %17, %20 : f64
          %22 = arith.divf %21, %6 : f64
          memref.store %22, %arg5[%arg7, %2] : memref<?x20xf64>
          %23 = arith.muli %arg8, %c-1 : index
          %24 = arith.addi %23, %c19 : index
          %25 = memref.load %arg4[%arg7, %24] : memref<?x20xf64>
          %26 = arith.muli %arg8, %c-1 : index
          %27 = arith.addi %26, %c20 : index
          %28 = memref.load %arg2[%arg7, %27] : memref<?x20xf64>
          %29 = arith.mulf %25, %28 : f64
          %30 = arith.muli %arg8, %c-1 : index
          %31 = arith.addi %30, %c19 : index
          %32 = memref.load %arg5[%arg7, %31] : memref<?x20xf64>
          %33 = arith.addf %29, %32 : f64
          %34 = arith.muli %arg8, %c-1 : index
          %35 = arith.addi %34, %c19 : index
          memref.store %33, %arg2[%arg7, %35] : memref<?x20xf64>
        }
      }
    }
    return
  }
}

