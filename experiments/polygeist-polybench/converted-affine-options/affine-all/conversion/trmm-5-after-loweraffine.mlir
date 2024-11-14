module {
  func.func @kernel_trmm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x20xf64>, %arg4: memref<?x30xf64>) {
    %c0 = arith.constant 0 : index
    %c19 = arith.constant 19 : index
    %c1 = arith.constant 1 : index
    scf.for %arg5 = %c0 to %c19 step %c1 {
      %c0_3 = arith.constant 0 : index
      %c-1 = arith.constant -1 : index
      %0 = arith.muli %arg5, %c-1 : index
      %c19_4 = arith.constant 19 : index
      %1 = arith.addi %0, %c19_4 : index
      %c1_5 = arith.constant 1 : index
      scf.for %arg6 = %c0_3 to %1 step %c1_5 {
        %2 = arith.addi %arg5, %arg6 : index
        %c1_6 = arith.constant 1 : index
        %3 = arith.addi %2, %c1_6 : index
        %c0_7 = arith.constant 0 : index
        %c7 = arith.constant 7 : index
        %c1_8 = arith.constant 1 : index
        scf.parallel (%arg7) = (%c0_7) to (%c7) step (%c1_8) {
          %c4 = arith.constant 4 : index
          %4 = arith.muli %arg7, %c4 : index
          %5 = memref.load %arg4[%arg5, %4] : memref<?x30xf64>
          %6 = memref.load %arg3[%3, %arg5] : memref<?x20xf64>
          %7 = memref.load %arg4[%3, %4] : memref<?x30xf64>
          %8 = arith.mulf %6, %7 : f64
          %9 = arith.addf %5, %8 : f64
          memref.store %9, %arg4[%arg5, %4] : memref<?x30xf64>
          %c1_11 = arith.constant 1 : index
          %10 = arith.addi %4, %c1_11 : index
          %11 = memref.load %arg4[%arg5, %10] : memref<?x30xf64>
          %12 = memref.load %arg3[%3, %arg5] : memref<?x20xf64>
          %13 = memref.load %arg4[%3, %10] : memref<?x30xf64>
          %14 = arith.mulf %12, %13 : f64
          %15 = arith.addf %11, %14 : f64
          memref.store %15, %arg4[%arg5, %10] : memref<?x30xf64>
          %c2_12 = arith.constant 2 : index
          %16 = arith.addi %4, %c2_12 : index
          %17 = memref.load %arg4[%arg5, %16] : memref<?x30xf64>
          %18 = memref.load %arg3[%3, %arg5] : memref<?x20xf64>
          %19 = memref.load %arg4[%3, %16] : memref<?x30xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = arith.addf %17, %20 : f64
          memref.store %21, %arg4[%arg5, %16] : memref<?x30xf64>
          %c3 = arith.constant 3 : index
          %22 = arith.addi %4, %c3 : index
          %23 = memref.load %arg4[%arg5, %22] : memref<?x30xf64>
          %24 = memref.load %arg3[%3, %arg5] : memref<?x20xf64>
          %25 = memref.load %arg4[%3, %22] : memref<?x30xf64>
          %26 = arith.mulf %24, %25 : f64
          %27 = arith.addf %23, %26 : f64
          memref.store %27, %arg4[%arg5, %22] : memref<?x30xf64>
          scf.reduce 
        }
        %c0_9 = arith.constant 0 : index
        %c2 = arith.constant 2 : index
        %c1_10 = arith.constant 1 : index
        scf.parallel (%arg7) = (%c0_9) to (%c2) step (%c1_10) {
          %c28 = arith.constant 28 : index
          %4 = arith.addi %arg7, %c28 : index
          %5 = memref.load %arg4[%arg5, %4] : memref<?x30xf64>
          %6 = memref.load %arg3[%3, %arg5] : memref<?x20xf64>
          %7 = memref.load %arg4[%3, %4] : memref<?x30xf64>
          %8 = arith.mulf %6, %7 : f64
          %9 = arith.addf %5, %8 : f64
          memref.store %9, %arg4[%arg5, %4] : memref<?x30xf64>
          scf.reduce 
        }
      }
    }
    %c0_0 = arith.constant 0 : index
    %c1_1 = arith.constant 1 : index
    %c1_2 = arith.constant 1 : index
    scf.parallel (%arg5) = (%c0_0) to (%c1_1) step (%c1_2) {
      %c32 = arith.constant 32 : index
      %0 = arith.muli %arg5, %c32 : index
      %c0_3 = arith.constant 0 : index
      %c20 = arith.constant 20 : index
      %c1_4 = arith.constant 1 : index
      scf.for %arg6 = %c0_3 to %c20 step %c1_4 {
        %1 = arith.addi %0, %arg6 : index
        %c0_5 = arith.constant 0 : index
        %c7 = arith.constant 7 : index
        %c1_6 = arith.constant 1 : index
        scf.for %arg7 = %c0_5 to %c7 step %c1_6 {
          %c4 = arith.constant 4 : index
          %2 = arith.muli %arg7, %c4 : index
          %3 = memref.load %arg4[%1, %2] : memref<?x30xf64>
          %4 = arith.mulf %arg2, %3 : f64
          memref.store %4, %arg4[%1, %2] : memref<?x30xf64>
          %c1_9 = arith.constant 1 : index
          %5 = arith.addi %2, %c1_9 : index
          %6 = memref.load %arg4[%1, %5] : memref<?x30xf64>
          %7 = arith.mulf %arg2, %6 : f64
          memref.store %7, %arg4[%1, %5] : memref<?x30xf64>
          %c2_10 = arith.constant 2 : index
          %8 = arith.addi %2, %c2_10 : index
          %9 = memref.load %arg4[%1, %8] : memref<?x30xf64>
          %10 = arith.mulf %arg2, %9 : f64
          memref.store %10, %arg4[%1, %8] : memref<?x30xf64>
          %c3 = arith.constant 3 : index
          %11 = arith.addi %2, %c3 : index
          %12 = memref.load %arg4[%1, %11] : memref<?x30xf64>
          %13 = arith.mulf %arg2, %12 : f64
          memref.store %13, %arg4[%1, %11] : memref<?x30xf64>
        }
        %c0_7 = arith.constant 0 : index
        %c2 = arith.constant 2 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg7 = %c0_7 to %c2 step %c1_8 {
          %c28 = arith.constant 28 : index
          %2 = arith.addi %arg7, %c28 : index
          %3 = memref.load %arg4[%1, %2] : memref<?x30xf64>
          %4 = arith.mulf %arg2, %3 : f64
          memref.store %4, %arg4[%1, %2] : memref<?x30xf64>
        }
      }
      scf.reduce 
    }
    return
  }
}

