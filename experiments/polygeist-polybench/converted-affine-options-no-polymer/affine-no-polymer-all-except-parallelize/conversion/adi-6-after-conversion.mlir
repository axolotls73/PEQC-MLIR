module {
  func.func @kernel_adi(%arg0: i32, %arg1: i32, %arg2: memref<?x20xf64>, %arg3: memref<?x20xf64>, %arg4: memref<?x20xf64>, %arg5: memref<?x20xf64>) {
    %c17 = arith.constant 17 : index
    %c3 = arith.constant 3 : index
    %c20 = arith.constant 20 : index
    %c-1 = arith.constant -1 : index
    %c4 = arith.constant 4 : index
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
    scf.for %arg6 = %c0 to %c4 step %c1 {
      %17 = arith.muli %arg6, %c4 : index
      %18 = arith.addi %17, %c1 : index
      scf.for %arg7 = %c0 to %c1 step %c1 {
        %19 = arith.muli %arg7, %c4 : index
        %20 = arith.addi %18, %19 : index
        %21 = arith.muli %20, %c-1 : index
        %22 = arith.addi %21, %c19 : index
        %23 = memref.load %arg4[%c1, %22] : memref<?x20xf64>
        %24 = arith.muli %20, %c-1 : index
        %25 = arith.addi %24, %c20 : index
        %26 = memref.load %arg3[%25, %c1] : memref<?x20xf64>
        %27 = arith.mulf %23, %26 : f64
        %28 = arith.muli %20, %c-1 : index
        %29 = arith.addi %28, %c19 : index
        %30 = memref.load %arg5[%c1, %29] : memref<?x20xf64>
        %31 = arith.addf %27, %30 : f64
        %32 = arith.muli %20, %c-1 : index
        %33 = arith.addi %32, %c19 : index
        memref.store %31, %arg3[%33, %c1] : memref<?x20xf64>
        %34 = arith.addi %20, %c1 : index
        %35 = arith.muli %34, %c-1 : index
        %36 = arith.addi %35, %c19 : index
        %37 = memref.load %arg4[%c1, %36] : memref<?x20xf64>
        %38 = arith.muli %34, %c-1 : index
        %39 = arith.addi %38, %c20 : index
        %40 = memref.load %arg3[%39, %c1] : memref<?x20xf64>
        %41 = arith.mulf %37, %40 : f64
        %42 = arith.muli %34, %c-1 : index
        %43 = arith.addi %42, %c19 : index
        %44 = memref.load %arg5[%c1, %43] : memref<?x20xf64>
        %45 = arith.addf %41, %44 : f64
        %46 = arith.muli %34, %c-1 : index
        %47 = arith.addi %46, %c19 : index
        memref.store %45, %arg3[%47, %c1] : memref<?x20xf64>
        %48 = arith.addi %20, %c2 : index
        %49 = arith.muli %48, %c-1 : index
        %50 = arith.addi %49, %c19 : index
        %51 = memref.load %arg4[%c1, %50] : memref<?x20xf64>
        %52 = arith.muli %48, %c-1 : index
        %53 = arith.addi %52, %c20 : index
        %54 = memref.load %arg3[%53, %c1] : memref<?x20xf64>
        %55 = arith.mulf %51, %54 : f64
        %56 = arith.muli %48, %c-1 : index
        %57 = arith.addi %56, %c19 : index
        %58 = memref.load %arg5[%c1, %57] : memref<?x20xf64>
        %59 = arith.addf %55, %58 : f64
        %60 = arith.muli %48, %c-1 : index
        %61 = arith.addi %60, %c19 : index
        memref.store %59, %arg3[%61, %c1] : memref<?x20xf64>
        %62 = arith.addi %20, %c3 : index
        %63 = arith.muli %62, %c-1 : index
        %64 = arith.addi %63, %c19 : index
        %65 = memref.load %arg4[%c1, %64] : memref<?x20xf64>
        %66 = arith.muli %62, %c-1 : index
        %67 = arith.addi %66, %c20 : index
        %68 = memref.load %arg3[%67, %c1] : memref<?x20xf64>
        %69 = arith.mulf %65, %68 : f64
        %70 = arith.muli %62, %c-1 : index
        %71 = arith.addi %70, %c19 : index
        %72 = memref.load %arg5[%c1, %71] : memref<?x20xf64>
        %73 = arith.addf %69, %72 : f64
        %74 = arith.muli %62, %c-1 : index
        %75 = arith.addi %74, %c19 : index
        memref.store %73, %arg3[%75, %c1] : memref<?x20xf64>
      }
    }
    scf.for %arg6 = %c0 to %c2 step %c1 {
      %17 = arith.addi %arg6, %c17 : index
      scf.for %arg7 = %c0 to %c1 step %c1 {
        %18 = arith.addi %17, %arg7 : index
        %19 = arith.muli %18, %c-1 : index
        %20 = arith.addi %19, %c19 : index
        %21 = memref.load %arg4[%c1, %20] : memref<?x20xf64>
        %22 = arith.muli %18, %c-1 : index
        %23 = arith.addi %22, %c20 : index
        %24 = memref.load %arg3[%23, %c1] : memref<?x20xf64>
        %25 = arith.mulf %21, %24 : f64
        %26 = arith.muli %18, %c-1 : index
        %27 = arith.addi %26, %c19 : index
        %28 = memref.load %arg5[%c1, %27] : memref<?x20xf64>
        %29 = arith.addf %25, %28 : f64
        %30 = arith.muli %18, %c-1 : index
        %31 = arith.addi %30, %c19 : index
        memref.store %29, %arg3[%31, %c1] : memref<?x20xf64>
      }
    }
    return
  }
}

