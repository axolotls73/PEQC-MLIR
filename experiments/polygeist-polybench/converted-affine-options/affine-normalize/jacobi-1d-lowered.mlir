module {
  func.func @kernel_jacobi_1d(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %cst = arith.constant 3.333300e-01 : f64
    %c0 = arith.constant 0 : index
    %c3 = arith.constant 3 : index
    %c1 = arith.constant 1 : index
    scf.for %arg4 = %c0 to %c3 step %c1 {
      %c0_0 = arith.constant 0 : index
      %c16 = arith.constant 16 : index
      %0 = arith.muli %arg4, %c16 : index
      %c-14 = arith.constant -14 : index
      %1 = arith.addi %0, %c-14 : index
      %2 = arith.maxsi %c0_0, %1 : index
      %c20 = arith.constant 20 : index
      %c16_1 = arith.constant 16 : index
      %3 = arith.muli %arg4, %c16_1 : index
      %c15 = arith.constant 15 : index
      %4 = arith.addi %3, %c15 : index
      %5 = arith.minsi %c20, %4 : index
      %c1_2 = arith.constant 1 : index
      scf.for %arg5 = %2 to %5 step %c1_2 {
        %c0_4 = arith.constant 0 : index
        %c16_5 = arith.constant 16 : index
        %c0_6 = arith.constant 0 : index
        %c-1 = arith.constant -1 : index
        %7 = arith.cmpi slt, %arg5, %c0_6 : index
        %8 = arith.subi %c-1, %arg5 : index
        %9 = arith.select %7, %8, %arg5 : index
        %10 = arith.divsi %9, %c16_5 : index
        %11 = arith.subi %c-1, %10 : index
        %12 = arith.select %7, %11, %10 : index
        %c-1_7 = arith.constant -1 : index
        %13 = arith.muli %arg4, %c-1_7 : index
        %14 = arith.addi %12, %13 : index
        %15 = arith.cmpi sge, %14, %c0_4 : index
        scf.if %15 {
          %c0_19 = arith.constant 0 : index
          %37 = memref.load %arg2[%c0_19] : memref<?xf64>
          %c1_20 = arith.constant 1 : index
          %38 = memref.load %arg2[%c1_20] : memref<?xf64>
          %39 = arith.addf %37, %38 : f64
          %c2_21 = arith.constant 2 : index
          %40 = memref.load %arg2[%c2_21] : memref<?xf64>
          %41 = arith.addf %39, %40 : f64
          %42 = arith.mulf %41, %cst : f64
          %c1_22 = arith.constant 1 : index
          memref.store %42, %arg3[%c1_22] : memref<?xf64>
        }
        %c32 = arith.constant 32 : index
        %16 = arith.muli %arg4, %c32 : index
        %c2 = arith.constant 2 : index
        %17 = arith.muli %arg5, %c2 : index
        %c2_8 = arith.constant 2 : index
        %18 = arith.addi %17, %c2_8 : index
        %19 = arith.maxsi %16, %18 : index
        %c32_9 = arith.constant 32 : index
        %20 = arith.muli %arg4, %c32_9 : index
        %c32_10 = arith.constant 32 : index
        %21 = arith.addi %20, %c32_10 : index
        %c2_11 = arith.constant 2 : index
        %22 = arith.muli %arg5, %c2_11 : index
        %c29 = arith.constant 29 : index
        %23 = arith.addi %22, %c29 : index
        %24 = arith.minsi %21, %23 : index
        %c1_12 = arith.constant 1 : index
        scf.for %arg6 = %19 to %24 step %c1_12 {
          %c-2 = arith.constant -2 : index
          %37 = arith.muli %arg5, %c-2 : index
          %38 = arith.addi %37, %arg6 : index
          %c-1_19 = arith.constant -1 : index
          %39 = arith.addi %38, %c-1_19 : index
          %40 = memref.load %arg2[%39] : memref<?xf64>
          %c-2_20 = arith.constant -2 : index
          %41 = arith.muli %arg5, %c-2_20 : index
          %42 = arith.addi %41, %arg6 : index
          %43 = memref.load %arg2[%42] : memref<?xf64>
          %44 = arith.addf %40, %43 : f64
          %c-2_21 = arith.constant -2 : index
          %45 = arith.muli %arg5, %c-2_21 : index
          %46 = arith.addi %45, %arg6 : index
          %c1_22 = arith.constant 1 : index
          %47 = arith.addi %46, %c1_22 : index
          %48 = memref.load %arg2[%47] : memref<?xf64>
          %49 = arith.addf %44, %48 : f64
          %50 = arith.mulf %49, %cst : f64
          %c-2_23 = arith.constant -2 : index
          %51 = arith.muli %arg5, %c-2_23 : index
          %52 = arith.addi %51, %arg6 : index
          memref.store %50, %arg3[%52] : memref<?xf64>
          %c-2_24 = arith.constant -2 : index
          %53 = arith.muli %arg5, %c-2_24 : index
          %54 = arith.addi %53, %arg6 : index
          %c-2_25 = arith.constant -2 : index
          %55 = arith.addi %54, %c-2_25 : index
          %56 = memref.load %arg3[%55] : memref<?xf64>
          %c-2_26 = arith.constant -2 : index
          %57 = arith.muli %arg5, %c-2_26 : index
          %58 = arith.addi %57, %arg6 : index
          %c-1_27 = arith.constant -1 : index
          %59 = arith.addi %58, %c-1_27 : index
          %60 = memref.load %arg3[%59] : memref<?xf64>
          %61 = arith.addf %56, %60 : f64
          %c-2_28 = arith.constant -2 : index
          %62 = arith.muli %arg5, %c-2_28 : index
          %63 = arith.addi %62, %arg6 : index
          %64 = memref.load %arg3[%63] : memref<?xf64>
          %65 = arith.addf %61, %64 : f64
          %66 = arith.mulf %65, %cst : f64
          %c-2_29 = arith.constant -2 : index
          %67 = arith.muli %arg5, %c-2_29 : index
          %68 = arith.addi %67, %arg6 : index
          %c-1_30 = arith.constant -1 : index
          %69 = arith.addi %68, %c-1_30 : index
          memref.store %66, %arg2[%69] : memref<?xf64>
        }
        %c0_13 = arith.constant 0 : index
        %c-1_14 = arith.constant -1 : index
        %25 = arith.addi %arg5, %c-1_14 : index
        %c16_15 = arith.constant 16 : index
        %c0_16 = arith.constant 0 : index
        %c1_17 = arith.constant 1 : index
        %26 = arith.cmpi sle, %25, %c0_16 : index
        %27 = arith.subi %c0_16, %25 : index
        %28 = arith.subi %25, %c1_17 : index
        %29 = arith.select %26, %27, %28 : index
        %30 = arith.divsi %29, %c16_15 : index
        %31 = arith.subi %c0_16, %30 : index
        %32 = arith.addi %30, %c1_17 : index
        %33 = arith.select %26, %31, %32 : index
        %c-1_18 = arith.constant -1 : index
        %34 = arith.muli %33, %c-1_18 : index
        %35 = arith.addi %arg4, %34 : index
        %36 = arith.cmpi sge, %35, %c0_13 : index
        scf.if %36 {
          %c27 = arith.constant 27 : index
          %37 = memref.load %arg3[%c27] : memref<?xf64>
          %c28 = arith.constant 28 : index
          %38 = memref.load %arg3[%c28] : memref<?xf64>
          %39 = arith.addf %37, %38 : f64
          %c29_19 = arith.constant 29 : index
          %40 = memref.load %arg3[%c29_19] : memref<?xf64>
          %41 = arith.addf %39, %40 : f64
          %42 = arith.mulf %41, %cst : f64
          %c28_20 = arith.constant 28 : index
          memref.store %42, %arg2[%c28_20] : memref<?xf64>
        }
      }
      %c0_3 = arith.constant 0 : index
      %6 = arith.cmpi eq, %arg4, %c0_3 : index
      scf.if %6 {
        %c0_4 = arith.constant 0 : index
        %7 = memref.load %arg2[%c0_4] : memref<?xf64>
        %c1_5 = arith.constant 1 : index
        %8 = memref.load %arg2[%c1_5] : memref<?xf64>
        %9 = arith.addf %7, %8 : f64
        %c2 = arith.constant 2 : index
        %10 = memref.load %arg2[%c2] : memref<?xf64>
        %11 = arith.addf %9, %10 : f64
        %12 = arith.mulf %11, %cst : f64
        %c1_6 = arith.constant 1 : index
        memref.store %12, %arg3[%c1_6] : memref<?xf64>
      }
    }
    return
  }
}

