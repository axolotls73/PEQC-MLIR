module {
  func.func @kernel_jacobi_1d(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %cst = arith.constant 3.333300e-01 : f64
    %c0 = arith.constant 0 : index
    %c3 = arith.constant 3 : index
    %c1 = arith.constant 1 : index
    scf.for %arg4 = %c0 to %c3 step %c1 {
      %c1_0 = arith.constant 1 : index
      %0 = arith.addi %arg4, %c1_0 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg5 = %arg4 to %0 step %c1_1 {
        %c0_2 = arith.constant 0 : index
        %c16 = arith.constant 16 : index
        %1 = arith.muli %arg5, %c16 : index
        %c-14 = arith.constant -14 : index
        %2 = arith.addi %1, %c-14 : index
        %3 = arith.maxsi %c0_2, %2 : index
        %c20 = arith.constant 20 : index
        %c16_3 = arith.constant 16 : index
        %4 = arith.muli %arg5, %c16_3 : index
        %c15 = arith.constant 15 : index
        %5 = arith.addi %4, %c15 : index
        %6 = arith.minsi %c20, %5 : index
        %c1_4 = arith.constant 1 : index
        scf.for %arg6 = %3 to %6 step %c1_4 {
          %c0_6 = arith.constant 0 : index
          %c16_7 = arith.constant 16 : index
          %c0_8 = arith.constant 0 : index
          %c-1 = arith.constant -1 : index
          %8 = arith.cmpi slt, %arg6, %c0_8 : index
          %9 = arith.subi %c-1, %arg6 : index
          %10 = arith.select %8, %9, %arg6 : index
          %11 = arith.divsi %10, %c16_7 : index
          %12 = arith.subi %c-1, %11 : index
          %13 = arith.select %8, %12, %11 : index
          %c-1_9 = arith.constant -1 : index
          %14 = arith.muli %arg5, %c-1_9 : index
          %15 = arith.addi %13, %14 : index
          %16 = arith.cmpi sge, %15, %c0_6 : index
          scf.if %16 {
            %c0_21 = arith.constant 0 : index
            %38 = memref.load %arg2[%c0_21] : memref<?xf64>
            %c1_22 = arith.constant 1 : index
            %39 = memref.load %arg2[%c1_22] : memref<?xf64>
            %40 = arith.addf %38, %39 : f64
            %c2_23 = arith.constant 2 : index
            %41 = memref.load %arg2[%c2_23] : memref<?xf64>
            %42 = arith.addf %40, %41 : f64
            %43 = arith.mulf %42, %cst : f64
            %c1_24 = arith.constant 1 : index
            memref.store %43, %arg3[%c1_24] : memref<?xf64>
          }
          %c32 = arith.constant 32 : index
          %17 = arith.muli %arg5, %c32 : index
          %c2 = arith.constant 2 : index
          %18 = arith.muli %arg6, %c2 : index
          %c2_10 = arith.constant 2 : index
          %19 = arith.addi %18, %c2_10 : index
          %20 = arith.maxsi %17, %19 : index
          %c32_11 = arith.constant 32 : index
          %21 = arith.muli %arg5, %c32_11 : index
          %c32_12 = arith.constant 32 : index
          %22 = arith.addi %21, %c32_12 : index
          %c2_13 = arith.constant 2 : index
          %23 = arith.muli %arg6, %c2_13 : index
          %c29 = arith.constant 29 : index
          %24 = arith.addi %23, %c29 : index
          %25 = arith.minsi %22, %24 : index
          %c1_14 = arith.constant 1 : index
          scf.for %arg7 = %20 to %25 step %c1_14 {
            %c-2 = arith.constant -2 : index
            %38 = arith.muli %arg6, %c-2 : index
            %39 = arith.addi %38, %arg7 : index
            %c-1_21 = arith.constant -1 : index
            %40 = arith.addi %39, %c-1_21 : index
            %41 = memref.load %arg2[%40] : memref<?xf64>
            %c-2_22 = arith.constant -2 : index
            %42 = arith.muli %arg6, %c-2_22 : index
            %43 = arith.addi %42, %arg7 : index
            %44 = memref.load %arg2[%43] : memref<?xf64>
            %45 = arith.addf %41, %44 : f64
            %c-2_23 = arith.constant -2 : index
            %46 = arith.muli %arg6, %c-2_23 : index
            %47 = arith.addi %46, %arg7 : index
            %c1_24 = arith.constant 1 : index
            %48 = arith.addi %47, %c1_24 : index
            %49 = memref.load %arg2[%48] : memref<?xf64>
            %50 = arith.addf %45, %49 : f64
            %51 = arith.mulf %50, %cst : f64
            %c-2_25 = arith.constant -2 : index
            %52 = arith.muli %arg6, %c-2_25 : index
            %53 = arith.addi %52, %arg7 : index
            memref.store %51, %arg3[%53] : memref<?xf64>
            %c-2_26 = arith.constant -2 : index
            %54 = arith.muli %arg6, %c-2_26 : index
            %55 = arith.addi %54, %arg7 : index
            %c-2_27 = arith.constant -2 : index
            %56 = arith.addi %55, %c-2_27 : index
            %57 = memref.load %arg3[%56] : memref<?xf64>
            %c-2_28 = arith.constant -2 : index
            %58 = arith.muli %arg6, %c-2_28 : index
            %59 = arith.addi %58, %arg7 : index
            %c-1_29 = arith.constant -1 : index
            %60 = arith.addi %59, %c-1_29 : index
            %61 = memref.load %arg3[%60] : memref<?xf64>
            %62 = arith.addf %57, %61 : f64
            %c-2_30 = arith.constant -2 : index
            %63 = arith.muli %arg6, %c-2_30 : index
            %64 = arith.addi %63, %arg7 : index
            %65 = memref.load %arg3[%64] : memref<?xf64>
            %66 = arith.addf %62, %65 : f64
            %67 = arith.mulf %66, %cst : f64
            %c-2_31 = arith.constant -2 : index
            %68 = arith.muli %arg6, %c-2_31 : index
            %69 = arith.addi %68, %arg7 : index
            %c-1_32 = arith.constant -1 : index
            %70 = arith.addi %69, %c-1_32 : index
            memref.store %67, %arg2[%70] : memref<?xf64>
          }
          %c0_15 = arith.constant 0 : index
          %c-1_16 = arith.constant -1 : index
          %26 = arith.addi %arg6, %c-1_16 : index
          %c16_17 = arith.constant 16 : index
          %c0_18 = arith.constant 0 : index
          %c1_19 = arith.constant 1 : index
          %27 = arith.cmpi sle, %26, %c0_18 : index
          %28 = arith.subi %c0_18, %26 : index
          %29 = arith.subi %26, %c1_19 : index
          %30 = arith.select %27, %28, %29 : index
          %31 = arith.divsi %30, %c16_17 : index
          %32 = arith.subi %c0_18, %31 : index
          %33 = arith.addi %31, %c1_19 : index
          %34 = arith.select %27, %32, %33 : index
          %c-1_20 = arith.constant -1 : index
          %35 = arith.muli %34, %c-1_20 : index
          %36 = arith.addi %arg5, %35 : index
          %37 = arith.cmpi sge, %36, %c0_15 : index
          scf.if %37 {
            %c27 = arith.constant 27 : index
            %38 = memref.load %arg3[%c27] : memref<?xf64>
            %c28 = arith.constant 28 : index
            %39 = memref.load %arg3[%c28] : memref<?xf64>
            %40 = arith.addf %38, %39 : f64
            %c29_21 = arith.constant 29 : index
            %41 = memref.load %arg3[%c29_21] : memref<?xf64>
            %42 = arith.addf %40, %41 : f64
            %43 = arith.mulf %42, %cst : f64
            %c28_22 = arith.constant 28 : index
            memref.store %43, %arg2[%c28_22] : memref<?xf64>
          }
        }
        %c0_5 = arith.constant 0 : index
        %7 = arith.cmpi eq, %arg5, %c0_5 : index
        scf.if %7 {
          %c0_6 = arith.constant 0 : index
          %8 = memref.load %arg2[%c0_6] : memref<?xf64>
          %c1_7 = arith.constant 1 : index
          %9 = memref.load %arg2[%c1_7] : memref<?xf64>
          %10 = arith.addf %8, %9 : f64
          %c2 = arith.constant 2 : index
          %11 = memref.load %arg2[%c2] : memref<?xf64>
          %12 = arith.addf %10, %11 : f64
          %13 = arith.mulf %12, %cst : f64
          %c1_8 = arith.constant 1 : index
          memref.store %13, %arg3[%c1_8] : memref<?xf64>
        }
      }
    }
    return
  }
}

