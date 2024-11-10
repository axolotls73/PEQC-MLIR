module {
  func.func @kernel_fdtd_2d(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?x30xf64>, %arg6: memref<?xf64>) {
    %c-1 = arith.constant -1 : index
    %c19 = arith.constant 19 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c7 = arith.constant 7 : index
    %c28 = arith.constant 28 : index
    %c29 = arith.constant 29 : index
    %cst = arith.constant 0.69999999999999996 : f64
    %cst_0 = arith.constant 5.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %c20 step %c1 {
      scf.for %arg8 = %c0 to %c1 step %c1 {
        %0 = arith.addi %arg7, %arg8 : index
        %1 = memref.load %arg6[%0] : memref<?xf64>
        %2 = memref.load %arg6[%0] : memref<?xf64>
        %3 = memref.load %arg6[%0] : memref<?xf64>
        %4 = memref.load %arg6[%0] : memref<?xf64>
        scf.for %arg9 = %c0 to %c7 step %c1 {
          %6 = arith.muli %arg9, %c4 : index
          memref.store %1, %arg4[%c0, %6] : memref<?x30xf64>
          %7 = arith.addi %6, %c1 : index
          memref.store %2, %arg4[%c0, %7] : memref<?x30xf64>
          %8 = arith.addi %6, %c2 : index
          memref.store %3, %arg4[%c0, %8] : memref<?x30xf64>
          %9 = arith.addi %6, %c3 : index
          memref.store %4, %arg4[%c0, %9] : memref<?x30xf64>
        }
        %5 = memref.load %arg6[%0] : memref<?xf64>
        scf.for %arg9 = %c0 to %c2 step %c1 {
          %6 = arith.addi %arg9, %c28 : index
          memref.store %5, %arg4[%c0, %6] : memref<?x30xf64>
        }
        scf.for %arg9 = %c0 to %c19 step %c1 {
          %6 = arith.addi %arg9, %c1 : index
          scf.for %arg10 = %c0 to %c7 step %c1 {
            %7 = arith.muli %arg10, %c4 : index
            %8 = memref.load %arg4[%6, %7] : memref<?x30xf64>
            %9 = memref.load %arg5[%6, %7] : memref<?x30xf64>
            %10 = arith.addi %6, %c-1 : index
            %11 = memref.load %arg5[%10, %7] : memref<?x30xf64>
            %12 = arith.subf %9, %11 : f64
            %13 = arith.mulf %12, %cst_0 : f64
            %14 = arith.subf %8, %13 : f64
            memref.store %14, %arg4[%6, %7] : memref<?x30xf64>
            %15 = arith.addi %7, %c1 : index
            %16 = memref.load %arg4[%6, %15] : memref<?x30xf64>
            %17 = memref.load %arg5[%6, %15] : memref<?x30xf64>
            %18 = arith.addi %6, %c-1 : index
            %19 = memref.load %arg5[%18, %15] : memref<?x30xf64>
            %20 = arith.subf %17, %19 : f64
            %21 = arith.mulf %20, %cst_0 : f64
            %22 = arith.subf %16, %21 : f64
            memref.store %22, %arg4[%6, %15] : memref<?x30xf64>
            %23 = arith.addi %7, %c2 : index
            %24 = memref.load %arg4[%6, %23] : memref<?x30xf64>
            %25 = memref.load %arg5[%6, %23] : memref<?x30xf64>
            %26 = arith.addi %6, %c-1 : index
            %27 = memref.load %arg5[%26, %23] : memref<?x30xf64>
            %28 = arith.subf %25, %27 : f64
            %29 = arith.mulf %28, %cst_0 : f64
            %30 = arith.subf %24, %29 : f64
            memref.store %30, %arg4[%6, %23] : memref<?x30xf64>
            %31 = arith.addi %7, %c3 : index
            %32 = memref.load %arg4[%6, %31] : memref<?x30xf64>
            %33 = memref.load %arg5[%6, %31] : memref<?x30xf64>
            %34 = arith.addi %6, %c-1 : index
            %35 = memref.load %arg5[%34, %31] : memref<?x30xf64>
            %36 = arith.subf %33, %35 : f64
            %37 = arith.mulf %36, %cst_0 : f64
            %38 = arith.subf %32, %37 : f64
            memref.store %38, %arg4[%6, %31] : memref<?x30xf64>
          }
          scf.for %arg10 = %c0 to %c2 step %c1 {
            %7 = arith.addi %arg10, %c28 : index
            %8 = memref.load %arg4[%6, %7] : memref<?x30xf64>
            %9 = memref.load %arg5[%6, %7] : memref<?x30xf64>
            %10 = arith.addi %6, %c-1 : index
            %11 = memref.load %arg5[%10, %7] : memref<?x30xf64>
            %12 = arith.subf %9, %11 : f64
            %13 = arith.mulf %12, %cst_0 : f64
            %14 = arith.subf %8, %13 : f64
            memref.store %14, %arg4[%6, %7] : memref<?x30xf64>
          }
        }
        scf.for %arg9 = %c0 to %c20 step %c1 {
          scf.for %arg10 = %c0 to %c7 step %c1 {
            %12 = arith.muli %arg10, %c4 : index
            %13 = arith.addi %12, %c1 : index
            %14 = memref.load %arg3[%arg9, %13] : memref<?x30xf64>
            %15 = memref.load %arg5[%arg9, %13] : memref<?x30xf64>
            %16 = arith.addi %13, %c-1 : index
            %17 = memref.load %arg5[%arg9, %16] : memref<?x30xf64>
            %18 = arith.subf %15, %17 : f64
            %19 = arith.mulf %18, %cst_0 : f64
            %20 = arith.subf %14, %19 : f64
            memref.store %20, %arg3[%arg9, %13] : memref<?x30xf64>
            %21 = arith.addi %13, %c1 : index
            %22 = memref.load %arg3[%arg9, %21] : memref<?x30xf64>
            %23 = memref.load %arg5[%arg9, %21] : memref<?x30xf64>
            %24 = arith.addi %21, %c-1 : index
            %25 = memref.load %arg5[%arg9, %24] : memref<?x30xf64>
            %26 = arith.subf %23, %25 : f64
            %27 = arith.mulf %26, %cst_0 : f64
            %28 = arith.subf %22, %27 : f64
            memref.store %28, %arg3[%arg9, %21] : memref<?x30xf64>
            %29 = arith.addi %13, %c2 : index
            %30 = memref.load %arg3[%arg9, %29] : memref<?x30xf64>
            %31 = memref.load %arg5[%arg9, %29] : memref<?x30xf64>
            %32 = arith.addi %29, %c-1 : index
            %33 = memref.load %arg5[%arg9, %32] : memref<?x30xf64>
            %34 = arith.subf %31, %33 : f64
            %35 = arith.mulf %34, %cst_0 : f64
            %36 = arith.subf %30, %35 : f64
            memref.store %36, %arg3[%arg9, %29] : memref<?x30xf64>
            %37 = arith.addi %13, %c3 : index
            %38 = memref.load %arg3[%arg9, %37] : memref<?x30xf64>
            %39 = memref.load %arg5[%arg9, %37] : memref<?x30xf64>
            %40 = arith.addi %37, %c-1 : index
            %41 = memref.load %arg5[%arg9, %40] : memref<?x30xf64>
            %42 = arith.subf %39, %41 : f64
            %43 = arith.mulf %42, %cst_0 : f64
            %44 = arith.subf %38, %43 : f64
            memref.store %44, %arg3[%arg9, %37] : memref<?x30xf64>
          }
          %6 = memref.load %arg3[%arg9, %c29] : memref<?x30xf64>
          %7 = memref.load %arg5[%arg9, %c29] : memref<?x30xf64>
          %8 = memref.load %arg5[%arg9, %c28] : memref<?x30xf64>
          %9 = arith.subf %7, %8 : f64
          %10 = arith.mulf %9, %cst_0 : f64
          %11 = arith.subf %6, %10 : f64
          memref.store %11, %arg3[%arg9, %c29] : memref<?x30xf64>
        }
        scf.for %arg9 = %c0 to %c19 step %c1 {
          scf.for %arg10 = %c0 to %c7 step %c1 {
            %17 = arith.muli %arg10, %c4 : index
            %18 = memref.load %arg5[%arg9, %17] : memref<?x30xf64>
            %19 = arith.addi %17, %c1 : index
            %20 = memref.load %arg3[%arg9, %19] : memref<?x30xf64>
            %21 = memref.load %arg3[%arg9, %17] : memref<?x30xf64>
            %22 = arith.subf %20, %21 : f64
            %23 = arith.addi %arg9, %c1 : index
            %24 = memref.load %arg4[%23, %17] : memref<?x30xf64>
            %25 = arith.addf %22, %24 : f64
            %26 = memref.load %arg4[%arg9, %17] : memref<?x30xf64>
            %27 = arith.subf %25, %26 : f64
            %28 = arith.mulf %27, %cst : f64
            %29 = arith.subf %18, %28 : f64
            memref.store %29, %arg5[%arg9, %17] : memref<?x30xf64>
            %30 = arith.addi %17, %c1 : index
            %31 = memref.load %arg5[%arg9, %30] : memref<?x30xf64>
            %32 = arith.addi %30, %c1 : index
            %33 = memref.load %arg3[%arg9, %32] : memref<?x30xf64>
            %34 = memref.load %arg3[%arg9, %30] : memref<?x30xf64>
            %35 = arith.subf %33, %34 : f64
            %36 = arith.addi %arg9, %c1 : index
            %37 = memref.load %arg4[%36, %30] : memref<?x30xf64>
            %38 = arith.addf %35, %37 : f64
            %39 = memref.load %arg4[%arg9, %30] : memref<?x30xf64>
            %40 = arith.subf %38, %39 : f64
            %41 = arith.mulf %40, %cst : f64
            %42 = arith.subf %31, %41 : f64
            memref.store %42, %arg5[%arg9, %30] : memref<?x30xf64>
            %43 = arith.addi %17, %c2 : index
            %44 = memref.load %arg5[%arg9, %43] : memref<?x30xf64>
            %45 = arith.addi %43, %c1 : index
            %46 = memref.load %arg3[%arg9, %45] : memref<?x30xf64>
            %47 = memref.load %arg3[%arg9, %43] : memref<?x30xf64>
            %48 = arith.subf %46, %47 : f64
            %49 = arith.addi %arg9, %c1 : index
            %50 = memref.load %arg4[%49, %43] : memref<?x30xf64>
            %51 = arith.addf %48, %50 : f64
            %52 = memref.load %arg4[%arg9, %43] : memref<?x30xf64>
            %53 = arith.subf %51, %52 : f64
            %54 = arith.mulf %53, %cst : f64
            %55 = arith.subf %44, %54 : f64
            memref.store %55, %arg5[%arg9, %43] : memref<?x30xf64>
            %56 = arith.addi %17, %c3 : index
            %57 = memref.load %arg5[%arg9, %56] : memref<?x30xf64>
            %58 = arith.addi %56, %c1 : index
            %59 = memref.load %arg3[%arg9, %58] : memref<?x30xf64>
            %60 = memref.load %arg3[%arg9, %56] : memref<?x30xf64>
            %61 = arith.subf %59, %60 : f64
            %62 = arith.addi %arg9, %c1 : index
            %63 = memref.load %arg4[%62, %56] : memref<?x30xf64>
            %64 = arith.addf %61, %63 : f64
            %65 = memref.load %arg4[%arg9, %56] : memref<?x30xf64>
            %66 = arith.subf %64, %65 : f64
            %67 = arith.mulf %66, %cst : f64
            %68 = arith.subf %57, %67 : f64
            memref.store %68, %arg5[%arg9, %56] : memref<?x30xf64>
          }
          %6 = memref.load %arg5[%arg9, %c28] : memref<?x30xf64>
          %7 = memref.load %arg3[%arg9, %c29] : memref<?x30xf64>
          %8 = memref.load %arg3[%arg9, %c28] : memref<?x30xf64>
          %9 = arith.subf %7, %8 : f64
          %10 = arith.addi %arg9, %c1 : index
          %11 = memref.load %arg4[%10, %c28] : memref<?x30xf64>
          %12 = arith.addf %9, %11 : f64
          %13 = memref.load %arg4[%arg9, %c28] : memref<?x30xf64>
          %14 = arith.subf %12, %13 : f64
          %15 = arith.mulf %14, %cst : f64
          %16 = arith.subf %6, %15 : f64
          memref.store %16, %arg5[%arg9, %c28] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

