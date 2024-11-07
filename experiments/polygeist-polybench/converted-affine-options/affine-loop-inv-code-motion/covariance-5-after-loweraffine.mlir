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
      %c28_20 = arith.constant 28 : index
      %c1_21 = arith.constant 1 : index
      scf.for %arg7 = %arg6 to %c28_20 step %c1_21 {
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
    }
    %c0_6 = arith.constant 0 : index
    %c32 = arith.constant 32 : index
    %c1_7 = arith.constant 1 : index
    scf.for %arg6 = %c0_6 to %c32 step %c1_7 {
      %c0_20 = arith.constant 0 : index
      %c28_21 = arith.constant 28 : index
      %c1_22 = arith.constant 1 : index
      scf.for %arg7 = %c0_20 to %c28_21 step %c1_22 {
        %2 = memref.load %arg5[%arg7] : memref<?xf64>
        %3 = memref.load %arg3[%arg6, %arg7] : memref<?x28xf64>
        %4 = arith.addf %2, %3 : f64
        memref.store %4, %arg5[%arg7] : memref<?xf64>
      }
    }
    %c0_8 = arith.constant 0 : index
    %c28_9 = arith.constant 28 : index
    %c1_10 = arith.constant 1 : index
    scf.for %arg6 = %c0_8 to %c28_9 step %c1_10 {
      %2 = memref.load %arg5[%arg6] : memref<?xf64>
      %3 = arith.divf %2, %arg2 : f64
      memref.store %3, %arg5[%arg6] : memref<?xf64>
    }
    %c0_11 = arith.constant 0 : index
    %c32_12 = arith.constant 32 : index
    %c1_13 = arith.constant 1 : index
    scf.for %arg6 = %c0_11 to %c32_12 step %c1_13 {
      %c0_20 = arith.constant 0 : index
      %c28_21 = arith.constant 28 : index
      %c1_22 = arith.constant 1 : index
      scf.for %arg7 = %c0_20 to %c28_21 step %c1_22 {
        %2 = memref.load %arg3[%arg6, %arg7] : memref<?x28xf64>
        %3 = memref.load %arg5[%arg7] : memref<?xf64>
        %4 = arith.subf %2, %3 : f64
        memref.store %4, %arg3[%arg6, %arg7] : memref<?x28xf64>
      }
    }
    %c0_14 = arith.constant 0 : index
    %c28_15 = arith.constant 28 : index
    %c1_16 = arith.constant 1 : index
    scf.for %arg6 = %c0_14 to %c28_15 step %c1_16 {
      %c0_20 = arith.constant 0 : index
      %c32_21 = arith.constant 32 : index
      %c1_22 = arith.constant 1 : index
      scf.for %arg7 = %c0_20 to %c32_21 step %c1_22 {
        %2 = memref.load %arg3[%arg7, %arg6] : memref<?x28xf64>
        %c28_23 = arith.constant 28 : index
        %c1_24 = arith.constant 1 : index
        scf.for %arg8 = %arg6 to %c28_23 step %c1_24 {
          %3 = memref.load %arg4[%arg6, %arg8] : memref<?x28xf64>
          %4 = memref.load %arg3[%arg7, %arg8] : memref<?x28xf64>
          %5 = arith.mulf %2, %4 : f64
          %6 = arith.addf %3, %5 : f64
          memref.store %6, %arg4[%arg6, %arg8] : memref<?x28xf64>
        }
      }
    }
    %c0_17 = arith.constant 0 : index
    %1 = memref.load %alloca_1[%c0_17] : memref<1xf64>
    %c0_18 = arith.constant 0 : index
    %c23 = arith.constant 23 : index
    %c1_19 = arith.constant 1 : index
    scf.for %arg6 = %c0_18 to %c23 step %c1_19 {
      %c0_20 = arith.constant 0 : index
      %c16 = arith.constant 16 : index
      %2 = arith.muli %arg6, %c16 : index
      %c-13 = arith.constant -13 : index
      %3 = arith.addi %2, %c-13 : index
      %c13 = arith.constant 13 : index
      %c0_21 = arith.constant 0 : index
      %c1_22 = arith.constant 1 : index
      %4 = arith.cmpi sle, %3, %c0_21 : index
      %5 = arith.subi %c0_21, %3 : index
      %6 = arith.subi %3, %c1_22 : index
      %7 = arith.select %4, %5, %6 : index
      %8 = arith.divsi %7, %c13 : index
      %9 = arith.subi %c0_21, %8 : index
      %10 = arith.addi %8, %c1_22 : index
      %11 = arith.select %4, %9, %10 : index
      %12 = arith.maxsi %c0_20, %11 : index
      %c32_23 = arith.constant 32 : index
      %13 = arith.muli %arg6, %c32_23 : index
      %c31 = arith.constant 31 : index
      %14 = arith.addi %13, %c31 : index
      %c27 = arith.constant 27 : index
      %c0_24 = arith.constant 0 : index
      %c-1 = arith.constant -1 : index
      %15 = arith.cmpi slt, %14, %c0_24 : index
      %16 = arith.subi %c-1, %14 : index
      %17 = arith.select %15, %16, %14 : index
      %18 = arith.divsi %17, %c27 : index
      %19 = arith.subi %c-1, %18 : index
      %20 = arith.select %15, %19, %18 : index
      %c1_25 = arith.constant 1 : index
      %21 = arith.addi %20, %c1_25 : index
      %c1_26 = arith.constant 1 : index
      scf.for %arg7 = %12 to %21 step %c1_26 {
        %c32_27 = arith.constant 32 : index
        %22 = arith.muli %arg6, %c32_27 : index
        %c27_28 = arith.constant 27 : index
        %23 = arith.muli %arg7, %c27_28 : index
        %24 = arith.maxsi %22, %23 : index
        %c32_29 = arith.constant 32 : index
        %25 = arith.muli %arg6, %c32_29 : index
        %c32_30 = arith.constant 32 : index
        %26 = arith.addi %25, %c32_30 : index
        %c26 = arith.constant 26 : index
        %27 = arith.muli %arg7, %c26 : index
        %c28_31 = arith.constant 28 : index
        %28 = arith.addi %27, %c28_31 : index
        %29 = arith.minsi %26, %28 : index
        %c1_32 = arith.constant 1 : index
        scf.for %arg8 = %24 to %29 step %c1_32 {
          %c-26 = arith.constant -26 : index
          %30 = arith.muli %arg8, %c-26 : index
          %31 = arith.addi %30, %arg7 : index
          %32 = memref.load %arg4[%arg7, %31] : memref<?x28xf64>
          %33 = arith.divf %32, %1 : f64
          %c0_33 = arith.constant 0 : index
          memref.store %33, %alloca[%c0_33] : memref<1xf64>
          %c-26_34 = arith.constant -26 : index
          %34 = arith.muli %arg8, %c-26_34 : index
          %35 = arith.addi %34, %arg7 : index
          memref.store %33, %arg4[%arg7, %35] : memref<?x28xf64>
          %c0_35 = arith.constant 0 : index
          %36 = memref.load %alloca[%c0_35] : memref<1xf64>
          %c-26_36 = arith.constant -26 : index
          %37 = arith.muli %arg8, %c-26_36 : index
          %38 = arith.addi %37, %arg7 : index
          memref.store %36, %arg4[%38, %arg7] : memref<?x28xf64>
        }
      }
    }
    return
  }
}

