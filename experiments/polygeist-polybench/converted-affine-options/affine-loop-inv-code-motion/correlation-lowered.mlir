module {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %cst = arith.constant 1.000000e-01 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %cst_1 = arith.constant 1.000000e+00 : f64
    %alloca = memref.alloca() {scop.scratchpad} : memref<1xf64>
    %c27 = arith.constant 27 : index
    %c27_2 = arith.constant 27 : index
    memref.store %cst_1, %arg4[%c27, %c27_2] : memref<?x28xf64>
    %c0 = arith.constant 0 : index
    %c27_3 = arith.constant 27 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %c27_3 step %c1 {
      %c1_31 = arith.constant 1 : index
      %2 = arith.addi %arg7, %c1_31 : index
      %c28_32 = arith.constant 28 : index
      %c1_33 = arith.constant 1 : index
      scf.for %arg8 = %2 to %c28_32 step %c1_33 {
        memref.store %cst_0, %arg4[%arg7, %arg8] : memref<?x28xf64>
      }
    }
    %c0_4 = arith.constant 0 : index
    %c27_5 = arith.constant 27 : index
    %c1_6 = arith.constant 1 : index
    scf.for %arg7 = %c0_4 to %c27_5 step %c1_6 {
      memref.store %cst_1, %arg4[%arg7, %arg7] : memref<?x28xf64>
    }
    %0 = math.sqrt %arg2 : f64
    %c0_7 = arith.constant 0 : index
    memref.store %0, %alloca[%c0_7] : memref<1xf64>
    %c0_8 = arith.constant 0 : index
    %c28 = arith.constant 28 : index
    %c1_9 = arith.constant 1 : index
    scf.for %arg7 = %c0_8 to %c28 step %c1_9 {
      memref.store %cst_0, %arg6[%arg7] : memref<?xf64>
      memref.store %cst_0, %arg5[%arg7] : memref<?xf64>
    }
    %c0_10 = arith.constant 0 : index
    %c32 = arith.constant 32 : index
    %c1_11 = arith.constant 1 : index
    scf.for %arg7 = %c0_10 to %c32 step %c1_11 {
      %c0_31 = arith.constant 0 : index
      %c28_32 = arith.constant 28 : index
      %c1_33 = arith.constant 1 : index
      scf.for %arg8 = %c0_31 to %c28_32 step %c1_33 {
        %2 = memref.load %arg5[%arg8] : memref<?xf64>
        %3 = memref.load %arg3[%arg7, %arg8] : memref<?x28xf64>
        %4 = arith.addf %2, %3 : f64
        memref.store %4, %arg5[%arg8] : memref<?xf64>
      }
    }
    %c0_12 = arith.constant 0 : index
    %c28_13 = arith.constant 28 : index
    %c1_14 = arith.constant 1 : index
    scf.for %arg7 = %c0_12 to %c28_13 step %c1_14 {
      %2 = memref.load %arg5[%arg7] : memref<?xf64>
      %3 = arith.divf %2, %arg2 : f64
      memref.store %3, %arg5[%arg7] : memref<?xf64>
    }
    %c0_15 = arith.constant 0 : index
    %c32_16 = arith.constant 32 : index
    %c1_17 = arith.constant 1 : index
    scf.for %arg7 = %c0_15 to %c32_16 step %c1_17 {
      %c0_31 = arith.constant 0 : index
      %c28_32 = arith.constant 28 : index
      %c1_33 = arith.constant 1 : index
      scf.for %arg8 = %c0_31 to %c28_32 step %c1_33 {
        %2 = memref.load %arg6[%arg8] : memref<?xf64>
        %3 = memref.load %arg3[%arg7, %arg8] : memref<?x28xf64>
        %4 = memref.load %arg5[%arg8] : memref<?xf64>
        %5 = arith.subf %3, %4 : f64
        %6 = arith.mulf %5, %5 : f64
        %7 = arith.addf %2, %6 : f64
        memref.store %7, %arg6[%arg8] : memref<?xf64>
        %8 = memref.load %arg3[%arg7, %arg8] : memref<?x28xf64>
        %9 = memref.load %arg5[%arg8] : memref<?xf64>
        %10 = arith.subf %8, %9 : f64
        memref.store %10, %arg3[%arg7, %arg8] : memref<?x28xf64>
      }
    }
    %c0_18 = arith.constant 0 : index
    %c28_19 = arith.constant 28 : index
    %c1_20 = arith.constant 1 : index
    scf.for %arg7 = %c0_18 to %c28_19 step %c1_20 {
      %2 = memref.load %arg6[%arg7] : memref<?xf64>
      %3 = arith.divf %2, %arg2 : f64
      %4 = math.sqrt %3 : f64
      %5 = arith.cmpf ole, %4, %cst : f64
      %6 = arith.select %5, %cst_1, %4 : f64
      memref.store %6, %arg6[%arg7] : memref<?xf64>
    }
    %c0_21 = arith.constant 0 : index
    %1 = memref.load %alloca[%c0_21] : memref<1xf64>
    %c0_22 = arith.constant 0 : index
    %c32_23 = arith.constant 32 : index
    %c1_24 = arith.constant 1 : index
    scf.for %arg7 = %c0_22 to %c32_23 step %c1_24 {
      %c0_31 = arith.constant 0 : index
      %c28_32 = arith.constant 28 : index
      %c1_33 = arith.constant 1 : index
      scf.for %arg8 = %c0_31 to %c28_32 step %c1_33 {
        %2 = memref.load %arg3[%arg7, %arg8] : memref<?x28xf64>
        %3 = memref.load %arg6[%arg8] : memref<?xf64>
        %4 = arith.mulf %1, %3 : f64
        %5 = arith.divf %2, %4 : f64
        memref.store %5, %arg3[%arg7, %arg8] : memref<?x28xf64>
      }
    }
    %c0_25 = arith.constant 0 : index
    %c27_26 = arith.constant 27 : index
    %c1_27 = arith.constant 1 : index
    scf.for %arg7 = %c0_25 to %c27_26 step %c1_27 {
      %c0_31 = arith.constant 0 : index
      %c32_32 = arith.constant 32 : index
      %c1_33 = arith.constant 1 : index
      scf.for %arg8 = %c0_31 to %c32_32 step %c1_33 {
        %2 = memref.load %arg3[%arg8, %arg7] : memref<?x28xf64>
        %c1_34 = arith.constant 1 : index
        %3 = arith.addi %arg7, %c1_34 : index
        %c28_35 = arith.constant 28 : index
        %c1_36 = arith.constant 1 : index
        scf.for %arg9 = %3 to %c28_35 step %c1_36 {
          %4 = memref.load %arg4[%arg7, %arg9] : memref<?x28xf64>
          %5 = memref.load %arg3[%arg8, %arg9] : memref<?x28xf64>
          %6 = arith.mulf %2, %5 : f64
          %7 = arith.addf %4, %6 : f64
          memref.store %7, %arg4[%arg7, %arg9] : memref<?x28xf64>
        }
      }
    }
    %c0_28 = arith.constant 0 : index
    %c27_29 = arith.constant 27 : index
    %c1_30 = arith.constant 1 : index
    scf.for %arg7 = %c0_28 to %c27_29 step %c1_30 {
      %c1_31 = arith.constant 1 : index
      %2 = arith.addi %arg7, %c1_31 : index
      %c28_32 = arith.constant 28 : index
      %c1_33 = arith.constant 1 : index
      scf.for %arg8 = %2 to %c28_32 step %c1_33 {
        %3 = memref.load %arg4[%arg7, %arg8] : memref<?x28xf64>
        memref.store %3, %arg4[%arg8, %arg7] : memref<?x28xf64>
      }
    }
    return
  }
}

