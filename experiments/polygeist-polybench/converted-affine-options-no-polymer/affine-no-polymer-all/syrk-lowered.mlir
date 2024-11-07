module {
  func.func @kernel_syrk(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>) {
    %c0 = arith.constant 0 : index
    %c30 = arith.constant 30 : index
    %c1 = arith.constant 1 : index
    scf.parallel (%arg6) = (%c0) to (%c30) step (%c1) {
      %c0_0 = arith.constant 0 : index
      %c1_1 = arith.constant 1 : index
      %c1_2 = arith.constant 1 : index
      scf.parallel (%arg7) = (%c0_0) to (%c1_1) step (%c1_2) {
        %0 = arith.addi %arg6, %arg7 : index
        %c0_3 = arith.constant 0 : index
        %1 = arith.addi %arg6, %arg7 : index
        %c1_4 = arith.constant 1 : index
        %2 = arith.addi %1, %c1_4 : index
        %c4 = arith.constant 4 : index
        %c0_5 = arith.constant 0 : index
        %c-1 = arith.constant -1 : index
        %3 = arith.cmpi slt, %2, %c0_5 : index
        %4 = arith.subi %c-1, %2 : index
        %5 = arith.select %3, %4, %2 : index
        %6 = arith.divsi %5, %c4 : index
        %7 = arith.subi %c-1, %6 : index
        %8 = arith.select %3, %7, %6 : index
        %c1_6 = arith.constant 1 : index
        scf.parallel (%arg8) = (%c0_3) to (%8) step (%c1_6) {
          %c4_16 = arith.constant 4 : index
          %21 = arith.muli %arg8, %c4_16 : index
          %22 = memref.load %arg4[%0, %21] : memref<?x30xf64>
          %23 = arith.mulf %22, %arg3 : f64
          memref.store %23, %arg4[%0, %21] : memref<?x30xf64>
          %c1_17 = arith.constant 1 : index
          %24 = arith.addi %21, %c1_17 : index
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
          scf.reduce 
        }
        %c0_7 = arith.constant 0 : index
        %9 = arith.addi %arg6, %arg7 : index
        %10 = arith.addi %arg6, %arg7 : index
        %c1_8 = arith.constant 1 : index
        %11 = arith.addi %10, %c1_8 : index
        %c4_9 = arith.constant 4 : index
        %c0_10 = arith.constant 0 : index
        %c-1_11 = arith.constant -1 : index
        %12 = arith.cmpi slt, %11, %c0_10 : index
        %13 = arith.subi %c-1_11, %11 : index
        %14 = arith.select %12, %13, %11 : index
        %15 = arith.divsi %14, %c4_9 : index
        %16 = arith.subi %c-1_11, %15 : index
        %17 = arith.select %12, %16, %15 : index
        %c-4 = arith.constant -4 : index
        %18 = arith.muli %17, %c-4 : index
        %19 = arith.addi %9, %18 : index
        %c1_12 = arith.constant 1 : index
        %20 = arith.addi %19, %c1_12 : index
        %c1_13 = arith.constant 1 : index
        scf.parallel (%arg8) = (%c0_7) to (%20) step (%c1_13) {
          %c1_16 = arith.constant 1 : index
          %21 = arith.addi %0, %c1_16 : index
          %c4_17 = arith.constant 4 : index
          %c0_18 = arith.constant 0 : index
          %c-1_19 = arith.constant -1 : index
          %22 = arith.cmpi slt, %21, %c0_18 : index
          %23 = arith.subi %c-1_19, %21 : index
          %24 = arith.select %22, %23, %21 : index
          %25 = arith.divsi %24, %c4_17 : index
          %26 = arith.subi %c-1_19, %25 : index
          %27 = arith.select %22, %26, %25 : index
          %c4_20 = arith.constant 4 : index
          %28 = arith.muli %27, %c4_20 : index
          %29 = arith.addi %28, %arg8 : index
          %30 = memref.load %arg4[%0, %29] : memref<?x30xf64>
          %31 = arith.mulf %30, %arg3 : f64
          memref.store %31, %arg4[%0, %29] : memref<?x30xf64>
          scf.reduce 
        }
        %c0_14 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_15 = arith.constant 1 : index
        scf.for %arg8 = %c0_14 to %c20 step %c1_15 {
          %c0_16 = arith.constant 0 : index
          %21 = arith.addi %arg6, %arg7 : index
          %c1_17 = arith.constant 1 : index
          %22 = arith.addi %21, %c1_17 : index
          %c4_18 = arith.constant 4 : index
          %c0_19 = arith.constant 0 : index
          %c-1_20 = arith.constant -1 : index
          %23 = arith.cmpi slt, %22, %c0_19 : index
          %24 = arith.subi %c-1_20, %22 : index
          %25 = arith.select %23, %24, %22 : index
          %26 = arith.divsi %25, %c4_18 : index
          %27 = arith.subi %c-1_20, %26 : index
          %28 = arith.select %23, %27, %26 : index
          %c1_21 = arith.constant 1 : index
          scf.parallel (%arg9) = (%c0_16) to (%28) step (%c1_21) {
            %c4_30 = arith.constant 4 : index
            %41 = arith.muli %arg9, %c4_30 : index
            %42 = memref.load %arg5[%0, %arg8] : memref<?x20xf64>
            %43 = arith.mulf %arg2, %42 : f64
            %44 = memref.load %arg5[%41, %arg8] : memref<?x20xf64>
            %45 = arith.mulf %43, %44 : f64
            %46 = memref.load %arg4[%0, %41] : memref<?x30xf64>
            %47 = arith.addf %46, %45 : f64
            memref.store %47, %arg4[%0, %41] : memref<?x30xf64>
            %c1_31 = arith.constant 1 : index
            %48 = arith.addi %41, %c1_31 : index
            %49 = memref.load %arg5[%0, %arg8] : memref<?x20xf64>
            %50 = arith.mulf %arg2, %49 : f64
            %51 = memref.load %arg5[%48, %arg8] : memref<?x20xf64>
            %52 = arith.mulf %50, %51 : f64
            %53 = memref.load %arg4[%0, %48] : memref<?x30xf64>
            %54 = arith.addf %53, %52 : f64
            memref.store %54, %arg4[%0, %48] : memref<?x30xf64>
            %c2 = arith.constant 2 : index
            %55 = arith.addi %41, %c2 : index
            %56 = memref.load %arg5[%0, %arg8] : memref<?x20xf64>
            %57 = arith.mulf %arg2, %56 : f64
            %58 = memref.load %arg5[%55, %arg8] : memref<?x20xf64>
            %59 = arith.mulf %57, %58 : f64
            %60 = memref.load %arg4[%0, %55] : memref<?x30xf64>
            %61 = arith.addf %60, %59 : f64
            memref.store %61, %arg4[%0, %55] : memref<?x30xf64>
            %c3 = arith.constant 3 : index
            %62 = arith.addi %41, %c3 : index
            %63 = memref.load %arg5[%0, %arg8] : memref<?x20xf64>
            %64 = arith.mulf %arg2, %63 : f64
            %65 = memref.load %arg5[%62, %arg8] : memref<?x20xf64>
            %66 = arith.mulf %64, %65 : f64
            %67 = memref.load %arg4[%0, %62] : memref<?x30xf64>
            %68 = arith.addf %67, %66 : f64
            memref.store %68, %arg4[%0, %62] : memref<?x30xf64>
            scf.reduce 
          }
          %c0_22 = arith.constant 0 : index
          %29 = arith.addi %arg6, %arg7 : index
          %30 = arith.addi %arg6, %arg7 : index
          %c1_23 = arith.constant 1 : index
          %31 = arith.addi %30, %c1_23 : index
          %c4_24 = arith.constant 4 : index
          %c0_25 = arith.constant 0 : index
          %c-1_26 = arith.constant -1 : index
          %32 = arith.cmpi slt, %31, %c0_25 : index
          %33 = arith.subi %c-1_26, %31 : index
          %34 = arith.select %32, %33, %31 : index
          %35 = arith.divsi %34, %c4_24 : index
          %36 = arith.subi %c-1_26, %35 : index
          %37 = arith.select %32, %36, %35 : index
          %c-4_27 = arith.constant -4 : index
          %38 = arith.muli %37, %c-4_27 : index
          %39 = arith.addi %29, %38 : index
          %c1_28 = arith.constant 1 : index
          %40 = arith.addi %39, %c1_28 : index
          %c1_29 = arith.constant 1 : index
          scf.parallel (%arg9) = (%c0_22) to (%40) step (%c1_29) {
            %c1_30 = arith.constant 1 : index
            %41 = arith.addi %0, %c1_30 : index
            %c4_31 = arith.constant 4 : index
            %c0_32 = arith.constant 0 : index
            %c-1_33 = arith.constant -1 : index
            %42 = arith.cmpi slt, %41, %c0_32 : index
            %43 = arith.subi %c-1_33, %41 : index
            %44 = arith.select %42, %43, %41 : index
            %45 = arith.divsi %44, %c4_31 : index
            %46 = arith.subi %c-1_33, %45 : index
            %47 = arith.select %42, %46, %45 : index
            %c4_34 = arith.constant 4 : index
            %48 = arith.muli %47, %c4_34 : index
            %49 = arith.addi %48, %arg9 : index
            %50 = memref.load %arg5[%0, %arg8] : memref<?x20xf64>
            %51 = arith.mulf %arg2, %50 : f64
            %52 = memref.load %arg5[%49, %arg8] : memref<?x20xf64>
            %53 = arith.mulf %51, %52 : f64
            %54 = memref.load %arg4[%0, %49] : memref<?x30xf64>
            %55 = arith.addf %54, %53 : f64
            memref.store %55, %arg4[%0, %49] : memref<?x30xf64>
            scf.reduce 
          }
        }
        scf.reduce 
      }
      scf.reduce 
    }
    return
  }
}

