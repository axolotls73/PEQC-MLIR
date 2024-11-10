module {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %alloc = memref.alloc() : memref<1xf64>
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
      %c1_18 = arith.constant 1 : index
      %1 = arith.addi %arg7, %c1_18 : index
      %c28_19 = arith.constant 28 : index
      %c1_20 = arith.constant 1 : index
      scf.for %arg8 = %1 to %c28_19 step %c1_20 {
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
      %c0_18 = arith.constant 0 : index
      %c32_19 = arith.constant 32 : index
      %c1_20 = arith.constant 1 : index
      scf.for %arg8 = %c0_18 to %c32_19 step %c1_20 {
        %6 = memref.load %arg5[%arg7] : memref<?xf64>
        %7 = memref.load %arg3[%arg8, %arg7] : memref<?x28xf64>
        %8 = arith.addf %6, %7 : f64
        memref.store %8, %arg5[%arg7] : memref<?xf64>
      }
      %c0_21 = arith.constant 0 : index
      %c32_22 = arith.constant 32 : index
      %c1_23 = arith.constant 1 : index
      scf.for %arg8 = %c0_21 to %c32_22 step %c1_23 {
        %6 = memref.load %arg5[%arg7] : memref<?xf64>
        %7 = memref.load %arg3[%arg8, %arg7] : memref<?x28xf64>
        %8 = arith.addf %6, %7 : f64
        memref.store %8, %arg5[%arg7] : memref<?xf64>
      }
      %c0_24 = arith.constant 0 : index
      %c32_25 = arith.constant 32 : index
      %c1_26 = arith.constant 1 : index
      scf.for %arg8 = %c0_24 to %c32_25 step %c1_26 {
        %6 = memref.load %arg5[%arg7] : memref<?xf64>
        %7 = arith.divf %6, %arg2 : f64
        memref.store %7, %arg5[%arg7] : memref<?xf64>
        %8 = memref.load %arg6[%arg7] : memref<?xf64>
        %9 = memref.load %arg3[%arg8, %arg7] : memref<?x28xf64>
        %10 = memref.load %arg5[%arg7] : memref<?xf64>
        %11 = arith.subf %9, %10 : f64
        %12 = arith.mulf %11, %11 : f64
        %13 = arith.addf %8, %12 : f64
        memref.store %13, %arg6[%arg7] : memref<?xf64>
        %14 = memref.load %arg3[%arg8, %arg7] : memref<?x28xf64>
        %15 = memref.load %arg5[%arg7] : memref<?xf64>
        %16 = arith.subf %14, %15 : f64
        memref.store %16, %arg3[%arg8, %arg7] : memref<?x28xf64>
      }
      %1 = memref.load %arg6[%arg7] : memref<?xf64>
      %2 = arith.divf %1, %arg2 : f64
      %3 = math.sqrt %2 : f64
      %4 = arith.cmpf ole, %3, %cst : f64
      %5 = arith.select %4, %cst_1, %3 : f64
      memref.store %5, %arg6[%arg7] : memref<?xf64>
    }
    %c0_10 = arith.constant 0 : index
    %c32 = arith.constant 32 : index
    %c1_11 = arith.constant 1 : index
    scf.for %arg7 = %c0_10 to %c32 step %c1_11 {
      %c0_18 = arith.constant 0 : index
      %c28_19 = arith.constant 28 : index
      %c1_20 = arith.constant 1 : index
      scf.for %arg8 = %c0_18 to %c28_19 step %c1_20 {
        %c0_21 = arith.constant 0 : index
        memref.store %cst_0, %alloc[%c0_21] : memref<1xf64>
        memref.store %cst_0, %arg5[%arg8] : memref<?xf64>
        %c0_22 = arith.constant 0 : index
        %c32_23 = arith.constant 32 : index
        %c1_24 = arith.constant 1 : index
        scf.for %arg9 = %c0_22 to %c32_23 step %c1_24 {
          %11 = memref.load %arg5[%arg8] : memref<?xf64>
          %12 = memref.load %arg3[%arg9, %arg8] : memref<?x28xf64>
          %13 = arith.addf %11, %12 : f64
          memref.store %13, %arg5[%arg8] : memref<?xf64>
        }
        %c0_25 = arith.constant 0 : index
        %c32_26 = arith.constant 32 : index
        %c1_27 = arith.constant 1 : index
        scf.for %arg9 = %c0_25 to %c32_26 step %c1_27 {
          %11 = memref.load %arg5[%arg8] : memref<?xf64>
          %12 = memref.load %arg3[%arg9, %arg8] : memref<?x28xf64>
          %13 = arith.addf %11, %12 : f64
          memref.store %13, %arg5[%arg8] : memref<?xf64>
        }
        %c0_28 = arith.constant 0 : index
        %c32_29 = arith.constant 32 : index
        %c1_30 = arith.constant 1 : index
        scf.for %arg9 = %c0_28 to %c32_29 step %c1_30 {
          %11 = memref.load %arg5[%arg8] : memref<?xf64>
          %12 = arith.divf %11, %arg2 : f64
          memref.store %12, %arg5[%arg8] : memref<?xf64>
          %c0_35 = arith.constant 0 : index
          %13 = memref.load %alloc[%c0_35] : memref<1xf64>
          %14 = memref.load %arg3[%arg9, %arg8] : memref<?x28xf64>
          %15 = memref.load %arg5[%arg8] : memref<?xf64>
          %16 = arith.subf %14, %15 : f64
          %17 = arith.mulf %16, %16 : f64
          %18 = arith.addf %13, %17 : f64
          %c0_36 = arith.constant 0 : index
          memref.store %18, %alloc[%c0_36] : memref<1xf64>
          %19 = memref.load %arg3[%arg9, %arg8] : memref<?x28xf64>
          %20 = memref.load %arg5[%arg8] : memref<?xf64>
          %21 = arith.subf %19, %20 : f64
          memref.store %21, %arg3[%arg9, %arg8] : memref<?x28xf64>
        }
        %c0_31 = arith.constant 0 : index
        %1 = memref.load %alloc[%c0_31] : memref<1xf64>
        %2 = arith.divf %1, %arg2 : f64
        %3 = math.sqrt %2 : f64
        %4 = arith.cmpf ole, %3, %cst : f64
        %5 = arith.select %4, %cst_1, %3 : f64
        %c0_32 = arith.constant 0 : index
        memref.store %5, %alloc[%c0_32] : memref<1xf64>
        %6 = memref.load %arg3[%arg7, %arg8] : memref<?x28xf64>
        %c0_33 = arith.constant 0 : index
        %7 = memref.load %alloca[%c0_33] : memref<1xf64>
        %c0_34 = arith.constant 0 : index
        %8 = memref.load %alloc[%c0_34] : memref<1xf64>
        %9 = arith.mulf %7, %8 : f64
        %10 = arith.divf %6, %9 : f64
        memref.store %10, %arg3[%arg7, %arg8] : memref<?x28xf64>
      }
    }
    %c0_12 = arith.constant 0 : index
    %c27_13 = arith.constant 27 : index
    %c1_14 = arith.constant 1 : index
    scf.for %arg7 = %c0_12 to %c27_13 step %c1_14 {
      %c1_18 = arith.constant 1 : index
      %1 = arith.addi %arg7, %c1_18 : index
      %c28_19 = arith.constant 28 : index
      %c1_20 = arith.constant 1 : index
      scf.for %arg8 = %1 to %c28_19 step %c1_20 {
        %c0_21 = arith.constant 0 : index
        %c32_22 = arith.constant 32 : index
        %c1_23 = arith.constant 1 : index
        scf.for %arg9 = %c0_21 to %c32_22 step %c1_23 {
          %2 = memref.load %arg4[%arg7, %arg8] : memref<?x28xf64>
          %3 = memref.load %arg3[%arg9, %arg7] : memref<?x28xf64>
          %4 = memref.load %arg3[%arg9, %arg8] : memref<?x28xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = arith.addf %2, %5 : f64
          memref.store %6, %arg4[%arg7, %arg8] : memref<?x28xf64>
        }
      }
    }
    %c0_15 = arith.constant 0 : index
    %c27_16 = arith.constant 27 : index
    %c1_17 = arith.constant 1 : index
    scf.for %arg7 = %c0_15 to %c27_16 step %c1_17 {
      %c1_18 = arith.constant 1 : index
      %1 = arith.addi %arg7, %c1_18 : index
      %c28_19 = arith.constant 28 : index
      %c1_20 = arith.constant 1 : index
      scf.for %arg8 = %1 to %c28_19 step %c1_20 {
        %2 = memref.load %arg4[%arg7, %arg8] : memref<?x28xf64>
        memref.store %2, %arg4[%arg8, %arg7] : memref<?x28xf64>
      }
    }
    return
  }
}

