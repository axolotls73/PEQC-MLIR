module {
  func.func @kernel_3mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: memref<?x18xf64>, %arg6: memref<?x20xf64>, %arg7: memref<?x18xf64>, %arg8: memref<?x22xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x22xf64>, %arg11: memref<?x22xf64>) {
    %c21 = arith.constant 21 : index
    %c12 = arith.constant 12 : index
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
    %c16 = arith.constant 16 : index
    %c32 = arith.constant 32 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg12 = %c0 to %c1 step %c1 {
      %0 = arith.muli %arg12, %c32 : index
      scf.for %arg13 = %c0 to %c16 step %c1 {
        %1 = arith.addi %0, %arg13 : index
        scf.for %arg14 = %c0 to %c5 step %c1 {
          %2 = arith.muli %arg14, %c4 : index
          memref.store %cst, %arg11[%1, %2] : memref<?x22xf64>
          memref.store %cst, %arg8[%1, %2] : memref<?x22xf64>
          %3 = arith.addi %2, %c1 : index
          memref.store %cst, %arg11[%1, %3] : memref<?x22xf64>
          memref.store %cst, %arg8[%1, %3] : memref<?x22xf64>
          %4 = arith.addi %2, %c2 : index
          memref.store %cst, %arg11[%1, %4] : memref<?x22xf64>
          memref.store %cst, %arg8[%1, %4] : memref<?x22xf64>
          %5 = arith.addi %2, %c3 : index
          memref.store %cst, %arg11[%1, %5] : memref<?x22xf64>
          memref.store %cst, %arg8[%1, %5] : memref<?x22xf64>
        }
        scf.for %arg14 = %c0 to %c2 step %c1 {
          %2 = arith.addi %arg14, %c20 : index
          memref.store %cst, %arg11[%1, %2] : memref<?x22xf64>
          memref.store %cst, %arg8[%1, %2] : memref<?x22xf64>
        }
      }
    }
    scf.for %arg12 = %c0 to %c1 step %c1 {
      %0 = arith.muli %arg12, %c32 : index
      %1 = arith.addi %0, %c16 : index
      scf.for %arg13 = %c0 to %c2 step %c1 {
        %2 = arith.addi %1, %arg13 : index
        scf.for %arg14 = %c0 to %c5 step %c1 {
          %3 = arith.muli %arg14, %c4 : index
          memref.store %cst, %arg8[%2, %3] : memref<?x22xf64>
          %4 = arith.addi %3, %c1 : index
          memref.store %cst, %arg8[%2, %4] : memref<?x22xf64>
          %5 = arith.addi %3, %c2 : index
          memref.store %cst, %arg8[%2, %5] : memref<?x22xf64>
          %6 = arith.addi %3, %c3 : index
          memref.store %cst, %arg8[%2, %6] : memref<?x22xf64>
        }
        scf.for %arg14 = %c0 to %c2 step %c1 {
          %3 = arith.addi %arg14, %c20 : index
          memref.store %cst, %arg8[%2, %3] : memref<?x22xf64>
        }
      }
    }
    scf.for %arg12 = %c0 to %c1 step %c1 {
      %0 = arith.muli %arg12, %c32 : index
      scf.for %arg13 = %c0 to %c1 step %c1 {
        %1 = arith.muli %arg13, %c32 : index
        scf.for %arg14 = %c0 to %c18 step %c1 {
          %2 = arith.addi %0, %arg14 : index
          scf.for %arg15 = %c0 to %c24 step %c1 {
            %3 = arith.addi %1, %arg15 : index
            %4 = memref.load %arg9[%2, %3] : memref<?x24xf64>
            %5 = memref.load %arg9[%2, %3] : memref<?x24xf64>
            %6 = memref.load %arg9[%2, %3] : memref<?x24xf64>
            %7 = memref.load %arg9[%2, %3] : memref<?x24xf64>
            scf.for %arg16 = %c0 to %c5 step %c1 {
              %9 = arith.muli %arg16, %c4 : index
              %10 = memref.load %arg8[%2, %9] : memref<?x22xf64>
              %11 = memref.load %arg10[%3, %9] : memref<?x22xf64>
              %12 = arith.mulf %4, %11 : f64
              %13 = arith.addf %10, %12 : f64
              memref.store %13, %arg8[%2, %9] : memref<?x22xf64>
              %14 = arith.addi %9, %c1 : index
              %15 = memref.load %arg8[%2, %14] : memref<?x22xf64>
              %16 = memref.load %arg10[%3, %14] : memref<?x22xf64>
              %17 = arith.mulf %5, %16 : f64
              %18 = arith.addf %15, %17 : f64
              memref.store %18, %arg8[%2, %14] : memref<?x22xf64>
              %19 = arith.addi %9, %c2 : index
              %20 = memref.load %arg8[%2, %19] : memref<?x22xf64>
              %21 = memref.load %arg10[%3, %19] : memref<?x22xf64>
              %22 = arith.mulf %6, %21 : f64
              %23 = arith.addf %20, %22 : f64
              memref.store %23, %arg8[%2, %19] : memref<?x22xf64>
              %24 = arith.addi %9, %c3 : index
              %25 = memref.load %arg8[%2, %24] : memref<?x22xf64>
              %26 = memref.load %arg10[%3, %24] : memref<?x22xf64>
              %27 = arith.mulf %7, %26 : f64
              %28 = arith.addf %25, %27 : f64
              memref.store %28, %arg8[%2, %24] : memref<?x22xf64>
            }
            %8 = memref.load %arg9[%2, %3] : memref<?x24xf64>
            scf.for %arg16 = %c0 to %c2 step %c1 {
              %9 = arith.addi %arg16, %c20 : index
              %10 = memref.load %arg8[%2, %9] : memref<?x22xf64>
              %11 = memref.load %arg10[%3, %9] : memref<?x22xf64>
              %12 = arith.mulf %8, %11 : f64
              %13 = arith.addf %10, %12 : f64
              memref.store %13, %arg8[%2, %9] : memref<?x22xf64>
            }
          }
        }
      }
    }
    scf.for %arg12 = %c0 to %c1 step %c1 {
      %0 = arith.muli %arg12, %c32 : index
      scf.for %arg13 = %c0 to %c16 step %c1 {
        %1 = arith.addi %0, %arg13 : index
        scf.for %arg14 = %c0 to %c4 step %c1 {
          %2 = arith.muli %arg14, %c4 : index
          memref.store %cst, %arg5[%1, %2] : memref<?x18xf64>
          %3 = arith.addi %2, %c1 : index
          memref.store %cst, %arg5[%1, %3] : memref<?x18xf64>
          %4 = arith.addi %2, %c2 : index
          memref.store %cst, %arg5[%1, %4] : memref<?x18xf64>
          %5 = arith.addi %2, %c3 : index
          memref.store %cst, %arg5[%1, %5] : memref<?x18xf64>
        }
        scf.for %arg14 = %c0 to %c2 step %c1 {
          %2 = arith.addi %arg14, %c16 : index
          memref.store %cst, %arg5[%1, %2] : memref<?x18xf64>
        }
      }
    }
    scf.for %arg12 = %c0 to %c1 step %c1 {
      scf.for %arg13 = %c0 to %c2 step %c1 {
        %0 = arith.muli %arg12, %c32 : index
        %1 = arith.addi %arg13, %0 : index
        %2 = arith.cmpi eq, %1, %c0 : index
        scf.if %2 {
          scf.for %arg14 = %c0 to %c16 step %c1 {
            scf.for %arg15 = %c0 to %c18 step %c1 {
              scf.for %arg16 = %c0 to %c5 step %c1 {
                %16 = arith.muli %arg16, %c4 : index
                %17 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %18 = memref.load %arg6[%arg14, %16] : memref<?x20xf64>
                %19 = memref.load %arg7[%16, %arg15] : memref<?x18xf64>
                %20 = arith.mulf %18, %19 : f64
                %21 = arith.addf %17, %20 : f64
                memref.store %21, %arg5[%arg14, %arg15] : memref<?x18xf64>
                %22 = arith.addi %16, %c1 : index
                %23 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %24 = memref.load %arg6[%arg14, %22] : memref<?x20xf64>
                %25 = memref.load %arg7[%22, %arg15] : memref<?x18xf64>
                %26 = arith.mulf %24, %25 : f64
                %27 = arith.addf %23, %26 : f64
                memref.store %27, %arg5[%arg14, %arg15] : memref<?x18xf64>
                %28 = arith.addi %16, %c2 : index
                %29 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %30 = memref.load %arg6[%arg14, %28] : memref<?x20xf64>
                %31 = memref.load %arg7[%28, %arg15] : memref<?x18xf64>
                %32 = arith.mulf %30, %31 : f64
                %33 = arith.addf %29, %32 : f64
                memref.store %33, %arg5[%arg14, %arg15] : memref<?x18xf64>
                %34 = arith.addi %16, %c3 : index
                %35 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %36 = memref.load %arg6[%arg14, %34] : memref<?x20xf64>
                %37 = memref.load %arg7[%34, %arg15] : memref<?x18xf64>
                %38 = arith.mulf %36, %37 : f64
                %39 = arith.addf %35, %38 : f64
                memref.store %39, %arg5[%arg14, %arg15] : memref<?x18xf64>
              }
              %7 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %8 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %9 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %10 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              scf.for %arg16 = %c0 to %c3 step %c1 {
                %16 = arith.muli %arg16, %c4 : index
                %17 = arith.addi %16, %c19 : index
                %18 = arith.addi %17, %c-19 : index
                %19 = memref.load %arg11[%arg14, %18] : memref<?x22xf64>
                %20 = arith.addi %17, %c-19 : index
                %21 = memref.load %arg8[%arg15, %20] : memref<?x22xf64>
                %22 = arith.mulf %7, %21 : f64
                %23 = arith.addf %19, %22 : f64
                %24 = arith.addi %17, %c-19 : index
                memref.store %23, %arg11[%arg14, %24] : memref<?x22xf64>
                %25 = arith.addi %17, %c1 : index
                %26 = arith.addi %25, %c-19 : index
                %27 = memref.load %arg11[%arg14, %26] : memref<?x22xf64>
                %28 = arith.addi %25, %c-19 : index
                %29 = memref.load %arg8[%arg15, %28] : memref<?x22xf64>
                %30 = arith.mulf %8, %29 : f64
                %31 = arith.addf %27, %30 : f64
                %32 = arith.addi %25, %c-19 : index
                memref.store %31, %arg11[%arg14, %32] : memref<?x22xf64>
                %33 = arith.addi %17, %c2 : index
                %34 = arith.addi %33, %c-19 : index
                %35 = memref.load %arg11[%arg14, %34] : memref<?x22xf64>
                %36 = arith.addi %33, %c-19 : index
                %37 = memref.load %arg8[%arg15, %36] : memref<?x22xf64>
                %38 = arith.mulf %9, %37 : f64
                %39 = arith.addf %35, %38 : f64
                %40 = arith.addi %33, %c-19 : index
                memref.store %39, %arg11[%arg14, %40] : memref<?x22xf64>
                %41 = arith.addi %17, %c3 : index
                %42 = arith.addi %41, %c-19 : index
                %43 = memref.load %arg11[%arg14, %42] : memref<?x22xf64>
                %44 = arith.addi %41, %c-19 : index
                %45 = memref.load %arg8[%arg15, %44] : memref<?x22xf64>
                %46 = arith.mulf %10, %45 : f64
                %47 = arith.addf %43, %46 : f64
                %48 = arith.addi %41, %c-19 : index
                memref.store %47, %arg11[%arg14, %48] : memref<?x22xf64>
              }
              %11 = memref.load %arg11[%arg14, %c12] : memref<?x22xf64>
              %12 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %13 = memref.load %arg8[%arg15, %c12] : memref<?x22xf64>
              %14 = arith.mulf %12, %13 : f64
              %15 = arith.addf %11, %14 : f64
              memref.store %15, %arg11[%arg14, %c12] : memref<?x22xf64>
            }
          }
        }
        %3 = arith.muli %arg12, %c32 : index
        %4 = arith.addi %arg13, %3 : index
        %5 = arith.addi %4, %c-1 : index
        %6 = arith.cmpi eq, %5, %c0 : index
        scf.if %6 {
          scf.for %arg14 = %c0 to %c16 step %c1 {
            scf.for %arg15 = %c0 to %c18 step %c1 {
              %7 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %8 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %9 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %10 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              scf.for %arg16 = %c0 to %c2 step %c1 {
                %16 = arith.muli %arg16, %c4 : index
                %17 = arith.addi %16, %c32 : index
                %18 = arith.addi %17, %c-19 : index
                %19 = memref.load %arg11[%arg14, %18] : memref<?x22xf64>
                %20 = arith.addi %17, %c-19 : index
                %21 = memref.load %arg8[%arg15, %20] : memref<?x22xf64>
                %22 = arith.mulf %7, %21 : f64
                %23 = arith.addf %19, %22 : f64
                %24 = arith.addi %17, %c-19 : index
                memref.store %23, %arg11[%arg14, %24] : memref<?x22xf64>
                %25 = arith.addi %17, %c1 : index
                %26 = arith.addi %25, %c-19 : index
                %27 = memref.load %arg11[%arg14, %26] : memref<?x22xf64>
                %28 = arith.addi %25, %c-19 : index
                %29 = memref.load %arg8[%arg15, %28] : memref<?x22xf64>
                %30 = arith.mulf %8, %29 : f64
                %31 = arith.addf %27, %30 : f64
                %32 = arith.addi %25, %c-19 : index
                memref.store %31, %arg11[%arg14, %32] : memref<?x22xf64>
                %33 = arith.addi %17, %c2 : index
                %34 = arith.addi %33, %c-19 : index
                %35 = memref.load %arg11[%arg14, %34] : memref<?x22xf64>
                %36 = arith.addi %33, %c-19 : index
                %37 = memref.load %arg8[%arg15, %36] : memref<?x22xf64>
                %38 = arith.mulf %9, %37 : f64
                %39 = arith.addf %35, %38 : f64
                %40 = arith.addi %33, %c-19 : index
                memref.store %39, %arg11[%arg14, %40] : memref<?x22xf64>
                %41 = arith.addi %17, %c3 : index
                %42 = arith.addi %41, %c-19 : index
                %43 = memref.load %arg11[%arg14, %42] : memref<?x22xf64>
                %44 = arith.addi %41, %c-19 : index
                %45 = memref.load %arg8[%arg15, %44] : memref<?x22xf64>
                %46 = arith.mulf %10, %45 : f64
                %47 = arith.addf %43, %46 : f64
                %48 = arith.addi %41, %c-19 : index
                memref.store %47, %arg11[%arg14, %48] : memref<?x22xf64>
              }
              %11 = memref.load %arg11[%arg14, %c21] : memref<?x22xf64>
              %12 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %13 = memref.load %arg8[%arg15, %c21] : memref<?x22xf64>
              %14 = arith.mulf %12, %13 : f64
              %15 = arith.addf %11, %14 : f64
              memref.store %15, %arg11[%arg14, %c21] : memref<?x22xf64>
            }
          }
        }
      }
    }
    return
  }
}

