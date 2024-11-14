module {
  func.func @kernel_syr2k(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>, %arg6: memref<?x20xf64>) {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_0 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %c1 step %c1_0 {
      %c32 = arith.constant 32 : index
      %0 = arith.muli %arg7, %c32 : index
      %c0_3 = arith.constant 0 : index
      %c30_4 = arith.constant 30 : index
      %c1_5 = arith.constant 1 : index
      scf.for %arg8 = %c0_3 to %c30_4 step %c1_5 {
        %1 = arith.addi %0, %arg8 : index
        %c0_6 = arith.constant 0 : index
        %c32_7 = arith.constant 32 : index
        %2 = arith.muli %arg7, %c32_7 : index
        %3 = arith.addi %arg8, %2 : index
        %c1_8 = arith.constant 1 : index
        %4 = arith.addi %3, %c1_8 : index
        %c4 = arith.constant 4 : index
        %c0_9 = arith.constant 0 : index
        %c-1 = arith.constant -1 : index
        %5 = arith.cmpi slt, %4, %c0_9 : index
        %6 = arith.subi %c-1, %4 : index
        %7 = arith.select %5, %6, %4 : index
        %8 = arith.divsi %7, %c4 : index
        %9 = arith.subi %c-1, %8 : index
        %10 = arith.select %5, %9, %8 : index
        %c1_10 = arith.constant 1 : index
        scf.for %arg9 = %c0_6 to %10 step %c1_10 {
          %c4_20 = arith.constant 4 : index
          %25 = arith.muli %arg9, %c4_20 : index
          %26 = memref.load %arg4[%1, %25] : memref<?x30xf64>
          %27 = arith.mulf %26, %arg3 : f64
          memref.store %27, %arg4[%1, %25] : memref<?x30xf64>
          %c1_21 = arith.constant 1 : index
          %28 = arith.addi %25, %c1_21 : index
          %29 = memref.load %arg4[%1, %28] : memref<?x30xf64>
          %30 = arith.mulf %29, %arg3 : f64
          memref.store %30, %arg4[%1, %28] : memref<?x30xf64>
          %c2 = arith.constant 2 : index
          %31 = arith.addi %25, %c2 : index
          %32 = memref.load %arg4[%1, %31] : memref<?x30xf64>
          %33 = arith.mulf %32, %arg3 : f64
          memref.store %33, %arg4[%1, %31] : memref<?x30xf64>
          %c3 = arith.constant 3 : index
          %34 = arith.addi %25, %c3 : index
          %35 = memref.load %arg4[%1, %34] : memref<?x30xf64>
          %36 = arith.mulf %35, %arg3 : f64
          memref.store %36, %arg4[%1, %34] : memref<?x30xf64>
        }
        %c0_11 = arith.constant 0 : index
        %c32_12 = arith.constant 32 : index
        %11 = arith.muli %arg7, %c32_12 : index
        %12 = arith.addi %arg8, %11 : index
        %c32_13 = arith.constant 32 : index
        %13 = arith.muli %arg7, %c32_13 : index
        %14 = arith.addi %arg8, %13 : index
        %c1_14 = arith.constant 1 : index
        %15 = arith.addi %14, %c1_14 : index
        %c4_15 = arith.constant 4 : index
        %c0_16 = arith.constant 0 : index
        %c-1_17 = arith.constant -1 : index
        %16 = arith.cmpi slt, %15, %c0_16 : index
        %17 = arith.subi %c-1_17, %15 : index
        %18 = arith.select %16, %17, %15 : index
        %19 = arith.divsi %18, %c4_15 : index
        %20 = arith.subi %c-1_17, %19 : index
        %21 = arith.select %16, %20, %19 : index
        %c-4 = arith.constant -4 : index
        %22 = arith.muli %21, %c-4 : index
        %23 = arith.addi %12, %22 : index
        %c1_18 = arith.constant 1 : index
        %24 = arith.addi %23, %c1_18 : index
        %c1_19 = arith.constant 1 : index
        scf.for %arg9 = %c0_11 to %24 step %c1_19 {
          %c1_20 = arith.constant 1 : index
          %25 = arith.addi %1, %c1_20 : index
          %c4_21 = arith.constant 4 : index
          %c0_22 = arith.constant 0 : index
          %c-1_23 = arith.constant -1 : index
          %26 = arith.cmpi slt, %25, %c0_22 : index
          %27 = arith.subi %c-1_23, %25 : index
          %28 = arith.select %26, %27, %25 : index
          %29 = arith.divsi %28, %c4_21 : index
          %30 = arith.subi %c-1_23, %29 : index
          %31 = arith.select %26, %30, %29 : index
          %c4_24 = arith.constant 4 : index
          %32 = arith.muli %31, %c4_24 : index
          %33 = arith.addi %arg9, %32 : index
          %34 = memref.load %arg4[%1, %33] : memref<?x30xf64>
          %35 = arith.mulf %34, %arg3 : f64
          memref.store %35, %arg4[%1, %33] : memref<?x30xf64>
        }
      }
    }
    %c0_1 = arith.constant 0 : index
    %c30 = arith.constant 30 : index
    %c1_2 = arith.constant 1 : index
    scf.for %arg7 = %c0_1 to %c30 step %c1_2 {
      %c0_3 = arith.constant 0 : index
      %c1_4 = arith.constant 1 : index
      %0 = arith.addi %arg7, %c1_4 : index
      %c1_5 = arith.constant 1 : index
      scf.for %arg8 = %c0_3 to %0 step %c1_5 {
        %c0_6 = arith.constant 0 : index
        %c5 = arith.constant 5 : index
        %c1_7 = arith.constant 1 : index
        scf.for %arg9 = %c0_6 to %c5 step %c1_7 {
          %c4 = arith.constant 4 : index
          %1 = arith.muli %arg9, %c4 : index
          %2 = memref.load %arg4[%arg7, %arg8] : memref<?x30xf64>
          %3 = memref.load %arg5[%arg8, %1] : memref<?x20xf64>
          %4 = arith.mulf %3, %arg2 : f64
          %5 = memref.load %arg6[%arg7, %1] : memref<?x20xf64>
          %6 = arith.mulf %4, %5 : f64
          %7 = memref.load %arg6[%arg8, %1] : memref<?x20xf64>
          %8 = arith.mulf %7, %arg2 : f64
          %9 = memref.load %arg5[%arg7, %1] : memref<?x20xf64>
          %10 = arith.mulf %8, %9 : f64
          %11 = arith.addf %6, %10 : f64
          %12 = arith.addf %2, %11 : f64
          memref.store %12, %arg4[%arg7, %arg8] : memref<?x30xf64>
          %c1_8 = arith.constant 1 : index
          %13 = arith.addi %1, %c1_8 : index
          %14 = memref.load %arg4[%arg7, %arg8] : memref<?x30xf64>
          %15 = memref.load %arg5[%arg8, %13] : memref<?x20xf64>
          %16 = arith.mulf %15, %arg2 : f64
          %17 = memref.load %arg6[%arg7, %13] : memref<?x20xf64>
          %18 = arith.mulf %16, %17 : f64
          %19 = memref.load %arg6[%arg8, %13] : memref<?x20xf64>
          %20 = arith.mulf %19, %arg2 : f64
          %21 = memref.load %arg5[%arg7, %13] : memref<?x20xf64>
          %22 = arith.mulf %20, %21 : f64
          %23 = arith.addf %18, %22 : f64
          %24 = arith.addf %14, %23 : f64
          memref.store %24, %arg4[%arg7, %arg8] : memref<?x30xf64>
          %c2 = arith.constant 2 : index
          %25 = arith.addi %1, %c2 : index
          %26 = memref.load %arg4[%arg7, %arg8] : memref<?x30xf64>
          %27 = memref.load %arg5[%arg8, %25] : memref<?x20xf64>
          %28 = arith.mulf %27, %arg2 : f64
          %29 = memref.load %arg6[%arg7, %25] : memref<?x20xf64>
          %30 = arith.mulf %28, %29 : f64
          %31 = memref.load %arg6[%arg8, %25] : memref<?x20xf64>
          %32 = arith.mulf %31, %arg2 : f64
          %33 = memref.load %arg5[%arg7, %25] : memref<?x20xf64>
          %34 = arith.mulf %32, %33 : f64
          %35 = arith.addf %30, %34 : f64
          %36 = arith.addf %26, %35 : f64
          memref.store %36, %arg4[%arg7, %arg8] : memref<?x30xf64>
          %c3 = arith.constant 3 : index
          %37 = arith.addi %1, %c3 : index
          %38 = memref.load %arg4[%arg7, %arg8] : memref<?x30xf64>
          %39 = memref.load %arg5[%arg8, %37] : memref<?x20xf64>
          %40 = arith.mulf %39, %arg2 : f64
          %41 = memref.load %arg6[%arg7, %37] : memref<?x20xf64>
          %42 = arith.mulf %40, %41 : f64
          %43 = memref.load %arg6[%arg8, %37] : memref<?x20xf64>
          %44 = arith.mulf %43, %arg2 : f64
          %45 = memref.load %arg5[%arg7, %37] : memref<?x20xf64>
          %46 = arith.mulf %44, %45 : f64
          %47 = arith.addf %42, %46 : f64
          %48 = arith.addf %38, %47 : f64
          memref.store %48, %arg4[%arg7, %arg8] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

