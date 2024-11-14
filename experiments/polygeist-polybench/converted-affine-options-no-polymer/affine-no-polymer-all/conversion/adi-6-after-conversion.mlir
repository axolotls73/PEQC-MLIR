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
    %0 = async.create_group %c1 : !async.group
    %1 = scf.for %arg6 = %c0 to %c1 step %c1 iter_args(%arg7 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg8 = %c0 to %c20 step %c1 {
          scf.for %arg9 = %c0 to %c18 step %c1 {
            %4 = arith.addi %arg9, %c1 : index
            memref.store %cst_8, %arg3[%c0, %4] : memref<?x20xf64>
            memref.store %cst_7, %arg4[%4, %c0] : memref<?x20xf64>
            %5 = memref.load %arg3[%c0, %4] : memref<?x20xf64>
            memref.store %5, %arg5[%4, %c0] : memref<?x20xf64>
            scf.for %arg10 = %c0 to %c4 step %c1 {
              %6 = arith.muli %arg10, %c4 : index
              %7 = arith.addi %6, %c1 : index
              %8 = arith.addi %7, %c-1 : index
              %9 = memref.load %arg4[%4, %8] : memref<?x20xf64>
              %10 = arith.mulf %9, %cst_3 : f64
              %11 = arith.addf %10, %cst_5 : f64
              %12 = arith.divf %cst_6, %11 : f64
              memref.store %12, %arg4[%4, %7] : memref<?x20xf64>
              %13 = arith.addi %4, %c-1 : index
              %14 = memref.load %arg2[%7, %13] : memref<?x20xf64>
              %15 = arith.mulf %14, %cst : f64
              %16 = memref.load %arg2[%7, %4] : memref<?x20xf64>
              %17 = arith.mulf %16, %cst_0 : f64
              %18 = arith.addf %15, %17 : f64
              %19 = arith.addi %4, %c1 : index
              %20 = memref.load %arg2[%7, %19] : memref<?x20xf64>
              %21 = arith.mulf %20, %cst_2 : f64
              %22 = arith.subf %18, %21 : f64
              %23 = arith.addi %7, %c-1 : index
              %24 = memref.load %arg5[%4, %23] : memref<?x20xf64>
              %25 = arith.mulf %24, %cst_3 : f64
              %26 = arith.subf %22, %25 : f64
              %27 = arith.divf %26, %11 : f64
              memref.store %27, %arg5[%4, %7] : memref<?x20xf64>
              %28 = arith.addi %7, %c1 : index
              %29 = arith.addi %28, %c-1 : index
              %30 = memref.load %arg4[%4, %29] : memref<?x20xf64>
              %31 = arith.mulf %30, %cst_3 : f64
              %32 = arith.addf %31, %cst_5 : f64
              %33 = arith.divf %cst_6, %32 : f64
              memref.store %33, %arg4[%4, %28] : memref<?x20xf64>
              %34 = arith.addi %4, %c-1 : index
              %35 = memref.load %arg2[%28, %34] : memref<?x20xf64>
              %36 = arith.mulf %35, %cst : f64
              %37 = memref.load %arg2[%28, %4] : memref<?x20xf64>
              %38 = arith.mulf %37, %cst_0 : f64
              %39 = arith.addf %36, %38 : f64
              %40 = arith.addi %4, %c1 : index
              %41 = memref.load %arg2[%28, %40] : memref<?x20xf64>
              %42 = arith.mulf %41, %cst_2 : f64
              %43 = arith.subf %39, %42 : f64
              %44 = arith.addi %28, %c-1 : index
              %45 = memref.load %arg5[%4, %44] : memref<?x20xf64>
              %46 = arith.mulf %45, %cst_3 : f64
              %47 = arith.subf %43, %46 : f64
              %48 = arith.divf %47, %32 : f64
              memref.store %48, %arg5[%4, %28] : memref<?x20xf64>
              %49 = arith.addi %7, %c2 : index
              %50 = arith.addi %49, %c-1 : index
              %51 = memref.load %arg4[%4, %50] : memref<?x20xf64>
              %52 = arith.mulf %51, %cst_3 : f64
              %53 = arith.addf %52, %cst_5 : f64
              %54 = arith.divf %cst_6, %53 : f64
              memref.store %54, %arg4[%4, %49] : memref<?x20xf64>
              %55 = arith.addi %4, %c-1 : index
              %56 = memref.load %arg2[%49, %55] : memref<?x20xf64>
              %57 = arith.mulf %56, %cst : f64
              %58 = memref.load %arg2[%49, %4] : memref<?x20xf64>
              %59 = arith.mulf %58, %cst_0 : f64
              %60 = arith.addf %57, %59 : f64
              %61 = arith.addi %4, %c1 : index
              %62 = memref.load %arg2[%49, %61] : memref<?x20xf64>
              %63 = arith.mulf %62, %cst_2 : f64
              %64 = arith.subf %60, %63 : f64
              %65 = arith.addi %49, %c-1 : index
              %66 = memref.load %arg5[%4, %65] : memref<?x20xf64>
              %67 = arith.mulf %66, %cst_3 : f64
              %68 = arith.subf %64, %67 : f64
              %69 = arith.divf %68, %53 : f64
              memref.store %69, %arg5[%4, %49] : memref<?x20xf64>
              %70 = arith.addi %7, %c3 : index
              %71 = arith.addi %70, %c-1 : index
              %72 = memref.load %arg4[%4, %71] : memref<?x20xf64>
              %73 = arith.mulf %72, %cst_3 : f64
              %74 = arith.addf %73, %cst_5 : f64
              %75 = arith.divf %cst_6, %74 : f64
              memref.store %75, %arg4[%4, %70] : memref<?x20xf64>
              %76 = arith.addi %4, %c-1 : index
              %77 = memref.load %arg2[%70, %76] : memref<?x20xf64>
              %78 = arith.mulf %77, %cst : f64
              %79 = memref.load %arg2[%70, %4] : memref<?x20xf64>
              %80 = arith.mulf %79, %cst_0 : f64
              %81 = arith.addf %78, %80 : f64
              %82 = arith.addi %4, %c1 : index
              %83 = memref.load %arg2[%70, %82] : memref<?x20xf64>
              %84 = arith.mulf %83, %cst_2 : f64
              %85 = arith.subf %81, %84 : f64
              %86 = arith.addi %70, %c-1 : index
              %87 = memref.load %arg5[%4, %86] : memref<?x20xf64>
              %88 = arith.mulf %87, %cst_3 : f64
              %89 = arith.subf %85, %88 : f64
              %90 = arith.divf %89, %74 : f64
              memref.store %90, %arg5[%4, %70] : memref<?x20xf64>
            }
            scf.for %arg10 = %c0 to %c2 step %c1 {
              %6 = arith.addi %arg10, %c17 : index
              %7 = arith.addi %6, %c-1 : index
              %8 = memref.load %arg4[%4, %7] : memref<?x20xf64>
              %9 = arith.mulf %8, %cst_3 : f64
              %10 = arith.addf %9, %cst_5 : f64
              %11 = arith.divf %cst_6, %10 : f64
              memref.store %11, %arg4[%4, %6] : memref<?x20xf64>
              %12 = arith.addi %4, %c-1 : index
              %13 = memref.load %arg2[%6, %12] : memref<?x20xf64>
              %14 = arith.mulf %13, %cst : f64
              %15 = memref.load %arg2[%6, %4] : memref<?x20xf64>
              %16 = arith.mulf %15, %cst_0 : f64
              %17 = arith.addf %14, %16 : f64
              %18 = arith.addi %4, %c1 : index
              %19 = memref.load %arg2[%6, %18] : memref<?x20xf64>
              %20 = arith.mulf %19, %cst_2 : f64
              %21 = arith.subf %17, %20 : f64
              %22 = arith.addi %6, %c-1 : index
              %23 = memref.load %arg5[%4, %22] : memref<?x20xf64>
              %24 = arith.mulf %23, %cst_3 : f64
              %25 = arith.subf %21, %24 : f64
              %26 = arith.divf %25, %10 : f64
              memref.store %26, %arg5[%4, %6] : memref<?x20xf64>
            }
            memref.store %cst_8, %arg3[%c19, %4] : memref<?x20xf64>
            scf.for %arg10 = %c0 to %c4 step %c1 {
              %6 = arith.muli %arg10, %c4 : index
              %7 = arith.addi %6, %c1 : index
              %8 = arith.muli %7, %c-1 : index
              %9 = arith.addi %8, %c19 : index
              %10 = memref.load %arg4[%4, %9] : memref<?x20xf64>
              %11 = arith.muli %7, %c-1 : index
              %12 = arith.addi %11, %c20 : index
              %13 = memref.load %arg3[%12, %4] : memref<?x20xf64>
              %14 = arith.mulf %10, %13 : f64
              %15 = arith.muli %7, %c-1 : index
              %16 = arith.addi %15, %c19 : index
              %17 = memref.load %arg5[%4, %16] : memref<?x20xf64>
              %18 = arith.addf %14, %17 : f64
              %19 = arith.muli %7, %c-1 : index
              %20 = arith.addi %19, %c19 : index
              memref.store %18, %arg3[%20, %4] : memref<?x20xf64>
              %21 = arith.addi %7, %c1 : index
              %22 = arith.muli %21, %c-1 : index
              %23 = arith.addi %22, %c19 : index
              %24 = memref.load %arg4[%4, %23] : memref<?x20xf64>
              %25 = arith.muli %21, %c-1 : index
              %26 = arith.addi %25, %c20 : index
              %27 = memref.load %arg3[%26, %4] : memref<?x20xf64>
              %28 = arith.mulf %24, %27 : f64
              %29 = arith.muli %21, %c-1 : index
              %30 = arith.addi %29, %c19 : index
              %31 = memref.load %arg5[%4, %30] : memref<?x20xf64>
              %32 = arith.addf %28, %31 : f64
              %33 = arith.muli %21, %c-1 : index
              %34 = arith.addi %33, %c19 : index
              memref.store %32, %arg3[%34, %4] : memref<?x20xf64>
              %35 = arith.addi %7, %c2 : index
              %36 = arith.muli %35, %c-1 : index
              %37 = arith.addi %36, %c19 : index
              %38 = memref.load %arg4[%4, %37] : memref<?x20xf64>
              %39 = arith.muli %35, %c-1 : index
              %40 = arith.addi %39, %c20 : index
              %41 = memref.load %arg3[%40, %4] : memref<?x20xf64>
              %42 = arith.mulf %38, %41 : f64
              %43 = arith.muli %35, %c-1 : index
              %44 = arith.addi %43, %c19 : index
              %45 = memref.load %arg5[%4, %44] : memref<?x20xf64>
              %46 = arith.addf %42, %45 : f64
              %47 = arith.muli %35, %c-1 : index
              %48 = arith.addi %47, %c19 : index
              memref.store %46, %arg3[%48, %4] : memref<?x20xf64>
              %49 = arith.addi %7, %c3 : index
              %50 = arith.muli %49, %c-1 : index
              %51 = arith.addi %50, %c19 : index
              %52 = memref.load %arg4[%4, %51] : memref<?x20xf64>
              %53 = arith.muli %49, %c-1 : index
              %54 = arith.addi %53, %c20 : index
              %55 = memref.load %arg3[%54, %4] : memref<?x20xf64>
              %56 = arith.mulf %52, %55 : f64
              %57 = arith.muli %49, %c-1 : index
              %58 = arith.addi %57, %c19 : index
              %59 = memref.load %arg5[%4, %58] : memref<?x20xf64>
              %60 = arith.addf %56, %59 : f64
              %61 = arith.muli %49, %c-1 : index
              %62 = arith.addi %61, %c19 : index
              memref.store %60, %arg3[%62, %4] : memref<?x20xf64>
            }
            scf.for %arg10 = %c0 to %c2 step %c1 {
              %6 = arith.addi %arg10, %c17 : index
              %7 = arith.muli %6, %c-1 : index
              %8 = arith.addi %7, %c19 : index
              %9 = memref.load %arg4[%4, %8] : memref<?x20xf64>
              %10 = arith.muli %6, %c-1 : index
              %11 = arith.addi %10, %c20 : index
              %12 = memref.load %arg3[%11, %4] : memref<?x20xf64>
              %13 = arith.mulf %9, %12 : f64
              %14 = arith.muli %6, %c-1 : index
              %15 = arith.addi %14, %c19 : index
              %16 = memref.load %arg5[%4, %15] : memref<?x20xf64>
              %17 = arith.addf %13, %16 : f64
              %18 = arith.muli %6, %c-1 : index
              %19 = arith.addi %18, %c19 : index
              memref.store %17, %arg3[%19, %4] : memref<?x20xf64>
            }
          }
          scf.for %arg9 = %c0 to %c18 step %c1 {
            %4 = arith.addi %arg9, %c1 : index
            memref.store %cst_8, %arg2[%4, %c0] : memref<?x20xf64>
            memref.store %cst_7, %arg4[%4, %c0] : memref<?x20xf64>
            %5 = memref.load %arg2[%4, %c0] : memref<?x20xf64>
            memref.store %5, %arg5[%4, %c0] : memref<?x20xf64>
            scf.for %arg10 = %c0 to %c4 step %c1 {
              %6 = arith.muli %arg10, %c4 : index
              %7 = arith.addi %6, %c1 : index
              %8 = arith.addi %7, %c-1 : index
              %9 = memref.load %arg4[%4, %8] : memref<?x20xf64>
              %10 = arith.mulf %9, %cst_2 : f64
              %11 = arith.addf %10, %cst_4 : f64
              %12 = arith.divf %cst, %11 : f64
              memref.store %12, %arg4[%4, %7] : memref<?x20xf64>
              %13 = arith.addi %4, %c-1 : index
              %14 = memref.load %arg3[%13, %7] : memref<?x20xf64>
              %15 = arith.mulf %14, %cst_6 : f64
              %16 = memref.load %arg3[%4, %7] : memref<?x20xf64>
              %17 = arith.mulf %16, %cst_1 : f64
              %18 = arith.addf %15, %17 : f64
              %19 = arith.addi %4, %c1 : index
              %20 = memref.load %arg3[%19, %7] : memref<?x20xf64>
              %21 = arith.mulf %20, %cst_3 : f64
              %22 = arith.subf %18, %21 : f64
              %23 = arith.addi %7, %c-1 : index
              %24 = memref.load %arg5[%4, %23] : memref<?x20xf64>
              %25 = arith.mulf %24, %cst_2 : f64
              %26 = arith.subf %22, %25 : f64
              %27 = arith.divf %26, %11 : f64
              memref.store %27, %arg5[%4, %7] : memref<?x20xf64>
              %28 = arith.addi %7, %c1 : index
              %29 = arith.addi %28, %c-1 : index
              %30 = memref.load %arg4[%4, %29] : memref<?x20xf64>
              %31 = arith.mulf %30, %cst_2 : f64
              %32 = arith.addf %31, %cst_4 : f64
              %33 = arith.divf %cst, %32 : f64
              memref.store %33, %arg4[%4, %28] : memref<?x20xf64>
              %34 = arith.addi %4, %c-1 : index
              %35 = memref.load %arg3[%34, %28] : memref<?x20xf64>
              %36 = arith.mulf %35, %cst_6 : f64
              %37 = memref.load %arg3[%4, %28] : memref<?x20xf64>
              %38 = arith.mulf %37, %cst_1 : f64
              %39 = arith.addf %36, %38 : f64
              %40 = arith.addi %4, %c1 : index
              %41 = memref.load %arg3[%40, %28] : memref<?x20xf64>
              %42 = arith.mulf %41, %cst_3 : f64
              %43 = arith.subf %39, %42 : f64
              %44 = arith.addi %28, %c-1 : index
              %45 = memref.load %arg5[%4, %44] : memref<?x20xf64>
              %46 = arith.mulf %45, %cst_2 : f64
              %47 = arith.subf %43, %46 : f64
              %48 = arith.divf %47, %32 : f64
              memref.store %48, %arg5[%4, %28] : memref<?x20xf64>
              %49 = arith.addi %7, %c2 : index
              %50 = arith.addi %49, %c-1 : index
              %51 = memref.load %arg4[%4, %50] : memref<?x20xf64>
              %52 = arith.mulf %51, %cst_2 : f64
              %53 = arith.addf %52, %cst_4 : f64
              %54 = arith.divf %cst, %53 : f64
              memref.store %54, %arg4[%4, %49] : memref<?x20xf64>
              %55 = arith.addi %4, %c-1 : index
              %56 = memref.load %arg3[%55, %49] : memref<?x20xf64>
              %57 = arith.mulf %56, %cst_6 : f64
              %58 = memref.load %arg3[%4, %49] : memref<?x20xf64>
              %59 = arith.mulf %58, %cst_1 : f64
              %60 = arith.addf %57, %59 : f64
              %61 = arith.addi %4, %c1 : index
              %62 = memref.load %arg3[%61, %49] : memref<?x20xf64>
              %63 = arith.mulf %62, %cst_3 : f64
              %64 = arith.subf %60, %63 : f64
              %65 = arith.addi %49, %c-1 : index
              %66 = memref.load %arg5[%4, %65] : memref<?x20xf64>
              %67 = arith.mulf %66, %cst_2 : f64
              %68 = arith.subf %64, %67 : f64
              %69 = arith.divf %68, %53 : f64
              memref.store %69, %arg5[%4, %49] : memref<?x20xf64>
              %70 = arith.addi %7, %c3 : index
              %71 = arith.addi %70, %c-1 : index
              %72 = memref.load %arg4[%4, %71] : memref<?x20xf64>
              %73 = arith.mulf %72, %cst_2 : f64
              %74 = arith.addf %73, %cst_4 : f64
              %75 = arith.divf %cst, %74 : f64
              memref.store %75, %arg4[%4, %70] : memref<?x20xf64>
              %76 = arith.addi %4, %c-1 : index
              %77 = memref.load %arg3[%76, %70] : memref<?x20xf64>
              %78 = arith.mulf %77, %cst_6 : f64
              %79 = memref.load %arg3[%4, %70] : memref<?x20xf64>
              %80 = arith.mulf %79, %cst_1 : f64
              %81 = arith.addf %78, %80 : f64
              %82 = arith.addi %4, %c1 : index
              %83 = memref.load %arg3[%82, %70] : memref<?x20xf64>
              %84 = arith.mulf %83, %cst_3 : f64
              %85 = arith.subf %81, %84 : f64
              %86 = arith.addi %70, %c-1 : index
              %87 = memref.load %arg5[%4, %86] : memref<?x20xf64>
              %88 = arith.mulf %87, %cst_2 : f64
              %89 = arith.subf %85, %88 : f64
              %90 = arith.divf %89, %74 : f64
              memref.store %90, %arg5[%4, %70] : memref<?x20xf64>
            }
            scf.for %arg10 = %c0 to %c2 step %c1 {
              %6 = arith.addi %arg10, %c17 : index
              %7 = arith.addi %6, %c-1 : index
              %8 = memref.load %arg4[%4, %7] : memref<?x20xf64>
              %9 = arith.mulf %8, %cst_2 : f64
              %10 = arith.addf %9, %cst_4 : f64
              %11 = arith.divf %cst, %10 : f64
              memref.store %11, %arg4[%4, %6] : memref<?x20xf64>
              %12 = arith.addi %4, %c-1 : index
              %13 = memref.load %arg3[%12, %6] : memref<?x20xf64>
              %14 = arith.mulf %13, %cst_6 : f64
              %15 = memref.load %arg3[%4, %6] : memref<?x20xf64>
              %16 = arith.mulf %15, %cst_1 : f64
              %17 = arith.addf %14, %16 : f64
              %18 = arith.addi %4, %c1 : index
              %19 = memref.load %arg3[%18, %6] : memref<?x20xf64>
              %20 = arith.mulf %19, %cst_3 : f64
              %21 = arith.subf %17, %20 : f64
              %22 = arith.addi %6, %c-1 : index
              %23 = memref.load %arg5[%4, %22] : memref<?x20xf64>
              %24 = arith.mulf %23, %cst_2 : f64
              %25 = arith.subf %21, %24 : f64
              %26 = arith.divf %25, %10 : f64
              memref.store %26, %arg5[%4, %6] : memref<?x20xf64>
            }
            memref.store %cst_8, %arg2[%4, %c19] : memref<?x20xf64>
            scf.for %arg10 = %c0 to %c4 step %c1 {
              %6 = arith.muli %arg10, %c4 : index
              %7 = arith.addi %6, %c1 : index
              %8 = arith.muli %7, %c-1 : index
              %9 = arith.addi %8, %c19 : index
              %10 = memref.load %arg4[%4, %9] : memref<?x20xf64>
              %11 = arith.muli %7, %c-1 : index
              %12 = arith.addi %11, %c20 : index
              %13 = memref.load %arg2[%4, %12] : memref<?x20xf64>
              %14 = arith.mulf %10, %13 : f64
              %15 = arith.muli %7, %c-1 : index
              %16 = arith.addi %15, %c19 : index
              %17 = memref.load %arg5[%4, %16] : memref<?x20xf64>
              %18 = arith.addf %14, %17 : f64
              %19 = arith.muli %7, %c-1 : index
              %20 = arith.addi %19, %c19 : index
              memref.store %18, %arg2[%4, %20] : memref<?x20xf64>
              %21 = arith.addi %7, %c1 : index
              %22 = arith.muli %21, %c-1 : index
              %23 = arith.addi %22, %c19 : index
              %24 = memref.load %arg4[%4, %23] : memref<?x20xf64>
              %25 = arith.muli %21, %c-1 : index
              %26 = arith.addi %25, %c20 : index
              %27 = memref.load %arg2[%4, %26] : memref<?x20xf64>
              %28 = arith.mulf %24, %27 : f64
              %29 = arith.muli %21, %c-1 : index
              %30 = arith.addi %29, %c19 : index
              %31 = memref.load %arg5[%4, %30] : memref<?x20xf64>
              %32 = arith.addf %28, %31 : f64
              %33 = arith.muli %21, %c-1 : index
              %34 = arith.addi %33, %c19 : index
              memref.store %32, %arg2[%4, %34] : memref<?x20xf64>
              %35 = arith.addi %7, %c2 : index
              %36 = arith.muli %35, %c-1 : index
              %37 = arith.addi %36, %c19 : index
              %38 = memref.load %arg4[%4, %37] : memref<?x20xf64>
              %39 = arith.muli %35, %c-1 : index
              %40 = arith.addi %39, %c20 : index
              %41 = memref.load %arg2[%4, %40] : memref<?x20xf64>
              %42 = arith.mulf %38, %41 : f64
              %43 = arith.muli %35, %c-1 : index
              %44 = arith.addi %43, %c19 : index
              %45 = memref.load %arg5[%4, %44] : memref<?x20xf64>
              %46 = arith.addf %42, %45 : f64
              %47 = arith.muli %35, %c-1 : index
              %48 = arith.addi %47, %c19 : index
              memref.store %46, %arg2[%4, %48] : memref<?x20xf64>
              %49 = arith.addi %7, %c3 : index
              %50 = arith.muli %49, %c-1 : index
              %51 = arith.addi %50, %c19 : index
              %52 = memref.load %arg4[%4, %51] : memref<?x20xf64>
              %53 = arith.muli %49, %c-1 : index
              %54 = arith.addi %53, %c20 : index
              %55 = memref.load %arg2[%4, %54] : memref<?x20xf64>
              %56 = arith.mulf %52, %55 : f64
              %57 = arith.muli %49, %c-1 : index
              %58 = arith.addi %57, %c19 : index
              %59 = memref.load %arg5[%4, %58] : memref<?x20xf64>
              %60 = arith.addf %56, %59 : f64
              %61 = arith.muli %49, %c-1 : index
              %62 = arith.addi %61, %c19 : index
              memref.store %60, %arg2[%4, %62] : memref<?x20xf64>
            }
            scf.for %arg10 = %c0 to %c2 step %c1 {
              %6 = arith.addi %arg10, %c17 : index
              %7 = arith.muli %6, %c-1 : index
              %8 = arith.addi %7, %c19 : index
              %9 = memref.load %arg4[%4, %8] : memref<?x20xf64>
              %10 = arith.muli %6, %c-1 : index
              %11 = arith.addi %10, %c20 : index
              %12 = memref.load %arg2[%4, %11] : memref<?x20xf64>
              %13 = arith.mulf %9, %12 : f64
              %14 = arith.muli %6, %c-1 : index
              %15 = arith.addi %14, %c19 : index
              %16 = memref.load %arg5[%4, %15] : memref<?x20xf64>
              %17 = arith.addf %13, %16 : f64
              %18 = arith.muli %6, %c-1 : index
              %19 = arith.addi %18, %c19 : index
              memref.store %17, %arg2[%4, %19] : memref<?x20xf64>
            }
          }
        }
        async.yield
      }
      %2 = async.add_to_group %token, %0 : !async.token
      %3 = arith.addi %arg7, %c1 : index
      scf.yield %3 : index
    }
    async.await_all %0
    return
  }
}

