module {
  func.func @kernel_adi(%arg0: i32, %arg1: i32, %arg2: memref<?x20xf64>, %arg3: memref<?x20xf64>, %arg4: memref<?x20xf64>, %arg5: memref<?x20xf64>) {
    %c17 = arith.constant 17 : index
    %c-1 = arith.constant -1 : index
    %c19 = arith.constant 19 : index
    %c2 = arith.constant 2 : index
    %c18 = arith.constant 18 : index
    %c1 = arith.constant 1 : index
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
      %0 = arith.addi %arg6, %c20 : index
      scf.for %arg7 = %arg6 to %0 step %c1 {
        scf.for %arg8 = %c0 to %c18 step %c1 {
          %1 = arith.addi %arg8, %c1 : index
          memref.store %cst_8, %arg3[%c0, %1] : memref<?x20xf64>
          %2 = arith.addi %arg8, %c1 : index
          memref.store %cst_7, %arg4[%2, %c0] : memref<?x20xf64>
          %3 = arith.addi %arg8, %c1 : index
          %4 = memref.load %arg3[%c0, %3] : memref<?x20xf64>
          %5 = arith.addi %arg8, %c1 : index
          memref.store %4, %arg5[%5, %c0] : memref<?x20xf64>
          scf.for %arg9 = %c0 to %c18 step %c1 {
            %7 = arith.addi %arg8, %c1 : index
            %8 = memref.load %arg4[%7, %arg9] : memref<?x20xf64>
            %9 = arith.mulf %8, %cst_3 : f64
            %10 = arith.addf %9, %cst_5 : f64
            %11 = arith.divf %cst_6, %10 : f64
            %12 = arith.addi %arg8, %c1 : index
            %13 = arith.addi %arg9, %c1 : index
            memref.store %11, %arg4[%12, %13] : memref<?x20xf64>
            %14 = arith.addi %arg9, %c1 : index
            %15 = memref.load %arg2[%14, %arg8] : memref<?x20xf64>
            %16 = arith.mulf %15, %cst : f64
            %17 = arith.addi %arg9, %c1 : index
            %18 = arith.addi %arg8, %c1 : index
            %19 = memref.load %arg2[%17, %18] : memref<?x20xf64>
            %20 = arith.mulf %19, %cst_0 : f64
            %21 = arith.addf %16, %20 : f64
            %22 = arith.addi %arg9, %c1 : index
            %23 = arith.addi %arg8, %c2 : index
            %24 = memref.load %arg2[%22, %23] : memref<?x20xf64>
            %25 = arith.mulf %24, %cst_2 : f64
            %26 = arith.subf %21, %25 : f64
            %27 = arith.addi %arg8, %c1 : index
            %28 = memref.load %arg5[%27, %arg9] : memref<?x20xf64>
            %29 = arith.mulf %28, %cst_3 : f64
            %30 = arith.subf %26, %29 : f64
            %31 = arith.divf %30, %10 : f64
            %32 = arith.addi %arg8, %c1 : index
            %33 = arith.addi %arg9, %c1 : index
            memref.store %31, %arg5[%32, %33] : memref<?x20xf64>
          }
          %6 = arith.addi %arg8, %c1 : index
          memref.store %cst_8, %arg3[%c19, %6] : memref<?x20xf64>
          scf.for %arg9 = %c0 to %c18 step %c1 {
            %7 = arith.muli %arg9, %c-1 : index
            %8 = arith.addi %7, %c17 : index
            %9 = arith.addi %arg8, %c1 : index
            %10 = memref.load %arg4[%9, %8] : memref<?x20xf64>
            %11 = arith.mulf %10, %cst_3 : f64
            %12 = arith.addf %11, %cst_5 : f64
            %13 = arith.divf %cst_6, %12 : f64
            %14 = arith.addi %arg8, %c1 : index
            %15 = arith.addi %8, %c1 : index
            memref.store %13, %arg4[%14, %15] : memref<?x20xf64>
            %16 = arith.addi %8, %c1 : index
            %17 = memref.load %arg2[%16, %arg8] : memref<?x20xf64>
            %18 = arith.mulf %17, %cst : f64
            %19 = arith.addi %8, %c1 : index
            %20 = arith.addi %arg8, %c1 : index
            %21 = memref.load %arg2[%19, %20] : memref<?x20xf64>
            %22 = arith.mulf %21, %cst_0 : f64
            %23 = arith.addf %18, %22 : f64
            %24 = arith.addi %8, %c1 : index
            %25 = arith.addi %arg8, %c2 : index
            %26 = memref.load %arg2[%24, %25] : memref<?x20xf64>
            %27 = arith.mulf %26, %cst_2 : f64
            %28 = arith.subf %23, %27 : f64
            %29 = arith.addi %arg8, %c1 : index
            %30 = memref.load %arg5[%29, %8] : memref<?x20xf64>
            %31 = arith.mulf %30, %cst_3 : f64
            %32 = arith.subf %28, %31 : f64
            %33 = arith.divf %32, %12 : f64
            %34 = arith.addi %arg8, %c1 : index
            %35 = arith.addi %8, %c1 : index
            memref.store %33, %arg5[%34, %35] : memref<?x20xf64>
            %36 = arith.addi %arg8, %c1 : index
            %37 = arith.muli %arg9, %c-1 : index
            %38 = arith.addi %37, %c18 : index
            %39 = memref.load %arg4[%36, %38] : memref<?x20xf64>
            %40 = arith.muli %arg9, %c-1 : index
            %41 = arith.addi %40, %c19 : index
            %42 = arith.addi %arg8, %c1 : index
            %43 = memref.load %arg3[%41, %42] : memref<?x20xf64>
            %44 = arith.mulf %39, %43 : f64
            %45 = arith.addi %arg8, %c1 : index
            %46 = arith.muli %arg9, %c-1 : index
            %47 = arith.addi %46, %c18 : index
            %48 = memref.load %arg5[%45, %47] : memref<?x20xf64>
            %49 = arith.addf %44, %48 : f64
            %50 = arith.muli %arg9, %c-1 : index
            %51 = arith.addi %50, %c18 : index
            %52 = arith.addi %arg8, %c1 : index
            memref.store %49, %arg3[%51, %52] : memref<?x20xf64>
          }
        }
        scf.for %arg8 = %c0 to %c18 step %c1 {
          %1 = arith.addi %arg8, %c1 : index
          memref.store %cst_8, %arg2[%1, %c0] : memref<?x20xf64>
          %2 = arith.addi %arg8, %c1 : index
          memref.store %cst_7, %arg4[%2, %c0] : memref<?x20xf64>
          %3 = arith.addi %arg8, %c1 : index
          %4 = memref.load %arg2[%3, %c0] : memref<?x20xf64>
          %5 = arith.addi %arg8, %c1 : index
          memref.store %4, %arg5[%5, %c0] : memref<?x20xf64>
          scf.for %arg9 = %c0 to %c18 step %c1 {
            %7 = arith.addi %arg8, %c1 : index
            %8 = memref.load %arg4[%7, %arg9] : memref<?x20xf64>
            %9 = arith.mulf %8, %cst_2 : f64
            %10 = arith.addf %9, %cst_4 : f64
            %11 = arith.divf %cst, %10 : f64
            %12 = arith.addi %arg8, %c1 : index
            %13 = arith.addi %arg9, %c1 : index
            memref.store %11, %arg4[%12, %13] : memref<?x20xf64>
            %14 = arith.addi %arg9, %c1 : index
            %15 = memref.load %arg3[%arg8, %14] : memref<?x20xf64>
            %16 = arith.mulf %15, %cst_6 : f64
            %17 = arith.addi %arg8, %c1 : index
            %18 = arith.addi %arg9, %c1 : index
            %19 = memref.load %arg3[%17, %18] : memref<?x20xf64>
            %20 = arith.mulf %19, %cst_1 : f64
            %21 = arith.addf %16, %20 : f64
            %22 = arith.addi %arg8, %c2 : index
            %23 = arith.addi %arg9, %c1 : index
            %24 = memref.load %arg3[%22, %23] : memref<?x20xf64>
            %25 = arith.mulf %24, %cst_3 : f64
            %26 = arith.subf %21, %25 : f64
            %27 = arith.addi %arg8, %c1 : index
            %28 = memref.load %arg5[%27, %arg9] : memref<?x20xf64>
            %29 = arith.mulf %28, %cst_2 : f64
            %30 = arith.subf %26, %29 : f64
            %31 = arith.divf %30, %10 : f64
            %32 = arith.addi %arg8, %c1 : index
            %33 = arith.addi %arg9, %c1 : index
            memref.store %31, %arg5[%32, %33] : memref<?x20xf64>
          }
          %6 = arith.addi %arg8, %c1 : index
          memref.store %cst_8, %arg2[%6, %c19] : memref<?x20xf64>
          scf.for %arg9 = %c0 to %c18 step %c1 {
            %7 = arith.muli %arg9, %c-1 : index
            %8 = arith.addi %7, %c17 : index
            %9 = arith.addi %arg8, %c1 : index
            %10 = memref.load %arg4[%9, %8] : memref<?x20xf64>
            %11 = arith.mulf %10, %cst_2 : f64
            %12 = arith.addf %11, %cst_4 : f64
            %13 = arith.divf %cst, %12 : f64
            %14 = arith.addi %arg8, %c1 : index
            %15 = arith.addi %8, %c1 : index
            memref.store %13, %arg4[%14, %15] : memref<?x20xf64>
            %16 = arith.addi %8, %c1 : index
            %17 = memref.load %arg3[%arg8, %16] : memref<?x20xf64>
            %18 = arith.mulf %17, %cst_6 : f64
            %19 = arith.addi %arg8, %c1 : index
            %20 = arith.addi %8, %c1 : index
            %21 = memref.load %arg3[%19, %20] : memref<?x20xf64>
            %22 = arith.mulf %21, %cst_1 : f64
            %23 = arith.addf %18, %22 : f64
            %24 = arith.addi %arg8, %c2 : index
            %25 = arith.addi %8, %c1 : index
            %26 = memref.load %arg3[%24, %25] : memref<?x20xf64>
            %27 = arith.mulf %26, %cst_3 : f64
            %28 = arith.subf %23, %27 : f64
            %29 = arith.addi %arg8, %c1 : index
            %30 = memref.load %arg5[%29, %8] : memref<?x20xf64>
            %31 = arith.mulf %30, %cst_2 : f64
            %32 = arith.subf %28, %31 : f64
            %33 = arith.divf %32, %12 : f64
            %34 = arith.addi %arg8, %c1 : index
            %35 = arith.addi %8, %c1 : index
            memref.store %33, %arg5[%34, %35] : memref<?x20xf64>
            %36 = arith.addi %arg8, %c1 : index
            %37 = arith.muli %arg9, %c-1 : index
            %38 = arith.addi %37, %c18 : index
            %39 = memref.load %arg4[%36, %38] : memref<?x20xf64>
            %40 = arith.addi %arg8, %c1 : index
            %41 = arith.muli %arg9, %c-1 : index
            %42 = arith.addi %41, %c19 : index
            %43 = memref.load %arg2[%40, %42] : memref<?x20xf64>
            %44 = arith.mulf %39, %43 : f64
            %45 = arith.addi %arg8, %c1 : index
            %46 = arith.muli %arg9, %c-1 : index
            %47 = arith.addi %46, %c18 : index
            %48 = memref.load %arg5[%45, %47] : memref<?x20xf64>
            %49 = arith.addf %44, %48 : f64
            %50 = arith.addi %arg8, %c1 : index
            %51 = arith.muli %arg9, %c-1 : index
            %52 = arith.addi %51, %c18 : index
            memref.store %49, %arg2[%50, %52] : memref<?x20xf64>
          }
        }
      }
    }
    return
  }
}

