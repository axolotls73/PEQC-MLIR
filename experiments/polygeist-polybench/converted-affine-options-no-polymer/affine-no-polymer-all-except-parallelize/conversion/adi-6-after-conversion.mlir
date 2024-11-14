module {
  func.func @kernel_adi(%arg0: i32, %arg1: i32, %arg2: memref<?x20xf64>, %arg3: memref<?x20xf64>, %arg4: memref<?x20xf64>, %arg5: memref<?x20xf64>) {
    %c19 = arith.constant 19 : index
    %c17 = arith.constant 17 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c4 = arith.constant 4 : index
    %c18 = arith.constant 18 : index
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
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c1 step %c1 {
      scf.for %arg7 = %c0 to %c20 step %c1 {
        scf.for %arg8 = %c0 to %c18 step %c1 {
          %0 = arith.addi %arg8, %c1 : index
          memref.store %cst_8, %arg3[%c0, %0] : memref<?x20xf64>
          memref.store %cst_7, %arg4[%0, %c0] : memref<?x20xf64>
          %1 = memref.load %arg3[%c0, %0] : memref<?x20xf64>
          memref.store %1, %arg5[%0, %c0] : memref<?x20xf64>
          scf.for %arg9 = %c0 to %c4 step %c1 {
            %2 = arith.muli %arg9, %c4 : index
            %3 = arith.addi %2, %c1 : index
            %4 = arith.addi %3, %c-1 : index
            %5 = memref.load %arg4[%0, %4] : memref<?x20xf64>
            %6 = arith.mulf %5, %cst_3 : f64
            %7 = arith.addf %6, %cst_5 : f64
            %8 = arith.divf %cst_6, %7 : f64
            memref.store %8, %arg4[%0, %3] : memref<?x20xf64>
            %9 = arith.addi %0, %c-1 : index
            %10 = memref.load %arg2[%3, %9] : memref<?x20xf64>
            %11 = arith.mulf %10, %cst : f64
            %12 = memref.load %arg2[%3, %0] : memref<?x20xf64>
            %13 = arith.mulf %12, %cst_0 : f64
            %14 = arith.addf %11, %13 : f64
            %15 = arith.addi %0, %c1 : index
            %16 = memref.load %arg2[%3, %15] : memref<?x20xf64>
            %17 = arith.mulf %16, %cst_2 : f64
            %18 = arith.subf %14, %17 : f64
            %19 = arith.addi %3, %c-1 : index
            %20 = memref.load %arg5[%0, %19] : memref<?x20xf64>
            %21 = arith.mulf %20, %cst_3 : f64
            %22 = arith.subf %18, %21 : f64
            %23 = arith.divf %22, %7 : f64
            memref.store %23, %arg5[%0, %3] : memref<?x20xf64>
            %24 = arith.addi %3, %c1 : index
            %25 = arith.addi %24, %c-1 : index
            %26 = memref.load %arg4[%0, %25] : memref<?x20xf64>
            %27 = arith.mulf %26, %cst_3 : f64
            %28 = arith.addf %27, %cst_5 : f64
            %29 = arith.divf %cst_6, %28 : f64
            memref.store %29, %arg4[%0, %24] : memref<?x20xf64>
            %30 = arith.addi %0, %c-1 : index
            %31 = memref.load %arg2[%24, %30] : memref<?x20xf64>
            %32 = arith.mulf %31, %cst : f64
            %33 = memref.load %arg2[%24, %0] : memref<?x20xf64>
            %34 = arith.mulf %33, %cst_0 : f64
            %35 = arith.addf %32, %34 : f64
            %36 = arith.addi %0, %c1 : index
            %37 = memref.load %arg2[%24, %36] : memref<?x20xf64>
            %38 = arith.mulf %37, %cst_2 : f64
            %39 = arith.subf %35, %38 : f64
            %40 = arith.addi %24, %c-1 : index
            %41 = memref.load %arg5[%0, %40] : memref<?x20xf64>
            %42 = arith.mulf %41, %cst_3 : f64
            %43 = arith.subf %39, %42 : f64
            %44 = arith.divf %43, %28 : f64
            memref.store %44, %arg5[%0, %24] : memref<?x20xf64>
            %45 = arith.addi %3, %c2 : index
            %46 = arith.addi %45, %c-1 : index
            %47 = memref.load %arg4[%0, %46] : memref<?x20xf64>
            %48 = arith.mulf %47, %cst_3 : f64
            %49 = arith.addf %48, %cst_5 : f64
            %50 = arith.divf %cst_6, %49 : f64
            memref.store %50, %arg4[%0, %45] : memref<?x20xf64>
            %51 = arith.addi %0, %c-1 : index
            %52 = memref.load %arg2[%45, %51] : memref<?x20xf64>
            %53 = arith.mulf %52, %cst : f64
            %54 = memref.load %arg2[%45, %0] : memref<?x20xf64>
            %55 = arith.mulf %54, %cst_0 : f64
            %56 = arith.addf %53, %55 : f64
            %57 = arith.addi %0, %c1 : index
            %58 = memref.load %arg2[%45, %57] : memref<?x20xf64>
            %59 = arith.mulf %58, %cst_2 : f64
            %60 = arith.subf %56, %59 : f64
            %61 = arith.addi %45, %c-1 : index
            %62 = memref.load %arg5[%0, %61] : memref<?x20xf64>
            %63 = arith.mulf %62, %cst_3 : f64
            %64 = arith.subf %60, %63 : f64
            %65 = arith.divf %64, %49 : f64
            memref.store %65, %arg5[%0, %45] : memref<?x20xf64>
            %66 = arith.addi %3, %c3 : index
            %67 = arith.addi %66, %c-1 : index
            %68 = memref.load %arg4[%0, %67] : memref<?x20xf64>
            %69 = arith.mulf %68, %cst_3 : f64
            %70 = arith.addf %69, %cst_5 : f64
            %71 = arith.divf %cst_6, %70 : f64
            memref.store %71, %arg4[%0, %66] : memref<?x20xf64>
            %72 = arith.addi %0, %c-1 : index
            %73 = memref.load %arg2[%66, %72] : memref<?x20xf64>
            %74 = arith.mulf %73, %cst : f64
            %75 = memref.load %arg2[%66, %0] : memref<?x20xf64>
            %76 = arith.mulf %75, %cst_0 : f64
            %77 = arith.addf %74, %76 : f64
            %78 = arith.addi %0, %c1 : index
            %79 = memref.load %arg2[%66, %78] : memref<?x20xf64>
            %80 = arith.mulf %79, %cst_2 : f64
            %81 = arith.subf %77, %80 : f64
            %82 = arith.addi %66, %c-1 : index
            %83 = memref.load %arg5[%0, %82] : memref<?x20xf64>
            %84 = arith.mulf %83, %cst_3 : f64
            %85 = arith.subf %81, %84 : f64
            %86 = arith.divf %85, %70 : f64
            memref.store %86, %arg5[%0, %66] : memref<?x20xf64>
          }
          scf.for %arg9 = %c0 to %c2 step %c1 {
            %2 = arith.addi %arg9, %c17 : index
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
          scf.for %arg9 = %c0 to %c4 step %c1 {
            %2 = arith.muli %arg9, %c4 : index
            %3 = arith.addi %2, %c1 : index
            %4 = arith.muli %3, %c-1 : index
            %5 = arith.addi %4, %c19 : index
            %6 = memref.load %arg4[%0, %5] : memref<?x20xf64>
            %7 = arith.muli %3, %c-1 : index
            %8 = arith.addi %7, %c20 : index
            %9 = memref.load %arg3[%8, %0] : memref<?x20xf64>
            %10 = arith.mulf %6, %9 : f64
            %11 = arith.muli %3, %c-1 : index
            %12 = arith.addi %11, %c19 : index
            %13 = memref.load %arg5[%0, %12] : memref<?x20xf64>
            %14 = arith.addf %10, %13 : f64
            %15 = arith.muli %3, %c-1 : index
            %16 = arith.addi %15, %c19 : index
            memref.store %14, %arg3[%16, %0] : memref<?x20xf64>
            %17 = arith.addi %3, %c1 : index
            %18 = arith.muli %17, %c-1 : index
            %19 = arith.addi %18, %c19 : index
            %20 = memref.load %arg4[%0, %19] : memref<?x20xf64>
            %21 = arith.muli %17, %c-1 : index
            %22 = arith.addi %21, %c20 : index
            %23 = memref.load %arg3[%22, %0] : memref<?x20xf64>
            %24 = arith.mulf %20, %23 : f64
            %25 = arith.muli %17, %c-1 : index
            %26 = arith.addi %25, %c19 : index
            %27 = memref.load %arg5[%0, %26] : memref<?x20xf64>
            %28 = arith.addf %24, %27 : f64
            %29 = arith.muli %17, %c-1 : index
            %30 = arith.addi %29, %c19 : index
            memref.store %28, %arg3[%30, %0] : memref<?x20xf64>
            %31 = arith.addi %3, %c2 : index
            %32 = arith.muli %31, %c-1 : index
            %33 = arith.addi %32, %c19 : index
            %34 = memref.load %arg4[%0, %33] : memref<?x20xf64>
            %35 = arith.muli %31, %c-1 : index
            %36 = arith.addi %35, %c20 : index
            %37 = memref.load %arg3[%36, %0] : memref<?x20xf64>
            %38 = arith.mulf %34, %37 : f64
            %39 = arith.muli %31, %c-1 : index
            %40 = arith.addi %39, %c19 : index
            %41 = memref.load %arg5[%0, %40] : memref<?x20xf64>
            %42 = arith.addf %38, %41 : f64
            %43 = arith.muli %31, %c-1 : index
            %44 = arith.addi %43, %c19 : index
            memref.store %42, %arg3[%44, %0] : memref<?x20xf64>
            %45 = arith.addi %3, %c3 : index
            %46 = arith.muli %45, %c-1 : index
            %47 = arith.addi %46, %c19 : index
            %48 = memref.load %arg4[%0, %47] : memref<?x20xf64>
            %49 = arith.muli %45, %c-1 : index
            %50 = arith.addi %49, %c20 : index
            %51 = memref.load %arg3[%50, %0] : memref<?x20xf64>
            %52 = arith.mulf %48, %51 : f64
            %53 = arith.muli %45, %c-1 : index
            %54 = arith.addi %53, %c19 : index
            %55 = memref.load %arg5[%0, %54] : memref<?x20xf64>
            %56 = arith.addf %52, %55 : f64
            %57 = arith.muli %45, %c-1 : index
            %58 = arith.addi %57, %c19 : index
            memref.store %56, %arg3[%58, %0] : memref<?x20xf64>
          }
          scf.for %arg9 = %c0 to %c2 step %c1 {
            %2 = arith.addi %arg9, %c17 : index
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
        scf.for %arg8 = %c0 to %c18 step %c1 {
          %0 = arith.addi %arg8, %c1 : index
          memref.store %cst_8, %arg2[%0, %c0] : memref<?x20xf64>
          memref.store %cst_7, %arg4[%0, %c0] : memref<?x20xf64>
          %1 = memref.load %arg2[%0, %c0] : memref<?x20xf64>
          memref.store %1, %arg5[%0, %c0] : memref<?x20xf64>
          scf.for %arg9 = %c0 to %c4 step %c1 {
            %2 = arith.muli %arg9, %c4 : index
            %3 = arith.addi %2, %c1 : index
            %4 = arith.addi %3, %c-1 : index
            %5 = memref.load %arg4[%0, %4] : memref<?x20xf64>
            %6 = arith.mulf %5, %cst_2 : f64
            %7 = arith.addf %6, %cst_4 : f64
            %8 = arith.divf %cst, %7 : f64
            memref.store %8, %arg4[%0, %3] : memref<?x20xf64>
            %9 = arith.addi %0, %c-1 : index
            %10 = memref.load %arg3[%9, %3] : memref<?x20xf64>
            %11 = arith.mulf %10, %cst_6 : f64
            %12 = memref.load %arg3[%0, %3] : memref<?x20xf64>
            %13 = arith.mulf %12, %cst_1 : f64
            %14 = arith.addf %11, %13 : f64
            %15 = arith.addi %0, %c1 : index
            %16 = memref.load %arg3[%15, %3] : memref<?x20xf64>
            %17 = arith.mulf %16, %cst_3 : f64
            %18 = arith.subf %14, %17 : f64
            %19 = arith.addi %3, %c-1 : index
            %20 = memref.load %arg5[%0, %19] : memref<?x20xf64>
            %21 = arith.mulf %20, %cst_2 : f64
            %22 = arith.subf %18, %21 : f64
            %23 = arith.divf %22, %7 : f64
            memref.store %23, %arg5[%0, %3] : memref<?x20xf64>
            %24 = arith.addi %3, %c1 : index
            %25 = arith.addi %24, %c-1 : index
            %26 = memref.load %arg4[%0, %25] : memref<?x20xf64>
            %27 = arith.mulf %26, %cst_2 : f64
            %28 = arith.addf %27, %cst_4 : f64
            %29 = arith.divf %cst, %28 : f64
            memref.store %29, %arg4[%0, %24] : memref<?x20xf64>
            %30 = arith.addi %0, %c-1 : index
            %31 = memref.load %arg3[%30, %24] : memref<?x20xf64>
            %32 = arith.mulf %31, %cst_6 : f64
            %33 = memref.load %arg3[%0, %24] : memref<?x20xf64>
            %34 = arith.mulf %33, %cst_1 : f64
            %35 = arith.addf %32, %34 : f64
            %36 = arith.addi %0, %c1 : index
            %37 = memref.load %arg3[%36, %24] : memref<?x20xf64>
            %38 = arith.mulf %37, %cst_3 : f64
            %39 = arith.subf %35, %38 : f64
            %40 = arith.addi %24, %c-1 : index
            %41 = memref.load %arg5[%0, %40] : memref<?x20xf64>
            %42 = arith.mulf %41, %cst_2 : f64
            %43 = arith.subf %39, %42 : f64
            %44 = arith.divf %43, %28 : f64
            memref.store %44, %arg5[%0, %24] : memref<?x20xf64>
            %45 = arith.addi %3, %c2 : index
            %46 = arith.addi %45, %c-1 : index
            %47 = memref.load %arg4[%0, %46] : memref<?x20xf64>
            %48 = arith.mulf %47, %cst_2 : f64
            %49 = arith.addf %48, %cst_4 : f64
            %50 = arith.divf %cst, %49 : f64
            memref.store %50, %arg4[%0, %45] : memref<?x20xf64>
            %51 = arith.addi %0, %c-1 : index
            %52 = memref.load %arg3[%51, %45] : memref<?x20xf64>
            %53 = arith.mulf %52, %cst_6 : f64
            %54 = memref.load %arg3[%0, %45] : memref<?x20xf64>
            %55 = arith.mulf %54, %cst_1 : f64
            %56 = arith.addf %53, %55 : f64
            %57 = arith.addi %0, %c1 : index
            %58 = memref.load %arg3[%57, %45] : memref<?x20xf64>
            %59 = arith.mulf %58, %cst_3 : f64
            %60 = arith.subf %56, %59 : f64
            %61 = arith.addi %45, %c-1 : index
            %62 = memref.load %arg5[%0, %61] : memref<?x20xf64>
            %63 = arith.mulf %62, %cst_2 : f64
            %64 = arith.subf %60, %63 : f64
            %65 = arith.divf %64, %49 : f64
            memref.store %65, %arg5[%0, %45] : memref<?x20xf64>
            %66 = arith.addi %3, %c3 : index
            %67 = arith.addi %66, %c-1 : index
            %68 = memref.load %arg4[%0, %67] : memref<?x20xf64>
            %69 = arith.mulf %68, %cst_2 : f64
            %70 = arith.addf %69, %cst_4 : f64
            %71 = arith.divf %cst, %70 : f64
            memref.store %71, %arg4[%0, %66] : memref<?x20xf64>
            %72 = arith.addi %0, %c-1 : index
            %73 = memref.load %arg3[%72, %66] : memref<?x20xf64>
            %74 = arith.mulf %73, %cst_6 : f64
            %75 = memref.load %arg3[%0, %66] : memref<?x20xf64>
            %76 = arith.mulf %75, %cst_1 : f64
            %77 = arith.addf %74, %76 : f64
            %78 = arith.addi %0, %c1 : index
            %79 = memref.load %arg3[%78, %66] : memref<?x20xf64>
            %80 = arith.mulf %79, %cst_3 : f64
            %81 = arith.subf %77, %80 : f64
            %82 = arith.addi %66, %c-1 : index
            %83 = memref.load %arg5[%0, %82] : memref<?x20xf64>
            %84 = arith.mulf %83, %cst_2 : f64
            %85 = arith.subf %81, %84 : f64
            %86 = arith.divf %85, %70 : f64
            memref.store %86, %arg5[%0, %66] : memref<?x20xf64>
          }
          scf.for %arg9 = %c0 to %c2 step %c1 {
            %2 = arith.addi %arg9, %c17 : index
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
          scf.for %arg9 = %c0 to %c4 step %c1 {
            %2 = arith.muli %arg9, %c4 : index
            %3 = arith.addi %2, %c1 : index
            %4 = arith.muli %3, %c-1 : index
            %5 = arith.addi %4, %c19 : index
            %6 = memref.load %arg4[%0, %5] : memref<?x20xf64>
            %7 = arith.muli %3, %c-1 : index
            %8 = arith.addi %7, %c20 : index
            %9 = memref.load %arg2[%0, %8] : memref<?x20xf64>
            %10 = arith.mulf %6, %9 : f64
            %11 = arith.muli %3, %c-1 : index
            %12 = arith.addi %11, %c19 : index
            %13 = memref.load %arg5[%0, %12] : memref<?x20xf64>
            %14 = arith.addf %10, %13 : f64
            %15 = arith.muli %3, %c-1 : index
            %16 = arith.addi %15, %c19 : index
            memref.store %14, %arg2[%0, %16] : memref<?x20xf64>
            %17 = arith.addi %3, %c1 : index
            %18 = arith.muli %17, %c-1 : index
            %19 = arith.addi %18, %c19 : index
            %20 = memref.load %arg4[%0, %19] : memref<?x20xf64>
            %21 = arith.muli %17, %c-1 : index
            %22 = arith.addi %21, %c20 : index
            %23 = memref.load %arg2[%0, %22] : memref<?x20xf64>
            %24 = arith.mulf %20, %23 : f64
            %25 = arith.muli %17, %c-1 : index
            %26 = arith.addi %25, %c19 : index
            %27 = memref.load %arg5[%0, %26] : memref<?x20xf64>
            %28 = arith.addf %24, %27 : f64
            %29 = arith.muli %17, %c-1 : index
            %30 = arith.addi %29, %c19 : index
            memref.store %28, %arg2[%0, %30] : memref<?x20xf64>
            %31 = arith.addi %3, %c2 : index
            %32 = arith.muli %31, %c-1 : index
            %33 = arith.addi %32, %c19 : index
            %34 = memref.load %arg4[%0, %33] : memref<?x20xf64>
            %35 = arith.muli %31, %c-1 : index
            %36 = arith.addi %35, %c20 : index
            %37 = memref.load %arg2[%0, %36] : memref<?x20xf64>
            %38 = arith.mulf %34, %37 : f64
            %39 = arith.muli %31, %c-1 : index
            %40 = arith.addi %39, %c19 : index
            %41 = memref.load %arg5[%0, %40] : memref<?x20xf64>
            %42 = arith.addf %38, %41 : f64
            %43 = arith.muli %31, %c-1 : index
            %44 = arith.addi %43, %c19 : index
            memref.store %42, %arg2[%0, %44] : memref<?x20xf64>
            %45 = arith.addi %3, %c3 : index
            %46 = arith.muli %45, %c-1 : index
            %47 = arith.addi %46, %c19 : index
            %48 = memref.load %arg4[%0, %47] : memref<?x20xf64>
            %49 = arith.muli %45, %c-1 : index
            %50 = arith.addi %49, %c20 : index
            %51 = memref.load %arg2[%0, %50] : memref<?x20xf64>
            %52 = arith.mulf %48, %51 : f64
            %53 = arith.muli %45, %c-1 : index
            %54 = arith.addi %53, %c19 : index
            %55 = memref.load %arg5[%0, %54] : memref<?x20xf64>
            %56 = arith.addf %52, %55 : f64
            %57 = arith.muli %45, %c-1 : index
            %58 = arith.addi %57, %c19 : index
            memref.store %56, %arg2[%0, %58] : memref<?x20xf64>
          }
          scf.for %arg9 = %c0 to %c2 step %c1 {
            %2 = arith.addi %arg9, %c17 : index
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
    }
    return
  }
}

