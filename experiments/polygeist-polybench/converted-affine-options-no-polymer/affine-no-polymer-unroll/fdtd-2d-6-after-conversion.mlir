module {
  func.func @kernel_fdtd_2d(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?x30xf64>, %arg6: memref<?xf64>) {
    %c19 = arith.constant 19 : index
    %c-1 = arith.constant -1 : index
    %c30 = arith.constant 30 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c28 = arith.constant 28 : index
    %c29 = arith.constant 29 : index
    %cst = arith.constant 0.69999999999999996 : f64
    %cst_0 = arith.constant 5.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %c20 step %c1 {
      scf.for %arg8 = %c0 to %c28 step %c4 {
        %0 = memref.load %arg6[%arg7] : memref<?xf64>
        memref.store %0, %arg4[%c0, %arg8] : memref<?x30xf64>
        %1 = arith.addi %arg8, %c1 : index
        %2 = memref.load %arg6[%arg7] : memref<?xf64>
        memref.store %2, %arg4[%c0, %1] : memref<?x30xf64>
        %3 = arith.addi %arg8, %c2 : index
        %4 = memref.load %arg6[%arg7] : memref<?xf64>
        memref.store %4, %arg4[%c0, %3] : memref<?x30xf64>
        %5 = arith.addi %arg8, %c3 : index
        %6 = memref.load %arg6[%arg7] : memref<?xf64>
        memref.store %6, %arg4[%c0, %5] : memref<?x30xf64>
      }
      scf.for %arg8 = %c28 to %c30 step %c1 {
        %0 = memref.load %arg6[%arg7] : memref<?xf64>
        memref.store %0, %arg4[%c0, %arg8] : memref<?x30xf64>
      }
      scf.for %arg8 = %c1 to %c20 step %c1 {
        scf.for %arg9 = %c0 to %c28 step %c4 {
          %0 = memref.load %arg4[%arg8, %arg9] : memref<?x30xf64>
          %1 = memref.load %arg5[%arg8, %arg9] : memref<?x30xf64>
          %2 = arith.addi %arg8, %c-1 : index
          %3 = memref.load %arg5[%2, %arg9] : memref<?x30xf64>
          %4 = arith.subf %1, %3 : f64
          %5 = arith.mulf %4, %cst_0 : f64
          %6 = arith.subf %0, %5 : f64
          memref.store %6, %arg4[%arg8, %arg9] : memref<?x30xf64>
          %7 = arith.addi %arg9, %c1 : index
          %8 = memref.load %arg4[%arg8, %7] : memref<?x30xf64>
          %9 = memref.load %arg5[%arg8, %7] : memref<?x30xf64>
          %10 = arith.addi %arg8, %c-1 : index
          %11 = memref.load %arg5[%10, %7] : memref<?x30xf64>
          %12 = arith.subf %9, %11 : f64
          %13 = arith.mulf %12, %cst_0 : f64
          %14 = arith.subf %8, %13 : f64
          memref.store %14, %arg4[%arg8, %7] : memref<?x30xf64>
          %15 = arith.addi %arg9, %c2 : index
          %16 = memref.load %arg4[%arg8, %15] : memref<?x30xf64>
          %17 = memref.load %arg5[%arg8, %15] : memref<?x30xf64>
          %18 = arith.addi %arg8, %c-1 : index
          %19 = memref.load %arg5[%18, %15] : memref<?x30xf64>
          %20 = arith.subf %17, %19 : f64
          %21 = arith.mulf %20, %cst_0 : f64
          %22 = arith.subf %16, %21 : f64
          memref.store %22, %arg4[%arg8, %15] : memref<?x30xf64>
          %23 = arith.addi %arg9, %c3 : index
          %24 = memref.load %arg4[%arg8, %23] : memref<?x30xf64>
          %25 = memref.load %arg5[%arg8, %23] : memref<?x30xf64>
          %26 = arith.addi %arg8, %c-1 : index
          %27 = memref.load %arg5[%26, %23] : memref<?x30xf64>
          %28 = arith.subf %25, %27 : f64
          %29 = arith.mulf %28, %cst_0 : f64
          %30 = arith.subf %24, %29 : f64
          memref.store %30, %arg4[%arg8, %23] : memref<?x30xf64>
        }
        scf.for %arg9 = %c28 to %c30 step %c1 {
          %0 = memref.load %arg4[%arg8, %arg9] : memref<?x30xf64>
          %1 = memref.load %arg5[%arg8, %arg9] : memref<?x30xf64>
          %2 = arith.addi %arg8, %c-1 : index
          %3 = memref.load %arg5[%2, %arg9] : memref<?x30xf64>
          %4 = arith.subf %1, %3 : f64
          %5 = arith.mulf %4, %cst_0 : f64
          %6 = arith.subf %0, %5 : f64
          memref.store %6, %arg4[%arg8, %arg9] : memref<?x30xf64>
        }
      }
      scf.for %arg8 = %c0 to %c20 step %c1 {
        scf.for %arg9 = %c1 to %c29 step %c4 {
          %6 = memref.load %arg3[%arg8, %arg9] : memref<?x30xf64>
          %7 = memref.load %arg5[%arg8, %arg9] : memref<?x30xf64>
          %8 = arith.addi %arg9, %c-1 : index
          %9 = memref.load %arg5[%arg8, %8] : memref<?x30xf64>
          %10 = arith.subf %7, %9 : f64
          %11 = arith.mulf %10, %cst_0 : f64
          %12 = arith.subf %6, %11 : f64
          memref.store %12, %arg3[%arg8, %arg9] : memref<?x30xf64>
          %13 = arith.addi %arg9, %c1 : index
          %14 = memref.load %arg3[%arg8, %13] : memref<?x30xf64>
          %15 = memref.load %arg5[%arg8, %13] : memref<?x30xf64>
          %16 = arith.addi %13, %c-1 : index
          %17 = memref.load %arg5[%arg8, %16] : memref<?x30xf64>
          %18 = arith.subf %15, %17 : f64
          %19 = arith.mulf %18, %cst_0 : f64
          %20 = arith.subf %14, %19 : f64
          memref.store %20, %arg3[%arg8, %13] : memref<?x30xf64>
          %21 = arith.addi %arg9, %c2 : index
          %22 = memref.load %arg3[%arg8, %21] : memref<?x30xf64>
          %23 = memref.load %arg5[%arg8, %21] : memref<?x30xf64>
          %24 = arith.addi %21, %c-1 : index
          %25 = memref.load %arg5[%arg8, %24] : memref<?x30xf64>
          %26 = arith.subf %23, %25 : f64
          %27 = arith.mulf %26, %cst_0 : f64
          %28 = arith.subf %22, %27 : f64
          memref.store %28, %arg3[%arg8, %21] : memref<?x30xf64>
          %29 = arith.addi %arg9, %c3 : index
          %30 = memref.load %arg3[%arg8, %29] : memref<?x30xf64>
          %31 = memref.load %arg5[%arg8, %29] : memref<?x30xf64>
          %32 = arith.addi %29, %c-1 : index
          %33 = memref.load %arg5[%arg8, %32] : memref<?x30xf64>
          %34 = arith.subf %31, %33 : f64
          %35 = arith.mulf %34, %cst_0 : f64
          %36 = arith.subf %30, %35 : f64
          memref.store %36, %arg3[%arg8, %29] : memref<?x30xf64>
        }
        %0 = memref.load %arg3[%arg8, %c29] : memref<?x30xf64>
        %1 = memref.load %arg5[%arg8, %c29] : memref<?x30xf64>
        %2 = memref.load %arg5[%arg8, %c28] : memref<?x30xf64>
        %3 = arith.subf %1, %2 : f64
        %4 = arith.mulf %3, %cst_0 : f64
        %5 = arith.subf %0, %4 : f64
        memref.store %5, %arg3[%arg8, %c29] : memref<?x30xf64>
      }
      scf.for %arg8 = %c0 to %c19 step %c1 {
        scf.for %arg9 = %c0 to %c28 step %c4 {
          %11 = memref.load %arg5[%arg8, %arg9] : memref<?x30xf64>
          %12 = arith.addi %arg9, %c1 : index
          %13 = memref.load %arg3[%arg8, %12] : memref<?x30xf64>
          %14 = memref.load %arg3[%arg8, %arg9] : memref<?x30xf64>
          %15 = arith.subf %13, %14 : f64
          %16 = arith.addi %arg8, %c1 : index
          %17 = memref.load %arg4[%16, %arg9] : memref<?x30xf64>
          %18 = arith.addf %15, %17 : f64
          %19 = memref.load %arg4[%arg8, %arg9] : memref<?x30xf64>
          %20 = arith.subf %18, %19 : f64
          %21 = arith.mulf %20, %cst : f64
          %22 = arith.subf %11, %21 : f64
          memref.store %22, %arg5[%arg8, %arg9] : memref<?x30xf64>
          %23 = arith.addi %arg9, %c1 : index
          %24 = memref.load %arg5[%arg8, %23] : memref<?x30xf64>
          %25 = arith.addi %23, %c1 : index
          %26 = memref.load %arg3[%arg8, %25] : memref<?x30xf64>
          %27 = memref.load %arg3[%arg8, %23] : memref<?x30xf64>
          %28 = arith.subf %26, %27 : f64
          %29 = arith.addi %arg8, %c1 : index
          %30 = memref.load %arg4[%29, %23] : memref<?x30xf64>
          %31 = arith.addf %28, %30 : f64
          %32 = memref.load %arg4[%arg8, %23] : memref<?x30xf64>
          %33 = arith.subf %31, %32 : f64
          %34 = arith.mulf %33, %cst : f64
          %35 = arith.subf %24, %34 : f64
          memref.store %35, %arg5[%arg8, %23] : memref<?x30xf64>
          %36 = arith.addi %arg9, %c2 : index
          %37 = memref.load %arg5[%arg8, %36] : memref<?x30xf64>
          %38 = arith.addi %36, %c1 : index
          %39 = memref.load %arg3[%arg8, %38] : memref<?x30xf64>
          %40 = memref.load %arg3[%arg8, %36] : memref<?x30xf64>
          %41 = arith.subf %39, %40 : f64
          %42 = arith.addi %arg8, %c1 : index
          %43 = memref.load %arg4[%42, %36] : memref<?x30xf64>
          %44 = arith.addf %41, %43 : f64
          %45 = memref.load %arg4[%arg8, %36] : memref<?x30xf64>
          %46 = arith.subf %44, %45 : f64
          %47 = arith.mulf %46, %cst : f64
          %48 = arith.subf %37, %47 : f64
          memref.store %48, %arg5[%arg8, %36] : memref<?x30xf64>
          %49 = arith.addi %arg9, %c3 : index
          %50 = memref.load %arg5[%arg8, %49] : memref<?x30xf64>
          %51 = arith.addi %49, %c1 : index
          %52 = memref.load %arg3[%arg8, %51] : memref<?x30xf64>
          %53 = memref.load %arg3[%arg8, %49] : memref<?x30xf64>
          %54 = arith.subf %52, %53 : f64
          %55 = arith.addi %arg8, %c1 : index
          %56 = memref.load %arg4[%55, %49] : memref<?x30xf64>
          %57 = arith.addf %54, %56 : f64
          %58 = memref.load %arg4[%arg8, %49] : memref<?x30xf64>
          %59 = arith.subf %57, %58 : f64
          %60 = arith.mulf %59, %cst : f64
          %61 = arith.subf %50, %60 : f64
          memref.store %61, %arg5[%arg8, %49] : memref<?x30xf64>
        }
        %0 = memref.load %arg5[%arg8, %c28] : memref<?x30xf64>
        %1 = memref.load %arg3[%arg8, %c29] : memref<?x30xf64>
        %2 = memref.load %arg3[%arg8, %c28] : memref<?x30xf64>
        %3 = arith.subf %1, %2 : f64
        %4 = arith.addi %arg8, %c1 : index
        %5 = memref.load %arg4[%4, %c28] : memref<?x30xf64>
        %6 = arith.addf %3, %5 : f64
        %7 = memref.load %arg4[%arg8, %c28] : memref<?x30xf64>
        %8 = arith.subf %6, %7 : f64
        %9 = arith.mulf %8, %cst : f64
        %10 = arith.subf %0, %9 : f64
        memref.store %10, %arg5[%arg8, %c28] : memref<?x30xf64>
      }
    }
    return
  }
}

