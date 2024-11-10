module {
  func.func @kernel_trmm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x20xf64>, %arg4: memref<?x30xf64>) {
    %c0 = arith.constant 0 : index
    %c19 = arith.constant 19 : index
    %c1 = arith.constant 1 : index
    scf.for %arg5 = %c0 to %c19 step %c1 {
      %c0_2 = arith.constant 0 : index
      %c-1 = arith.constant -1 : index
      %0 = arith.muli %arg5, %c-1 : index
      %c19_3 = arith.constant 19 : index
      %1 = arith.addi %0, %c19_3 : index
      %c1_4 = arith.constant 1 : index
      scf.for %arg6 = %c0_2 to %1 step %c1_4 {
        %2 = arith.addi %arg5, %arg6 : index
        %c1_5 = arith.constant 1 : index
        %3 = arith.addi %2, %c1_5 : index
        %4 = memref.load %arg3[%3, %arg5] : memref<?x20xf64>
        %5 = memref.load %arg3[%3, %arg5] : memref<?x20xf64>
        %6 = memref.load %arg3[%3, %arg5] : memref<?x20xf64>
        %7 = memref.load %arg3[%3, %arg5] : memref<?x20xf64>
        %c0_6 = arith.constant 0 : index
        %c7 = arith.constant 7 : index
        %c1_7 = arith.constant 1 : index
        scf.for %arg7 = %c0_6 to %c7 step %c1_7 {
          %c4 = arith.constant 4 : index
          %9 = arith.muli %arg7, %c4 : index
          %10 = memref.load %arg4[%arg5, %9] : memref<?x30xf64>
          %11 = memref.load %arg4[%3, %9] : memref<?x30xf64>
          %12 = arith.mulf %4, %11 : f64
          %13 = arith.addf %10, %12 : f64
          memref.store %13, %arg4[%arg5, %9] : memref<?x30xf64>
          %c1_10 = arith.constant 1 : index
          %14 = arith.addi %9, %c1_10 : index
          %15 = memref.load %arg4[%arg5, %14] : memref<?x30xf64>
          %16 = memref.load %arg4[%3, %14] : memref<?x30xf64>
          %17 = arith.mulf %5, %16 : f64
          %18 = arith.addf %15, %17 : f64
          memref.store %18, %arg4[%arg5, %14] : memref<?x30xf64>
          %c2_11 = arith.constant 2 : index
          %19 = arith.addi %9, %c2_11 : index
          %20 = memref.load %arg4[%arg5, %19] : memref<?x30xf64>
          %21 = memref.load %arg4[%3, %19] : memref<?x30xf64>
          %22 = arith.mulf %6, %21 : f64
          %23 = arith.addf %20, %22 : f64
          memref.store %23, %arg4[%arg5, %19] : memref<?x30xf64>
          %c3 = arith.constant 3 : index
          %24 = arith.addi %9, %c3 : index
          %25 = memref.load %arg4[%arg5, %24] : memref<?x30xf64>
          %26 = memref.load %arg4[%3, %24] : memref<?x30xf64>
          %27 = arith.mulf %7, %26 : f64
          %28 = arith.addf %25, %27 : f64
          memref.store %28, %arg4[%arg5, %24] : memref<?x30xf64>
        }
        %8 = memref.load %arg3[%3, %arg5] : memref<?x20xf64>
        %c0_8 = arith.constant 0 : index
        %c2 = arith.constant 2 : index
        %c1_9 = arith.constant 1 : index
        scf.for %arg7 = %c0_8 to %c2 step %c1_9 {
          %c28 = arith.constant 28 : index
          %9 = arith.addi %arg7, %c28 : index
          %10 = memref.load %arg4[%arg5, %9] : memref<?x30xf64>
          %11 = memref.load %arg4[%3, %9] : memref<?x30xf64>
          %12 = arith.mulf %8, %11 : f64
          %13 = arith.addf %10, %12 : f64
          memref.store %13, %arg4[%arg5, %9] : memref<?x30xf64>
        }
      }
    }
    %c0_0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1_1 = arith.constant 1 : index
    scf.for %arg5 = %c0_0 to %c20 step %c1_1 {
      %c0_2 = arith.constant 0 : index
      %c1_3 = arith.constant 1 : index
      %c1_4 = arith.constant 1 : index
      scf.for %arg6 = %c0_2 to %c1_3 step %c1_4 {
        %0 = arith.addi %arg5, %arg6 : index
        %c0_5 = arith.constant 0 : index
        %c7 = arith.constant 7 : index
        %c1_6 = arith.constant 1 : index
        scf.for %arg7 = %c0_5 to %c7 step %c1_6 {
          %c4 = arith.constant 4 : index
          %1 = arith.muli %arg7, %c4 : index
          %2 = memref.load %arg4[%0, %1] : memref<?x30xf64>
          %3 = arith.mulf %arg2, %2 : f64
          memref.store %3, %arg4[%0, %1] : memref<?x30xf64>
          %c1_9 = arith.constant 1 : index
          %4 = arith.addi %1, %c1_9 : index
          %5 = memref.load %arg4[%0, %4] : memref<?x30xf64>
          %6 = arith.mulf %arg2, %5 : f64
          memref.store %6, %arg4[%0, %4] : memref<?x30xf64>
          %c2_10 = arith.constant 2 : index
          %7 = arith.addi %1, %c2_10 : index
          %8 = memref.load %arg4[%0, %7] : memref<?x30xf64>
          %9 = arith.mulf %arg2, %8 : f64
          memref.store %9, %arg4[%0, %7] : memref<?x30xf64>
          %c3 = arith.constant 3 : index
          %10 = arith.addi %1, %c3 : index
          %11 = memref.load %arg4[%0, %10] : memref<?x30xf64>
          %12 = arith.mulf %arg2, %11 : f64
          memref.store %12, %arg4[%0, %10] : memref<?x30xf64>
        }
        %c0_7 = arith.constant 0 : index
        %c2 = arith.constant 2 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg7 = %c0_7 to %c2 step %c1_8 {
          %c28 = arith.constant 28 : index
          %1 = arith.addi %arg7, %c28 : index
          %2 = memref.load %arg4[%0, %1] : memref<?x30xf64>
          %3 = arith.mulf %arg2, %2 : f64
          memref.store %3, %arg4[%0, %1] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

