module {
  func.func @kernel_adi(%arg0: i32, %arg1: i32, %arg2: memref<?x20xf64>, %arg3: memref<?x20xf64>, %arg4: memref<?x20xf64>, %arg5: memref<?x20xf64>) {
    %c3 = arith.constant 3 : index
    %c20 = arith.constant 20 : index
    %c-1 = arith.constant -1 : index
    %c4 = arith.constant 4 : index
    %c17 = arith.constant 17 : index
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
    scf.for %arg6 = %c1 to %c17 step %c4 {
      %17 = arith.muli %arg6, %c-1 : index
      %18 = arith.addi %17, %c19 : index
      %19 = memref.load %arg4[%c1, %18] : memref<?x20xf64>
      %20 = arith.muli %arg6, %c-1 : index
      %21 = arith.addi %20, %c20 : index
      %22 = memref.load %arg3[%21, %c1] : memref<?x20xf64>
      %23 = arith.mulf %19, %22 : f64
      %24 = arith.muli %arg6, %c-1 : index
      %25 = arith.addi %24, %c19 : index
      %26 = memref.load %arg5[%c1, %25] : memref<?x20xf64>
      %27 = arith.addf %23, %26 : f64
      %28 = arith.muli %arg6, %c-1 : index
      %29 = arith.addi %28, %c19 : index
      memref.store %27, %arg3[%29, %c1] : memref<?x20xf64>
      %30 = arith.addi %arg6, %c1 : index
      %31 = arith.muli %30, %c-1 : index
      %32 = arith.addi %31, %c19 : index
      %33 = memref.load %arg4[%c1, %32] : memref<?x20xf64>
      %34 = arith.muli %30, %c-1 : index
      %35 = arith.addi %34, %c20 : index
      %36 = memref.load %arg3[%35, %c1] : memref<?x20xf64>
      %37 = arith.mulf %33, %36 : f64
      %38 = arith.muli %30, %c-1 : index
      %39 = arith.addi %38, %c19 : index
      %40 = memref.load %arg5[%c1, %39] : memref<?x20xf64>
      %41 = arith.addf %37, %40 : f64
      %42 = arith.muli %30, %c-1 : index
      %43 = arith.addi %42, %c19 : index
      memref.store %41, %arg3[%43, %c1] : memref<?x20xf64>
      %44 = arith.addi %arg6, %c2 : index
      %45 = arith.muli %44, %c-1 : index
      %46 = arith.addi %45, %c19 : index
      %47 = memref.load %arg4[%c1, %46] : memref<?x20xf64>
      %48 = arith.muli %44, %c-1 : index
      %49 = arith.addi %48, %c20 : index
      %50 = memref.load %arg3[%49, %c1] : memref<?x20xf64>
      %51 = arith.mulf %47, %50 : f64
      %52 = arith.muli %44, %c-1 : index
      %53 = arith.addi %52, %c19 : index
      %54 = memref.load %arg5[%c1, %53] : memref<?x20xf64>
      %55 = arith.addf %51, %54 : f64
      %56 = arith.muli %44, %c-1 : index
      %57 = arith.addi %56, %c19 : index
      memref.store %55, %arg3[%57, %c1] : memref<?x20xf64>
      %58 = arith.addi %arg6, %c3 : index
      %59 = arith.muli %58, %c-1 : index
      %60 = arith.addi %59, %c19 : index
      %61 = memref.load %arg4[%c1, %60] : memref<?x20xf64>
      %62 = arith.muli %58, %c-1 : index
      %63 = arith.addi %62, %c20 : index
      %64 = memref.load %arg3[%63, %c1] : memref<?x20xf64>
      %65 = arith.mulf %61, %64 : f64
      %66 = arith.muli %58, %c-1 : index
      %67 = arith.addi %66, %c19 : index
      %68 = memref.load %arg5[%c1, %67] : memref<?x20xf64>
      %69 = arith.addf %65, %68 : f64
      %70 = arith.muli %58, %c-1 : index
      %71 = arith.addi %70, %c19 : index
      memref.store %69, %arg3[%71, %c1] : memref<?x20xf64>
    }
    scf.for %arg6 = %c17 to %c19 step %c1 {
      %17 = arith.muli %arg6, %c-1 : index
      %18 = arith.addi %17, %c19 : index
      %19 = memref.load %arg4[%c1, %18] : memref<?x20xf64>
      %20 = arith.muli %arg6, %c-1 : index
      %21 = arith.addi %20, %c20 : index
      %22 = memref.load %arg3[%21, %c1] : memref<?x20xf64>
      %23 = arith.mulf %19, %22 : f64
      %24 = arith.muli %arg6, %c-1 : index
      %25 = arith.addi %24, %c19 : index
      %26 = memref.load %arg5[%c1, %25] : memref<?x20xf64>
      %27 = arith.addf %23, %26 : f64
      %28 = arith.muli %arg6, %c-1 : index
      %29 = arith.addi %28, %c19 : index
      memref.store %27, %arg3[%29, %c1] : memref<?x20xf64>
    }
    return
  }
}

