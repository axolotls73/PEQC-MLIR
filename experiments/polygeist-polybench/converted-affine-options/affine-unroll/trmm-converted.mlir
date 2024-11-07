module {
  func.func @kernel_trmm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x20xf64>, %arg4: memref<?x30xf64>) {
    %c30 = arith.constant 30 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c28 = arith.constant 28 : index
    %c20 = arith.constant 20 : index
    %c0 = arith.constant 0 : index
    %c19 = arith.constant 19 : index
    %c1 = arith.constant 1 : index
    scf.for %arg5 = %c0 to %c19 step %c1 {
      %0 = arith.addi %arg5, %c1 : index
      scf.for %arg6 = %0 to %c20 step %c1 {
        scf.for %arg7 = %c0 to %c28 step %c4 {
          %1 = memref.load %arg4[%arg5, %arg7] : memref<?x30xf64>
          %2 = memref.load %arg3[%arg6, %arg5] : memref<?x20xf64>
          %3 = memref.load %arg4[%arg6, %arg7] : memref<?x30xf64>
          %4 = arith.mulf %2, %3 : f64
          %5 = arith.addf %1, %4 : f64
          memref.store %5, %arg4[%arg5, %arg7] : memref<?x30xf64>
          %6 = arith.addi %arg7, %c1 : index
          %7 = memref.load %arg4[%arg5, %6] : memref<?x30xf64>
          %8 = memref.load %arg3[%arg6, %arg5] : memref<?x20xf64>
          %9 = memref.load %arg4[%arg6, %6] : memref<?x30xf64>
          %10 = arith.mulf %8, %9 : f64
          %11 = arith.addf %7, %10 : f64
          memref.store %11, %arg4[%arg5, %6] : memref<?x30xf64>
          %12 = arith.addi %arg7, %c2 : index
          %13 = memref.load %arg4[%arg5, %12] : memref<?x30xf64>
          %14 = memref.load %arg3[%arg6, %arg5] : memref<?x20xf64>
          %15 = memref.load %arg4[%arg6, %12] : memref<?x30xf64>
          %16 = arith.mulf %14, %15 : f64
          %17 = arith.addf %13, %16 : f64
          memref.store %17, %arg4[%arg5, %12] : memref<?x30xf64>
          %18 = arith.addi %arg7, %c3 : index
          %19 = memref.load %arg4[%arg5, %18] : memref<?x30xf64>
          %20 = memref.load %arg3[%arg6, %arg5] : memref<?x20xf64>
          %21 = memref.load %arg4[%arg6, %18] : memref<?x30xf64>
          %22 = arith.mulf %20, %21 : f64
          %23 = arith.addf %19, %22 : f64
          memref.store %23, %arg4[%arg5, %18] : memref<?x30xf64>
        }
        scf.for %arg7 = %c28 to %c30 step %c1 {
          %1 = memref.load %arg4[%arg5, %arg7] : memref<?x30xf64>
          %2 = memref.load %arg3[%arg6, %arg5] : memref<?x20xf64>
          %3 = memref.load %arg4[%arg6, %arg7] : memref<?x30xf64>
          %4 = arith.mulf %2, %3 : f64
          %5 = arith.addf %1, %4 : f64
          memref.store %5, %arg4[%arg5, %arg7] : memref<?x30xf64>
        }
      }
    }
    scf.for %arg5 = %c0 to %c20 step %c1 {
      scf.for %arg6 = %c0 to %c28 step %c4 {
        %0 = memref.load %arg4[%arg5, %arg6] : memref<?x30xf64>
        %1 = arith.mulf %arg2, %0 : f64
        memref.store %1, %arg4[%arg5, %arg6] : memref<?x30xf64>
        %2 = arith.addi %arg6, %c1 : index
        %3 = memref.load %arg4[%arg5, %2] : memref<?x30xf64>
        %4 = arith.mulf %arg2, %3 : f64
        memref.store %4, %arg4[%arg5, %2] : memref<?x30xf64>
        %5 = arith.addi %arg6, %c2 : index
        %6 = memref.load %arg4[%arg5, %5] : memref<?x30xf64>
        %7 = arith.mulf %arg2, %6 : f64
        memref.store %7, %arg4[%arg5, %5] : memref<?x30xf64>
        %8 = arith.addi %arg6, %c3 : index
        %9 = memref.load %arg4[%arg5, %8] : memref<?x30xf64>
        %10 = arith.mulf %arg2, %9 : f64
        memref.store %10, %arg4[%arg5, %8] : memref<?x30xf64>
      }
      scf.for %arg6 = %c28 to %c30 step %c1 {
        %0 = memref.load %arg4[%arg5, %arg6] : memref<?x30xf64>
        %1 = arith.mulf %arg2, %0 : f64
        memref.store %1, %arg4[%arg5, %arg6] : memref<?x30xf64>
      }
    }
    return
  }
}

