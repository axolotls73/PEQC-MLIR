module {
  func.func @kernel_jacobi_1d(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %cst = arith.constant 3.333300e-01 : f64
    %c0 = arith.constant 0 : index
    %c3 = arith.constant 3 : index
    %c1 = arith.constant 1 : index
    scf.for %arg4 = %c0 to %c3 step %c1 {
      %c0_0 = arith.constant 0 : index
      %c1_1 = arith.constant 1 : index
      %c1_2 = arith.constant 1 : index
      scf.parallel (%arg5) = (%c0_0) to (%c1_1) step (%c1_2) {
        %0 = arith.addi %arg4, %arg5 : index
        %c0_3 = arith.constant 0 : index
        %c16 = arith.constant 16 : index
        %1 = arith.muli %arg4, %c16 : index
        %c16_4 = arith.constant 16 : index
        %2 = arith.muli %arg5, %c16_4 : index
        %3 = arith.addi %1, %2 : index
        %c-14 = arith.constant -14 : index
        %4 = arith.addi %3, %c-14 : index
        %5 = arith.maxsi %c0_3, %4 : index
        %c20 = arith.constant 20 : index
        %c16_5 = arith.constant 16 : index
        %6 = arith.muli %arg4, %c16_5 : index
        %c16_6 = arith.constant 16 : index
        %7 = arith.muli %arg5, %c16_6 : index
        %8 = arith.addi %6, %7 : index
        %c15 = arith.constant 15 : index
        %9 = arith.addi %8, %c15 : index
        %10 = arith.minsi %c20, %9 : index
        %c1_7 = arith.constant 1 : index
        scf.for %arg6 = %5 to %10 step %c1_7 {
          %c0_9 = arith.constant 0 : index
          %c-1 = arith.constant -1 : index
          %13 = arith.muli %arg4, %c-1 : index
          %c-1_10 = arith.constant -1 : index
          %14 = arith.muli %arg5, %c-1_10 : index
          %15 = arith.addi %13, %14 : index
          %c16_11 = arith.constant 16 : index
          %c0_12 = arith.constant 0 : index
          %c-1_13 = arith.constant -1 : index
          %16 = arith.cmpi slt, %arg6, %c0_12 : index
          %17 = arith.subi %c-1_13, %arg6 : index
          %18 = arith.select %16, %17, %arg6 : index
          %19 = arith.divsi %18, %c16_11 : index
          %20 = arith.subi %c-1_13, %19 : index
          %21 = arith.select %16, %20, %19 : index
          %22 = arith.addi %15, %21 : index
          %23 = arith.cmpi sge, %22, %c0_9 : index
          scf.if %23 {
            %c0_27 = arith.constant 0 : index
            %50 = memref.load %arg2[%c0_27] : memref<?xf64>
            %c1_28 = arith.constant 1 : index
            %51 = memref.load %arg2[%c1_28] : memref<?xf64>
            %52 = arith.addf %50, %51 : f64
            %c2_29 = arith.constant 2 : index
            %53 = memref.load %arg2[%c2_29] : memref<?xf64>
            %54 = arith.addf %52, %53 : f64
            %55 = arith.mulf %54, %cst : f64
            %c1_30 = arith.constant 1 : index
            memref.store %55, %arg3[%c1_30] : memref<?xf64>
          }
          %c32 = arith.constant 32 : index
          %24 = arith.muli %arg4, %c32 : index
          %c32_14 = arith.constant 32 : index
          %25 = arith.muli %arg5, %c32_14 : index
          %26 = arith.addi %24, %25 : index
          %c2 = arith.constant 2 : index
          %27 = arith.muli %arg6, %c2 : index
          %c2_15 = arith.constant 2 : index
          %28 = arith.addi %27, %c2_15 : index
          %29 = arith.maxsi %26, %28 : index
          %c32_16 = arith.constant 32 : index
          %30 = arith.muli %arg4, %c32_16 : index
          %c32_17 = arith.constant 32 : index
          %31 = arith.muli %arg5, %c32_17 : index
          %32 = arith.addi %30, %31 : index
          %c32_18 = arith.constant 32 : index
          %33 = arith.addi %32, %c32_18 : index
          %c2_19 = arith.constant 2 : index
          %34 = arith.muli %arg6, %c2_19 : index
          %c29 = arith.constant 29 : index
          %35 = arith.addi %34, %c29 : index
          %36 = arith.minsi %33, %35 : index
          %c1_20 = arith.constant 1 : index
          scf.for %arg7 = %29 to %36 step %c1_20 {
            %c-2 = arith.constant -2 : index
            %50 = arith.muli %arg6, %c-2 : index
            %51 = arith.addi %50, %arg7 : index
            %c-1_27 = arith.constant -1 : index
            %52 = arith.addi %51, %c-1_27 : index
            %53 = memref.load %arg2[%52] : memref<?xf64>
            %c-2_28 = arith.constant -2 : index
            %54 = arith.muli %arg6, %c-2_28 : index
            %55 = arith.addi %54, %arg7 : index
            %56 = memref.load %arg2[%55] : memref<?xf64>
            %57 = arith.addf %53, %56 : f64
            %c-2_29 = arith.constant -2 : index
            %58 = arith.muli %arg6, %c-2_29 : index
            %59 = arith.addi %58, %arg7 : index
            %c1_30 = arith.constant 1 : index
            %60 = arith.addi %59, %c1_30 : index
            %61 = memref.load %arg2[%60] : memref<?xf64>
            %62 = arith.addf %57, %61 : f64
            %63 = arith.mulf %62, %cst : f64
            %c-2_31 = arith.constant -2 : index
            %64 = arith.muli %arg6, %c-2_31 : index
            %65 = arith.addi %64, %arg7 : index
            memref.store %63, %arg3[%65] : memref<?xf64>
            %c-2_32 = arith.constant -2 : index
            %66 = arith.muli %arg6, %c-2_32 : index
            %67 = arith.addi %66, %arg7 : index
            %c-2_33 = arith.constant -2 : index
            %68 = arith.addi %67, %c-2_33 : index
            %69 = memref.load %arg3[%68] : memref<?xf64>
            %c-2_34 = arith.constant -2 : index
            %70 = arith.muli %arg6, %c-2_34 : index
            %71 = arith.addi %70, %arg7 : index
            %c-1_35 = arith.constant -1 : index
            %72 = arith.addi %71, %c-1_35 : index
            %73 = memref.load %arg3[%72] : memref<?xf64>
            %74 = arith.addf %69, %73 : f64
            %c-2_36 = arith.constant -2 : index
            %75 = arith.muli %arg6, %c-2_36 : index
            %76 = arith.addi %75, %arg7 : index
            %77 = memref.load %arg3[%76] : memref<?xf64>
            %78 = arith.addf %74, %77 : f64
            %79 = arith.mulf %78, %cst : f64
            %c-2_37 = arith.constant -2 : index
            %80 = arith.muli %arg6, %c-2_37 : index
            %81 = arith.addi %80, %arg7 : index
            %c-1_38 = arith.constant -1 : index
            %82 = arith.addi %81, %c-1_38 : index
            memref.store %79, %arg2[%82] : memref<?xf64>
          }
          %c0_21 = arith.constant 0 : index
          %37 = arith.addi %arg4, %arg5 : index
          %c-1_22 = arith.constant -1 : index
          %38 = arith.addi %arg6, %c-1_22 : index
          %c16_23 = arith.constant 16 : index
          %c0_24 = arith.constant 0 : index
          %c1_25 = arith.constant 1 : index
          %39 = arith.cmpi sle, %38, %c0_24 : index
          %40 = arith.subi %c0_24, %38 : index
          %41 = arith.subi %38, %c1_25 : index
          %42 = arith.select %39, %40, %41 : index
          %43 = arith.divsi %42, %c16_23 : index
          %44 = arith.subi %c0_24, %43 : index
          %45 = arith.addi %43, %c1_25 : index
          %46 = arith.select %39, %44, %45 : index
          %c-1_26 = arith.constant -1 : index
          %47 = arith.muli %46, %c-1_26 : index
          %48 = arith.addi %37, %47 : index
          %49 = arith.cmpi sge, %48, %c0_21 : index
          scf.if %49 {
            %c27 = arith.constant 27 : index
            %50 = memref.load %arg3[%c27] : memref<?xf64>
            %c28 = arith.constant 28 : index
            %51 = memref.load %arg3[%c28] : memref<?xf64>
            %52 = arith.addf %50, %51 : f64
            %c29_27 = arith.constant 29 : index
            %53 = memref.load %arg3[%c29_27] : memref<?xf64>
            %54 = arith.addf %52, %53 : f64
            %55 = arith.mulf %54, %cst : f64
            %c28_28 = arith.constant 28 : index
            memref.store %55, %arg2[%c28_28] : memref<?xf64>
          }
        }
        %c0_8 = arith.constant 0 : index
        %11 = arith.addi %arg4, %arg5 : index
        %12 = arith.cmpi eq, %11, %c0_8 : index
        scf.if %12 {
          %c0_9 = arith.constant 0 : index
          %13 = memref.load %arg2[%c0_9] : memref<?xf64>
          %c1_10 = arith.constant 1 : index
          %14 = memref.load %arg2[%c1_10] : memref<?xf64>
          %15 = arith.addf %13, %14 : f64
          %c2 = arith.constant 2 : index
          %16 = memref.load %arg2[%c2] : memref<?xf64>
          %17 = arith.addf %15, %16 : f64
          %18 = arith.mulf %17, %cst : f64
          %c1_11 = arith.constant 1 : index
          memref.store %18, %arg3[%c1_11] : memref<?xf64>
        }
        scf.reduce 
      }
    }
    return
  }
}

