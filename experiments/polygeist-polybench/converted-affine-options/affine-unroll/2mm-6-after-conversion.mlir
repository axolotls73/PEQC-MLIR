module {
  func.func @kernel_2mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: f64, %arg5: f64, %arg6: memref<?x18xf64>, %arg7: memref<?x22xf64>, %arg8: memref<?x18xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x24xf64>) {
    %c23 = arith.constant 23 : index
    %c-1 = arith.constant -1 : index
    %c32 = arith.constant 32 : index
    %c-21 = arith.constant -21 : index
    %c29 = arith.constant 29 : index
    %c24 = arith.constant 24 : index
    %c22 = arith.constant 22 : index
    %c21 = arith.constant 21 : index
    %c20 = arith.constant 20 : index
    %c19 = arith.constant 19 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c44 = arith.constant 44 : index
    %c18 = arith.constant 18 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    scf.for %arg11 = %c0 to %c16 step %c1 {
      scf.for %arg12 = %c0 to %c16 step %c4 {
        %8 = memref.load %arg10[%arg11, %arg12] : memref<?x24xf64>
        %9 = arith.mulf %8, %arg5 : f64
        memref.store %9, %arg10[%arg11, %arg12] : memref<?x24xf64>
        memref.store %cst, %arg6[%arg11, %arg12] : memref<?x18xf64>
        %10 = arith.addi %arg12, %c1 : index
        %11 = memref.load %arg10[%arg11, %10] : memref<?x24xf64>
        %12 = arith.mulf %11, %arg5 : f64
        memref.store %12, %arg10[%arg11, %10] : memref<?x24xf64>
        memref.store %cst, %arg6[%arg11, %10] : memref<?x18xf64>
        %13 = arith.addi %arg12, %c2 : index
        %14 = memref.load %arg10[%arg11, %13] : memref<?x24xf64>
        %15 = arith.mulf %14, %arg5 : f64
        memref.store %15, %arg10[%arg11, %13] : memref<?x24xf64>
        memref.store %cst, %arg6[%arg11, %13] : memref<?x18xf64>
        %16 = arith.addi %arg12, %c3 : index
        %17 = memref.load %arg10[%arg11, %16] : memref<?x24xf64>
        %18 = arith.mulf %17, %arg5 : f64
        memref.store %18, %arg10[%arg11, %16] : memref<?x24xf64>
        memref.store %cst, %arg6[%arg11, %16] : memref<?x18xf64>
      }
      scf.for %arg12 = %c16 to %c18 step %c1 {
        %8 = memref.load %arg10[%arg11, %arg12] : memref<?x24xf64>
        %9 = arith.mulf %8, %arg5 : f64
        memref.store %9, %arg10[%arg11, %arg12] : memref<?x24xf64>
        memref.store %cst, %arg6[%arg11, %arg12] : memref<?x18xf64>
      }
      %0 = memref.load %arg10[%arg11, %c18] : memref<?x24xf64>
      %1 = arith.mulf %0, %arg5 : f64
      memref.store %1, %arg10[%arg11, %c18] : memref<?x24xf64>
      %2 = memref.load %arg10[%arg11, %c19] : memref<?x24xf64>
      %3 = arith.mulf %2, %arg5 : f64
      memref.store %3, %arg10[%arg11, %c19] : memref<?x24xf64>
      %4 = memref.load %arg10[%arg11, %c20] : memref<?x24xf64>
      %5 = arith.mulf %4, %arg5 : f64
      memref.store %5, %arg10[%arg11, %c20] : memref<?x24xf64>
      %6 = memref.load %arg10[%arg11, %c21] : memref<?x24xf64>
      %7 = arith.mulf %6, %arg5 : f64
      memref.store %7, %arg10[%arg11, %c21] : memref<?x24xf64>
      scf.for %arg12 = %c22 to %c24 step %c1 {
        %8 = memref.load %arg10[%arg11, %arg12] : memref<?x24xf64>
        %9 = arith.mulf %8, %arg5 : f64
        memref.store %9, %arg10[%arg11, %arg12] : memref<?x24xf64>
      }
    }
    scf.for %arg11 = %c0 to %c2 step %c1 {
      %0 = arith.cmpi eq, %arg11, %c0 : index
      scf.if %0 {
        scf.for %arg12 = %c0 to %c16 step %c1 {
          scf.for %arg13 = %c0 to %c18 step %c1 {
            scf.for %arg14 = %c0 to %c20 step %c4 {
              %3 = memref.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %4 = memref.load %arg7[%arg12, %arg14] : memref<?x22xf64>
              %5 = arith.mulf %arg4, %4 : f64
              %6 = memref.load %arg8[%arg14, %arg13] : memref<?x18xf64>
              %7 = arith.mulf %5, %6 : f64
              %8 = arith.addf %3, %7 : f64
              memref.store %8, %arg6[%arg12, %arg13] : memref<?x18xf64>
              %9 = arith.addi %arg14, %c1 : index
              %10 = memref.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %11 = memref.load %arg7[%arg12, %9] : memref<?x22xf64>
              %12 = arith.mulf %arg4, %11 : f64
              %13 = memref.load %arg8[%9, %arg13] : memref<?x18xf64>
              %14 = arith.mulf %12, %13 : f64
              %15 = arith.addf %10, %14 : f64
              memref.store %15, %arg6[%arg12, %arg13] : memref<?x18xf64>
              %16 = arith.addi %arg14, %c2 : index
              %17 = memref.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %18 = memref.load %arg7[%arg12, %16] : memref<?x22xf64>
              %19 = arith.mulf %arg4, %18 : f64
              %20 = memref.load %arg8[%16, %arg13] : memref<?x18xf64>
              %21 = arith.mulf %19, %20 : f64
              %22 = arith.addf %17, %21 : f64
              memref.store %22, %arg6[%arg12, %arg13] : memref<?x18xf64>
              %23 = arith.addi %arg14, %c3 : index
              %24 = memref.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %25 = memref.load %arg7[%arg12, %23] : memref<?x22xf64>
              %26 = arith.mulf %arg4, %25 : f64
              %27 = memref.load %arg8[%23, %arg13] : memref<?x18xf64>
              %28 = arith.mulf %26, %27 : f64
              %29 = arith.addf %24, %28 : f64
              memref.store %29, %arg6[%arg12, %arg13] : memref<?x18xf64>
            }
            scf.for %arg14 = %c20 to %c22 step %c1 {
              %3 = memref.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %4 = memref.load %arg7[%arg12, %arg14] : memref<?x22xf64>
              %5 = arith.mulf %arg4, %4 : f64
              %6 = memref.load %arg8[%arg14, %arg13] : memref<?x18xf64>
              %7 = arith.mulf %5, %6 : f64
              %8 = arith.addf %3, %7 : f64
              memref.store %8, %arg6[%arg12, %arg13] : memref<?x18xf64>
            }
            scf.for %arg14 = %c21 to %c29 step %c4 {
              %3 = arith.addi %arg14, %c-21 : index
              %4 = memref.load %arg10[%arg12, %3] : memref<?x24xf64>
              %5 = memref.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %6 = arith.addi %arg14, %c-21 : index
              %7 = memref.load %arg9[%arg13, %6] : memref<?x24xf64>
              %8 = arith.mulf %5, %7 : f64
              %9 = arith.addf %4, %8 : f64
              %10 = arith.addi %arg14, %c-21 : index
              memref.store %9, %arg10[%arg12, %10] : memref<?x24xf64>
              %11 = arith.addi %arg14, %c1 : index
              %12 = arith.addi %11, %c-21 : index
              %13 = memref.load %arg10[%arg12, %12] : memref<?x24xf64>
              %14 = memref.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %15 = arith.addi %11, %c-21 : index
              %16 = memref.load %arg9[%arg13, %15] : memref<?x24xf64>
              %17 = arith.mulf %14, %16 : f64
              %18 = arith.addf %13, %17 : f64
              %19 = arith.addi %11, %c-21 : index
              memref.store %18, %arg10[%arg12, %19] : memref<?x24xf64>
              %20 = arith.addi %arg14, %c2 : index
              %21 = arith.addi %20, %c-21 : index
              %22 = memref.load %arg10[%arg12, %21] : memref<?x24xf64>
              %23 = memref.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %24 = arith.addi %20, %c-21 : index
              %25 = memref.load %arg9[%arg13, %24] : memref<?x24xf64>
              %26 = arith.mulf %23, %25 : f64
              %27 = arith.addf %22, %26 : f64
              %28 = arith.addi %20, %c-21 : index
              memref.store %27, %arg10[%arg12, %28] : memref<?x24xf64>
              %29 = arith.addi %arg14, %c3 : index
              %30 = arith.addi %29, %c-21 : index
              %31 = memref.load %arg10[%arg12, %30] : memref<?x24xf64>
              %32 = memref.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %33 = arith.addi %29, %c-21 : index
              %34 = memref.load %arg9[%arg13, %33] : memref<?x24xf64>
              %35 = arith.mulf %32, %34 : f64
              %36 = arith.addf %31, %35 : f64
              %37 = arith.addi %29, %c-21 : index
              memref.store %36, %arg10[%arg12, %37] : memref<?x24xf64>
            }
            scf.for %arg14 = %c29 to %c32 step %c1 {
              %3 = arith.addi %arg14, %c-21 : index
              %4 = memref.load %arg10[%arg12, %3] : memref<?x24xf64>
              %5 = memref.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %6 = arith.addi %arg14, %c-21 : index
              %7 = memref.load %arg9[%arg13, %6] : memref<?x24xf64>
              %8 = arith.mulf %5, %7 : f64
              %9 = arith.addf %4, %8 : f64
              %10 = arith.addi %arg14, %c-21 : index
              memref.store %9, %arg10[%arg12, %10] : memref<?x24xf64>
            }
          }
        }
      }
      %1 = arith.addi %arg11, %c-1 : index
      %2 = arith.cmpi eq, %1, %c0 : index
      scf.if %2 {
        scf.for %arg12 = %c0 to %c16 step %c1 {
          scf.for %arg13 = %c0 to %c18 step %c1 {
            scf.for %arg14 = %c32 to %c44 step %c4 {
              %8 = arith.addi %arg14, %c-21 : index
              %9 = memref.load %arg10[%arg12, %8] : memref<?x24xf64>
              %10 = memref.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %11 = arith.addi %arg14, %c-21 : index
              %12 = memref.load %arg9[%arg13, %11] : memref<?x24xf64>
              %13 = arith.mulf %10, %12 : f64
              %14 = arith.addf %9, %13 : f64
              %15 = arith.addi %arg14, %c-21 : index
              memref.store %14, %arg10[%arg12, %15] : memref<?x24xf64>
              %16 = arith.addi %arg14, %c1 : index
              %17 = arith.addi %16, %c-21 : index
              %18 = memref.load %arg10[%arg12, %17] : memref<?x24xf64>
              %19 = memref.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %20 = arith.addi %16, %c-21 : index
              %21 = memref.load %arg9[%arg13, %20] : memref<?x24xf64>
              %22 = arith.mulf %19, %21 : f64
              %23 = arith.addf %18, %22 : f64
              %24 = arith.addi %16, %c-21 : index
              memref.store %23, %arg10[%arg12, %24] : memref<?x24xf64>
              %25 = arith.addi %arg14, %c2 : index
              %26 = arith.addi %25, %c-21 : index
              %27 = memref.load %arg10[%arg12, %26] : memref<?x24xf64>
              %28 = memref.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %29 = arith.addi %25, %c-21 : index
              %30 = memref.load %arg9[%arg13, %29] : memref<?x24xf64>
              %31 = arith.mulf %28, %30 : f64
              %32 = arith.addf %27, %31 : f64
              %33 = arith.addi %25, %c-21 : index
              memref.store %32, %arg10[%arg12, %33] : memref<?x24xf64>
              %34 = arith.addi %arg14, %c3 : index
              %35 = arith.addi %34, %c-21 : index
              %36 = memref.load %arg10[%arg12, %35] : memref<?x24xf64>
              %37 = memref.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %38 = arith.addi %34, %c-21 : index
              %39 = memref.load %arg9[%arg13, %38] : memref<?x24xf64>
              %40 = arith.mulf %37, %39 : f64
              %41 = arith.addf %36, %40 : f64
              %42 = arith.addi %34, %c-21 : index
              memref.store %41, %arg10[%arg12, %42] : memref<?x24xf64>
            }
            %3 = memref.load %arg10[%arg12, %c23] : memref<?x24xf64>
            %4 = memref.load %arg6[%arg12, %arg13] : memref<?x18xf64>
            %5 = memref.load %arg9[%arg13, %c23] : memref<?x24xf64>
            %6 = arith.mulf %4, %5 : f64
            %7 = arith.addf %3, %6 : f64
            memref.store %7, %arg10[%arg12, %c23] : memref<?x24xf64>
          }
        }
      }
    }
    return
  }
}

