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
      %c0_18 = arith.constant 0 : index
      %c-1 = arith.constant -1 : index
      %1 = arith.muli %arg7, %c-1 : index
      %c27_19 = arith.constant 27 : index
      %2 = arith.addi %1, %c27_19 : index
      %c1_20 = arith.constant 1 : index
      scf.for %arg8 = %c0_18 to %2 step %c1_20 {
        %3 = arith.addi %arg7, %arg8 : index
        %c1_21 = arith.constant 1 : index
        %4 = arith.addi %3, %c1_21 : index
        memref.store %cst_0, %arg4[%arg7, %4] : memref<?x28xf64>
      }
    }
    %c0_4 = arith.constant 0 : index
    %c27_5 = arith.constant 27 : index
    %c32 = arith.constant 32 : index
    scf.for %arg7 = %c0_4 to %c27_5 step %c32 {
      %c27_18 = arith.constant 27 : index
      %1 = arith.addi %arg7, %c27_18 : index
      %c1_19 = arith.constant 1 : index
      scf.for %arg8 = %arg7 to %1 step %c1_19 {
        memref.store %cst_1, %arg4[%arg8, %arg8] : memref<?x28xf64>
      }
    }
    %0 = math.sqrt %arg2 : f64
    %c0_6 = arith.constant 0 : index
    memref.store %0, %alloca[%c0_6] : memref<1xf64>
    %c0_7 = arith.constant 0 : index
    %c28 = arith.constant 28 : index
    %c32_8 = arith.constant 32 : index
    scf.for %arg7 = %c0_7 to %c28 step %c32_8 {
      %c28_18 = arith.constant 28 : index
      %1 = arith.addi %arg7, %c28_18 : index
      %c1_19 = arith.constant 1 : index
      scf.for %arg8 = %arg7 to %1 step %c1_19 {
        memref.store %cst_0, %arg6[%arg8] : memref<?xf64>
        memref.store %cst_0, %arg5[%arg8] : memref<?xf64>
        %c0_20 = arith.constant 0 : index
        %c32_21 = arith.constant 32 : index
        %c1_22 = arith.constant 1 : index
        scf.for %arg9 = %c0_20 to %c32_21 step %c1_22 {
          %7 = memref.load %arg5[%arg8] : memref<?xf64>
          %8 = memref.load %arg3[%arg9, %arg8] : memref<?x28xf64>
          %9 = arith.addf %7, %8 : f64
          memref.store %9, %arg5[%arg8] : memref<?xf64>
        }
        %c0_23 = arith.constant 0 : index
        %c32_24 = arith.constant 32 : index
        %c1_25 = arith.constant 1 : index
        scf.for %arg9 = %c0_23 to %c32_24 step %c1_25 {
          %7 = memref.load %arg5[%arg8] : memref<?xf64>
          %8 = memref.load %arg3[%arg9, %arg8] : memref<?x28xf64>
          %9 = arith.addf %7, %8 : f64
          memref.store %9, %arg5[%arg8] : memref<?xf64>
        }
        %c0_26 = arith.constant 0 : index
        %c32_27 = arith.constant 32 : index
        %c1_28 = arith.constant 1 : index
        scf.for %arg9 = %c0_26 to %c32_27 step %c1_28 {
          %7 = memref.load %arg5[%arg8] : memref<?xf64>
          %8 = arith.divf %7, %arg2 : f64
          memref.store %8, %arg5[%arg8] : memref<?xf64>
          %9 = memref.load %arg6[%arg8] : memref<?xf64>
          %10 = memref.load %arg3[%arg9, %arg8] : memref<?x28xf64>
          %11 = memref.load %arg5[%arg8] : memref<?xf64>
          %12 = arith.subf %10, %11 : f64
          %13 = arith.mulf %12, %12 : f64
          %14 = arith.addf %9, %13 : f64
          memref.store %14, %arg6[%arg8] : memref<?xf64>
          %15 = memref.load %arg3[%arg9, %arg8] : memref<?x28xf64>
          %16 = memref.load %arg5[%arg8] : memref<?xf64>
          %17 = arith.subf %15, %16 : f64
          memref.store %17, %arg3[%arg9, %arg8] : memref<?x28xf64>
        }
        %2 = memref.load %arg6[%arg8] : memref<?xf64>
        %3 = arith.divf %2, %arg2 : f64
        %4 = math.sqrt %3 : f64
        %5 = arith.cmpf ole, %4, %cst : f64
        %6 = arith.select %5, %cst_1, %4 : f64
        memref.store %6, %arg6[%arg8] : memref<?xf64>
      }
    }
    %c0_9 = arith.constant 0 : index
    %c32_10 = arith.constant 32 : index
    %c32_11 = arith.constant 32 : index
    scf.for %arg7 = %c0_9 to %c32_10 step %c32_11 {
      %c0_18 = arith.constant 0 : index
      %c28_19 = arith.constant 28 : index
      %c32_20 = arith.constant 32 : index
      scf.for %arg8 = %c0_18 to %c28_19 step %c32_20 {
        %c32_21 = arith.constant 32 : index
        %1 = arith.addi %arg7, %c32_21 : index
        %c1_22 = arith.constant 1 : index
        scf.for %arg9 = %arg7 to %1 step %c1_22 {
          %c28_23 = arith.constant 28 : index
          %2 = arith.addi %arg8, %c28_23 : index
          %c1_24 = arith.constant 1 : index
          scf.for %arg10 = %arg8 to %2 step %c1_24 {
            %c0_25 = arith.constant 0 : index
            memref.store %cst_0, %alloc[%c0_25] : memref<1xf64>
            memref.store %cst_0, %arg5[%arg10] : memref<?xf64>
            %c0_26 = arith.constant 0 : index
            %c32_27 = arith.constant 32 : index
            %c1_28 = arith.constant 1 : index
            scf.for %arg11 = %c0_26 to %c32_27 step %c1_28 {
              %13 = memref.load %arg5[%arg10] : memref<?xf64>
              %14 = memref.load %arg3[%arg11, %arg10] : memref<?x28xf64>
              %15 = arith.addf %13, %14 : f64
              memref.store %15, %arg5[%arg10] : memref<?xf64>
            }
            %c0_29 = arith.constant 0 : index
            %c32_30 = arith.constant 32 : index
            %c1_31 = arith.constant 1 : index
            scf.for %arg11 = %c0_29 to %c32_30 step %c1_31 {
              %13 = memref.load %arg5[%arg10] : memref<?xf64>
              %14 = memref.load %arg3[%arg11, %arg10] : memref<?x28xf64>
              %15 = arith.addf %13, %14 : f64
              memref.store %15, %arg5[%arg10] : memref<?xf64>
            }
            %c0_32 = arith.constant 0 : index
            %c32_33 = arith.constant 32 : index
            %c1_34 = arith.constant 1 : index
            scf.for %arg11 = %c0_32 to %c32_33 step %c1_34 {
              %13 = memref.load %arg5[%arg10] : memref<?xf64>
              %14 = arith.divf %13, %arg2 : f64
              memref.store %14, %arg5[%arg10] : memref<?xf64>
              %c0_39 = arith.constant 0 : index
              %15 = memref.load %alloc[%c0_39] : memref<1xf64>
              %16 = memref.load %arg3[%arg11, %arg10] : memref<?x28xf64>
              %17 = memref.load %arg5[%arg10] : memref<?xf64>
              %18 = arith.subf %16, %17 : f64
              %19 = arith.mulf %18, %18 : f64
              %20 = arith.addf %15, %19 : f64
              %c0_40 = arith.constant 0 : index
              memref.store %20, %alloc[%c0_40] : memref<1xf64>
              %21 = memref.load %arg3[%arg11, %arg10] : memref<?x28xf64>
              %22 = memref.load %arg5[%arg10] : memref<?xf64>
              %23 = arith.subf %21, %22 : f64
              memref.store %23, %arg3[%arg11, %arg10] : memref<?x28xf64>
            }
            %c0_35 = arith.constant 0 : index
            %3 = memref.load %alloc[%c0_35] : memref<1xf64>
            %4 = arith.divf %3, %arg2 : f64
            %5 = math.sqrt %4 : f64
            %6 = arith.cmpf ole, %5, %cst : f64
            %7 = arith.select %6, %cst_1, %5 : f64
            %c0_36 = arith.constant 0 : index
            memref.store %7, %alloc[%c0_36] : memref<1xf64>
            %8 = memref.load %arg3[%arg9, %arg10] : memref<?x28xf64>
            %c0_37 = arith.constant 0 : index
            %9 = memref.load %alloca[%c0_37] : memref<1xf64>
            %c0_38 = arith.constant 0 : index
            %10 = memref.load %alloc[%c0_38] : memref<1xf64>
            %11 = arith.mulf %9, %10 : f64
            %12 = arith.divf %8, %11 : f64
            memref.store %12, %arg3[%arg9, %arg10] : memref<?x28xf64>
          }
        }
      }
    }
    %c0_12 = arith.constant 0 : index
    %c27_13 = arith.constant 27 : index
    %c1_14 = arith.constant 1 : index
    scf.for %arg7 = %c0_12 to %c27_13 step %c1_14 {
      %c0_18 = arith.constant 0 : index
      %c-1 = arith.constant -1 : index
      %1 = arith.muli %arg7, %c-1 : index
      %c27_19 = arith.constant 27 : index
      %2 = arith.addi %1, %c27_19 : index
      %c1_20 = arith.constant 1 : index
      scf.for %arg8 = %c0_18 to %2 step %c1_20 {
        %c0_21 = arith.constant 0 : index
        %c32_22 = arith.constant 32 : index
        %c1_23 = arith.constant 1 : index
        scf.for %arg9 = %c0_21 to %c32_22 step %c1_23 {
          %3 = arith.addi %arg7, %arg8 : index
          %c1_24 = arith.constant 1 : index
          %4 = arith.addi %3, %c1_24 : index
          %5 = memref.load %arg4[%arg7, %4] : memref<?x28xf64>
          %6 = memref.load %arg3[%arg9, %arg7] : memref<?x28xf64>
          %7 = arith.addi %arg7, %arg8 : index
          %c1_25 = arith.constant 1 : index
          %8 = arith.addi %7, %c1_25 : index
          %9 = memref.load %arg3[%arg9, %8] : memref<?x28xf64>
          %10 = arith.mulf %6, %9 : f64
          %11 = arith.addf %5, %10 : f64
          %12 = arith.addi %arg7, %arg8 : index
          %c1_26 = arith.constant 1 : index
          %13 = arith.addi %12, %c1_26 : index
          memref.store %11, %arg4[%arg7, %13] : memref<?x28xf64>
        }
      }
    }
    %c0_15 = arith.constant 0 : index
    %c27_16 = arith.constant 27 : index
    %c1_17 = arith.constant 1 : index
    scf.for %arg7 = %c0_15 to %c27_16 step %c1_17 {
      %c0_18 = arith.constant 0 : index
      %c-1 = arith.constant -1 : index
      %1 = arith.muli %arg7, %c-1 : index
      %c27_19 = arith.constant 27 : index
      %2 = arith.addi %1, %c27_19 : index
      %c1_20 = arith.constant 1 : index
      scf.for %arg8 = %c0_18 to %2 step %c1_20 {
        %3 = arith.addi %arg7, %arg8 : index
        %c1_21 = arith.constant 1 : index
        %4 = arith.addi %3, %c1_21 : index
        %5 = memref.load %arg4[%arg7, %4] : memref<?x28xf64>
        %6 = arith.addi %arg7, %arg8 : index
        %c1_22 = arith.constant 1 : index
        %7 = arith.addi %6, %c1_22 : index
        memref.store %5, %arg4[%7, %arg7] : memref<?x28xf64>
      }
    }
    return
  }
}

