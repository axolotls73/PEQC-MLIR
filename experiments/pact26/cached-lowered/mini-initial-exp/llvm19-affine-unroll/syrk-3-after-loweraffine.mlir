module {
  func.func @kernel_syrk(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>) {
    %c0 = arith.constant 0 : index
    %c30 = arith.constant 30 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c30 step %c1 {
      %c0_0 = arith.constant 0 : index
      %c1_1 = arith.constant 1 : index
      %0 = arith.addi %arg6, %c1_1 : index
      %c4 = arith.constant 4 : index
      %c0_2 = arith.constant 0 : index
      %c-1 = arith.constant -1 : index
      %1 = arith.cmpi slt, %0, %c0_2 : index
      %2 = arith.subi %c-1, %0 : index
      %3 = arith.select %1, %2, %0 : index
      %4 = arith.divsi %3, %c4 : index
      %5 = arith.subi %c-1, %4 : index
      %6 = arith.select %1, %5, %4 : index
      %c4_3 = arith.constant 4 : index
      %7 = arith.muli %6, %c4_3 : index
      %c4_4 = arith.constant 4 : index
      scf.for %arg7 = %c0_0 to %7 step %c4_4 {
        %17 = memref.load %arg4[%arg6, %arg7] : memref<?x30xf64>
        %18 = arith.mulf %17, %arg3 : f64
        memref.store %18, %arg4[%arg6, %arg7] : memref<?x30xf64>
        %c1_14 = arith.constant 1 : index
        %19 = arith.addi %arg7, %c1_14 : index
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
      %c1_5 = arith.constant 1 : index
      %8 = arith.addi %arg6, %c1_5 : index
      %c4_6 = arith.constant 4 : index
      %c0_7 = arith.constant 0 : index
      %c-1_8 = arith.constant -1 : index
      %9 = arith.cmpi slt, %8, %c0_7 : index
      %10 = arith.subi %c-1_8, %8 : index
      %11 = arith.select %9, %10, %8 : index
      %12 = arith.divsi %11, %c4_6 : index
      %13 = arith.subi %c-1_8, %12 : index
      %14 = arith.select %9, %13, %12 : index
      %c4_9 = arith.constant 4 : index
      %15 = arith.muli %14, %c4_9 : index
      %c1_10 = arith.constant 1 : index
      %16 = arith.addi %arg6, %c1_10 : index
      %c1_11 = arith.constant 1 : index
      scf.for %arg7 = %15 to %16 step %c1_11 {
        %17 = memref.load %arg4[%arg6, %arg7] : memref<?x30xf64>
        %18 = arith.mulf %17, %arg3 : f64
        memref.store %18, %arg4[%arg6, %arg7] : memref<?x30xf64>
      }
      %c0_12 = arith.constant 0 : index
      %c20 = arith.constant 20 : index
      %c1_13 = arith.constant 1 : index
      scf.for %arg7 = %c0_12 to %c20 step %c1_13 {
        %c0_14 = arith.constant 0 : index
        %c1_15 = arith.constant 1 : index
        %17 = arith.addi %arg6, %c1_15 : index
        %c4_16 = arith.constant 4 : index
        %c0_17 = arith.constant 0 : index
        %c-1_18 = arith.constant -1 : index
        %18 = arith.cmpi slt, %17, %c0_17 : index
        %19 = arith.subi %c-1_18, %17 : index
        %20 = arith.select %18, %19, %17 : index
        %21 = arith.divsi %20, %c4_16 : index
        %22 = arith.subi %c-1_18, %21 : index
        %23 = arith.select %18, %22, %21 : index
        %c4_19 = arith.constant 4 : index
        %24 = arith.muli %23, %c4_19 : index
        %c4_20 = arith.constant 4 : index
        scf.for %arg8 = %c0_14 to %24 step %c4_20 {
          %34 = memref.load %arg5[%arg6, %arg7] : memref<?x20xf64>
          %35 = arith.mulf %arg2, %34 : f64
          %36 = memref.load %arg5[%arg8, %arg7] : memref<?x20xf64>
          %37 = arith.mulf %35, %36 : f64
          %38 = memref.load %arg4[%arg6, %arg8] : memref<?x30xf64>
          %39 = arith.addf %38, %37 : f64
          memref.store %39, %arg4[%arg6, %arg8] : memref<?x30xf64>
          %c1_28 = arith.constant 1 : index
          %40 = arith.addi %arg8, %c1_28 : index
          %41 = memref.load %arg5[%arg6, %arg7] : memref<?x20xf64>
          %42 = arith.mulf %arg2, %41 : f64
          %43 = memref.load %arg5[%40, %arg7] : memref<?x20xf64>
          %44 = arith.mulf %42, %43 : f64
          %45 = memref.load %arg4[%arg6, %40] : memref<?x30xf64>
          %46 = arith.addf %45, %44 : f64
          memref.store %46, %arg4[%arg6, %40] : memref<?x30xf64>
          %c2 = arith.constant 2 : index
          %47 = arith.addi %arg8, %c2 : index
          %48 = memref.load %arg5[%arg6, %arg7] : memref<?x20xf64>
          %49 = arith.mulf %arg2, %48 : f64
          %50 = memref.load %arg5[%47, %arg7] : memref<?x20xf64>
          %51 = arith.mulf %49, %50 : f64
          %52 = memref.load %arg4[%arg6, %47] : memref<?x30xf64>
          %53 = arith.addf %52, %51 : f64
          memref.store %53, %arg4[%arg6, %47] : memref<?x30xf64>
          %c3 = arith.constant 3 : index
          %54 = arith.addi %arg8, %c3 : index
          %55 = memref.load %arg5[%arg6, %arg7] : memref<?x20xf64>
          %56 = arith.mulf %arg2, %55 : f64
          %57 = memref.load %arg5[%54, %arg7] : memref<?x20xf64>
          %58 = arith.mulf %56, %57 : f64
          %59 = memref.load %arg4[%arg6, %54] : memref<?x30xf64>
          %60 = arith.addf %59, %58 : f64
          memref.store %60, %arg4[%arg6, %54] : memref<?x30xf64>
        }
        %c1_21 = arith.constant 1 : index
        %25 = arith.addi %arg6, %c1_21 : index
        %c4_22 = arith.constant 4 : index
        %c0_23 = arith.constant 0 : index
        %c-1_24 = arith.constant -1 : index
        %26 = arith.cmpi slt, %25, %c0_23 : index
        %27 = arith.subi %c-1_24, %25 : index
        %28 = arith.select %26, %27, %25 : index
        %29 = arith.divsi %28, %c4_22 : index
        %30 = arith.subi %c-1_24, %29 : index
        %31 = arith.select %26, %30, %29 : index
        %c4_25 = arith.constant 4 : index
        %32 = arith.muli %31, %c4_25 : index
        %c1_26 = arith.constant 1 : index
        %33 = arith.addi %arg6, %c1_26 : index
        %c1_27 = arith.constant 1 : index
        scf.for %arg8 = %32 to %33 step %c1_27 {
          %34 = memref.load %arg5[%arg6, %arg7] : memref<?x20xf64>
          %35 = arith.mulf %arg2, %34 : f64
          %36 = memref.load %arg5[%arg8, %arg7] : memref<?x20xf64>
          %37 = arith.mulf %35, %36 : f64
          %38 = memref.load %arg4[%arg6, %arg8] : memref<?x30xf64>
          %39 = arith.addf %38, %37 : f64
          memref.store %39, %arg4[%arg6, %arg8] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

