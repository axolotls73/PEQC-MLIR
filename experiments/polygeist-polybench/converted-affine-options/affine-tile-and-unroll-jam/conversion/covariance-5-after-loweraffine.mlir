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
      %c0_19 = arith.constant 0 : index
      %c-1 = arith.constant -1 : index
      %1 = arith.muli %arg6, %c-1 : index
      %c28_20 = arith.constant 28 : index
      %2 = arith.addi %1, %c28_20 : index
      %c1_21 = arith.constant 1 : index
      scf.for %arg7 = %c0_19 to %2 step %c1_21 {
        %3 = arith.addi %arg6, %arg7 : index
        memref.store %cst_0, %arg4[%arg6, %3] : memref<?x28xf64>
      }
    }
    %0 = arith.subf %arg2, %cst : f64
    %c0_2 = arith.constant 0 : index
    memref.store %0, %alloca_1[%c0_2] : memref<1xf64>
    %c0_3 = arith.constant 0 : index
    %c28_4 = arith.constant 28 : index
    %c32 = arith.constant 32 : index
    scf.for %arg6 = %c0_3 to %c28_4 step %c32 {
      %c28_19 = arith.constant 28 : index
      %1 = arith.addi %arg6, %c28_19 : index
      %c1_20 = arith.constant 1 : index
      scf.for %arg7 = %arg6 to %1 step %c1_20 {
        memref.store %cst_0, %arg5[%arg7] : memref<?xf64>
      }
    }
    %c0_5 = arith.constant 0 : index
    %c32_6 = arith.constant 32 : index
    %c32_7 = arith.constant 32 : index
    scf.for %arg6 = %c0_5 to %c32_6 step %c32_7 {
      %c0_19 = arith.constant 0 : index
      %c28_20 = arith.constant 28 : index
      %c32_21 = arith.constant 32 : index
      scf.for %arg7 = %c0_19 to %c28_20 step %c32_21 {
        %c32_22 = arith.constant 32 : index
        %1 = arith.addi %arg6, %c32_22 : index
        %c1_23 = arith.constant 1 : index
        scf.for %arg8 = %arg6 to %1 step %c1_23 {
          %c28_24 = arith.constant 28 : index
          %2 = arith.addi %arg7, %c28_24 : index
          %c1_25 = arith.constant 1 : index
          scf.for %arg9 = %arg7 to %2 step %c1_25 {
            %3 = memref.load %arg5[%arg9] : memref<?xf64>
            %4 = memref.load %arg3[%arg8, %arg9] : memref<?x28xf64>
            %5 = arith.addf %3, %4 : f64
            memref.store %5, %arg5[%arg9] : memref<?xf64>
          }
        }
      }
    }
    %c0_8 = arith.constant 0 : index
    %c28_9 = arith.constant 28 : index
    %c32_10 = arith.constant 32 : index
    scf.for %arg6 = %c0_8 to %c28_9 step %c32_10 {
      %c28_19 = arith.constant 28 : index
      %1 = arith.addi %arg6, %c28_19 : index
      %c1_20 = arith.constant 1 : index
      scf.for %arg7 = %arg6 to %1 step %c1_20 {
        %2 = memref.load %arg5[%arg7] : memref<?xf64>
        %3 = arith.divf %2, %arg2 : f64
        memref.store %3, %arg5[%arg7] : memref<?xf64>
      }
    }
    %c0_11 = arith.constant 0 : index
    %c32_12 = arith.constant 32 : index
    %c32_13 = arith.constant 32 : index
    scf.for %arg6 = %c0_11 to %c32_12 step %c32_13 {
      %c0_19 = arith.constant 0 : index
      %c28_20 = arith.constant 28 : index
      %c32_21 = arith.constant 32 : index
      scf.for %arg7 = %c0_19 to %c28_20 step %c32_21 {
        %c32_22 = arith.constant 32 : index
        %1 = arith.addi %arg6, %c32_22 : index
        %c1_23 = arith.constant 1 : index
        scf.for %arg8 = %arg6 to %1 step %c1_23 {
          %c28_24 = arith.constant 28 : index
          %2 = arith.addi %arg7, %c28_24 : index
          %c1_25 = arith.constant 1 : index
          scf.for %arg9 = %arg7 to %2 step %c1_25 {
            %3 = memref.load %arg3[%arg8, %arg9] : memref<?x28xf64>
            %4 = memref.load %arg5[%arg9] : memref<?xf64>
            %5 = arith.subf %3, %4 : f64
            memref.store %5, %arg3[%arg8, %arg9] : memref<?x28xf64>
          }
        }
      }
    }
    %c0_14 = arith.constant 0 : index
    %c28_15 = arith.constant 28 : index
    %c1_16 = arith.constant 1 : index
    scf.for %arg6 = %c0_14 to %c28_15 step %c1_16 {
      %c0_19 = arith.constant 0 : index
      %c32_20 = arith.constant 32 : index
      %c1_21 = arith.constant 1 : index
      scf.for %arg7 = %c0_19 to %c32_20 step %c1_21 {
        %c0_22 = arith.constant 0 : index
        %c-1 = arith.constant -1 : index
        %1 = arith.muli %arg6, %c-1 : index
        %c28_23 = arith.constant 28 : index
        %2 = arith.addi %1, %c28_23 : index
        %c1_24 = arith.constant 1 : index
        scf.for %arg8 = %c0_22 to %2 step %c1_24 {
          %3 = arith.addi %arg6, %arg8 : index
          %4 = memref.load %arg4[%arg6, %3] : memref<?x28xf64>
          %5 = memref.load %arg3[%arg7, %arg6] : memref<?x28xf64>
          %6 = arith.addi %arg6, %arg8 : index
          %7 = memref.load %arg3[%arg7, %6] : memref<?x28xf64>
          %8 = arith.mulf %5, %7 : f64
          %9 = arith.addf %4, %8 : f64
          %10 = arith.addi %arg6, %arg8 : index
          memref.store %9, %arg4[%arg6, %10] : memref<?x28xf64>
        }
      }
    }
    %c0_17 = arith.constant 0 : index
    %c23 = arith.constant 23 : index
    %c1_18 = arith.constant 1 : index
    scf.for %arg6 = %c0_17 to %c23 step %c1_18 {
      %c0_19 = arith.constant 0 : index
      %c16 = arith.constant 16 : index
      %1 = arith.muli %arg6, %c16 : index
      %c-13 = arith.constant -13 : index
      %2 = arith.addi %1, %c-13 : index
      %c13 = arith.constant 13 : index
      %c0_20 = arith.constant 0 : index
      %c1_21 = arith.constant 1 : index
      %3 = arith.cmpi sle, %2, %c0_20 : index
      %4 = arith.subi %c0_20, %2 : index
      %5 = arith.subi %2, %c1_21 : index
      %6 = arith.select %3, %4, %5 : index
      %7 = arith.divsi %6, %c13 : index
      %8 = arith.subi %c0_20, %7 : index
      %9 = arith.addi %7, %c1_21 : index
      %10 = arith.select %3, %8, %9 : index
      %11 = arith.maxsi %c0_19, %10 : index
      %c32_22 = arith.constant 32 : index
      %12 = arith.muli %arg6, %c32_22 : index
      %c31 = arith.constant 31 : index
      %13 = arith.addi %12, %c31 : index
      %c27 = arith.constant 27 : index
      %c0_23 = arith.constant 0 : index
      %c-1 = arith.constant -1 : index
      %14 = arith.cmpi slt, %13, %c0_23 : index
      %15 = arith.subi %c-1, %13 : index
      %16 = arith.select %14, %15, %13 : index
      %17 = arith.divsi %16, %c27 : index
      %18 = arith.subi %c-1, %17 : index
      %19 = arith.select %14, %18, %17 : index
      %c1_24 = arith.constant 1 : index
      %20 = arith.addi %19, %c1_24 : index
      %c1_25 = arith.constant 1 : index
      scf.for %arg7 = %11 to %20 step %c1_25 {
        %c32_26 = arith.constant 32 : index
        %21 = arith.muli %arg6, %c32_26 : index
        %c27_27 = arith.constant 27 : index
        %22 = arith.muli %arg7, %c27_27 : index
        %23 = arith.maxsi %21, %22 : index
        %c32_28 = arith.constant 32 : index
        %24 = arith.muli %arg6, %c32_28 : index
        %c32_29 = arith.constant 32 : index
        %25 = arith.addi %24, %c32_29 : index
        %c26 = arith.constant 26 : index
        %26 = arith.muli %arg7, %c26 : index
        %c28_30 = arith.constant 28 : index
        %27 = arith.addi %26, %c28_30 : index
        %28 = arith.minsi %25, %27 : index
        %c1_31 = arith.constant 1 : index
        scf.for %arg8 = %23 to %28 step %c1_31 {
          %c-26 = arith.constant -26 : index
          %29 = arith.muli %arg8, %c-26 : index
          %30 = arith.addi %arg7, %29 : index
          %31 = memref.load %arg4[%arg7, %30] : memref<?x28xf64>
          %c0_32 = arith.constant 0 : index
          %32 = memref.load %alloca_1[%c0_32] : memref<1xf64>
          %33 = arith.divf %31, %32 : f64
          %c0_33 = arith.constant 0 : index
          memref.store %33, %alloca[%c0_33] : memref<1xf64>
          %c-26_34 = arith.constant -26 : index
          %34 = arith.muli %arg8, %c-26_34 : index
          %35 = arith.addi %arg7, %34 : index
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

