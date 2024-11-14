module {
  func.func @kernel_2mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: f64, %arg5: f64, %arg6: memref<?x18xf64>, %arg7: memref<?x22xf64>, %arg8: memref<?x18xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x24xf64>) {
    %c23 = arith.constant 23 : index
    %c-1 = arith.constant -1 : index
    %c29 = arith.constant 29 : index
    %c-21 = arith.constant -21 : index
    %c5 = arith.constant 5 : index
    %c22 = arith.constant 22 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c16 = arith.constant 16 : index
    %c32 = arith.constant 32 : index
    %c18 = arith.constant 18 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c19 = arith.constant 19 : index
    %c20 = arith.constant 20 : index
    %c21 = arith.constant 21 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg11 = %c0 to %c1 step %c1 {
      %0 = arith.muli %arg11, %c32 : index
      scf.for %arg12 = %c0 to %c16 step %c1 {
        %1 = arith.addi %0, %arg12 : index
        scf.for %arg13 = %c0 to %c4 step %c1 {
          %10 = arith.muli %arg13, %c4 : index
          %11 = memref.load %arg10[%1, %10] : memref<?x24xf64>
          %12 = arith.mulf %11, %arg5 : f64
          memref.store %12, %arg10[%1, %10] : memref<?x24xf64>
          memref.store %cst, %arg6[%1, %10] : memref<?x18xf64>
          %13 = arith.addi %10, %c1 : index
          %14 = memref.load %arg10[%1, %13] : memref<?x24xf64>
          %15 = arith.mulf %14, %arg5 : f64
          memref.store %15, %arg10[%1, %13] : memref<?x24xf64>
          memref.store %cst, %arg6[%1, %13] : memref<?x18xf64>
          %16 = arith.addi %10, %c2 : index
          %17 = memref.load %arg10[%1, %16] : memref<?x24xf64>
          %18 = arith.mulf %17, %arg5 : f64
          memref.store %18, %arg10[%1, %16] : memref<?x24xf64>
          memref.store %cst, %arg6[%1, %16] : memref<?x18xf64>
          %19 = arith.addi %10, %c3 : index
          %20 = memref.load %arg10[%1, %19] : memref<?x24xf64>
          %21 = arith.mulf %20, %arg5 : f64
          memref.store %21, %arg10[%1, %19] : memref<?x24xf64>
          memref.store %cst, %arg6[%1, %19] : memref<?x18xf64>
        }
        scf.for %arg13 = %c0 to %c2 step %c1 {
          %10 = arith.addi %arg13, %c16 : index
          %11 = memref.load %arg10[%1, %10] : memref<?x24xf64>
          %12 = arith.mulf %11, %arg5 : f64
          memref.store %12, %arg10[%1, %10] : memref<?x24xf64>
          memref.store %cst, %arg6[%1, %10] : memref<?x18xf64>
        }
        %2 = memref.load %arg10[%1, %c18] : memref<?x24xf64>
        %3 = arith.mulf %2, %arg5 : f64
        memref.store %3, %arg10[%1, %c18] : memref<?x24xf64>
        %4 = memref.load %arg10[%1, %c19] : memref<?x24xf64>
        %5 = arith.mulf %4, %arg5 : f64
        memref.store %5, %arg10[%1, %c19] : memref<?x24xf64>
        %6 = memref.load %arg10[%1, %c20] : memref<?x24xf64>
        %7 = arith.mulf %6, %arg5 : f64
        memref.store %7, %arg10[%1, %c20] : memref<?x24xf64>
        %8 = memref.load %arg10[%1, %c21] : memref<?x24xf64>
        %9 = arith.mulf %8, %arg5 : f64
        memref.store %9, %arg10[%1, %c21] : memref<?x24xf64>
        scf.for %arg13 = %c0 to %c2 step %c1 {
          %10 = arith.addi %arg13, %c22 : index
          %11 = memref.load %arg10[%1, %10] : memref<?x24xf64>
          %12 = arith.mulf %11, %arg5 : f64
          memref.store %12, %arg10[%1, %10] : memref<?x24xf64>
        }
      }
    }
    scf.for %arg11 = %c0 to %c1 step %c1 {
      scf.for %arg12 = %c0 to %c2 step %c1 {
        %0 = arith.muli %arg11, %c32 : index
        %1 = arith.addi %arg12, %0 : index
        %2 = arith.cmpi eq, %1, %c0 : index
        scf.if %2 {
          scf.for %arg13 = %c0 to %c16 step %c1 {
            scf.for %arg14 = %c0 to %c18 step %c1 {
              scf.for %arg15 = %c0 to %c5 step %c1 {
                %12 = arith.muli %arg15, %c4 : index
                %13 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %14 = memref.load %arg7[%arg13, %12] : memref<?x22xf64>
                %15 = arith.mulf %arg4, %14 : f64
                %16 = memref.load %arg8[%12, %arg14] : memref<?x18xf64>
                %17 = arith.mulf %15, %16 : f64
                %18 = arith.addf %13, %17 : f64
                memref.store %18, %arg6[%arg13, %arg14] : memref<?x18xf64>
                %19 = arith.addi %12, %c1 : index
                %20 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %21 = memref.load %arg7[%arg13, %19] : memref<?x22xf64>
                %22 = arith.mulf %arg4, %21 : f64
                %23 = memref.load %arg8[%19, %arg14] : memref<?x18xf64>
                %24 = arith.mulf %22, %23 : f64
                %25 = arith.addf %20, %24 : f64
                memref.store %25, %arg6[%arg13, %arg14] : memref<?x18xf64>
                %26 = arith.addi %12, %c2 : index
                %27 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %28 = memref.load %arg7[%arg13, %26] : memref<?x22xf64>
                %29 = arith.mulf %arg4, %28 : f64
                %30 = memref.load %arg8[%26, %arg14] : memref<?x18xf64>
                %31 = arith.mulf %29, %30 : f64
                %32 = arith.addf %27, %31 : f64
                memref.store %32, %arg6[%arg13, %arg14] : memref<?x18xf64>
                %33 = arith.addi %12, %c3 : index
                %34 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %35 = memref.load %arg7[%arg13, %33] : memref<?x22xf64>
                %36 = arith.mulf %arg4, %35 : f64
                %37 = memref.load %arg8[%33, %arg14] : memref<?x18xf64>
                %38 = arith.mulf %36, %37 : f64
                %39 = arith.addf %34, %38 : f64
                memref.store %39, %arg6[%arg13, %arg14] : memref<?x18xf64>
              }
              scf.for %arg15 = %c0 to %c2 step %c1 {
                %12 = arith.addi %arg15, %c20 : index
                %13 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %14 = memref.load %arg7[%arg13, %12] : memref<?x22xf64>
                %15 = arith.mulf %arg4, %14 : f64
                %16 = memref.load %arg8[%12, %arg14] : memref<?x18xf64>
                %17 = arith.mulf %15, %16 : f64
                %18 = arith.addf %13, %17 : f64
                memref.store %18, %arg6[%arg13, %arg14] : memref<?x18xf64>
              }
              %7 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %8 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %9 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %10 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              scf.for %arg15 = %c0 to %c2 step %c1 {
                %12 = arith.muli %arg15, %c4 : index
                %13 = arith.addi %12, %c21 : index
                %14 = arith.addi %13, %c-21 : index
                %15 = memref.load %arg10[%arg13, %14] : memref<?x24xf64>
                %16 = arith.addi %13, %c-21 : index
                %17 = memref.load %arg9[%arg14, %16] : memref<?x24xf64>
                %18 = arith.mulf %7, %17 : f64
                %19 = arith.addf %15, %18 : f64
                %20 = arith.addi %13, %c-21 : index
                memref.store %19, %arg10[%arg13, %20] : memref<?x24xf64>
                %21 = arith.addi %13, %c1 : index
                %22 = arith.addi %21, %c-21 : index
                %23 = memref.load %arg10[%arg13, %22] : memref<?x24xf64>
                %24 = arith.addi %21, %c-21 : index
                %25 = memref.load %arg9[%arg14, %24] : memref<?x24xf64>
                %26 = arith.mulf %8, %25 : f64
                %27 = arith.addf %23, %26 : f64
                %28 = arith.addi %21, %c-21 : index
                memref.store %27, %arg10[%arg13, %28] : memref<?x24xf64>
                %29 = arith.addi %13, %c2 : index
                %30 = arith.addi %29, %c-21 : index
                %31 = memref.load %arg10[%arg13, %30] : memref<?x24xf64>
                %32 = arith.addi %29, %c-21 : index
                %33 = memref.load %arg9[%arg14, %32] : memref<?x24xf64>
                %34 = arith.mulf %9, %33 : f64
                %35 = arith.addf %31, %34 : f64
                %36 = arith.addi %29, %c-21 : index
                memref.store %35, %arg10[%arg13, %36] : memref<?x24xf64>
                %37 = arith.addi %13, %c3 : index
                %38 = arith.addi %37, %c-21 : index
                %39 = memref.load %arg10[%arg13, %38] : memref<?x24xf64>
                %40 = arith.addi %37, %c-21 : index
                %41 = memref.load %arg9[%arg14, %40] : memref<?x24xf64>
                %42 = arith.mulf %10, %41 : f64
                %43 = arith.addf %39, %42 : f64
                %44 = arith.addi %37, %c-21 : index
                memref.store %43, %arg10[%arg13, %44] : memref<?x24xf64>
              }
              %11 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              scf.for %arg15 = %c0 to %c3 step %c1 {
                %12 = arith.addi %arg15, %c29 : index
                %13 = arith.addi %12, %c-21 : index
                %14 = memref.load %arg10[%arg13, %13] : memref<?x24xf64>
                %15 = arith.addi %12, %c-21 : index
                %16 = memref.load %arg9[%arg14, %15] : memref<?x24xf64>
                %17 = arith.mulf %11, %16 : f64
                %18 = arith.addf %14, %17 : f64
                %19 = arith.addi %12, %c-21 : index
                memref.store %18, %arg10[%arg13, %19] : memref<?x24xf64>
              }
            }
          }
        }
        %3 = arith.muli %arg11, %c32 : index
        %4 = arith.addi %arg12, %3 : index
        %5 = arith.addi %4, %c-1 : index
        %6 = arith.cmpi eq, %5, %c0 : index
        scf.if %6 {
          scf.for %arg13 = %c0 to %c16 step %c1 {
            scf.for %arg14 = %c0 to %c18 step %c1 {
              %7 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %8 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %9 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %10 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              scf.for %arg15 = %c0 to %c3 step %c1 {
                %16 = arith.muli %arg15, %c4 : index
                %17 = arith.addi %16, %c32 : index
                %18 = arith.addi %17, %c-21 : index
                %19 = memref.load %arg10[%arg13, %18] : memref<?x24xf64>
                %20 = arith.addi %17, %c-21 : index
                %21 = memref.load %arg9[%arg14, %20] : memref<?x24xf64>
                %22 = arith.mulf %7, %21 : f64
                %23 = arith.addf %19, %22 : f64
                %24 = arith.addi %17, %c-21 : index
                memref.store %23, %arg10[%arg13, %24] : memref<?x24xf64>
                %25 = arith.addi %17, %c1 : index
                %26 = arith.addi %25, %c-21 : index
                %27 = memref.load %arg10[%arg13, %26] : memref<?x24xf64>
                %28 = arith.addi %25, %c-21 : index
                %29 = memref.load %arg9[%arg14, %28] : memref<?x24xf64>
                %30 = arith.mulf %8, %29 : f64
                %31 = arith.addf %27, %30 : f64
                %32 = arith.addi %25, %c-21 : index
                memref.store %31, %arg10[%arg13, %32] : memref<?x24xf64>
                %33 = arith.addi %17, %c2 : index
                %34 = arith.addi %33, %c-21 : index
                %35 = memref.load %arg10[%arg13, %34] : memref<?x24xf64>
                %36 = arith.addi %33, %c-21 : index
                %37 = memref.load %arg9[%arg14, %36] : memref<?x24xf64>
                %38 = arith.mulf %9, %37 : f64
                %39 = arith.addf %35, %38 : f64
                %40 = arith.addi %33, %c-21 : index
                memref.store %39, %arg10[%arg13, %40] : memref<?x24xf64>
                %41 = arith.addi %17, %c3 : index
                %42 = arith.addi %41, %c-21 : index
                %43 = memref.load %arg10[%arg13, %42] : memref<?x24xf64>
                %44 = arith.addi %41, %c-21 : index
                %45 = memref.load %arg9[%arg14, %44] : memref<?x24xf64>
                %46 = arith.mulf %10, %45 : f64
                %47 = arith.addf %43, %46 : f64
                %48 = arith.addi %41, %c-21 : index
                memref.store %47, %arg10[%arg13, %48] : memref<?x24xf64>
              }
              %11 = memref.load %arg10[%arg13, %c23] : memref<?x24xf64>
              %12 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %13 = memref.load %arg9[%arg14, %c23] : memref<?x24xf64>
              %14 = arith.mulf %12, %13 : f64
              %15 = arith.addf %11, %14 : f64
              memref.store %15, %arg10[%arg13, %c23] : memref<?x24xf64>
            }
          }
        }
      }
    }
    return
  }
}

