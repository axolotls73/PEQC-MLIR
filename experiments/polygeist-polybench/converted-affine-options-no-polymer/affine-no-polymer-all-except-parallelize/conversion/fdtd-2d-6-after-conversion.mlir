module {
  func.func @kernel_fdtd_2d(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?x30xf64>, %arg6: memref<?xf64>) {
    %c-1 = arith.constant -1 : index
    %c19 = arith.constant 19 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c7 = arith.constant 7 : index
    %c20 = arith.constant 20 : index
    %c32 = arith.constant 32 : index
    %c28 = arith.constant 28 : index
    %c29 = arith.constant 29 : index
    %cst = arith.constant 0.69999999999999996 : f64
    %cst_0 = arith.constant 5.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %c1 step %c1 {
      %0 = arith.muli %arg7, %c32 : index
      scf.for %arg8 = %c0 to %c20 step %c1 {
        %1 = arith.addi %0, %arg8 : index
        %2 = memref.load %arg6[%1] : memref<?xf64>
        %3 = memref.load %arg6[%1] : memref<?xf64>
        %4 = memref.load %arg6[%1] : memref<?xf64>
        %5 = memref.load %arg6[%1] : memref<?xf64>
        scf.for %arg9 = %c0 to %c7 step %c1 {
          %7 = arith.muli %arg9, %c4 : index
          memref.store %2, %arg4[%c0, %7] : memref<?x30xf64>
          %8 = arith.addi %7, %c1 : index
          memref.store %3, %arg4[%c0, %8] : memref<?x30xf64>
          %9 = arith.addi %7, %c2 : index
          memref.store %4, %arg4[%c0, %9] : memref<?x30xf64>
          %10 = arith.addi %7, %c3 : index
          memref.store %5, %arg4[%c0, %10] : memref<?x30xf64>
        }
        %6 = memref.load %arg6[%1] : memref<?xf64>
        scf.for %arg9 = %c0 to %c2 step %c1 {
          %7 = arith.addi %arg9, %c28 : index
          memref.store %6, %arg4[%c0, %7] : memref<?x30xf64>
        }
        scf.for %arg9 = %c0 to %c19 step %c1 {
          %7 = arith.addi %arg9, %c1 : index
          scf.for %arg10 = %c0 to %c7 step %c1 {
            %8 = arith.muli %arg10, %c4 : index
            %9 = memref.load %arg4[%7, %8] : memref<?x30xf64>
            %10 = memref.load %arg5[%7, %8] : memref<?x30xf64>
            %11 = arith.addi %7, %c-1 : index
            %12 = memref.load %arg5[%11, %8] : memref<?x30xf64>
            %13 = arith.subf %10, %12 : f64
            %14 = arith.mulf %13, %cst_0 : f64
            %15 = arith.subf %9, %14 : f64
            memref.store %15, %arg4[%7, %8] : memref<?x30xf64>
            %16 = arith.addi %8, %c1 : index
            %17 = memref.load %arg4[%7, %16] : memref<?x30xf64>
            %18 = memref.load %arg5[%7, %16] : memref<?x30xf64>
            %19 = arith.addi %7, %c-1 : index
            %20 = memref.load %arg5[%19, %16] : memref<?x30xf64>
            %21 = arith.subf %18, %20 : f64
            %22 = arith.mulf %21, %cst_0 : f64
            %23 = arith.subf %17, %22 : f64
            memref.store %23, %arg4[%7, %16] : memref<?x30xf64>
            %24 = arith.addi %8, %c2 : index
            %25 = memref.load %arg4[%7, %24] : memref<?x30xf64>
            %26 = memref.load %arg5[%7, %24] : memref<?x30xf64>
            %27 = arith.addi %7, %c-1 : index
            %28 = memref.load %arg5[%27, %24] : memref<?x30xf64>
            %29 = arith.subf %26, %28 : f64
            %30 = arith.mulf %29, %cst_0 : f64
            %31 = arith.subf %25, %30 : f64
            memref.store %31, %arg4[%7, %24] : memref<?x30xf64>
            %32 = arith.addi %8, %c3 : index
            %33 = memref.load %arg4[%7, %32] : memref<?x30xf64>
            %34 = memref.load %arg5[%7, %32] : memref<?x30xf64>
            %35 = arith.addi %7, %c-1 : index
            %36 = memref.load %arg5[%35, %32] : memref<?x30xf64>
            %37 = arith.subf %34, %36 : f64
            %38 = arith.mulf %37, %cst_0 : f64
            %39 = arith.subf %33, %38 : f64
            memref.store %39, %arg4[%7, %32] : memref<?x30xf64>
          }
          scf.for %arg10 = %c0 to %c2 step %c1 {
            %8 = arith.addi %arg10, %c28 : index
            %9 = memref.load %arg4[%7, %8] : memref<?x30xf64>
            %10 = memref.load %arg5[%7, %8] : memref<?x30xf64>
            %11 = arith.addi %7, %c-1 : index
            %12 = memref.load %arg5[%11, %8] : memref<?x30xf64>
            %13 = arith.subf %10, %12 : f64
            %14 = arith.mulf %13, %cst_0 : f64
            %15 = arith.subf %9, %14 : f64
            memref.store %15, %arg4[%7, %8] : memref<?x30xf64>
          }
        }
        scf.for %arg9 = %c0 to %c20 step %c1 {
          scf.for %arg10 = %c0 to %c7 step %c1 {
            %13 = arith.muli %arg10, %c4 : index
            %14 = arith.addi %13, %c1 : index
            %15 = memref.load %arg3[%arg9, %14] : memref<?x30xf64>
            %16 = memref.load %arg5[%arg9, %14] : memref<?x30xf64>
            %17 = arith.addi %14, %c-1 : index
            %18 = memref.load %arg5[%arg9, %17] : memref<?x30xf64>
            %19 = arith.subf %16, %18 : f64
            %20 = arith.mulf %19, %cst_0 : f64
            %21 = arith.subf %15, %20 : f64
            memref.store %21, %arg3[%arg9, %14] : memref<?x30xf64>
            %22 = arith.addi %14, %c1 : index
            %23 = memref.load %arg3[%arg9, %22] : memref<?x30xf64>
            %24 = memref.load %arg5[%arg9, %22] : memref<?x30xf64>
            %25 = arith.addi %22, %c-1 : index
            %26 = memref.load %arg5[%arg9, %25] : memref<?x30xf64>
            %27 = arith.subf %24, %26 : f64
            %28 = arith.mulf %27, %cst_0 : f64
            %29 = arith.subf %23, %28 : f64
            memref.store %29, %arg3[%arg9, %22] : memref<?x30xf64>
            %30 = arith.addi %14, %c2 : index
            %31 = memref.load %arg3[%arg9, %30] : memref<?x30xf64>
            %32 = memref.load %arg5[%arg9, %30] : memref<?x30xf64>
            %33 = arith.addi %30, %c-1 : index
            %34 = memref.load %arg5[%arg9, %33] : memref<?x30xf64>
            %35 = arith.subf %32, %34 : f64
            %36 = arith.mulf %35, %cst_0 : f64
            %37 = arith.subf %31, %36 : f64
            memref.store %37, %arg3[%arg9, %30] : memref<?x30xf64>
            %38 = arith.addi %14, %c3 : index
            %39 = memref.load %arg3[%arg9, %38] : memref<?x30xf64>
            %40 = memref.load %arg5[%arg9, %38] : memref<?x30xf64>
            %41 = arith.addi %38, %c-1 : index
            %42 = memref.load %arg5[%arg9, %41] : memref<?x30xf64>
            %43 = arith.subf %40, %42 : f64
            %44 = arith.mulf %43, %cst_0 : f64
            %45 = arith.subf %39, %44 : f64
            memref.store %45, %arg3[%arg9, %38] : memref<?x30xf64>
          }
          %7 = memref.load %arg3[%arg9, %c29] : memref<?x30xf64>
          %8 = memref.load %arg5[%arg9, %c29] : memref<?x30xf64>
          %9 = memref.load %arg5[%arg9, %c28] : memref<?x30xf64>
          %10 = arith.subf %8, %9 : f64
          %11 = arith.mulf %10, %cst_0 : f64
          %12 = arith.subf %7, %11 : f64
          memref.store %12, %arg3[%arg9, %c29] : memref<?x30xf64>
        }
        scf.for %arg9 = %c0 to %c19 step %c1 {
          scf.for %arg10 = %c0 to %c7 step %c1 {
            %18 = arith.muli %arg10, %c4 : index
            %19 = memref.load %arg5[%arg9, %18] : memref<?x30xf64>
            %20 = arith.addi %18, %c1 : index
            %21 = memref.load %arg3[%arg9, %20] : memref<?x30xf64>
            %22 = memref.load %arg3[%arg9, %18] : memref<?x30xf64>
            %23 = arith.subf %21, %22 : f64
            %24 = arith.addi %arg9, %c1 : index
            %25 = memref.load %arg4[%24, %18] : memref<?x30xf64>
            %26 = arith.addf %23, %25 : f64
            %27 = memref.load %arg4[%arg9, %18] : memref<?x30xf64>
            %28 = arith.subf %26, %27 : f64
            %29 = arith.mulf %28, %cst : f64
            %30 = arith.subf %19, %29 : f64
            memref.store %30, %arg5[%arg9, %18] : memref<?x30xf64>
            %31 = arith.addi %18, %c1 : index
            %32 = memref.load %arg5[%arg9, %31] : memref<?x30xf64>
            %33 = arith.addi %31, %c1 : index
            %34 = memref.load %arg3[%arg9, %33] : memref<?x30xf64>
            %35 = memref.load %arg3[%arg9, %31] : memref<?x30xf64>
            %36 = arith.subf %34, %35 : f64
            %37 = arith.addi %arg9, %c1 : index
            %38 = memref.load %arg4[%37, %31] : memref<?x30xf64>
            %39 = arith.addf %36, %38 : f64
            %40 = memref.load %arg4[%arg9, %31] : memref<?x30xf64>
            %41 = arith.subf %39, %40 : f64
            %42 = arith.mulf %41, %cst : f64
            %43 = arith.subf %32, %42 : f64
            memref.store %43, %arg5[%arg9, %31] : memref<?x30xf64>
            %44 = arith.addi %18, %c2 : index
            %45 = memref.load %arg5[%arg9, %44] : memref<?x30xf64>
            %46 = arith.addi %44, %c1 : index
            %47 = memref.load %arg3[%arg9, %46] : memref<?x30xf64>
            %48 = memref.load %arg3[%arg9, %44] : memref<?x30xf64>
            %49 = arith.subf %47, %48 : f64
            %50 = arith.addi %arg9, %c1 : index
            %51 = memref.load %arg4[%50, %44] : memref<?x30xf64>
            %52 = arith.addf %49, %51 : f64
            %53 = memref.load %arg4[%arg9, %44] : memref<?x30xf64>
            %54 = arith.subf %52, %53 : f64
            %55 = arith.mulf %54, %cst : f64
            %56 = arith.subf %45, %55 : f64
            memref.store %56, %arg5[%arg9, %44] : memref<?x30xf64>
            %57 = arith.addi %18, %c3 : index
            %58 = memref.load %arg5[%arg9, %57] : memref<?x30xf64>
            %59 = arith.addi %57, %c1 : index
            %60 = memref.load %arg3[%arg9, %59] : memref<?x30xf64>
            %61 = memref.load %arg3[%arg9, %57] : memref<?x30xf64>
            %62 = arith.subf %60, %61 : f64
            %63 = arith.addi %arg9, %c1 : index
            %64 = memref.load %arg4[%63, %57] : memref<?x30xf64>
            %65 = arith.addf %62, %64 : f64
            %66 = memref.load %arg4[%arg9, %57] : memref<?x30xf64>
            %67 = arith.subf %65, %66 : f64
            %68 = arith.mulf %67, %cst : f64
            %69 = arith.subf %58, %68 : f64
            memref.store %69, %arg5[%arg9, %57] : memref<?x30xf64>
          }
          %7 = memref.load %arg5[%arg9, %c28] : memref<?x30xf64>
          %8 = memref.load %arg3[%arg9, %c29] : memref<?x30xf64>
          %9 = memref.load %arg3[%arg9, %c28] : memref<?x30xf64>
          %10 = arith.subf %8, %9 : f64
          %11 = arith.addi %arg9, %c1 : index
          %12 = memref.load %arg4[%11, %c28] : memref<?x30xf64>
          %13 = arith.addf %10, %12 : f64
          %14 = memref.load %arg4[%arg9, %c28] : memref<?x30xf64>
          %15 = arith.subf %13, %14 : f64
          %16 = arith.mulf %15, %cst : f64
          %17 = arith.subf %7, %16 : f64
          memref.store %17, %arg5[%arg9, %c28] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

