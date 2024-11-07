module {
  func.func @kernel_covariance(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %alloca = memref.alloca() : memref<1xf64>
    %alloca_1 = memref.alloca() {scop.scratchpad} : memref<1xf64>
    %c0 = arith.constant 0 : index
    %c28 = arith.constant 28 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c28 step %c1 {
      %c28_13 = arith.constant 28 : index
      %c1_14 = arith.constant 1 : index
      scf.for %arg7 = %arg6 to %c28_13 step %c1_14 {
        memref.store %cst_0, %arg4[%arg6, %arg7] : memref<?x28xf64>
      }
    }
    %0 = arith.subf %arg2, %cst : f64
    %c0_2 = arith.constant 0 : index
    memref.store %0, %alloca_1[%c0_2] : memref<1xf64>
    %c0_3 = arith.constant 0 : index
    %c28_4 = arith.constant 28 : index
    %c1_5 = arith.constant 1 : index
    scf.for %arg6 = %c0_3 to %c28_4 step %c1_5 {
      memref.store %cst_0, %arg5[%arg6] : memref<?xf64>
      %c0_13 = arith.constant 0 : index
      %c32_14 = arith.constant 32 : index
      %c1_15 = arith.constant 1 : index
      scf.for %arg7 = %c0_13 to %c32_14 step %c1_15 {
        %3 = memref.load %arg5[%arg6] : memref<?xf64>
        %4 = memref.load %arg3[%arg7, %arg6] : memref<?x28xf64>
        %5 = arith.addf %3, %4 : f64
        memref.store %5, %arg5[%arg6] : memref<?xf64>
      }
      %1 = memref.load %arg5[%arg6] : memref<?xf64>
      %2 = arith.divf %1, %arg2 : f64
      memref.store %2, %arg5[%arg6] : memref<?xf64>
    }
    %c0_6 = arith.constant 0 : index
    %c32 = arith.constant 32 : index
    %c1_7 = arith.constant 1 : index
    scf.for %arg6 = %c0_6 to %c32 step %c1_7 {
      %c0_13 = arith.constant 0 : index
      %c28_14 = arith.constant 28 : index
      %c1_15 = arith.constant 1 : index
      scf.for %arg7 = %c0_13 to %c28_14 step %c1_15 {
        %1 = memref.load %arg3[%arg6, %arg7] : memref<?x28xf64>
        %2 = memref.load %arg5[%arg7] : memref<?xf64>
        %3 = arith.subf %1, %2 : f64
        memref.store %3, %arg3[%arg6, %arg7] : memref<?x28xf64>
      }
    }
    %c0_8 = arith.constant 0 : index
    %c28_9 = arith.constant 28 : index
    %c1_10 = arith.constant 1 : index
    scf.for %arg6 = %c0_8 to %c28_9 step %c1_10 {
      %c28_13 = arith.constant 28 : index
      %c1_14 = arith.constant 1 : index
      scf.for %arg7 = %arg6 to %c28_13 step %c1_14 {
        %c0_15 = arith.constant 0 : index
        %c32_16 = arith.constant 32 : index
        %c1_17 = arith.constant 1 : index
        scf.for %arg8 = %c0_15 to %c32_16 step %c1_17 {
          %1 = memref.load %arg4[%arg6, %arg7] : memref<?x28xf64>
          %2 = memref.load %arg3[%arg8, %arg6] : memref<?x28xf64>
          %3 = memref.load %arg3[%arg8, %arg7] : memref<?x28xf64>
          %4 = arith.mulf %2, %3 : f64
          %5 = arith.addf %1, %4 : f64
          memref.store %5, %arg4[%arg6, %arg7] : memref<?x28xf64>
        }
      }
    }
    %c0_11 = arith.constant 0 : index
    %c23 = arith.constant 23 : index
    %c1_12 = arith.constant 1 : index
    scf.for %arg6 = %c0_11 to %c23 step %c1_12 {
      %c0_13 = arith.constant 0 : index
      %c16 = arith.constant 16 : index
      %1 = arith.muli %arg6, %c16 : index
      %c-13 = arith.constant -13 : index
      %2 = arith.addi %1, %c-13 : index
      %c13 = arith.constant 13 : index
      %c0_14 = arith.constant 0 : index
      %c1_15 = arith.constant 1 : index
      %3 = arith.cmpi sle, %2, %c0_14 : index
      %4 = arith.subi %c0_14, %2 : index
      %5 = arith.subi %2, %c1_15 : index
      %6 = arith.select %3, %4, %5 : index
      %7 = arith.divsi %6, %c13 : index
      %8 = arith.subi %c0_14, %7 : index
      %9 = arith.addi %7, %c1_15 : index
      %10 = arith.select %3, %8, %9 : index
      %11 = arith.maxsi %c0_13, %10 : index
      %c32_16 = arith.constant 32 : index
      %12 = arith.muli %arg6, %c32_16 : index
      %c31 = arith.constant 31 : index
      %13 = arith.addi %12, %c31 : index
      %c27 = arith.constant 27 : index
      %c0_17 = arith.constant 0 : index
      %c-1 = arith.constant -1 : index
      %14 = arith.cmpi slt, %13, %c0_17 : index
      %15 = arith.subi %c-1, %13 : index
      %16 = arith.select %14, %15, %13 : index
      %17 = arith.divsi %16, %c27 : index
      %18 = arith.subi %c-1, %17 : index
      %19 = arith.select %14, %18, %17 : index
      %c1_18 = arith.constant 1 : index
      %20 = arith.addi %19, %c1_18 : index
      %c1_19 = arith.constant 1 : index
      scf.for %arg7 = %11 to %20 step %c1_19 {
        %c32_20 = arith.constant 32 : index
        %21 = arith.muli %arg6, %c32_20 : index
        %c27_21 = arith.constant 27 : index
        %22 = arith.muli %arg7, %c27_21 : index
        %23 = arith.maxsi %21, %22 : index
        %c32_22 = arith.constant 32 : index
        %24 = arith.muli %arg6, %c32_22 : index
        %c32_23 = arith.constant 32 : index
        %25 = arith.addi %24, %c32_23 : index
        %c26 = arith.constant 26 : index
        %26 = arith.muli %arg7, %c26 : index
        %c28_24 = arith.constant 28 : index
        %27 = arith.addi %26, %c28_24 : index
        %28 = arith.minsi %25, %27 : index
        %c1_25 = arith.constant 1 : index
        scf.for %arg8 = %23 to %28 step %c1_25 {
          %c-26 = arith.constant -26 : index
          %29 = arith.muli %arg8, %c-26 : index
          %30 = arith.addi %29, %arg7 : index
          %31 = memref.load %arg4[%arg7, %30] : memref<?x28xf64>
          %c0_26 = arith.constant 0 : index
          %32 = memref.load %alloca_1[%c0_26] : memref<1xf64>
          %33 = arith.divf %31, %32 : f64
          %c0_27 = arith.constant 0 : index
          memref.store %33, %alloca[%c0_27] : memref<1xf64>
          %c-26_28 = arith.constant -26 : index
          %34 = arith.muli %arg8, %c-26_28 : index
          %35 = arith.addi %34, %arg7 : index
          memref.store %33, %arg4[%arg7, %35] : memref<?x28xf64>
          %c0_29 = arith.constant 0 : index
          %36 = memref.load %alloca[%c0_29] : memref<1xf64>
          %c-26_30 = arith.constant -26 : index
          %37 = arith.muli %arg8, %c-26_30 : index
          %38 = arith.addi %37, %arg7 : index
          memref.store %36, %arg4[%38, %arg7] : memref<?x28xf64>
        }
      }
    }
    return
  }
}

