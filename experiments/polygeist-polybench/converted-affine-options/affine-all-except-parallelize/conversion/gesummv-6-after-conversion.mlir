module {
  func.func @kernel_gesummv(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>) {
    %c30 = arith.constant 30 : index
    %c28 = arith.constant 28 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c7 = arith.constant 7 : index
    %c1 = arith.constant 1 : index
    scf.for %arg8 = %c0 to %c7 step %c1 {
      %0 = arith.muli %arg8, %c4 : index
      scf.for %arg9 = %c0 to %c1 step %c1 {
        %1 = arith.muli %arg9, %c4 : index
        %2 = arith.addi %0, %1 : index
        memref.store %cst, %arg7[%2] : memref<?xf64>
        %3 = arith.addi %2, %c1 : index
        memref.store %cst, %arg7[%3] : memref<?xf64>
        %4 = arith.addi %2, %c2 : index
        memref.store %cst, %arg7[%4] : memref<?xf64>
        %5 = arith.addi %2, %c3 : index
        memref.store %cst, %arg7[%5] : memref<?xf64>
      }
    }
    scf.for %arg8 = %c0 to %c2 step %c1 {
      %0 = arith.addi %arg8, %c28 : index
      scf.for %arg9 = %c0 to %c1 step %c1 {
        %1 = arith.addi %0, %arg9 : index
        memref.store %cst, %arg7[%1] : memref<?xf64>
      }
    }
    scf.for %arg8 = %c0 to %c30 step %c1 {
      scf.for %arg9 = %c0 to %c1 step %c1 {
        %0 = arith.addi %arg8, %arg9 : index
        scf.for %arg10 = %c0 to %c7 step %c1 {
          %1 = arith.muli %arg10, %c4 : index
          %2 = memref.load %arg4[%0, %1] : memref<?x30xf64>
          %3 = memref.load %arg6[%1] : memref<?xf64>
          %4 = arith.mulf %2, %3 : f64
          %5 = memref.load %arg7[%0] : memref<?xf64>
          %6 = arith.addf %4, %5 : f64
          memref.store %6, %arg7[%0] : memref<?xf64>
          %7 = arith.addi %1, %c1 : index
          %8 = memref.load %arg4[%0, %7] : memref<?x30xf64>
          %9 = memref.load %arg6[%7] : memref<?xf64>
          %10 = arith.mulf %8, %9 : f64
          %11 = memref.load %arg7[%0] : memref<?xf64>
          %12 = arith.addf %10, %11 : f64
          memref.store %12, %arg7[%0] : memref<?xf64>
          %13 = arith.addi %1, %c2 : index
          %14 = memref.load %arg4[%0, %13] : memref<?x30xf64>
          %15 = memref.load %arg6[%13] : memref<?xf64>
          %16 = arith.mulf %14, %15 : f64
          %17 = memref.load %arg7[%0] : memref<?xf64>
          %18 = arith.addf %16, %17 : f64
          memref.store %18, %arg7[%0] : memref<?xf64>
          %19 = arith.addi %1, %c3 : index
          %20 = memref.load %arg4[%0, %19] : memref<?x30xf64>
          %21 = memref.load %arg6[%19] : memref<?xf64>
          %22 = arith.mulf %20, %21 : f64
          %23 = memref.load %arg7[%0] : memref<?xf64>
          %24 = arith.addf %22, %23 : f64
          memref.store %24, %arg7[%0] : memref<?xf64>
        }
        scf.for %arg10 = %c0 to %c2 step %c1 {
          %1 = arith.addi %arg10, %c28 : index
          %2 = memref.load %arg4[%0, %1] : memref<?x30xf64>
          %3 = memref.load %arg6[%1] : memref<?xf64>
          %4 = arith.mulf %2, %3 : f64
          %5 = memref.load %arg7[%0] : memref<?xf64>
          %6 = arith.addf %4, %5 : f64
          memref.store %6, %arg7[%0] : memref<?xf64>
        }
      }
    }
    scf.for %arg8 = %c0 to %c7 step %c1 {
      %0 = arith.muli %arg8, %c4 : index
      scf.for %arg9 = %c0 to %c1 step %c1 {
        %1 = arith.muli %arg9, %c4 : index
        %2 = arith.addi %0, %1 : index
        memref.store %cst, %arg5[%2] : memref<?xf64>
        %3 = arith.addi %2, %c1 : index
        memref.store %cst, %arg5[%3] : memref<?xf64>
        %4 = arith.addi %2, %c2 : index
        memref.store %cst, %arg5[%4] : memref<?xf64>
        %5 = arith.addi %2, %c3 : index
        memref.store %cst, %arg5[%5] : memref<?xf64>
      }
    }
    scf.for %arg8 = %c0 to %c2 step %c1 {
      %0 = arith.addi %arg8, %c28 : index
      scf.for %arg9 = %c0 to %c1 step %c1 {
        %1 = arith.addi %0, %arg9 : index
        memref.store %cst, %arg5[%1] : memref<?xf64>
      }
    }
    scf.for %arg8 = %c0 to %c30 step %c1 {
      scf.for %arg9 = %c0 to %c1 step %c1 {
        %0 = arith.addi %arg8, %arg9 : index
        scf.for %arg10 = %c0 to %c7 step %c1 {
          %1 = arith.muli %arg10, %c4 : index
          %2 = memref.load %arg3[%0, %1] : memref<?x30xf64>
          %3 = memref.load %arg6[%1] : memref<?xf64>
          %4 = arith.mulf %2, %3 : f64
          %5 = memref.load %arg5[%0] : memref<?xf64>
          %6 = arith.addf %4, %5 : f64
          memref.store %6, %arg5[%0] : memref<?xf64>
          %7 = arith.addi %1, %c1 : index
          %8 = memref.load %arg3[%0, %7] : memref<?x30xf64>
          %9 = memref.load %arg6[%7] : memref<?xf64>
          %10 = arith.mulf %8, %9 : f64
          %11 = memref.load %arg5[%0] : memref<?xf64>
          %12 = arith.addf %10, %11 : f64
          memref.store %12, %arg5[%0] : memref<?xf64>
          %13 = arith.addi %1, %c2 : index
          %14 = memref.load %arg3[%0, %13] : memref<?x30xf64>
          %15 = memref.load %arg6[%13] : memref<?xf64>
          %16 = arith.mulf %14, %15 : f64
          %17 = memref.load %arg5[%0] : memref<?xf64>
          %18 = arith.addf %16, %17 : f64
          memref.store %18, %arg5[%0] : memref<?xf64>
          %19 = arith.addi %1, %c3 : index
          %20 = memref.load %arg3[%0, %19] : memref<?x30xf64>
          %21 = memref.load %arg6[%19] : memref<?xf64>
          %22 = arith.mulf %20, %21 : f64
          %23 = memref.load %arg5[%0] : memref<?xf64>
          %24 = arith.addf %22, %23 : f64
          memref.store %24, %arg5[%0] : memref<?xf64>
        }
        scf.for %arg10 = %c0 to %c2 step %c1 {
          %1 = arith.addi %arg10, %c28 : index
          %2 = memref.load %arg3[%0, %1] : memref<?x30xf64>
          %3 = memref.load %arg6[%1] : memref<?xf64>
          %4 = arith.mulf %2, %3 : f64
          %5 = memref.load %arg5[%0] : memref<?xf64>
          %6 = arith.addf %4, %5 : f64
          memref.store %6, %arg5[%0] : memref<?xf64>
        }
      }
    }
    scf.for %arg8 = %c0 to %c7 step %c1 {
      %0 = arith.muli %arg8, %c4 : index
      scf.for %arg9 = %c0 to %c1 step %c1 {
        %1 = arith.muli %arg9, %c4 : index
        %2 = arith.addi %0, %1 : index
        %3 = memref.load %arg5[%2] : memref<?xf64>
        %4 = arith.mulf %arg1, %3 : f64
        %5 = memref.load %arg7[%2] : memref<?xf64>
        %6 = arith.mulf %arg2, %5 : f64
        %7 = arith.addf %4, %6 : f64
        memref.store %7, %arg7[%2] : memref<?xf64>
        %8 = arith.addi %2, %c1 : index
        %9 = memref.load %arg5[%8] : memref<?xf64>
        %10 = arith.mulf %arg1, %9 : f64
        %11 = memref.load %arg7[%8] : memref<?xf64>
        %12 = arith.mulf %arg2, %11 : f64
        %13 = arith.addf %10, %12 : f64
        memref.store %13, %arg7[%8] : memref<?xf64>
        %14 = arith.addi %2, %c2 : index
        %15 = memref.load %arg5[%14] : memref<?xf64>
        %16 = arith.mulf %arg1, %15 : f64
        %17 = memref.load %arg7[%14] : memref<?xf64>
        %18 = arith.mulf %arg2, %17 : f64
        %19 = arith.addf %16, %18 : f64
        memref.store %19, %arg7[%14] : memref<?xf64>
        %20 = arith.addi %2, %c3 : index
        %21 = memref.load %arg5[%20] : memref<?xf64>
        %22 = arith.mulf %arg1, %21 : f64
        %23 = memref.load %arg7[%20] : memref<?xf64>
        %24 = arith.mulf %arg2, %23 : f64
        %25 = arith.addf %22, %24 : f64
        memref.store %25, %arg7[%20] : memref<?xf64>
      }
    }
    scf.for %arg8 = %c0 to %c2 step %c1 {
      %0 = arith.addi %arg8, %c28 : index
      scf.for %arg9 = %c0 to %c1 step %c1 {
        %1 = arith.addi %0, %arg9 : index
        %2 = memref.load %arg5[%1] : memref<?xf64>
        %3 = arith.mulf %arg1, %2 : f64
        %4 = memref.load %arg7[%1] : memref<?xf64>
        %5 = arith.mulf %arg2, %4 : f64
        %6 = arith.addf %3, %5 : f64
        memref.store %6, %arg7[%1] : memref<?xf64>
      }
    }
    return
  }
}

