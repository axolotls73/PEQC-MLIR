module {
  func.func @kernel_3mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: memref<?x18xf64>, %arg6: memref<?x20xf64>, %arg7: memref<?x18xf64>, %arg8: memref<?x22xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x22xf64>, %arg11: memref<?x22xf64>) {
    %c24 = arith.constant 24 : index
    %c22 = arith.constant 22 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c20 = arith.constant 20 : index
    %c18 = arith.constant 18 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    scf.for %arg12 = %c0 to %c16 step %c1 {
      scf.for %arg13 = %c0 to %c18 step %c1 {
        memref.store %cst, %arg5[%arg12, %arg13] : memref<?x18xf64>
        scf.for %arg14 = %c0 to %c20 step %c4 {
          %0 = memref.load %arg6[%arg12, %arg14] : memref<?x20xf64>
          %1 = memref.load %arg7[%arg14, %arg13] : memref<?x18xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = memref.load %arg5[%arg12, %arg13] : memref<?x18xf64>
          %4 = arith.addf %3, %2 : f64
          memref.store %4, %arg5[%arg12, %arg13] : memref<?x18xf64>
          %5 = arith.addi %arg14, %c1 : index
          %6 = memref.load %arg6[%arg12, %5] : memref<?x20xf64>
          %7 = memref.load %arg7[%5, %arg13] : memref<?x18xf64>
          %8 = arith.mulf %6, %7 : f64
          %9 = memref.load %arg5[%arg12, %arg13] : memref<?x18xf64>
          %10 = arith.addf %9, %8 : f64
          memref.store %10, %arg5[%arg12, %arg13] : memref<?x18xf64>
          %11 = arith.addi %arg14, %c2 : index
          %12 = memref.load %arg6[%arg12, %11] : memref<?x20xf64>
          %13 = memref.load %arg7[%11, %arg13] : memref<?x18xf64>
          %14 = arith.mulf %12, %13 : f64
          %15 = memref.load %arg5[%arg12, %arg13] : memref<?x18xf64>
          %16 = arith.addf %15, %14 : f64
          memref.store %16, %arg5[%arg12, %arg13] : memref<?x18xf64>
          %17 = arith.addi %arg14, %c3 : index
          %18 = memref.load %arg6[%arg12, %17] : memref<?x20xf64>
          %19 = memref.load %arg7[%17, %arg13] : memref<?x18xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = memref.load %arg5[%arg12, %arg13] : memref<?x18xf64>
          %22 = arith.addf %21, %20 : f64
          memref.store %22, %arg5[%arg12, %arg13] : memref<?x18xf64>
        }
      }
    }
    scf.for %arg12 = %c0 to %c18 step %c1 {
      scf.for %arg13 = %c0 to %c22 step %c1 {
        memref.store %cst, %arg8[%arg12, %arg13] : memref<?x22xf64>
        scf.for %arg14 = %c0 to %c24 step %c4 {
          %0 = memref.load %arg9[%arg12, %arg14] : memref<?x24xf64>
          %1 = memref.load %arg10[%arg14, %arg13] : memref<?x22xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = memref.load %arg8[%arg12, %arg13] : memref<?x22xf64>
          %4 = arith.addf %3, %2 : f64
          memref.store %4, %arg8[%arg12, %arg13] : memref<?x22xf64>
          %5 = arith.addi %arg14, %c1 : index
          %6 = memref.load %arg9[%arg12, %5] : memref<?x24xf64>
          %7 = memref.load %arg10[%5, %arg13] : memref<?x22xf64>
          %8 = arith.mulf %6, %7 : f64
          %9 = memref.load %arg8[%arg12, %arg13] : memref<?x22xf64>
          %10 = arith.addf %9, %8 : f64
          memref.store %10, %arg8[%arg12, %arg13] : memref<?x22xf64>
          %11 = arith.addi %arg14, %c2 : index
          %12 = memref.load %arg9[%arg12, %11] : memref<?x24xf64>
          %13 = memref.load %arg10[%11, %arg13] : memref<?x22xf64>
          %14 = arith.mulf %12, %13 : f64
          %15 = memref.load %arg8[%arg12, %arg13] : memref<?x22xf64>
          %16 = arith.addf %15, %14 : f64
          memref.store %16, %arg8[%arg12, %arg13] : memref<?x22xf64>
          %17 = arith.addi %arg14, %c3 : index
          %18 = memref.load %arg9[%arg12, %17] : memref<?x24xf64>
          %19 = memref.load %arg10[%17, %arg13] : memref<?x22xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = memref.load %arg8[%arg12, %arg13] : memref<?x22xf64>
          %22 = arith.addf %21, %20 : f64
          memref.store %22, %arg8[%arg12, %arg13] : memref<?x22xf64>
        }
      }
    }
    scf.for %arg12 = %c0 to %c16 step %c1 {
      scf.for %arg13 = %c0 to %c22 step %c1 {
        memref.store %cst, %arg11[%arg12, %arg13] : memref<?x22xf64>
        scf.for %arg14 = %c0 to %c16 step %c4 {
          %0 = memref.load %arg5[%arg12, %arg14] : memref<?x18xf64>
          %1 = memref.load %arg8[%arg14, %arg13] : memref<?x22xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = memref.load %arg11[%arg12, %arg13] : memref<?x22xf64>
          %4 = arith.addf %3, %2 : f64
          memref.store %4, %arg11[%arg12, %arg13] : memref<?x22xf64>
          %5 = arith.addi %arg14, %c1 : index
          %6 = memref.load %arg5[%arg12, %5] : memref<?x18xf64>
          %7 = memref.load %arg8[%5, %arg13] : memref<?x22xf64>
          %8 = arith.mulf %6, %7 : f64
          %9 = memref.load %arg11[%arg12, %arg13] : memref<?x22xf64>
          %10 = arith.addf %9, %8 : f64
          memref.store %10, %arg11[%arg12, %arg13] : memref<?x22xf64>
          %11 = arith.addi %arg14, %c2 : index
          %12 = memref.load %arg5[%arg12, %11] : memref<?x18xf64>
          %13 = memref.load %arg8[%11, %arg13] : memref<?x22xf64>
          %14 = arith.mulf %12, %13 : f64
          %15 = memref.load %arg11[%arg12, %arg13] : memref<?x22xf64>
          %16 = arith.addf %15, %14 : f64
          memref.store %16, %arg11[%arg12, %arg13] : memref<?x22xf64>
          %17 = arith.addi %arg14, %c3 : index
          %18 = memref.load %arg5[%arg12, %17] : memref<?x18xf64>
          %19 = memref.load %arg8[%17, %arg13] : memref<?x22xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = memref.load %arg11[%arg12, %arg13] : memref<?x22xf64>
          %22 = arith.addf %21, %20 : f64
          memref.store %22, %arg11[%arg12, %arg13] : memref<?x22xf64>
        }
        scf.for %arg14 = %c16 to %c18 step %c1 {
          %0 = memref.load %arg5[%arg12, %arg14] : memref<?x18xf64>
          %1 = memref.load %arg8[%arg14, %arg13] : memref<?x22xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = memref.load %arg11[%arg12, %arg13] : memref<?x22xf64>
          %4 = arith.addf %3, %2 : f64
          memref.store %4, %arg11[%arg12, %arg13] : memref<?x22xf64>
        }
      }
    }
    return
  }
}

