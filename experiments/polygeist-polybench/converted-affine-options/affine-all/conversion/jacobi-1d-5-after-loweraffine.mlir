module {
  func.func @kernel_jacobi_1d(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %cst = arith.constant 3.333300e-01 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_0 = arith.constant 1 : index
    scf.parallel (%arg4) = (%c0) to (%c1) step (%c1_0) {
      %c32 = arith.constant 32 : index
      %0 = arith.muli %arg4, %c32 : index
      %c0_1 = arith.constant 0 : index
      %c3 = arith.constant 3 : index
      %c1_2 = arith.constant 1 : index
      scf.for %arg5 = %c0_1 to %c3 step %c1_2 {
        %1 = arith.addi %0, %arg5 : index
        %c0_3 = arith.constant 0 : index
        %c16 = arith.constant 16 : index
        %2 = arith.muli %arg5, %c16 : index
        %c512 = arith.constant 512 : index
        %3 = arith.muli %arg4, %c512 : index
        %4 = arith.addi %2, %3 : index
        %c-14 = arith.constant -14 : index
        %5 = arith.addi %4, %c-14 : index
        %6 = arith.maxsi %c0_3, %5 : index
        %c20 = arith.constant 20 : index
        %c16_4 = arith.constant 16 : index
        %7 = arith.muli %arg5, %c16_4 : index
        %c512_5 = arith.constant 512 : index
        %8 = arith.muli %arg4, %c512_5 : index
        %9 = arith.addi %7, %8 : index
        %c15 = arith.constant 15 : index
        %10 = arith.addi %9, %c15 : index
        %11 = arith.minsi %c20, %10 : index
        %c1_6 = arith.constant 1 : index
        scf.for %arg6 = %6 to %11 step %c1_6 {
          %c0_9 = arith.constant 0 : index
          %c-1 = arith.constant -1 : index
          %15 = arith.muli %arg5, %c-1 : index
          %c-32 = arith.constant -32 : index
          %16 = arith.muli %arg4, %c-32 : index
          %17 = arith.addi %15, %16 : index
          %c16_10 = arith.constant 16 : index
          %c0_11 = arith.constant 0 : index
          %c-1_12 = arith.constant -1 : index
          %18 = arith.cmpi slt, %arg6, %c0_11 : index
          %19 = arith.subi %c-1_12, %arg6 : index
          %20 = arith.select %18, %19, %arg6 : index
          %21 = arith.divsi %20, %c16_10 : index
          %22 = arith.subi %c-1_12, %21 : index
          %23 = arith.select %18, %22, %21 : index
          %24 = arith.addi %17, %23 : index
          %25 = arith.cmpi sge, %24, %c0_9 : index
          scf.if %25 {
            %c0_27 = arith.constant 0 : index
            %53 = memref.load %arg2[%c0_27] : memref<?xf64>
            %c1_28 = arith.constant 1 : index
            %54 = memref.load %arg2[%c1_28] : memref<?xf64>
            %55 = arith.addf %53, %54 : f64
            %c2_29 = arith.constant 2 : index
            %56 = memref.load %arg2[%c2_29] : memref<?xf64>
            %57 = arith.addf %55, %56 : f64
            %58 = arith.mulf %57, %cst : f64
            %c1_30 = arith.constant 1 : index
            memref.store %58, %arg3[%c1_30] : memref<?xf64>
          }
          %c32_13 = arith.constant 32 : index
          %26 = arith.muli %arg5, %c32_13 : index
          %c1024 = arith.constant 1024 : index
          %27 = arith.muli %arg4, %c1024 : index
          %28 = arith.addi %26, %27 : index
          %c2 = arith.constant 2 : index
          %29 = arith.muli %arg6, %c2 : index
          %c2_14 = arith.constant 2 : index
          %30 = arith.addi %29, %c2_14 : index
          %31 = arith.maxsi %28, %30 : index
          %c32_15 = arith.constant 32 : index
          %32 = arith.muli %arg5, %c32_15 : index
          %c1024_16 = arith.constant 1024 : index
          %33 = arith.muli %arg4, %c1024_16 : index
          %34 = arith.addi %32, %33 : index
          %c32_17 = arith.constant 32 : index
          %35 = arith.addi %34, %c32_17 : index
          %c2_18 = arith.constant 2 : index
          %36 = arith.muli %arg6, %c2_18 : index
          %c29 = arith.constant 29 : index
          %37 = arith.addi %36, %c29 : index
          %38 = arith.minsi %35, %37 : index
          %c1_19 = arith.constant 1 : index
          scf.for %arg7 = %31 to %38 step %c1_19 {
            %c-2 = arith.constant -2 : index
            %53 = arith.muli %arg6, %c-2 : index
            %54 = arith.addi %53, %arg7 : index
            %c-1_27 = arith.constant -1 : index
            %55 = arith.addi %54, %c-1_27 : index
            %56 = memref.load %arg2[%55] : memref<?xf64>
            %c-2_28 = arith.constant -2 : index
            %57 = arith.muli %arg6, %c-2_28 : index
            %58 = arith.addi %57, %arg7 : index
            %59 = memref.load %arg2[%58] : memref<?xf64>
            %60 = arith.addf %56, %59 : f64
            %c-2_29 = arith.constant -2 : index
            %61 = arith.muli %arg6, %c-2_29 : index
            %62 = arith.addi %61, %arg7 : index
            %c1_30 = arith.constant 1 : index
            %63 = arith.addi %62, %c1_30 : index
            %64 = memref.load %arg2[%63] : memref<?xf64>
            %65 = arith.addf %60, %64 : f64
            %66 = arith.mulf %65, %cst : f64
            %c-2_31 = arith.constant -2 : index
            %67 = arith.muli %arg6, %c-2_31 : index
            %68 = arith.addi %67, %arg7 : index
            memref.store %66, %arg3[%68] : memref<?xf64>
            %c-2_32 = arith.constant -2 : index
            %69 = arith.muli %arg6, %c-2_32 : index
            %70 = arith.addi %69, %arg7 : index
            %c-2_33 = arith.constant -2 : index
            %71 = arith.addi %70, %c-2_33 : index
            %72 = memref.load %arg3[%71] : memref<?xf64>
            %c-2_34 = arith.constant -2 : index
            %73 = arith.muli %arg6, %c-2_34 : index
            %74 = arith.addi %73, %arg7 : index
            %c-1_35 = arith.constant -1 : index
            %75 = arith.addi %74, %c-1_35 : index
            %76 = memref.load %arg3[%75] : memref<?xf64>
            %77 = arith.addf %72, %76 : f64
            %c-2_36 = arith.constant -2 : index
            %78 = arith.muli %arg6, %c-2_36 : index
            %79 = arith.addi %78, %arg7 : index
            %80 = memref.load %arg3[%79] : memref<?xf64>
            %81 = arith.addf %77, %80 : f64
            %82 = arith.mulf %81, %cst : f64
            %c-2_37 = arith.constant -2 : index
            %83 = arith.muli %arg6, %c-2_37 : index
            %84 = arith.addi %83, %arg7 : index
            %c-1_38 = arith.constant -1 : index
            %85 = arith.addi %84, %c-1_38 : index
            memref.store %82, %arg2[%85] : memref<?xf64>
          }
          %c0_20 = arith.constant 0 : index
          %c32_21 = arith.constant 32 : index
          %39 = arith.muli %arg4, %c32_21 : index
          %40 = arith.addi %arg5, %39 : index
          %c-1_22 = arith.constant -1 : index
          %41 = arith.addi %arg6, %c-1_22 : index
          %c16_23 = arith.constant 16 : index
          %c0_24 = arith.constant 0 : index
          %c1_25 = arith.constant 1 : index
          %42 = arith.cmpi sle, %41, %c0_24 : index
          %43 = arith.subi %c0_24, %41 : index
          %44 = arith.subi %41, %c1_25 : index
          %45 = arith.select %42, %43, %44 : index
          %46 = arith.divsi %45, %c16_23 : index
          %47 = arith.subi %c0_24, %46 : index
          %48 = arith.addi %46, %c1_25 : index
          %49 = arith.select %42, %47, %48 : index
          %c-1_26 = arith.constant -1 : index
          %50 = arith.muli %49, %c-1_26 : index
          %51 = arith.addi %40, %50 : index
          %52 = arith.cmpi sge, %51, %c0_20 : index
          scf.if %52 {
            %c27 = arith.constant 27 : index
            %53 = memref.load %arg3[%c27] : memref<?xf64>
            %c28 = arith.constant 28 : index
            %54 = memref.load %arg3[%c28] : memref<?xf64>
            %55 = arith.addf %53, %54 : f64
            %c29_27 = arith.constant 29 : index
            %56 = memref.load %arg3[%c29_27] : memref<?xf64>
            %57 = arith.addf %55, %56 : f64
            %58 = arith.mulf %57, %cst : f64
            %c28_28 = arith.constant 28 : index
            memref.store %58, %arg2[%c28_28] : memref<?xf64>
          }
        }
        %c0_7 = arith.constant 0 : index
        %c32_8 = arith.constant 32 : index
        %12 = arith.muli %arg4, %c32_8 : index
        %13 = arith.addi %arg5, %12 : index
        %14 = arith.cmpi eq, %13, %c0_7 : index
        scf.if %14 {
          %c0_9 = arith.constant 0 : index
          %15 = memref.load %arg2[%c0_9] : memref<?xf64>
          %c1_10 = arith.constant 1 : index
          %16 = memref.load %arg2[%c1_10] : memref<?xf64>
          %17 = arith.addf %15, %16 : f64
          %c2 = arith.constant 2 : index
          %18 = memref.load %arg2[%c2] : memref<?xf64>
          %19 = arith.addf %17, %18 : f64
          %20 = arith.mulf %19, %cst : f64
          %c1_11 = arith.constant 1 : index
          memref.store %20, %arg3[%c1_11] : memref<?xf64>
        }
      }
      scf.reduce 
    }
    return
  }
}

