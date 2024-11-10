module {
  func.func @kernel_syr2k(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>, %arg6: memref<?x20xf64>) {
    %c0 = arith.constant 0 : index
    %c30 = arith.constant 30 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %c30 step %c1 {
      %c0_3 = arith.constant 0 : index
      %c1_4 = arith.constant 1 : index
      %0 = arith.addi %arg7, %c1_4 : index
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
      scf.for %arg8 = %c0_3 to %7 step %c4_7 {
        %17 = memref.load %arg4[%arg7, %arg8] : memref<?x30xf64>
        %18 = arith.mulf %17, %arg3 : f64
        memref.store %18, %arg4[%arg7, %arg8] : memref<?x30xf64>
        %c1_15 = arith.constant 1 : index
        %19 = arith.addi %arg8, %c1_15 : index
        %20 = memref.load %arg4[%arg7, %19] : memref<?x30xf64>
        %21 = arith.mulf %20, %arg3 : f64
        memref.store %21, %arg4[%arg7, %19] : memref<?x30xf64>
        %c2 = arith.constant 2 : index
        %22 = arith.addi %arg8, %c2 : index
        %23 = memref.load %arg4[%arg7, %22] : memref<?x30xf64>
        %24 = arith.mulf %23, %arg3 : f64
        memref.store %24, %arg4[%arg7, %22] : memref<?x30xf64>
        %c3 = arith.constant 3 : index
        %25 = arith.addi %arg8, %c3 : index
        %26 = memref.load %arg4[%arg7, %25] : memref<?x30xf64>
        %27 = arith.mulf %26, %arg3 : f64
        memref.store %27, %arg4[%arg7, %25] : memref<?x30xf64>
      }
      %c1_8 = arith.constant 1 : index
      %8 = arith.addi %arg7, %c1_8 : index
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
      %16 = arith.addi %arg7, %c1_13 : index
      %c1_14 = arith.constant 1 : index
      scf.for %arg8 = %15 to %16 step %c1_14 {
        %17 = memref.load %arg4[%arg7, %arg8] : memref<?x30xf64>
        %18 = arith.mulf %17, %arg3 : f64
        memref.store %18, %arg4[%arg7, %arg8] : memref<?x30xf64>
      }
    }
    %c0_0 = arith.constant 0 : index
    %c30_1 = arith.constant 30 : index
    %c1_2 = arith.constant 1 : index
    scf.for %arg7 = %c0_0 to %c30_1 step %c1_2 {
      %c0_3 = arith.constant 0 : index
      %c1_4 = arith.constant 1 : index
      %0 = arith.addi %arg7, %c1_4 : index
      %c1_5 = arith.constant 1 : index
      scf.for %arg8 = %c0_3 to %0 step %c1_5 {
        %c0_6 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c4 = arith.constant 4 : index
        scf.for %arg9 = %c0_6 to %c20 step %c4 {
          %1 = memref.load %arg4[%arg7, %arg8] : memref<?x30xf64>
          %2 = memref.load %arg5[%arg8, %arg9] : memref<?x20xf64>
          %3 = arith.mulf %2, %arg2 : f64
          %4 = memref.load %arg6[%arg7, %arg9] : memref<?x20xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = memref.load %arg6[%arg8, %arg9] : memref<?x20xf64>
          %7 = arith.mulf %6, %arg2 : f64
          %8 = memref.load %arg5[%arg7, %arg9] : memref<?x20xf64>
          %9 = arith.mulf %7, %8 : f64
          %10 = arith.addf %5, %9 : f64
          %11 = arith.addf %1, %10 : f64
          memref.store %11, %arg4[%arg7, %arg8] : memref<?x30xf64>
          %c1_7 = arith.constant 1 : index
          %12 = arith.addi %arg9, %c1_7 : index
          %13 = memref.load %arg4[%arg7, %arg8] : memref<?x30xf64>
          %14 = memref.load %arg5[%arg8, %12] : memref<?x20xf64>
          %15 = arith.mulf %14, %arg2 : f64
          %16 = memref.load %arg6[%arg7, %12] : memref<?x20xf64>
          %17 = arith.mulf %15, %16 : f64
          %18 = memref.load %arg6[%arg8, %12] : memref<?x20xf64>
          %19 = arith.mulf %18, %arg2 : f64
          %20 = memref.load %arg5[%arg7, %12] : memref<?x20xf64>
          %21 = arith.mulf %19, %20 : f64
          %22 = arith.addf %17, %21 : f64
          %23 = arith.addf %13, %22 : f64
          memref.store %23, %arg4[%arg7, %arg8] : memref<?x30xf64>
          %c2 = arith.constant 2 : index
          %24 = arith.addi %arg9, %c2 : index
          %25 = memref.load %arg4[%arg7, %arg8] : memref<?x30xf64>
          %26 = memref.load %arg5[%arg8, %24] : memref<?x20xf64>
          %27 = arith.mulf %26, %arg2 : f64
          %28 = memref.load %arg6[%arg7, %24] : memref<?x20xf64>
          %29 = arith.mulf %27, %28 : f64
          %30 = memref.load %arg6[%arg8, %24] : memref<?x20xf64>
          %31 = arith.mulf %30, %arg2 : f64
          %32 = memref.load %arg5[%arg7, %24] : memref<?x20xf64>
          %33 = arith.mulf %31, %32 : f64
          %34 = arith.addf %29, %33 : f64
          %35 = arith.addf %25, %34 : f64
          memref.store %35, %arg4[%arg7, %arg8] : memref<?x30xf64>
          %c3 = arith.constant 3 : index
          %36 = arith.addi %arg9, %c3 : index
          %37 = memref.load %arg4[%arg7, %arg8] : memref<?x30xf64>
          %38 = memref.load %arg5[%arg8, %36] : memref<?x20xf64>
          %39 = arith.mulf %38, %arg2 : f64
          %40 = memref.load %arg6[%arg7, %36] : memref<?x20xf64>
          %41 = arith.mulf %39, %40 : f64
          %42 = memref.load %arg6[%arg8, %36] : memref<?x20xf64>
          %43 = arith.mulf %42, %arg2 : f64
          %44 = memref.load %arg5[%arg7, %36] : memref<?x20xf64>
          %45 = arith.mulf %43, %44 : f64
          %46 = arith.addf %41, %45 : f64
          %47 = arith.addf %37, %46 : f64
          memref.store %47, %arg4[%arg7, %arg8] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

