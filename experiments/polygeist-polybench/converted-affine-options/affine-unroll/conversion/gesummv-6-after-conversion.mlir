module {
  func.func @kernel_gesummv(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>) {
    %c30 = arith.constant 30 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c28 = arith.constant 28 : index
    %c4 = arith.constant 4 : index
    scf.for %arg8 = %c0 to %c28 step %c4 {
      memref.store %cst, %arg7[%arg8] : memref<?xf64>
      %0 = arith.addi %arg8, %c1 : index
      memref.store %cst, %arg7[%0] : memref<?xf64>
      %1 = arith.addi %arg8, %c2 : index
      memref.store %cst, %arg7[%1] : memref<?xf64>
      %2 = arith.addi %arg8, %c3 : index
      memref.store %cst, %arg7[%2] : memref<?xf64>
    }
    scf.for %arg8 = %c28 to %c30 step %c1 {
      memref.store %cst, %arg7[%arg8] : memref<?xf64>
    }
    scf.for %arg8 = %c0 to %c30 step %c1 {
      scf.for %arg9 = %c0 to %c28 step %c4 {
        %0 = memref.load %arg4[%arg8, %arg9] : memref<?x30xf64>
        %1 = memref.load %arg6[%arg9] : memref<?xf64>
        %2 = arith.mulf %0, %1 : f64
        %3 = memref.load %arg7[%arg8] : memref<?xf64>
        %4 = arith.addf %2, %3 : f64
        memref.store %4, %arg7[%arg8] : memref<?xf64>
        %5 = arith.addi %arg9, %c1 : index
        %6 = memref.load %arg4[%arg8, %5] : memref<?x30xf64>
        %7 = memref.load %arg6[%5] : memref<?xf64>
        %8 = arith.mulf %6, %7 : f64
        %9 = memref.load %arg7[%arg8] : memref<?xf64>
        %10 = arith.addf %8, %9 : f64
        memref.store %10, %arg7[%arg8] : memref<?xf64>
        %11 = arith.addi %arg9, %c2 : index
        %12 = memref.load %arg4[%arg8, %11] : memref<?x30xf64>
        %13 = memref.load %arg6[%11] : memref<?xf64>
        %14 = arith.mulf %12, %13 : f64
        %15 = memref.load %arg7[%arg8] : memref<?xf64>
        %16 = arith.addf %14, %15 : f64
        memref.store %16, %arg7[%arg8] : memref<?xf64>
        %17 = arith.addi %arg9, %c3 : index
        %18 = memref.load %arg4[%arg8, %17] : memref<?x30xf64>
        %19 = memref.load %arg6[%17] : memref<?xf64>
        %20 = arith.mulf %18, %19 : f64
        %21 = memref.load %arg7[%arg8] : memref<?xf64>
        %22 = arith.addf %20, %21 : f64
        memref.store %22, %arg7[%arg8] : memref<?xf64>
      }
      scf.for %arg9 = %c28 to %c30 step %c1 {
        %0 = memref.load %arg4[%arg8, %arg9] : memref<?x30xf64>
        %1 = memref.load %arg6[%arg9] : memref<?xf64>
        %2 = arith.mulf %0, %1 : f64
        %3 = memref.load %arg7[%arg8] : memref<?xf64>
        %4 = arith.addf %2, %3 : f64
        memref.store %4, %arg7[%arg8] : memref<?xf64>
      }
    }
    scf.for %arg8 = %c0 to %c28 step %c4 {
      memref.store %cst, %arg5[%arg8] : memref<?xf64>
      %0 = arith.addi %arg8, %c1 : index
      memref.store %cst, %arg5[%0] : memref<?xf64>
      %1 = arith.addi %arg8, %c2 : index
      memref.store %cst, %arg5[%1] : memref<?xf64>
      %2 = arith.addi %arg8, %c3 : index
      memref.store %cst, %arg5[%2] : memref<?xf64>
    }
    scf.for %arg8 = %c28 to %c30 step %c1 {
      memref.store %cst, %arg5[%arg8] : memref<?xf64>
    }
    scf.for %arg8 = %c0 to %c30 step %c1 {
      scf.for %arg9 = %c0 to %c28 step %c4 {
        %0 = memref.load %arg3[%arg8, %arg9] : memref<?x30xf64>
        %1 = memref.load %arg6[%arg9] : memref<?xf64>
        %2 = arith.mulf %0, %1 : f64
        %3 = memref.load %arg5[%arg8] : memref<?xf64>
        %4 = arith.addf %2, %3 : f64
        memref.store %4, %arg5[%arg8] : memref<?xf64>
        %5 = arith.addi %arg9, %c1 : index
        %6 = memref.load %arg3[%arg8, %5] : memref<?x30xf64>
        %7 = memref.load %arg6[%5] : memref<?xf64>
        %8 = arith.mulf %6, %7 : f64
        %9 = memref.load %arg5[%arg8] : memref<?xf64>
        %10 = arith.addf %8, %9 : f64
        memref.store %10, %arg5[%arg8] : memref<?xf64>
        %11 = arith.addi %arg9, %c2 : index
        %12 = memref.load %arg3[%arg8, %11] : memref<?x30xf64>
        %13 = memref.load %arg6[%11] : memref<?xf64>
        %14 = arith.mulf %12, %13 : f64
        %15 = memref.load %arg5[%arg8] : memref<?xf64>
        %16 = arith.addf %14, %15 : f64
        memref.store %16, %arg5[%arg8] : memref<?xf64>
        %17 = arith.addi %arg9, %c3 : index
        %18 = memref.load %arg3[%arg8, %17] : memref<?x30xf64>
        %19 = memref.load %arg6[%17] : memref<?xf64>
        %20 = arith.mulf %18, %19 : f64
        %21 = memref.load %arg5[%arg8] : memref<?xf64>
        %22 = arith.addf %20, %21 : f64
        memref.store %22, %arg5[%arg8] : memref<?xf64>
      }
      scf.for %arg9 = %c28 to %c30 step %c1 {
        %0 = memref.load %arg3[%arg8, %arg9] : memref<?x30xf64>
        %1 = memref.load %arg6[%arg9] : memref<?xf64>
        %2 = arith.mulf %0, %1 : f64
        %3 = memref.load %arg5[%arg8] : memref<?xf64>
        %4 = arith.addf %2, %3 : f64
        memref.store %4, %arg5[%arg8] : memref<?xf64>
      }
    }
    scf.for %arg8 = %c0 to %c28 step %c4 {
      %0 = memref.load %arg5[%arg8] : memref<?xf64>
      %1 = arith.mulf %arg1, %0 : f64
      %2 = memref.load %arg7[%arg8] : memref<?xf64>
      %3 = arith.mulf %arg2, %2 : f64
      %4 = arith.addf %1, %3 : f64
      memref.store %4, %arg7[%arg8] : memref<?xf64>
      %5 = arith.addi %arg8, %c1 : index
      %6 = memref.load %arg5[%5] : memref<?xf64>
      %7 = arith.mulf %arg1, %6 : f64
      %8 = memref.load %arg7[%5] : memref<?xf64>
      %9 = arith.mulf %arg2, %8 : f64
      %10 = arith.addf %7, %9 : f64
      memref.store %10, %arg7[%5] : memref<?xf64>
      %11 = arith.addi %arg8, %c2 : index
      %12 = memref.load %arg5[%11] : memref<?xf64>
      %13 = arith.mulf %arg1, %12 : f64
      %14 = memref.load %arg7[%11] : memref<?xf64>
      %15 = arith.mulf %arg2, %14 : f64
      %16 = arith.addf %13, %15 : f64
      memref.store %16, %arg7[%11] : memref<?xf64>
      %17 = arith.addi %arg8, %c3 : index
      %18 = memref.load %arg5[%17] : memref<?xf64>
      %19 = arith.mulf %arg1, %18 : f64
      %20 = memref.load %arg7[%17] : memref<?xf64>
      %21 = arith.mulf %arg2, %20 : f64
      %22 = arith.addf %19, %21 : f64
      memref.store %22, %arg7[%17] : memref<?xf64>
    }
    scf.for %arg8 = %c28 to %c30 step %c1 {
      %0 = memref.load %arg5[%arg8] : memref<?xf64>
      %1 = arith.mulf %arg1, %0 : f64
      %2 = memref.load %arg7[%arg8] : memref<?xf64>
      %3 = arith.mulf %arg2, %2 : f64
      %4 = arith.addf %1, %3 : f64
      memref.store %4, %arg7[%arg8] : memref<?xf64>
    }
    return
  }
}

