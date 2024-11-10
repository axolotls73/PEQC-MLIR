module {
  func.func @kernel_3mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: memref<?x18xf64>, %arg6: memref<?x20xf64>, %arg7: memref<?x18xf64>, %arg8: memref<?x22xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x22xf64>, %arg11: memref<?x22xf64>) {
    %c21 = arith.constant 21 : index
    %c12 = arith.constant 12 : index
    %c32 = arith.constant 32 : index
    %c-1 = arith.constant -1 : index
    %c-19 = arith.constant -19 : index
    %c19 = arith.constant 19 : index
    %c24 = arith.constant 24 : index
    %c18 = arith.constant 18 : index
    %c22 = arith.constant 22 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c20 = arith.constant 20 : index
    %c40 = arith.constant 40 : index
    %c31 = arith.constant 31 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    scf.for %arg12 = %c0 to %c16 step %c1 {
      scf.for %arg13 = %c0 to %c20 step %c4 {
        memref.store %cst, %arg11[%arg12, %arg13] : memref<?x22xf64>
        memref.store %cst, %arg8[%arg12, %arg13] : memref<?x22xf64>
        %0 = arith.addi %arg13, %c1 : index
        memref.store %cst, %arg11[%arg12, %0] : memref<?x22xf64>
        memref.store %cst, %arg8[%arg12, %0] : memref<?x22xf64>
        %1 = arith.addi %arg13, %c2 : index
        memref.store %cst, %arg11[%arg12, %1] : memref<?x22xf64>
        memref.store %cst, %arg8[%arg12, %1] : memref<?x22xf64>
        %2 = arith.addi %arg13, %c3 : index
        memref.store %cst, %arg11[%arg12, %2] : memref<?x22xf64>
        memref.store %cst, %arg8[%arg12, %2] : memref<?x22xf64>
      }
      scf.for %arg13 = %c20 to %c22 step %c1 {
        memref.store %cst, %arg11[%arg12, %arg13] : memref<?x22xf64>
        memref.store %cst, %arg8[%arg12, %arg13] : memref<?x22xf64>
      }
    }
    scf.for %arg12 = %c16 to %c18 step %c1 {
      scf.for %arg13 = %c0 to %c20 step %c4 {
        memref.store %cst, %arg8[%arg12, %arg13] : memref<?x22xf64>
        %0 = arith.addi %arg13, %c1 : index
        memref.store %cst, %arg8[%arg12, %0] : memref<?x22xf64>
        %1 = arith.addi %arg13, %c2 : index
        memref.store %cst, %arg8[%arg12, %1] : memref<?x22xf64>
        %2 = arith.addi %arg13, %c3 : index
        memref.store %cst, %arg8[%arg12, %2] : memref<?x22xf64>
      }
      scf.for %arg13 = %c20 to %c22 step %c1 {
        memref.store %cst, %arg8[%arg12, %arg13] : memref<?x22xf64>
      }
    }
    scf.for %arg12 = %c0 to %c18 step %c1 {
      scf.for %arg13 = %c0 to %c24 step %c1 {
        scf.for %arg14 = %c0 to %c20 step %c4 {
          %0 = memref.load %arg8[%arg12, %arg14] : memref<?x22xf64>
          %1 = memref.load %arg9[%arg12, %arg13] : memref<?x24xf64>
          %2 = memref.load %arg10[%arg13, %arg14] : memref<?x22xf64>
          %3 = arith.mulf %1, %2 : f64
          %4 = arith.addf %0, %3 : f64
          memref.store %4, %arg8[%arg12, %arg14] : memref<?x22xf64>
          %5 = arith.addi %arg14, %c1 : index
          %6 = memref.load %arg8[%arg12, %5] : memref<?x22xf64>
          %7 = memref.load %arg9[%arg12, %arg13] : memref<?x24xf64>
          %8 = memref.load %arg10[%arg13, %5] : memref<?x22xf64>
          %9 = arith.mulf %7, %8 : f64
          %10 = arith.addf %6, %9 : f64
          memref.store %10, %arg8[%arg12, %5] : memref<?x22xf64>
          %11 = arith.addi %arg14, %c2 : index
          %12 = memref.load %arg8[%arg12, %11] : memref<?x22xf64>
          %13 = memref.load %arg9[%arg12, %arg13] : memref<?x24xf64>
          %14 = memref.load %arg10[%arg13, %11] : memref<?x22xf64>
          %15 = arith.mulf %13, %14 : f64
          %16 = arith.addf %12, %15 : f64
          memref.store %16, %arg8[%arg12, %11] : memref<?x22xf64>
          %17 = arith.addi %arg14, %c3 : index
          %18 = memref.load %arg8[%arg12, %17] : memref<?x22xf64>
          %19 = memref.load %arg9[%arg12, %arg13] : memref<?x24xf64>
          %20 = memref.load %arg10[%arg13, %17] : memref<?x22xf64>
          %21 = arith.mulf %19, %20 : f64
          %22 = arith.addf %18, %21 : f64
          memref.store %22, %arg8[%arg12, %17] : memref<?x22xf64>
        }
        scf.for %arg14 = %c20 to %c22 step %c1 {
          %0 = memref.load %arg8[%arg12, %arg14] : memref<?x22xf64>
          %1 = memref.load %arg9[%arg12, %arg13] : memref<?x24xf64>
          %2 = memref.load %arg10[%arg13, %arg14] : memref<?x22xf64>
          %3 = arith.mulf %1, %2 : f64
          %4 = arith.addf %0, %3 : f64
          memref.store %4, %arg8[%arg12, %arg14] : memref<?x22xf64>
        }
      }
    }
    scf.for %arg12 = %c0 to %c16 step %c1 {
      scf.for %arg13 = %c0 to %c16 step %c4 {
        memref.store %cst, %arg5[%arg12, %arg13] : memref<?x18xf64>
        %0 = arith.addi %arg13, %c1 : index
        memref.store %cst, %arg5[%arg12, %0] : memref<?x18xf64>
        %1 = arith.addi %arg13, %c2 : index
        memref.store %cst, %arg5[%arg12, %1] : memref<?x18xf64>
        %2 = arith.addi %arg13, %c3 : index
        memref.store %cst, %arg5[%arg12, %2] : memref<?x18xf64>
      }
      scf.for %arg13 = %c16 to %c18 step %c1 {
        memref.store %cst, %arg5[%arg12, %arg13] : memref<?x18xf64>
      }
    }
    scf.for %arg12 = %c0 to %c2 step %c1 {
      %0 = arith.cmpi eq, %arg12, %c0 : index
      scf.if %0 {
        scf.for %arg13 = %c0 to %c16 step %c1 {
          scf.for %arg14 = %c0 to %c18 step %c1 {
            scf.for %arg15 = %c0 to %c20 step %c4 {
              %8 = memref.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %9 = memref.load %arg6[%arg13, %arg15] : memref<?x20xf64>
              %10 = memref.load %arg7[%arg15, %arg14] : memref<?x18xf64>
              %11 = arith.mulf %9, %10 : f64
              %12 = arith.addf %8, %11 : f64
              memref.store %12, %arg5[%arg13, %arg14] : memref<?x18xf64>
              %13 = arith.addi %arg15, %c1 : index
              %14 = memref.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %15 = memref.load %arg6[%arg13, %13] : memref<?x20xf64>
              %16 = memref.load %arg7[%13, %arg14] : memref<?x18xf64>
              %17 = arith.mulf %15, %16 : f64
              %18 = arith.addf %14, %17 : f64
              memref.store %18, %arg5[%arg13, %arg14] : memref<?x18xf64>
              %19 = arith.addi %arg15, %c2 : index
              %20 = memref.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %21 = memref.load %arg6[%arg13, %19] : memref<?x20xf64>
              %22 = memref.load %arg7[%19, %arg14] : memref<?x18xf64>
              %23 = arith.mulf %21, %22 : f64
              %24 = arith.addf %20, %23 : f64
              memref.store %24, %arg5[%arg13, %arg14] : memref<?x18xf64>
              %25 = arith.addi %arg15, %c3 : index
              %26 = memref.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %27 = memref.load %arg6[%arg13, %25] : memref<?x20xf64>
              %28 = memref.load %arg7[%25, %arg14] : memref<?x18xf64>
              %29 = arith.mulf %27, %28 : f64
              %30 = arith.addf %26, %29 : f64
              memref.store %30, %arg5[%arg13, %arg14] : memref<?x18xf64>
            }
            scf.for %arg15 = %c19 to %c31 step %c4 {
              %8 = arith.addi %arg15, %c-19 : index
              %9 = memref.load %arg11[%arg13, %8] : memref<?x22xf64>
              %10 = memref.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %11 = arith.addi %arg15, %c-19 : index
              %12 = memref.load %arg8[%arg14, %11] : memref<?x22xf64>
              %13 = arith.mulf %10, %12 : f64
              %14 = arith.addf %9, %13 : f64
              %15 = arith.addi %arg15, %c-19 : index
              memref.store %14, %arg11[%arg13, %15] : memref<?x22xf64>
              %16 = arith.addi %arg15, %c1 : index
              %17 = arith.addi %16, %c-19 : index
              %18 = memref.load %arg11[%arg13, %17] : memref<?x22xf64>
              %19 = memref.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %20 = arith.addi %16, %c-19 : index
              %21 = memref.load %arg8[%arg14, %20] : memref<?x22xf64>
              %22 = arith.mulf %19, %21 : f64
              %23 = arith.addf %18, %22 : f64
              %24 = arith.addi %16, %c-19 : index
              memref.store %23, %arg11[%arg13, %24] : memref<?x22xf64>
              %25 = arith.addi %arg15, %c2 : index
              %26 = arith.addi %25, %c-19 : index
              %27 = memref.load %arg11[%arg13, %26] : memref<?x22xf64>
              %28 = memref.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %29 = arith.addi %25, %c-19 : index
              %30 = memref.load %arg8[%arg14, %29] : memref<?x22xf64>
              %31 = arith.mulf %28, %30 : f64
              %32 = arith.addf %27, %31 : f64
              %33 = arith.addi %25, %c-19 : index
              memref.store %32, %arg11[%arg13, %33] : memref<?x22xf64>
              %34 = arith.addi %arg15, %c3 : index
              %35 = arith.addi %34, %c-19 : index
              %36 = memref.load %arg11[%arg13, %35] : memref<?x22xf64>
              %37 = memref.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %38 = arith.addi %34, %c-19 : index
              %39 = memref.load %arg8[%arg14, %38] : memref<?x22xf64>
              %40 = arith.mulf %37, %39 : f64
              %41 = arith.addf %36, %40 : f64
              %42 = arith.addi %34, %c-19 : index
              memref.store %41, %arg11[%arg13, %42] : memref<?x22xf64>
            }
            %3 = memref.load %arg11[%arg13, %c12] : memref<?x22xf64>
            %4 = memref.load %arg5[%arg13, %arg14] : memref<?x18xf64>
            %5 = memref.load %arg8[%arg14, %c12] : memref<?x22xf64>
            %6 = arith.mulf %4, %5 : f64
            %7 = arith.addf %3, %6 : f64
            memref.store %7, %arg11[%arg13, %c12] : memref<?x22xf64>
          }
        }
      }
      %1 = arith.addi %arg12, %c-1 : index
      %2 = arith.cmpi eq, %1, %c0 : index
      scf.if %2 {
        scf.for %arg13 = %c0 to %c16 step %c1 {
          scf.for %arg14 = %c0 to %c18 step %c1 {
            scf.for %arg15 = %c32 to %c40 step %c4 {
              %8 = arith.addi %arg15, %c-19 : index
              %9 = memref.load %arg11[%arg13, %8] : memref<?x22xf64>
              %10 = memref.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %11 = arith.addi %arg15, %c-19 : index
              %12 = memref.load %arg8[%arg14, %11] : memref<?x22xf64>
              %13 = arith.mulf %10, %12 : f64
              %14 = arith.addf %9, %13 : f64
              %15 = arith.addi %arg15, %c-19 : index
              memref.store %14, %arg11[%arg13, %15] : memref<?x22xf64>
              %16 = arith.addi %arg15, %c1 : index
              %17 = arith.addi %16, %c-19 : index
              %18 = memref.load %arg11[%arg13, %17] : memref<?x22xf64>
              %19 = memref.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %20 = arith.addi %16, %c-19 : index
              %21 = memref.load %arg8[%arg14, %20] : memref<?x22xf64>
              %22 = arith.mulf %19, %21 : f64
              %23 = arith.addf %18, %22 : f64
              %24 = arith.addi %16, %c-19 : index
              memref.store %23, %arg11[%arg13, %24] : memref<?x22xf64>
              %25 = arith.addi %arg15, %c2 : index
              %26 = arith.addi %25, %c-19 : index
              %27 = memref.load %arg11[%arg13, %26] : memref<?x22xf64>
              %28 = memref.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %29 = arith.addi %25, %c-19 : index
              %30 = memref.load %arg8[%arg14, %29] : memref<?x22xf64>
              %31 = arith.mulf %28, %30 : f64
              %32 = arith.addf %27, %31 : f64
              %33 = arith.addi %25, %c-19 : index
              memref.store %32, %arg11[%arg13, %33] : memref<?x22xf64>
              %34 = arith.addi %arg15, %c3 : index
              %35 = arith.addi %34, %c-19 : index
              %36 = memref.load %arg11[%arg13, %35] : memref<?x22xf64>
              %37 = memref.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %38 = arith.addi %34, %c-19 : index
              %39 = memref.load %arg8[%arg14, %38] : memref<?x22xf64>
              %40 = arith.mulf %37, %39 : f64
              %41 = arith.addf %36, %40 : f64
              %42 = arith.addi %34, %c-19 : index
              memref.store %41, %arg11[%arg13, %42] : memref<?x22xf64>
            }
            %3 = memref.load %arg11[%arg13, %c21] : memref<?x22xf64>
            %4 = memref.load %arg5[%arg13, %arg14] : memref<?x18xf64>
            %5 = memref.load %arg8[%arg14, %c21] : memref<?x22xf64>
            %6 = arith.mulf %4, %5 : f64
            %7 = arith.addf %3, %6 : f64
            memref.store %7, %arg11[%arg13, %c21] : memref<?x22xf64>
          }
        }
      }
    }
    return
  }
}

