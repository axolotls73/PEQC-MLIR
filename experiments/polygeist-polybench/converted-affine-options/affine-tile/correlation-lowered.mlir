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
      %c1_30 = arith.constant 1 : index
      %1 = arith.addi %arg7, %c1_30 : index
      %c28_31 = arith.constant 28 : index
      %c1_32 = arith.constant 1 : index
      scf.for %arg8 = %1 to %c28_31 step %c1_32 {
        memref.store %cst_0, %arg4[%arg7, %arg8] : memref<?x28xf64>
      }
    }
    %c0_4 = arith.constant 0 : index
    %c27_5 = arith.constant 27 : index
    %c1_6 = arith.constant 1 : index
    scf.for %arg7 = %c0_4 to %c27_5 step %c1_6 {
      %c1_30 = arith.constant 1 : index
      %1 = arith.addi %arg7, %c1_30 : index
      %c1_31 = arith.constant 1 : index
      scf.for %arg8 = %arg7 to %1 step %c1_31 {
        memref.store %cst_1, %arg4[%arg8, %arg8] : memref<?x28xf64>
      }
    }
    %0 = math.sqrt %arg2 : f64
    %c0_7 = arith.constant 0 : index
    memref.store %0, %alloca[%c0_7] : memref<1xf64>
    %c0_8 = arith.constant 0 : index
    %c28 = arith.constant 28 : index
    %c1_9 = arith.constant 1 : index
    scf.for %arg7 = %c0_8 to %c28 step %c1_9 {
      %c1_30 = arith.constant 1 : index
      %1 = arith.addi %arg7, %c1_30 : index
      %c1_31 = arith.constant 1 : index
      scf.for %arg8 = %arg7 to %1 step %c1_31 {
        memref.store %cst_0, %arg6[%arg8] : memref<?xf64>
        memref.store %cst_0, %arg5[%arg8] : memref<?xf64>
      }
    }
    %c0_10 = arith.constant 0 : index
    %c32 = arith.constant 32 : index
    %c1_11 = arith.constant 1 : index
    scf.for %arg7 = %c0_10 to %c32 step %c1_11 {
      %c0_30 = arith.constant 0 : index
      %c28_31 = arith.constant 28 : index
      %c1_32 = arith.constant 1 : index
      scf.for %arg8 = %c0_30 to %c28_31 step %c1_32 {
        %c1_33 = arith.constant 1 : index
        %1 = arith.addi %arg7, %c1_33 : index
        %c1_34 = arith.constant 1 : index
        scf.for %arg9 = %arg7 to %1 step %c1_34 {
          %c1_35 = arith.constant 1 : index
          %2 = arith.addi %arg8, %c1_35 : index
          %c1_36 = arith.constant 1 : index
          scf.for %arg10 = %arg8 to %2 step %c1_36 {
            %3 = memref.load %arg5[%arg10] : memref<?xf64>
            %4 = memref.load %arg3[%arg9, %arg10] : memref<?x28xf64>
            %5 = arith.addf %3, %4 : f64
            memref.store %5, %arg5[%arg10] : memref<?xf64>
          }
        }
      }
    }
    %c0_12 = arith.constant 0 : index
    %c28_13 = arith.constant 28 : index
    %c1_14 = arith.constant 1 : index
    scf.for %arg7 = %c0_12 to %c28_13 step %c1_14 {
      %c1_30 = arith.constant 1 : index
      %1 = arith.addi %arg7, %c1_30 : index
      %c1_31 = arith.constant 1 : index
      scf.for %arg8 = %arg7 to %1 step %c1_31 {
        %2 = memref.load %arg5[%arg8] : memref<?xf64>
        %3 = arith.divf %2, %arg2 : f64
        memref.store %3, %arg5[%arg8] : memref<?xf64>
      }
    }
    %c0_15 = arith.constant 0 : index
    %c32_16 = arith.constant 32 : index
    %c1_17 = arith.constant 1 : index
    scf.for %arg7 = %c0_15 to %c32_16 step %c1_17 {
      %c0_30 = arith.constant 0 : index
      %c28_31 = arith.constant 28 : index
      %c1_32 = arith.constant 1 : index
      scf.for %arg8 = %c0_30 to %c28_31 step %c1_32 {
        %c1_33 = arith.constant 1 : index
        %1 = arith.addi %arg7, %c1_33 : index
        %c1_34 = arith.constant 1 : index
        scf.for %arg9 = %arg7 to %1 step %c1_34 {
          %c1_35 = arith.constant 1 : index
          %2 = arith.addi %arg8, %c1_35 : index
          %c1_36 = arith.constant 1 : index
          scf.for %arg10 = %arg8 to %2 step %c1_36 {
            %3 = memref.load %arg6[%arg10] : memref<?xf64>
            %4 = memref.load %arg3[%arg9, %arg10] : memref<?x28xf64>
            %5 = memref.load %arg5[%arg10] : memref<?xf64>
            %6 = arith.subf %4, %5 : f64
            %7 = arith.mulf %6, %6 : f64
            %8 = arith.addf %3, %7 : f64
            memref.store %8, %arg6[%arg10] : memref<?xf64>
            %9 = memref.load %arg3[%arg9, %arg10] : memref<?x28xf64>
            %10 = memref.load %arg5[%arg10] : memref<?xf64>
            %11 = arith.subf %9, %10 : f64
            memref.store %11, %arg3[%arg9, %arg10] : memref<?x28xf64>
          }
        }
      }
    }
    %c0_18 = arith.constant 0 : index
    %c28_19 = arith.constant 28 : index
    %c1_20 = arith.constant 1 : index
    scf.for %arg7 = %c0_18 to %c28_19 step %c1_20 {
      %c1_30 = arith.constant 1 : index
      %1 = arith.addi %arg7, %c1_30 : index
      %c1_31 = arith.constant 1 : index
      scf.for %arg8 = %arg7 to %1 step %c1_31 {
        %2 = memref.load %arg6[%arg8] : memref<?xf64>
        %3 = arith.divf %2, %arg2 : f64
        %4 = math.sqrt %3 : f64
        %5 = arith.cmpf ole, %4, %cst : f64
        %6 = arith.select %5, %cst_1, %4 : f64
        memref.store %6, %arg6[%arg8] : memref<?xf64>
      }
    }
    %c0_21 = arith.constant 0 : index
    %c32_22 = arith.constant 32 : index
    %c1_23 = arith.constant 1 : index
    scf.for %arg7 = %c0_21 to %c32_22 step %c1_23 {
      %c0_30 = arith.constant 0 : index
      %c28_31 = arith.constant 28 : index
      %c1_32 = arith.constant 1 : index
      scf.for %arg8 = %c0_30 to %c28_31 step %c1_32 {
        %c1_33 = arith.constant 1 : index
        %1 = arith.addi %arg7, %c1_33 : index
        %c1_34 = arith.constant 1 : index
        scf.for %arg9 = %arg7 to %1 step %c1_34 {
          %c1_35 = arith.constant 1 : index
          %2 = arith.addi %arg8, %c1_35 : index
          %c1_36 = arith.constant 1 : index
          scf.for %arg10 = %arg8 to %2 step %c1_36 {
            %3 = memref.load %arg3[%arg9, %arg10] : memref<?x28xf64>
            %c0_37 = arith.constant 0 : index
            %4 = memref.load %alloca[%c0_37] : memref<1xf64>
            %5 = memref.load %arg6[%arg10] : memref<?xf64>
            %6 = arith.mulf %4, %5 : f64
            %7 = arith.divf %3, %6 : f64
            memref.store %7, %arg3[%arg9, %arg10] : memref<?x28xf64>
          }
        }
      }
    }
    %c0_24 = arith.constant 0 : index
    %c27_25 = arith.constant 27 : index
    %c1_26 = arith.constant 1 : index
    scf.for %arg7 = %c0_24 to %c27_25 step %c1_26 {
      %c0_30 = arith.constant 0 : index
      %c32_31 = arith.constant 32 : index
      %c1_32 = arith.constant 1 : index
      scf.for %arg8 = %c0_30 to %c32_31 step %c1_32 {
        %c1_33 = arith.constant 1 : index
        %1 = arith.addi %arg7, %c1_33 : index
        %c28_34 = arith.constant 28 : index
        %c1_35 = arith.constant 1 : index
        scf.for %arg9 = %1 to %c28_34 step %c1_35 {
          %2 = memref.load %arg4[%arg7, %arg9] : memref<?x28xf64>
          %3 = memref.load %arg3[%arg8, %arg7] : memref<?x28xf64>
          %4 = memref.load %arg3[%arg8, %arg9] : memref<?x28xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = arith.addf %2, %5 : f64
          memref.store %6, %arg4[%arg7, %arg9] : memref<?x28xf64>
        }
      }
    }
    %c0_27 = arith.constant 0 : index
    %c27_28 = arith.constant 27 : index
    %c1_29 = arith.constant 1 : index
    scf.for %arg7 = %c0_27 to %c27_28 step %c1_29 {
      %c1_30 = arith.constant 1 : index
      %1 = arith.addi %arg7, %c1_30 : index
      %c28_31 = arith.constant 28 : index
      %c1_32 = arith.constant 1 : index
      scf.for %arg8 = %1 to %c28_31 step %c1_32 {
        %2 = memref.load %arg4[%arg7, %arg8] : memref<?x28xf64>
        memref.store %2, %arg4[%arg8, %arg7] : memref<?x28xf64>
      }
    }
    return
  }
}

