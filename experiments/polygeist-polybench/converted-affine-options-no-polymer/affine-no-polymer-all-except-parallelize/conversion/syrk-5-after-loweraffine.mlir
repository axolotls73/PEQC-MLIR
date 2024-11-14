module {
  func.func @kernel_syrk(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>) {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_0 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c1 step %c1_0 {
      %c32 = arith.constant 32 : index
      %0 = arith.muli %arg6, %c32 : index
      %c0_1 = arith.constant 0 : index
      %c30 = arith.constant 30 : index
      %c1_2 = arith.constant 1 : index
      scf.for %arg7 = %c0_1 to %c30 step %c1_2 {
        %1 = arith.addi %0, %arg7 : index
        %c0_3 = arith.constant 0 : index
        %c32_4 = arith.constant 32 : index
        %2 = arith.muli %arg6, %c32_4 : index
        %3 = arith.addi %arg7, %2 : index
        %c1_5 = arith.constant 1 : index
        %4 = arith.addi %3, %c1_5 : index
        %c4 = arith.constant 4 : index
        %c0_6 = arith.constant 0 : index
        %c-1 = arith.constant -1 : index
        %5 = arith.cmpi slt, %4, %c0_6 : index
        %6 = arith.subi %c-1, %4 : index
        %7 = arith.select %5, %6, %4 : index
        %8 = arith.divsi %7, %c4 : index
        %9 = arith.subi %c-1, %8 : index
        %10 = arith.select %5, %9, %8 : index
        %c1_7 = arith.constant 1 : index
        scf.for %arg8 = %c0_3 to %10 step %c1_7 {
          %c4_19 = arith.constant 4 : index
          %25 = arith.muli %arg8, %c4_19 : index
          %26 = memref.load %arg4[%1, %25] : memref<?x30xf64>
          %27 = arith.mulf %26, %arg3 : f64
          memref.store %27, %arg4[%1, %25] : memref<?x30xf64>
          %c1_20 = arith.constant 1 : index
          %28 = arith.addi %25, %c1_20 : index
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
        %c0_8 = arith.constant 0 : index
        %c32_9 = arith.constant 32 : index
        %11 = arith.muli %arg6, %c32_9 : index
        %12 = arith.addi %arg7, %11 : index
        %c32_10 = arith.constant 32 : index
        %13 = arith.muli %arg6, %c32_10 : index
        %14 = arith.addi %arg7, %13 : index
        %c1_11 = arith.constant 1 : index
        %15 = arith.addi %14, %c1_11 : index
        %c4_12 = arith.constant 4 : index
        %c0_13 = arith.constant 0 : index
        %c-1_14 = arith.constant -1 : index
        %16 = arith.cmpi slt, %15, %c0_13 : index
        %17 = arith.subi %c-1_14, %15 : index
        %18 = arith.select %16, %17, %15 : index
        %19 = arith.divsi %18, %c4_12 : index
        %20 = arith.subi %c-1_14, %19 : index
        %21 = arith.select %16, %20, %19 : index
        %c-4 = arith.constant -4 : index
        %22 = arith.muli %21, %c-4 : index
        %23 = arith.addi %12, %22 : index
        %c1_15 = arith.constant 1 : index
        %24 = arith.addi %23, %c1_15 : index
        %c1_16 = arith.constant 1 : index
        scf.for %arg8 = %c0_8 to %24 step %c1_16 {
          %c1_19 = arith.constant 1 : index
          %25 = arith.addi %1, %c1_19 : index
          %c4_20 = arith.constant 4 : index
          %c0_21 = arith.constant 0 : index
          %c-1_22 = arith.constant -1 : index
          %26 = arith.cmpi slt, %25, %c0_21 : index
          %27 = arith.subi %c-1_22, %25 : index
          %28 = arith.select %26, %27, %25 : index
          %29 = arith.divsi %28, %c4_20 : index
          %30 = arith.subi %c-1_22, %29 : index
          %31 = arith.select %26, %30, %29 : index
          %c4_23 = arith.constant 4 : index
          %32 = arith.muli %31, %c4_23 : index
          %33 = arith.addi %arg8, %32 : index
          %34 = memref.load %arg4[%1, %33] : memref<?x30xf64>
          %35 = arith.mulf %34, %arg3 : f64
          memref.store %35, %arg4[%1, %33] : memref<?x30xf64>
        }
        %c0_17 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_18 = arith.constant 1 : index
        scf.for %arg8 = %c0_17 to %c20 step %c1_18 {
          %25 = memref.load %arg5[%1, %arg8] : memref<?x20xf64>
          %26 = arith.mulf %arg2, %25 : f64
          %27 = memref.load %arg5[%1, %arg8] : memref<?x20xf64>
          %28 = arith.mulf %arg2, %27 : f64
          %29 = memref.load %arg5[%1, %arg8] : memref<?x20xf64>
          %30 = arith.mulf %arg2, %29 : f64
          %31 = memref.load %arg5[%1, %arg8] : memref<?x20xf64>
          %32 = arith.mulf %arg2, %31 : f64
          %c0_19 = arith.constant 0 : index
          %c32_20 = arith.constant 32 : index
          %33 = arith.muli %arg6, %c32_20 : index
          %34 = arith.addi %arg7, %33 : index
          %c1_21 = arith.constant 1 : index
          %35 = arith.addi %34, %c1_21 : index
          %c4_22 = arith.constant 4 : index
          %c0_23 = arith.constant 0 : index
          %c-1_24 = arith.constant -1 : index
          %36 = arith.cmpi slt, %35, %c0_23 : index
          %37 = arith.subi %c-1_24, %35 : index
          %38 = arith.select %36, %37, %35 : index
          %39 = arith.divsi %38, %c4_22 : index
          %40 = arith.subi %c-1_24, %39 : index
          %41 = arith.select %36, %40, %39 : index
          %c1_25 = arith.constant 1 : index
          scf.for %arg9 = %c0_19 to %41 step %c1_25 {
            %c4_36 = arith.constant 4 : index
            %58 = arith.muli %arg9, %c4_36 : index
            %59 = memref.load %arg5[%58, %arg8] : memref<?x20xf64>
            %60 = arith.mulf %26, %59 : f64
            %61 = memref.load %arg4[%1, %58] : memref<?x30xf64>
            %62 = arith.addf %61, %60 : f64
            memref.store %62, %arg4[%1, %58] : memref<?x30xf64>
            %c1_37 = arith.constant 1 : index
            %63 = arith.addi %58, %c1_37 : index
            %64 = memref.load %arg5[%63, %arg8] : memref<?x20xf64>
            %65 = arith.mulf %28, %64 : f64
            %66 = memref.load %arg4[%1, %63] : memref<?x30xf64>
            %67 = arith.addf %66, %65 : f64
            memref.store %67, %arg4[%1, %63] : memref<?x30xf64>
            %c2 = arith.constant 2 : index
            %68 = arith.addi %58, %c2 : index
            %69 = memref.load %arg5[%68, %arg8] : memref<?x20xf64>
            %70 = arith.mulf %30, %69 : f64
            %71 = memref.load %arg4[%1, %68] : memref<?x30xf64>
            %72 = arith.addf %71, %70 : f64
            memref.store %72, %arg4[%1, %68] : memref<?x30xf64>
            %c3 = arith.constant 3 : index
            %73 = arith.addi %58, %c3 : index
            %74 = memref.load %arg5[%73, %arg8] : memref<?x20xf64>
            %75 = arith.mulf %32, %74 : f64
            %76 = memref.load %arg4[%1, %73] : memref<?x30xf64>
            %77 = arith.addf %76, %75 : f64
            memref.store %77, %arg4[%1, %73] : memref<?x30xf64>
          }
          %42 = memref.load %arg5[%1, %arg8] : memref<?x20xf64>
          %43 = arith.mulf %arg2, %42 : f64
          %c0_26 = arith.constant 0 : index
          %c32_27 = arith.constant 32 : index
          %44 = arith.muli %arg6, %c32_27 : index
          %45 = arith.addi %arg7, %44 : index
          %c32_28 = arith.constant 32 : index
          %46 = arith.muli %arg6, %c32_28 : index
          %47 = arith.addi %arg7, %46 : index
          %c1_29 = arith.constant 1 : index
          %48 = arith.addi %47, %c1_29 : index
          %c4_30 = arith.constant 4 : index
          %c0_31 = arith.constant 0 : index
          %c-1_32 = arith.constant -1 : index
          %49 = arith.cmpi slt, %48, %c0_31 : index
          %50 = arith.subi %c-1_32, %48 : index
          %51 = arith.select %49, %50, %48 : index
          %52 = arith.divsi %51, %c4_30 : index
          %53 = arith.subi %c-1_32, %52 : index
          %54 = arith.select %49, %53, %52 : index
          %c-4_33 = arith.constant -4 : index
          %55 = arith.muli %54, %c-4_33 : index
          %56 = arith.addi %45, %55 : index
          %c1_34 = arith.constant 1 : index
          %57 = arith.addi %56, %c1_34 : index
          %c1_35 = arith.constant 1 : index
          scf.for %arg9 = %c0_26 to %57 step %c1_35 {
            %c1_36 = arith.constant 1 : index
            %58 = arith.addi %1, %c1_36 : index
            %c4_37 = arith.constant 4 : index
            %c0_38 = arith.constant 0 : index
            %c-1_39 = arith.constant -1 : index
            %59 = arith.cmpi slt, %58, %c0_38 : index
            %60 = arith.subi %c-1_39, %58 : index
            %61 = arith.select %59, %60, %58 : index
            %62 = arith.divsi %61, %c4_37 : index
            %63 = arith.subi %c-1_39, %62 : index
            %64 = arith.select %59, %63, %62 : index
            %c4_40 = arith.constant 4 : index
            %65 = arith.muli %64, %c4_40 : index
            %66 = arith.addi %arg9, %65 : index
            %67 = memref.load %arg5[%66, %arg8] : memref<?x20xf64>
            %68 = arith.mulf %43, %67 : f64
            %69 = memref.load %arg4[%1, %66] : memref<?x30xf64>
            %70 = arith.addf %69, %68 : f64
            memref.store %70, %arg4[%1, %66] : memref<?x30xf64>
          }
        }
      }
    }
    return
  }
}

