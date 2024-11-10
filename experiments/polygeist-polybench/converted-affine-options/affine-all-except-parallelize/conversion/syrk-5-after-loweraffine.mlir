module {
  func.func @kernel_syrk(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>) {
    %c0 = arith.constant 0 : index
    %c30 = arith.constant 30 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c30 step %c1 {
      %c0_3 = arith.constant 0 : index
      %c1_4 = arith.constant 1 : index
      %c1_5 = arith.constant 1 : index
      scf.for %arg7 = %c0_3 to %c1_4 step %c1_5 {
        %0 = arith.addi %arg6, %arg7 : index
        %c0_6 = arith.constant 0 : index
        %1 = arith.addi %arg6, %arg7 : index
        %c1_7 = arith.constant 1 : index
        %2 = arith.addi %1, %c1_7 : index
        %c4 = arith.constant 4 : index
        %c0_8 = arith.constant 0 : index
        %c-1 = arith.constant -1 : index
        %3 = arith.cmpi slt, %2, %c0_8 : index
        %4 = arith.subi %c-1, %2 : index
        %5 = arith.select %3, %4, %2 : index
        %6 = arith.divsi %5, %c4 : index
        %7 = arith.subi %c-1, %6 : index
        %8 = arith.select %3, %7, %6 : index
        %c1_9 = arith.constant 1 : index
        scf.for %arg8 = %c0_6 to %8 step %c1_9 {
          %c4_17 = arith.constant 4 : index
          %21 = arith.muli %arg8, %c4_17 : index
          %22 = memref.load %arg4[%0, %21] : memref<?x30xf64>
          %23 = arith.mulf %22, %arg3 : f64
          memref.store %23, %arg4[%0, %21] : memref<?x30xf64>
          %c1_18 = arith.constant 1 : index
          %24 = arith.addi %21, %c1_18 : index
          %25 = memref.load %arg4[%0, %24] : memref<?x30xf64>
          %26 = arith.mulf %25, %arg3 : f64
          memref.store %26, %arg4[%0, %24] : memref<?x30xf64>
          %c2 = arith.constant 2 : index
          %27 = arith.addi %21, %c2 : index
          %28 = memref.load %arg4[%0, %27] : memref<?x30xf64>
          %29 = arith.mulf %28, %arg3 : f64
          memref.store %29, %arg4[%0, %27] : memref<?x30xf64>
          %c3 = arith.constant 3 : index
          %30 = arith.addi %21, %c3 : index
          %31 = memref.load %arg4[%0, %30] : memref<?x30xf64>
          %32 = arith.mulf %31, %arg3 : f64
          memref.store %32, %arg4[%0, %30] : memref<?x30xf64>
        }
        %c0_10 = arith.constant 0 : index
        %9 = arith.addi %arg6, %arg7 : index
        %10 = arith.addi %arg6, %arg7 : index
        %c1_11 = arith.constant 1 : index
        %11 = arith.addi %10, %c1_11 : index
        %c4_12 = arith.constant 4 : index
        %c0_13 = arith.constant 0 : index
        %c-1_14 = arith.constant -1 : index
        %12 = arith.cmpi slt, %11, %c0_13 : index
        %13 = arith.subi %c-1_14, %11 : index
        %14 = arith.select %12, %13, %11 : index
        %15 = arith.divsi %14, %c4_12 : index
        %16 = arith.subi %c-1_14, %15 : index
        %17 = arith.select %12, %16, %15 : index
        %c-4 = arith.constant -4 : index
        %18 = arith.muli %17, %c-4 : index
        %19 = arith.addi %9, %18 : index
        %c1_15 = arith.constant 1 : index
        %20 = arith.addi %19, %c1_15 : index
        %c1_16 = arith.constant 1 : index
        scf.for %arg8 = %c0_10 to %20 step %c1_16 {
          %c1_17 = arith.constant 1 : index
          %21 = arith.addi %0, %c1_17 : index
          %c4_18 = arith.constant 4 : index
          %c0_19 = arith.constant 0 : index
          %c-1_20 = arith.constant -1 : index
          %22 = arith.cmpi slt, %21, %c0_19 : index
          %23 = arith.subi %c-1_20, %21 : index
          %24 = arith.select %22, %23, %21 : index
          %25 = arith.divsi %24, %c4_18 : index
          %26 = arith.subi %c-1_20, %25 : index
          %27 = arith.select %22, %26, %25 : index
          %c4_21 = arith.constant 4 : index
          %28 = arith.muli %27, %c4_21 : index
          %29 = arith.addi %arg8, %28 : index
          %30 = memref.load %arg4[%0, %29] : memref<?x30xf64>
          %31 = arith.mulf %30, %arg3 : f64
          memref.store %31, %arg4[%0, %29] : memref<?x30xf64>
        }
      }
    }
    %c0_0 = arith.constant 0 : index
    %c30_1 = arith.constant 30 : index
    %c1_2 = arith.constant 1 : index
    scf.for %arg6 = %c0_0 to %c30_1 step %c1_2 {
      %c0_3 = arith.constant 0 : index
      %c1_4 = arith.constant 1 : index
      %0 = arith.addi %arg6, %c1_4 : index
      %c1_5 = arith.constant 1 : index
      scf.for %arg7 = %c0_3 to %0 step %c1_5 {
        %c0_6 = arith.constant 0 : index
        %c5 = arith.constant 5 : index
        %c1_7 = arith.constant 1 : index
        scf.for %arg8 = %c0_6 to %c5 step %c1_7 {
          %c4 = arith.constant 4 : index
          %1 = arith.muli %arg8, %c4 : index
          %2 = memref.load %arg4[%arg6, %arg7] : memref<?x30xf64>
          %3 = memref.load %arg5[%arg6, %1] : memref<?x20xf64>
          %4 = arith.mulf %arg2, %3 : f64
          %5 = memref.load %arg5[%arg7, %1] : memref<?x20xf64>
          %6 = arith.mulf %4, %5 : f64
          %7 = arith.addf %2, %6 : f64
          memref.store %7, %arg4[%arg6, %arg7] : memref<?x30xf64>
          %c1_8 = arith.constant 1 : index
          %8 = arith.addi %1, %c1_8 : index
          %9 = memref.load %arg4[%arg6, %arg7] : memref<?x30xf64>
          %10 = memref.load %arg5[%arg6, %8] : memref<?x20xf64>
          %11 = arith.mulf %arg2, %10 : f64
          %12 = memref.load %arg5[%arg7, %8] : memref<?x20xf64>
          %13 = arith.mulf %11, %12 : f64
          %14 = arith.addf %9, %13 : f64
          memref.store %14, %arg4[%arg6, %arg7] : memref<?x30xf64>
          %c2 = arith.constant 2 : index
          %15 = arith.addi %1, %c2 : index
          %16 = memref.load %arg4[%arg6, %arg7] : memref<?x30xf64>
          %17 = memref.load %arg5[%arg6, %15] : memref<?x20xf64>
          %18 = arith.mulf %arg2, %17 : f64
          %19 = memref.load %arg5[%arg7, %15] : memref<?x20xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = arith.addf %16, %20 : f64
          memref.store %21, %arg4[%arg6, %arg7] : memref<?x30xf64>
          %c3 = arith.constant 3 : index
          %22 = arith.addi %1, %c3 : index
          %23 = memref.load %arg4[%arg6, %arg7] : memref<?x30xf64>
          %24 = memref.load %arg5[%arg6, %22] : memref<?x20xf64>
          %25 = arith.mulf %arg2, %24 : f64
          %26 = memref.load %arg5[%arg7, %22] : memref<?x20xf64>
          %27 = arith.mulf %25, %26 : f64
          %28 = arith.addf %23, %27 : f64
          memref.store %28, %arg4[%arg6, %arg7] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

