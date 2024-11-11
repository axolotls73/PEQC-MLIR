module {
  func.func @kernel_syrk(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>) {
    %c0 = arith.constant 0 : index
    %c30 = arith.constant 30 : index
    %c1 = arith.constant 1 : index
    scf.parallel (%arg6) = (%c0) to (%c30) step (%c1) {
      %c0_0 = arith.constant 0 : index
      %c1_1 = arith.constant 1 : index
      %c1_2 = arith.constant 1 : index
      scf.for %arg7 = %c0_0 to %c1_1 step %c1_2 {
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
        scf.for %arg8 = %c0_3 to %8 step %c1_6 {
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
        scf.for %arg8 = %c0_7 to %20 step %c1_13 {
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
          %29 = arith.addi %arg8, %28 : index
          %30 = memref.load %arg4[%0, %29] : memref<?x30xf64>
          %31 = arith.mulf %30, %arg3 : f64
          memref.store %31, %arg4[%0, %29] : memref<?x30xf64>
        }
        %c0_14 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_15 = arith.constant 1 : index
        scf.for %arg8 = %c0_14 to %c20 step %c1_15 {
          %21 = memref.load %arg5[%0, %arg8] : memref<?x20xf64>
          %22 = arith.mulf %arg2, %21 : f64
          %23 = memref.load %arg5[%0, %arg8] : memref<?x20xf64>
          %24 = arith.mulf %arg2, %23 : f64
          %25 = memref.load %arg5[%0, %arg8] : memref<?x20xf64>
          %26 = arith.mulf %arg2, %25 : f64
          %27 = memref.load %arg5[%0, %arg8] : memref<?x20xf64>
          %28 = arith.mulf %arg2, %27 : f64
          %c0_16 = arith.constant 0 : index
          %29 = arith.addi %arg6, %arg7 : index
          %c1_17 = arith.constant 1 : index
          %30 = arith.addi %29, %c1_17 : index
          %c4_18 = arith.constant 4 : index
          %c0_19 = arith.constant 0 : index
          %c-1_20 = arith.constant -1 : index
          %31 = arith.cmpi slt, %30, %c0_19 : index
          %32 = arith.subi %c-1_20, %30 : index
          %33 = arith.select %31, %32, %30 : index
          %34 = arith.divsi %33, %c4_18 : index
          %35 = arith.subi %c-1_20, %34 : index
          %36 = arith.select %31, %35, %34 : index
          %c1_21 = arith.constant 1 : index
          scf.for %arg9 = %c0_16 to %36 step %c1_21 {
            %c4_30 = arith.constant 4 : index
            %51 = arith.muli %arg9, %c4_30 : index
            %52 = memref.load %arg5[%51, %arg8] : memref<?x20xf64>
            %53 = arith.mulf %22, %52 : f64
            %54 = memref.load %arg4[%0, %51] : memref<?x30xf64>
            %55 = arith.addf %54, %53 : f64
            memref.store %55, %arg4[%0, %51] : memref<?x30xf64>
            %c1_31 = arith.constant 1 : index
            %56 = arith.addi %51, %c1_31 : index
            %57 = memref.load %arg5[%56, %arg8] : memref<?x20xf64>
            %58 = arith.mulf %24, %57 : f64
            %59 = memref.load %arg4[%0, %56] : memref<?x30xf64>
            %60 = arith.addf %59, %58 : f64
            memref.store %60, %arg4[%0, %56] : memref<?x30xf64>
            %c2 = arith.constant 2 : index
            %61 = arith.addi %51, %c2 : index
            %62 = memref.load %arg5[%61, %arg8] : memref<?x20xf64>
            %63 = arith.mulf %26, %62 : f64
            %64 = memref.load %arg4[%0, %61] : memref<?x30xf64>
            %65 = arith.addf %64, %63 : f64
            memref.store %65, %arg4[%0, %61] : memref<?x30xf64>
            %c3 = arith.constant 3 : index
            %66 = arith.addi %51, %c3 : index
            %67 = memref.load %arg5[%66, %arg8] : memref<?x20xf64>
            %68 = arith.mulf %28, %67 : f64
            %69 = memref.load %arg4[%0, %66] : memref<?x30xf64>
            %70 = arith.addf %69, %68 : f64
            memref.store %70, %arg4[%0, %66] : memref<?x30xf64>
          }
          %37 = memref.load %arg5[%0, %arg8] : memref<?x20xf64>
          %38 = arith.mulf %arg2, %37 : f64
          %c0_22 = arith.constant 0 : index
          %39 = arith.addi %arg6, %arg7 : index
          %40 = arith.addi %arg6, %arg7 : index
          %c1_23 = arith.constant 1 : index
          %41 = arith.addi %40, %c1_23 : index
          %c4_24 = arith.constant 4 : index
          %c0_25 = arith.constant 0 : index
          %c-1_26 = arith.constant -1 : index
          %42 = arith.cmpi slt, %41, %c0_25 : index
          %43 = arith.subi %c-1_26, %41 : index
          %44 = arith.select %42, %43, %41 : index
          %45 = arith.divsi %44, %c4_24 : index
          %46 = arith.subi %c-1_26, %45 : index
          %47 = arith.select %42, %46, %45 : index
          %c-4_27 = arith.constant -4 : index
          %48 = arith.muli %47, %c-4_27 : index
          %49 = arith.addi %39, %48 : index
          %c1_28 = arith.constant 1 : index
          %50 = arith.addi %49, %c1_28 : index
          %c1_29 = arith.constant 1 : index
          scf.for %arg9 = %c0_22 to %50 step %c1_29 {
            %c1_30 = arith.constant 1 : index
            %51 = arith.addi %0, %c1_30 : index
            %c4_31 = arith.constant 4 : index
            %c0_32 = arith.constant 0 : index
            %c-1_33 = arith.constant -1 : index
            %52 = arith.cmpi slt, %51, %c0_32 : index
            %53 = arith.subi %c-1_33, %51 : index
            %54 = arith.select %52, %53, %51 : index
            %55 = arith.divsi %54, %c4_31 : index
            %56 = arith.subi %c-1_33, %55 : index
            %57 = arith.select %52, %56, %55 : index
            %c4_34 = arith.constant 4 : index
            %58 = arith.muli %57, %c4_34 : index
            %59 = arith.addi %arg9, %58 : index
            %60 = memref.load %arg5[%59, %arg8] : memref<?x20xf64>
            %61 = arith.mulf %38, %60 : f64
            %62 = memref.load %arg4[%0, %59] : memref<?x30xf64>
            %63 = arith.addf %62, %61 : f64
            memref.store %63, %arg4[%0, %59] : memref<?x30xf64>
          }
        }
      }
      scf.reduce 
    }
    return
  }
}

