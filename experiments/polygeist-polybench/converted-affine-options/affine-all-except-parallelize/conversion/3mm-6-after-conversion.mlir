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
    %c20 = arith.constant 20 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c5 = arith.constant 5 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    scf.for %arg12 = %c0 to %c16 step %c1 {
      scf.for %arg13 = %c0 to %c1 step %c1 {
        %0 = arith.addi %arg12, %arg13 : index
        scf.for %arg14 = %c0 to %c5 step %c1 {
          %1 = arith.muli %arg14, %c4 : index
          memref.store %cst, %arg11[%0, %1] : memref<?x22xf64>
          memref.store %cst, %arg8[%0, %1] : memref<?x22xf64>
          %2 = arith.addi %1, %c1 : index
          memref.store %cst, %arg11[%0, %2] : memref<?x22xf64>
          memref.store %cst, %arg8[%0, %2] : memref<?x22xf64>
          %3 = arith.addi %1, %c2 : index
          memref.store %cst, %arg11[%0, %3] : memref<?x22xf64>
          memref.store %cst, %arg8[%0, %3] : memref<?x22xf64>
          %4 = arith.addi %1, %c3 : index
          memref.store %cst, %arg11[%0, %4] : memref<?x22xf64>
          memref.store %cst, %arg8[%0, %4] : memref<?x22xf64>
        }
        scf.for %arg14 = %c0 to %c2 step %c1 {
          %1 = arith.addi %arg14, %c20 : index
          memref.store %cst, %arg11[%0, %1] : memref<?x22xf64>
          memref.store %cst, %arg8[%0, %1] : memref<?x22xf64>
        }
      }
    }
    scf.for %arg12 = %c0 to %c2 step %c1 {
      %0 = arith.addi %arg12, %c16 : index
      scf.for %arg13 = %c0 to %c1 step %c1 {
        %1 = arith.addi %0, %arg13 : index
        scf.for %arg14 = %c0 to %c5 step %c1 {
          %2 = arith.muli %arg14, %c4 : index
          memref.store %cst, %arg8[%1, %2] : memref<?x22xf64>
          %3 = arith.addi %2, %c1 : index
          memref.store %cst, %arg8[%1, %3] : memref<?x22xf64>
          %4 = arith.addi %2, %c2 : index
          memref.store %cst, %arg8[%1, %4] : memref<?x22xf64>
          %5 = arith.addi %2, %c3 : index
          memref.store %cst, %arg8[%1, %5] : memref<?x22xf64>
        }
        scf.for %arg14 = %c0 to %c2 step %c1 {
          %2 = arith.addi %arg14, %c20 : index
          memref.store %cst, %arg8[%1, %2] : memref<?x22xf64>
        }
      }
    }
    scf.for %arg12 = %c0 to %c18 step %c1 {
      scf.for %arg13 = %c0 to %c1 step %c1 {
        %0 = arith.addi %arg12, %arg13 : index
        scf.for %arg14 = %c0 to %c24 step %c1 {
          scf.for %arg15 = %c0 to %c1 step %c1 {
            %1 = arith.addi %arg14, %arg15 : index
            %2 = memref.load %arg9[%0, %1] : memref<?x24xf64>
            %3 = memref.load %arg9[%0, %1] : memref<?x24xf64>
            %4 = memref.load %arg9[%0, %1] : memref<?x24xf64>
            %5 = memref.load %arg9[%0, %1] : memref<?x24xf64>
            scf.for %arg16 = %c0 to %c5 step %c1 {
              %7 = arith.muli %arg16, %c4 : index
              %8 = memref.load %arg8[%0, %7] : memref<?x22xf64>
              %9 = memref.load %arg10[%1, %7] : memref<?x22xf64>
              %10 = arith.mulf %2, %9 : f64
              %11 = arith.addf %8, %10 : f64
              memref.store %11, %arg8[%0, %7] : memref<?x22xf64>
              %12 = arith.addi %7, %c1 : index
              %13 = memref.load %arg8[%0, %12] : memref<?x22xf64>
              %14 = memref.load %arg10[%1, %12] : memref<?x22xf64>
              %15 = arith.mulf %3, %14 : f64
              %16 = arith.addf %13, %15 : f64
              memref.store %16, %arg8[%0, %12] : memref<?x22xf64>
              %17 = arith.addi %7, %c2 : index
              %18 = memref.load %arg8[%0, %17] : memref<?x22xf64>
              %19 = memref.load %arg10[%1, %17] : memref<?x22xf64>
              %20 = arith.mulf %4, %19 : f64
              %21 = arith.addf %18, %20 : f64
              memref.store %21, %arg8[%0, %17] : memref<?x22xf64>
              %22 = arith.addi %7, %c3 : index
              %23 = memref.load %arg8[%0, %22] : memref<?x22xf64>
              %24 = memref.load %arg10[%1, %22] : memref<?x22xf64>
              %25 = arith.mulf %5, %24 : f64
              %26 = arith.addf %23, %25 : f64
              memref.store %26, %arg8[%0, %22] : memref<?x22xf64>
            }
            %6 = memref.load %arg9[%0, %1] : memref<?x24xf64>
            scf.for %arg16 = %c0 to %c2 step %c1 {
              %7 = arith.addi %arg16, %c20 : index
              %8 = memref.load %arg8[%0, %7] : memref<?x22xf64>
              %9 = memref.load %arg10[%1, %7] : memref<?x22xf64>
              %10 = arith.mulf %6, %9 : f64
              %11 = arith.addf %8, %10 : f64
              memref.store %11, %arg8[%0, %7] : memref<?x22xf64>
            }
          }
        }
      }
    }
    scf.for %arg12 = %c0 to %c16 step %c1 {
      scf.for %arg13 = %c0 to %c1 step %c1 {
        %0 = arith.addi %arg12, %arg13 : index
        scf.for %arg14 = %c0 to %c4 step %c1 {
          %1 = arith.muli %arg14, %c4 : index
          memref.store %cst, %arg5[%0, %1] : memref<?x18xf64>
          %2 = arith.addi %1, %c1 : index
          memref.store %cst, %arg5[%0, %2] : memref<?x18xf64>
          %3 = arith.addi %1, %c2 : index
          memref.store %cst, %arg5[%0, %3] : memref<?x18xf64>
          %4 = arith.addi %1, %c3 : index
          memref.store %cst, %arg5[%0, %4] : memref<?x18xf64>
        }
        scf.for %arg14 = %c0 to %c2 step %c1 {
          %1 = arith.addi %arg14, %c16 : index
          memref.store %cst, %arg5[%0, %1] : memref<?x18xf64>
        }
      }
    }
    scf.for %arg12 = %c0 to %c2 step %c1 {
      scf.for %arg13 = %c0 to %c1 step %c1 {
        %0 = arith.addi %arg12, %arg13 : index
        %1 = arith.cmpi eq, %0, %c0 : index
        scf.if %1 {
          scf.for %arg14 = %c0 to %c16 step %c1 {
            scf.for %arg15 = %c0 to %c18 step %c1 {
              scf.for %arg16 = %c0 to %c5 step %c1 {
                %14 = arith.muli %arg16, %c4 : index
                %15 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %16 = memref.load %arg6[%arg14, %14] : memref<?x20xf64>
                %17 = memref.load %arg7[%14, %arg15] : memref<?x18xf64>
                %18 = arith.mulf %16, %17 : f64
                %19 = arith.addf %15, %18 : f64
                memref.store %19, %arg5[%arg14, %arg15] : memref<?x18xf64>
                %20 = arith.addi %14, %c1 : index
                %21 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %22 = memref.load %arg6[%arg14, %20] : memref<?x20xf64>
                %23 = memref.load %arg7[%20, %arg15] : memref<?x18xf64>
                %24 = arith.mulf %22, %23 : f64
                %25 = arith.addf %21, %24 : f64
                memref.store %25, %arg5[%arg14, %arg15] : memref<?x18xf64>
                %26 = arith.addi %14, %c2 : index
                %27 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %28 = memref.load %arg6[%arg14, %26] : memref<?x20xf64>
                %29 = memref.load %arg7[%26, %arg15] : memref<?x18xf64>
                %30 = arith.mulf %28, %29 : f64
                %31 = arith.addf %27, %30 : f64
                memref.store %31, %arg5[%arg14, %arg15] : memref<?x18xf64>
                %32 = arith.addi %14, %c3 : index
                %33 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %34 = memref.load %arg6[%arg14, %32] : memref<?x20xf64>
                %35 = memref.load %arg7[%32, %arg15] : memref<?x18xf64>
                %36 = arith.mulf %34, %35 : f64
                %37 = arith.addf %33, %36 : f64
                memref.store %37, %arg5[%arg14, %arg15] : memref<?x18xf64>
              }
              %5 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %6 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %7 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %8 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              scf.for %arg16 = %c0 to %c3 step %c1 {
                %14 = arith.muli %arg16, %c4 : index
                %15 = arith.addi %14, %c19 : index
                %16 = arith.addi %15, %c-19 : index
                %17 = memref.load %arg11[%arg14, %16] : memref<?x22xf64>
                %18 = arith.addi %15, %c-19 : index
                %19 = memref.load %arg8[%arg15, %18] : memref<?x22xf64>
                %20 = arith.mulf %5, %19 : f64
                %21 = arith.addf %17, %20 : f64
                %22 = arith.addi %15, %c-19 : index
                memref.store %21, %arg11[%arg14, %22] : memref<?x22xf64>
                %23 = arith.addi %15, %c1 : index
                %24 = arith.addi %23, %c-19 : index
                %25 = memref.load %arg11[%arg14, %24] : memref<?x22xf64>
                %26 = arith.addi %23, %c-19 : index
                %27 = memref.load %arg8[%arg15, %26] : memref<?x22xf64>
                %28 = arith.mulf %6, %27 : f64
                %29 = arith.addf %25, %28 : f64
                %30 = arith.addi %23, %c-19 : index
                memref.store %29, %arg11[%arg14, %30] : memref<?x22xf64>
                %31 = arith.addi %15, %c2 : index
                %32 = arith.addi %31, %c-19 : index
                %33 = memref.load %arg11[%arg14, %32] : memref<?x22xf64>
                %34 = arith.addi %31, %c-19 : index
                %35 = memref.load %arg8[%arg15, %34] : memref<?x22xf64>
                %36 = arith.mulf %7, %35 : f64
                %37 = arith.addf %33, %36 : f64
                %38 = arith.addi %31, %c-19 : index
                memref.store %37, %arg11[%arg14, %38] : memref<?x22xf64>
                %39 = arith.addi %15, %c3 : index
                %40 = arith.addi %39, %c-19 : index
                %41 = memref.load %arg11[%arg14, %40] : memref<?x22xf64>
                %42 = arith.addi %39, %c-19 : index
                %43 = memref.load %arg8[%arg15, %42] : memref<?x22xf64>
                %44 = arith.mulf %8, %43 : f64
                %45 = arith.addf %41, %44 : f64
                %46 = arith.addi %39, %c-19 : index
                memref.store %45, %arg11[%arg14, %46] : memref<?x22xf64>
              }
              %9 = memref.load %arg11[%arg14, %c12] : memref<?x22xf64>
              %10 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %11 = memref.load %arg8[%arg15, %c12] : memref<?x22xf64>
              %12 = arith.mulf %10, %11 : f64
              %13 = arith.addf %9, %12 : f64
              memref.store %13, %arg11[%arg14, %c12] : memref<?x22xf64>
            }
          }
        }
        %2 = arith.addi %arg12, %arg13 : index
        %3 = arith.addi %2, %c-1 : index
        %4 = arith.cmpi eq, %3, %c0 : index
        scf.if %4 {
          scf.for %arg14 = %c0 to %c16 step %c1 {
            scf.for %arg15 = %c0 to %c18 step %c1 {
              %5 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %6 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %7 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %8 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              scf.for %arg16 = %c0 to %c2 step %c1 {
                %14 = arith.muli %arg16, %c4 : index
                %15 = arith.addi %14, %c32 : index
                %16 = arith.addi %15, %c-19 : index
                %17 = memref.load %arg11[%arg14, %16] : memref<?x22xf64>
                %18 = arith.addi %15, %c-19 : index
                %19 = memref.load %arg8[%arg15, %18] : memref<?x22xf64>
                %20 = arith.mulf %5, %19 : f64
                %21 = arith.addf %17, %20 : f64
                %22 = arith.addi %15, %c-19 : index
                memref.store %21, %arg11[%arg14, %22] : memref<?x22xf64>
                %23 = arith.addi %15, %c1 : index
                %24 = arith.addi %23, %c-19 : index
                %25 = memref.load %arg11[%arg14, %24] : memref<?x22xf64>
                %26 = arith.addi %23, %c-19 : index
                %27 = memref.load %arg8[%arg15, %26] : memref<?x22xf64>
                %28 = arith.mulf %6, %27 : f64
                %29 = arith.addf %25, %28 : f64
                %30 = arith.addi %23, %c-19 : index
                memref.store %29, %arg11[%arg14, %30] : memref<?x22xf64>
                %31 = arith.addi %15, %c2 : index
                %32 = arith.addi %31, %c-19 : index
                %33 = memref.load %arg11[%arg14, %32] : memref<?x22xf64>
                %34 = arith.addi %31, %c-19 : index
                %35 = memref.load %arg8[%arg15, %34] : memref<?x22xf64>
                %36 = arith.mulf %7, %35 : f64
                %37 = arith.addf %33, %36 : f64
                %38 = arith.addi %31, %c-19 : index
                memref.store %37, %arg11[%arg14, %38] : memref<?x22xf64>
                %39 = arith.addi %15, %c3 : index
                %40 = arith.addi %39, %c-19 : index
                %41 = memref.load %arg11[%arg14, %40] : memref<?x22xf64>
                %42 = arith.addi %39, %c-19 : index
                %43 = memref.load %arg8[%arg15, %42] : memref<?x22xf64>
                %44 = arith.mulf %8, %43 : f64
                %45 = arith.addf %41, %44 : f64
                %46 = arith.addi %39, %c-19 : index
                memref.store %45, %arg11[%arg14, %46] : memref<?x22xf64>
              }
              %9 = memref.load %arg11[%arg14, %c21] : memref<?x22xf64>
              %10 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %11 = memref.load %arg8[%arg15, %c21] : memref<?x22xf64>
              %12 = arith.mulf %10, %11 : f64
              %13 = arith.addf %9, %12 : f64
              memref.store %13, %arg11[%arg14, %c21] : memref<?x22xf64>
            }
          }
        }
      }
    }
    return
  }
}

