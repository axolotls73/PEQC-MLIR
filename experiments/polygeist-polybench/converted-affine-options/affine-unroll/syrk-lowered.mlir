module {
  func.func @kernel_syrk(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>) {
    %c0 = arith.constant 0 : index
    %c30 = arith.constant 30 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c30 step %c1 {
      %c0_3 = arith.constant 0 : index
      %c1_4 = arith.constant 1 : index
      %0 = arith.addi %arg6, %c1_4 : index
      %c4 = arith.constant 4 : index
      %c0_5 = arith.constant 0 : index
      %c-1 = arith.constant -1 : index
      %1 = arith.cmpi slt, %0, %c0_5 : index
      %2 = arith.subi %c-1, %0 : index
      %3 = arith.select %1, %2, %0 : index
      %4 = arith.divsi %3, %c4 : index
      %5 = arith.subi %c-1, %4 : index
      %6 = arith.select %1, %5, %4 : index
      %c4_6 = arith.constant 4 : index
      %7 = arith.muli %6, %c4_6 : index
      %c4_7 = arith.constant 4 : index
      scf.for %arg7 = %c0_3 to %7 step %c4_7 {
        %17 = memref.load %arg4[%arg6, %arg7] : memref<?x30xf64>
        %18 = arith.mulf %17, %arg3 : f64
        memref.store %18, %arg4[%arg6, %arg7] : memref<?x30xf64>
        %c1_15 = arith.constant 1 : index
        %19 = arith.addi %arg7, %c1_15 : index
        %20 = memref.load %arg4[%arg6, %19] : memref<?x30xf64>
        %21 = arith.mulf %20, %arg3 : f64
        memref.store %21, %arg4[%arg6, %19] : memref<?x30xf64>
        %c2 = arith.constant 2 : index
        %22 = arith.addi %arg7, %c2 : index
        %23 = memref.load %arg4[%arg6, %22] : memref<?x30xf64>
        %24 = arith.mulf %23, %arg3 : f64
        memref.store %24, %arg4[%arg6, %22] : memref<?x30xf64>
        %c3 = arith.constant 3 : index
        %25 = arith.addi %arg7, %c3 : index
        %26 = memref.load %arg4[%arg6, %25] : memref<?x30xf64>
        %27 = arith.mulf %26, %arg3 : f64
        memref.store %27, %arg4[%arg6, %25] : memref<?x30xf64>
      }
      %c1_8 = arith.constant 1 : index
      %8 = arith.addi %arg6, %c1_8 : index
      %c4_9 = arith.constant 4 : index
      %c0_10 = arith.constant 0 : index
      %c-1_11 = arith.constant -1 : index
      %9 = arith.cmpi slt, %8, %c0_10 : index
      %10 = arith.subi %c-1_11, %8 : index
      %11 = arith.select %9, %10, %8 : index
      %12 = arith.divsi %11, %c4_9 : index
      %13 = arith.subi %c-1_11, %12 : index
      %14 = arith.select %9, %13, %12 : index
      %c4_12 = arith.constant 4 : index
      %15 = arith.muli %14, %c4_12 : index
      %c1_13 = arith.constant 1 : index
      %16 = arith.addi %arg6, %c1_13 : index
      %c1_14 = arith.constant 1 : index
      scf.for %arg7 = %15 to %16 step %c1_14 {
        %17 = memref.load %arg4[%arg6, %arg7] : memref<?x30xf64>
        %18 = arith.mulf %17, %arg3 : f64
        memref.store %18, %arg4[%arg6, %arg7] : memref<?x30xf64>
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
        %c20 = arith.constant 20 : index
        %c4 = arith.constant 4 : index
        scf.for %arg8 = %c0_6 to %c20 step %c4 {
          %1 = memref.load %arg4[%arg6, %arg7] : memref<?x30xf64>
          %2 = memref.load %arg5[%arg6, %arg8] : memref<?x20xf64>
          %3 = arith.mulf %arg2, %2 : f64
          %4 = memref.load %arg5[%arg7, %arg8] : memref<?x20xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = arith.addf %1, %5 : f64
          memref.store %6, %arg4[%arg6, %arg7] : memref<?x30xf64>
          %c1_7 = arith.constant 1 : index
          %7 = arith.addi %arg8, %c1_7 : index
          %8 = memref.load %arg4[%arg6, %arg7] : memref<?x30xf64>
          %9 = memref.load %arg5[%arg6, %7] : memref<?x20xf64>
          %10 = arith.mulf %arg2, %9 : f64
          %11 = memref.load %arg5[%arg7, %7] : memref<?x20xf64>
          %12 = arith.mulf %10, %11 : f64
          %13 = arith.addf %8, %12 : f64
          memref.store %13, %arg4[%arg6, %arg7] : memref<?x30xf64>
          %c2 = arith.constant 2 : index
          %14 = arith.addi %arg8, %c2 : index
          %15 = memref.load %arg4[%arg6, %arg7] : memref<?x30xf64>
          %16 = memref.load %arg5[%arg6, %14] : memref<?x20xf64>
          %17 = arith.mulf %arg2, %16 : f64
          %18 = memref.load %arg5[%arg7, %14] : memref<?x20xf64>
          %19 = arith.mulf %17, %18 : f64
          %20 = arith.addf %15, %19 : f64
          memref.store %20, %arg4[%arg6, %arg7] : memref<?x30xf64>
          %c3 = arith.constant 3 : index
          %21 = arith.addi %arg8, %c3 : index
          %22 = memref.load %arg4[%arg6, %arg7] : memref<?x30xf64>
          %23 = memref.load %arg5[%arg6, %21] : memref<?x20xf64>
          %24 = arith.mulf %arg2, %23 : f64
          %25 = memref.load %arg5[%arg7, %21] : memref<?x20xf64>
          %26 = arith.mulf %24, %25 : f64
          %27 = arith.addf %22, %26 : f64
          memref.store %27, %arg4[%arg6, %arg7] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

