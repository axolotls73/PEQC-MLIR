module {
  func.func @kernel_2mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: f64, %arg5: f64, %arg6: memref<?x18xf64>, %arg7: memref<?x22xf64>, %arg8: memref<?x18xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x24xf64>) {
    %c23 = arith.constant 23 : index
    %c32 = arith.constant 32 : index
    %c-1 = arith.constant -1 : index
    %c29 = arith.constant 29 : index
    %c-21 = arith.constant -21 : index
    %c5 = arith.constant 5 : index
    %c22 = arith.constant 22 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c18 = arith.constant 18 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c19 = arith.constant 19 : index
    %c20 = arith.constant 20 : index
    %c21 = arith.constant 21 : index
    %c0 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    scf.for %arg11 = %c0 to %c16 step %c1 {
      scf.for %arg12 = %c0 to %c1 step %c1 {
        %0 = arith.addi %arg11, %arg12 : index
        scf.for %arg13 = %c0 to %c4 step %c1 {
          %9 = arith.muli %arg13, %c4 : index
          %10 = memref.load %arg10[%0, %9] : memref<?x24xf64>
          %11 = arith.mulf %10, %arg5 : f64
          memref.store %11, %arg10[%0, %9] : memref<?x24xf64>
          memref.store %cst, %arg6[%0, %9] : memref<?x18xf64>
          %12 = arith.addi %9, %c1 : index
          %13 = memref.load %arg10[%0, %12] : memref<?x24xf64>
          %14 = arith.mulf %13, %arg5 : f64
          memref.store %14, %arg10[%0, %12] : memref<?x24xf64>
          memref.store %cst, %arg6[%0, %12] : memref<?x18xf64>
          %15 = arith.addi %9, %c2 : index
          %16 = memref.load %arg10[%0, %15] : memref<?x24xf64>
          %17 = arith.mulf %16, %arg5 : f64
          memref.store %17, %arg10[%0, %15] : memref<?x24xf64>
          memref.store %cst, %arg6[%0, %15] : memref<?x18xf64>
          %18 = arith.addi %9, %c3 : index
          %19 = memref.load %arg10[%0, %18] : memref<?x24xf64>
          %20 = arith.mulf %19, %arg5 : f64
          memref.store %20, %arg10[%0, %18] : memref<?x24xf64>
          memref.store %cst, %arg6[%0, %18] : memref<?x18xf64>
        }
        scf.for %arg13 = %c0 to %c2 step %c1 {
          %9 = arith.addi %arg13, %c16 : index
          %10 = memref.load %arg10[%0, %9] : memref<?x24xf64>
          %11 = arith.mulf %10, %arg5 : f64
          memref.store %11, %arg10[%0, %9] : memref<?x24xf64>
          memref.store %cst, %arg6[%0, %9] : memref<?x18xf64>
        }
        %1 = memref.load %arg10[%0, %c18] : memref<?x24xf64>
        %2 = arith.mulf %1, %arg5 : f64
        memref.store %2, %arg10[%0, %c18] : memref<?x24xf64>
        %3 = memref.load %arg10[%0, %c19] : memref<?x24xf64>
        %4 = arith.mulf %3, %arg5 : f64
        memref.store %4, %arg10[%0, %c19] : memref<?x24xf64>
        %5 = memref.load %arg10[%0, %c20] : memref<?x24xf64>
        %6 = arith.mulf %5, %arg5 : f64
        memref.store %6, %arg10[%0, %c20] : memref<?x24xf64>
        %7 = memref.load %arg10[%0, %c21] : memref<?x24xf64>
        %8 = arith.mulf %7, %arg5 : f64
        memref.store %8, %arg10[%0, %c21] : memref<?x24xf64>
        scf.for %arg13 = %c0 to %c2 step %c1 {
          %9 = arith.addi %arg13, %c22 : index
          %10 = memref.load %arg10[%0, %9] : memref<?x24xf64>
          %11 = arith.mulf %10, %arg5 : f64
          memref.store %11, %arg10[%0, %9] : memref<?x24xf64>
        }
      }
    }
    scf.for %arg11 = %c0 to %c2 step %c1 {
      scf.for %arg12 = %c0 to %c1 step %c1 {
        %0 = arith.addi %arg11, %arg12 : index
        %1 = arith.cmpi eq, %0, %c0 : index
        scf.if %1 {
          scf.for %arg13 = %c0 to %c16 step %c1 {
            scf.for %arg14 = %c0 to %c18 step %c1 {
              scf.for %arg15 = %c0 to %c5 step %c1 {
                %10 = arith.muli %arg15, %c4 : index
                %11 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %12 = memref.load %arg7[%arg13, %10] : memref<?x22xf64>
                %13 = arith.mulf %arg4, %12 : f64
                %14 = memref.load %arg8[%10, %arg14] : memref<?x18xf64>
                %15 = arith.mulf %13, %14 : f64
                %16 = arith.addf %11, %15 : f64
                memref.store %16, %arg6[%arg13, %arg14] : memref<?x18xf64>
                %17 = arith.addi %10, %c1 : index
                %18 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %19 = memref.load %arg7[%arg13, %17] : memref<?x22xf64>
                %20 = arith.mulf %arg4, %19 : f64
                %21 = memref.load %arg8[%17, %arg14] : memref<?x18xf64>
                %22 = arith.mulf %20, %21 : f64
                %23 = arith.addf %18, %22 : f64
                memref.store %23, %arg6[%arg13, %arg14] : memref<?x18xf64>
                %24 = arith.addi %10, %c2 : index
                %25 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %26 = memref.load %arg7[%arg13, %24] : memref<?x22xf64>
                %27 = arith.mulf %arg4, %26 : f64
                %28 = memref.load %arg8[%24, %arg14] : memref<?x18xf64>
                %29 = arith.mulf %27, %28 : f64
                %30 = arith.addf %25, %29 : f64
                memref.store %30, %arg6[%arg13, %arg14] : memref<?x18xf64>
                %31 = arith.addi %10, %c3 : index
                %32 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %33 = memref.load %arg7[%arg13, %31] : memref<?x22xf64>
                %34 = arith.mulf %arg4, %33 : f64
                %35 = memref.load %arg8[%31, %arg14] : memref<?x18xf64>
                %36 = arith.mulf %34, %35 : f64
                %37 = arith.addf %32, %36 : f64
                memref.store %37, %arg6[%arg13, %arg14] : memref<?x18xf64>
              }
              scf.for %arg15 = %c0 to %c2 step %c1 {
                %10 = arith.addi %arg15, %c20 : index
                %11 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %12 = memref.load %arg7[%arg13, %10] : memref<?x22xf64>
                %13 = arith.mulf %arg4, %12 : f64
                %14 = memref.load %arg8[%10, %arg14] : memref<?x18xf64>
                %15 = arith.mulf %13, %14 : f64
                %16 = arith.addf %11, %15 : f64
                memref.store %16, %arg6[%arg13, %arg14] : memref<?x18xf64>
              }
              %5 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %6 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %7 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %8 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              scf.for %arg15 = %c0 to %c2 step %c1 {
                %10 = arith.muli %arg15, %c4 : index
                %11 = arith.addi %10, %c21 : index
                %12 = arith.addi %11, %c-21 : index
                %13 = memref.load %arg10[%arg13, %12] : memref<?x24xf64>
                %14 = arith.addi %11, %c-21 : index
                %15 = memref.load %arg9[%arg14, %14] : memref<?x24xf64>
                %16 = arith.mulf %5, %15 : f64
                %17 = arith.addf %13, %16 : f64
                %18 = arith.addi %11, %c-21 : index
                memref.store %17, %arg10[%arg13, %18] : memref<?x24xf64>
                %19 = arith.addi %11, %c1 : index
                %20 = arith.addi %19, %c-21 : index
                %21 = memref.load %arg10[%arg13, %20] : memref<?x24xf64>
                %22 = arith.addi %19, %c-21 : index
                %23 = memref.load %arg9[%arg14, %22] : memref<?x24xf64>
                %24 = arith.mulf %6, %23 : f64
                %25 = arith.addf %21, %24 : f64
                %26 = arith.addi %19, %c-21 : index
                memref.store %25, %arg10[%arg13, %26] : memref<?x24xf64>
                %27 = arith.addi %11, %c2 : index
                %28 = arith.addi %27, %c-21 : index
                %29 = memref.load %arg10[%arg13, %28] : memref<?x24xf64>
                %30 = arith.addi %27, %c-21 : index
                %31 = memref.load %arg9[%arg14, %30] : memref<?x24xf64>
                %32 = arith.mulf %7, %31 : f64
                %33 = arith.addf %29, %32 : f64
                %34 = arith.addi %27, %c-21 : index
                memref.store %33, %arg10[%arg13, %34] : memref<?x24xf64>
                %35 = arith.addi %11, %c3 : index
                %36 = arith.addi %35, %c-21 : index
                %37 = memref.load %arg10[%arg13, %36] : memref<?x24xf64>
                %38 = arith.addi %35, %c-21 : index
                %39 = memref.load %arg9[%arg14, %38] : memref<?x24xf64>
                %40 = arith.mulf %8, %39 : f64
                %41 = arith.addf %37, %40 : f64
                %42 = arith.addi %35, %c-21 : index
                memref.store %41, %arg10[%arg13, %42] : memref<?x24xf64>
              }
              %9 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              scf.for %arg15 = %c0 to %c3 step %c1 {
                %10 = arith.addi %arg15, %c29 : index
                %11 = arith.addi %10, %c-21 : index
                %12 = memref.load %arg10[%arg13, %11] : memref<?x24xf64>
                %13 = arith.addi %10, %c-21 : index
                %14 = memref.load %arg9[%arg14, %13] : memref<?x24xf64>
                %15 = arith.mulf %9, %14 : f64
                %16 = arith.addf %12, %15 : f64
                %17 = arith.addi %10, %c-21 : index
                memref.store %16, %arg10[%arg13, %17] : memref<?x24xf64>
              }
            }
          }
        }
        %2 = arith.addi %arg11, %arg12 : index
        %3 = arith.addi %2, %c-1 : index
        %4 = arith.cmpi eq, %3, %c0 : index
        scf.if %4 {
          scf.for %arg13 = %c0 to %c16 step %c1 {
            scf.for %arg14 = %c0 to %c18 step %c1 {
              %5 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %6 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %7 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %8 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              scf.for %arg15 = %c0 to %c3 step %c1 {
                %14 = arith.muli %arg15, %c4 : index
                %15 = arith.addi %14, %c32 : index
                %16 = arith.addi %15, %c-21 : index
                %17 = memref.load %arg10[%arg13, %16] : memref<?x24xf64>
                %18 = arith.addi %15, %c-21 : index
                %19 = memref.load %arg9[%arg14, %18] : memref<?x24xf64>
                %20 = arith.mulf %5, %19 : f64
                %21 = arith.addf %17, %20 : f64
                %22 = arith.addi %15, %c-21 : index
                memref.store %21, %arg10[%arg13, %22] : memref<?x24xf64>
                %23 = arith.addi %15, %c1 : index
                %24 = arith.addi %23, %c-21 : index
                %25 = memref.load %arg10[%arg13, %24] : memref<?x24xf64>
                %26 = arith.addi %23, %c-21 : index
                %27 = memref.load %arg9[%arg14, %26] : memref<?x24xf64>
                %28 = arith.mulf %6, %27 : f64
                %29 = arith.addf %25, %28 : f64
                %30 = arith.addi %23, %c-21 : index
                memref.store %29, %arg10[%arg13, %30] : memref<?x24xf64>
                %31 = arith.addi %15, %c2 : index
                %32 = arith.addi %31, %c-21 : index
                %33 = memref.load %arg10[%arg13, %32] : memref<?x24xf64>
                %34 = arith.addi %31, %c-21 : index
                %35 = memref.load %arg9[%arg14, %34] : memref<?x24xf64>
                %36 = arith.mulf %7, %35 : f64
                %37 = arith.addf %33, %36 : f64
                %38 = arith.addi %31, %c-21 : index
                memref.store %37, %arg10[%arg13, %38] : memref<?x24xf64>
                %39 = arith.addi %15, %c3 : index
                %40 = arith.addi %39, %c-21 : index
                %41 = memref.load %arg10[%arg13, %40] : memref<?x24xf64>
                %42 = arith.addi %39, %c-21 : index
                %43 = memref.load %arg9[%arg14, %42] : memref<?x24xf64>
                %44 = arith.mulf %8, %43 : f64
                %45 = arith.addf %41, %44 : f64
                %46 = arith.addi %39, %c-21 : index
                memref.store %45, %arg10[%arg13, %46] : memref<?x24xf64>
              }
              %9 = memref.load %arg10[%arg13, %c23] : memref<?x24xf64>
              %10 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %11 = memref.load %arg9[%arg14, %c23] : memref<?x24xf64>
              %12 = arith.mulf %10, %11 : f64
              %13 = arith.addf %9, %12 : f64
              memref.store %13, %arg10[%arg13, %c23] : memref<?x24xf64>
            }
          }
        }
      }
    }
    return
  }
}

