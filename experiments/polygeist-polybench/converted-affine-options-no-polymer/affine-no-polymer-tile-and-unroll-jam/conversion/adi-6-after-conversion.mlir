module {
  func.func @kernel_adi(%arg0: i32, %arg1: i32, %arg2: memref<?x20xf64>, %arg3: memref<?x20xf64>, %arg4: memref<?x20xf64>, %arg5: memref<?x20xf64>) {
    %c-1 = arith.constant -1 : index
    %c32 = arith.constant 32 : index
    %c18 = arith.constant 18 : index
    %c19 = arith.constant 19 : index
    %c2 = arith.constant 2 : index
    %cst = arith.constant 9.9999999999999982 : f64
    %cst_0 = arith.constant -18.999999999999996 : f64
    %cst_1 = arith.constant -9.9999999999999982 : f64
    %cst_2 = arith.constant -19.999999999999996 : f64
    %cst_3 = arith.constant 40.999999999999993 : f64
    %cst_4 = arith.constant 19.999999999999996 : f64
    %cst_5 = arith.constant 0.000000e+00 : f64
    %cst_6 = arith.constant 1.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    memref.store %cst_6, %arg3[%c0, %c1] : memref<?x20xf64>
    memref.store %cst_5, %arg4[%c1, %c0] : memref<?x20xf64>
    %0 = memref.load %arg3[%c0, %c1] : memref<?x20xf64>
    memref.store %0, %arg5[%c1, %c0] : memref<?x20xf64>
    %1 = memref.load %arg4[%c1, %c0] : memref<?x20xf64>
    %2 = arith.mulf %1, %cst_2 : f64
    %3 = arith.addf %2, %cst_3 : f64
    %4 = arith.divf %cst_4, %3 : f64
    memref.store %4, %arg4[%c1, %c1] : memref<?x20xf64>
    %5 = memref.load %arg2[%c1, %c0] : memref<?x20xf64>
    %6 = arith.mulf %5, %cst : f64
    %7 = memref.load %arg2[%c1, %c1] : memref<?x20xf64>
    %8 = arith.mulf %7, %cst_0 : f64
    %9 = arith.addf %6, %8 : f64
    %10 = memref.load %arg2[%c1, %c2] : memref<?x20xf64>
    %11 = arith.mulf %10, %cst_1 : f64
    %12 = arith.subf %9, %11 : f64
    %13 = memref.load %arg5[%c1, %c0] : memref<?x20xf64>
    %14 = arith.mulf %13, %cst_2 : f64
    %15 = arith.subf %12, %14 : f64
    %16 = arith.divf %15, %3 : f64
    memref.store %16, %arg5[%c1, %c1] : memref<?x20xf64>
    memref.store %cst_6, %arg3[%c19, %c1] : memref<?x20xf64>
    scf.for %arg6 = %c0 to %c18 step %c32 {
      %17 = arith.addi %arg6, %c18 : index
      scf.for %arg7 = %arg6 to %17 step %c1 {
        %18 = arith.muli %arg7, %c-1 : index
        %19 = arith.addi %18, %c18 : index
        %20 = memref.load %arg4[%c1, %19] : memref<?x20xf64>
        %21 = arith.muli %arg7, %c-1 : index
        %22 = arith.addi %21, %c19 : index
        %23 = memref.load %arg3[%22, %c1] : memref<?x20xf64>
        %24 = arith.mulf %20, %23 : f64
        %25 = arith.muli %arg7, %c-1 : index
        %26 = arith.addi %25, %c18 : index
        %27 = memref.load %arg5[%c1, %26] : memref<?x20xf64>
        %28 = arith.addf %24, %27 : f64
        %29 = arith.muli %arg7, %c-1 : index
        %30 = arith.addi %29, %c18 : index
        memref.store %28, %arg3[%30, %c1] : memref<?x20xf64>
      }
    }
    return
  }
}

