module {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %alloc = memref.alloc() : memref<1xf64>
    %alloc_0 = memref.alloc() : memref<1x28xf64>
    %alloc_1 = memref.alloc() : memref<1xf64>
    %cst = arith.constant 1.000000e+00 : f64
    %cst_2 = arith.constant 0.000000e+00 : f64
    %cst_3 = arith.constant 1.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c28 = arith.constant 28 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %c28 step %c1 {
      memref.store %cst_2, %arg5[%arg7] : memref<?xf64>
      %c0_10 = arith.constant 0 : index
      %c32_11 = arith.constant 32 : index
      %c1_12 = arith.constant 1 : index
      scf.for %arg8 = %c0_10 to %c32_11 step %c1_12 {
        %3 = memref.load %arg3[%arg8, %arg7] : memref<?x28xf64>
        %4 = memref.load %arg5[%arg7] : memref<?xf64>
        %5 = arith.addf %4, %3 : f64
        memref.store %5, %arg5[%arg7] : memref<?xf64>
      }
      %1 = memref.load %arg5[%arg7] : memref<?xf64>
      %2 = arith.divf %1, %arg2 : f64
      memref.store %2, %arg5[%arg7] : memref<?xf64>
    }
    %0 = math.sqrt %arg2 : f64
    %c0_4 = arith.constant 0 : index
    %c32 = arith.constant 32 : index
    %c1_5 = arith.constant 1 : index
    scf.for %arg7 = %c0_4 to %c32 step %c1_5 {
      %c0_10 = arith.constant 0 : index
      %c28_11 = arith.constant 28 : index
      %c1_12 = arith.constant 1 : index
      scf.for %arg8 = %c0_10 to %c28_11 step %c1_12 {
        %c0_13 = arith.constant 0 : index
        memref.store %cst_2, %alloc[%c0_13] : memref<1xf64>
        %c0_14 = arith.constant 0 : index
        %c32_15 = arith.constant 32 : index
        %c1_16 = arith.constant 1 : index
        scf.for %arg9 = %c0_14 to %c32_15 step %c1_16 {
          %19 = memref.load %arg3[%arg9, %arg8] : memref<?x28xf64>
          %c0_30 = arith.constant 0 : index
          %20 = memref.load %alloc[%c0_30] : memref<1xf64>
          %21 = arith.addf %20, %19 : f64
          %c0_31 = arith.constant 0 : index
          memref.store %21, %alloc[%c0_31] : memref<1xf64>
        }
        %c0_17 = arith.constant 0 : index
        %1 = memref.load %alloc[%c0_17] : memref<1xf64>
        %2 = arith.divf %1, %arg2 : f64
        %c0_18 = arith.constant 0 : index
        memref.store %2, %alloc[%c0_18] : memref<1xf64>
        memref.store %cst_2, %arg6[%arg8] : memref<?xf64>
        %c0_19 = arith.constant 0 : index
        %c32_20 = arith.constant 32 : index
        %c1_21 = arith.constant 1 : index
        scf.for %arg9 = %c0_19 to %c32_20 step %c1_21 {
          %19 = memref.load %arg3[%arg9, %arg8] : memref<?x28xf64>
          %c0_30 = arith.constant 0 : index
          %20 = memref.load %alloc[%c0_30] : memref<1xf64>
          %21 = arith.subf %19, %20 : f64
          %22 = arith.mulf %21, %21 : f64
          %23 = memref.load %arg6[%arg8] : memref<?xf64>
          %24 = arith.addf %23, %22 : f64
          memref.store %24, %arg6[%arg8] : memref<?xf64>
        }
        %3 = memref.load %arg6[%arg8] : memref<?xf64>
        %4 = arith.divf %3, %arg2 : f64
        %5 = math.sqrt %4 : f64
        %6 = arith.cmpf ole, %5, %cst_3 : f64
        %7 = arith.select %6, %cst, %5 : f64
        memref.store %7, %arg6[%arg8] : memref<?xf64>
        %c0_22 = arith.constant 0 : index
        memref.store %cst_2, %alloc_1[%c0_22] : memref<1xf64>
        %c0_23 = arith.constant 0 : index
        %c32_24 = arith.constant 32 : index
        %c1_25 = arith.constant 1 : index
        scf.for %arg9 = %c0_23 to %c32_24 step %c1_25 {
          %19 = memref.load %arg3[%arg9, %arg8] : memref<?x28xf64>
          %c0_30 = arith.constant 0 : index
          %20 = memref.load %alloc[%c0_30] : memref<1xf64>
          %21 = arith.subf %19, %20 : f64
          %22 = arith.mulf %21, %21 : f64
          %c0_31 = arith.constant 0 : index
          %23 = memref.load %alloc_1[%c0_31] : memref<1xf64>
          %24 = arith.addf %23, %22 : f64
          %c0_32 = arith.constant 0 : index
          memref.store %24, %alloc_1[%c0_32] : memref<1xf64>
        }
        %c0_26 = arith.constant 0 : index
        %8 = memref.load %alloc_1[%c0_26] : memref<1xf64>
        %9 = arith.divf %8, %arg2 : f64
        %10 = math.sqrt %9 : f64
        %11 = arith.cmpf ole, %10, %cst_3 : f64
        %12 = arith.select %11, %cst, %10 : f64
        %c0_27 = arith.constant 0 : index
        memref.store %12, %alloc_1[%c0_27] : memref<1xf64>
        %c0_28 = arith.constant 0 : index
        %13 = memref.load %alloc[%c0_28] : memref<1xf64>
        %14 = memref.load %arg3[%arg7, %arg8] : memref<?x28xf64>
        %15 = arith.subf %14, %13 : f64
        memref.store %15, %arg3[%arg7, %arg8] : memref<?x28xf64>
        %c0_29 = arith.constant 0 : index
        %16 = memref.load %alloc_1[%c0_29] : memref<1xf64>
        %17 = arith.mulf %0, %16 : f64
        %18 = arith.divf %15, %17 : f64
        memref.store %18, %arg3[%arg7, %arg8] : memref<?x28xf64>
      }
    }
    %c0_6 = arith.constant 0 : index
    %c27 = arith.constant 27 : index
    %c1_7 = arith.constant 1 : index
    scf.for %arg7 = %c0_6 to %c27 step %c1_7 {
      memref.store %cst, %arg4[%arg7, %arg7] : memref<?x28xf64>
      %c1_10 = arith.constant 1 : index
      %1 = arith.addi %arg7, %c1_10 : index
      %c28_11 = arith.constant 28 : index
      %c1_12 = arith.constant 1 : index
      scf.for %arg8 = %1 to %c28_11 step %c1_12 {
        memref.store %cst_2, %arg4[%arg7, %arg8] : memref<?x28xf64>
        %c0_13 = arith.constant 0 : index
        %c32_14 = arith.constant 32 : index
        %c1_15 = arith.constant 1 : index
        scf.for %arg9 = %c0_13 to %c32_14 step %c1_15 {
          %c0_16 = arith.constant 0 : index
          %c28_17 = arith.constant 28 : index
          %c1_18 = arith.constant 1 : index
          scf.for %arg10 = %c0_16 to %c28_17 step %c1_18 {
            %c0_21 = arith.constant 0 : index
            memref.store %cst_2, %alloc_1[%c0_21] : memref<1xf64>
            %c0_22 = arith.constant 0 : index
            %c32_23 = arith.constant 32 : index
            %c1_24 = arith.constant 1 : index
            scf.for %arg11 = %c0_22 to %c32_23 step %c1_24 {
              %c-1 = arith.constant -1 : index
              %19 = arith.muli %arg9, %c-1 : index
              %20 = arith.addi %19, %arg11 : index
              %21 = memref.load %alloc_0[%20, %arg10] : memref<1x28xf64>
              %22 = memref.load %arg5[%arg10] : memref<?xf64>
              %23 = arith.subf %21, %22 : f64
              %24 = arith.mulf %23, %23 : f64
              %c0_31 = arith.constant 0 : index
              %25 = memref.load %alloc_1[%c0_31] : memref<1xf64>
              %26 = arith.addf %25, %24 : f64
              %c0_32 = arith.constant 0 : index
              memref.store %26, %alloc_1[%c0_32] : memref<1xf64>
            }
            %c0_25 = arith.constant 0 : index
            %8 = memref.load %alloc_1[%c0_25] : memref<1xf64>
            %9 = arith.divf %8, %arg2 : f64
            %10 = math.sqrt %9 : f64
            %11 = arith.cmpf ole, %10, %cst_3 : f64
            %12 = arith.select %11, %cst, %10 : f64
            %c0_26 = arith.constant 0 : index
            memref.store %12, %alloc_1[%c0_26] : memref<1xf64>
            %13 = memref.load %arg5[%arg10] : memref<?xf64>
            %c0_27 = arith.constant 0 : index
            %14 = memref.load %alloc_0[%c0_27, %arg10] : memref<1x28xf64>
            %15 = arith.subf %14, %13 : f64
            %c0_28 = arith.constant 0 : index
            memref.store %15, %alloc_0[%c0_28, %arg10] : memref<1x28xf64>
            %c0_29 = arith.constant 0 : index
            %16 = memref.load %alloc_1[%c0_29] : memref<1xf64>
            %17 = arith.mulf %0, %16 : f64
            %18 = arith.divf %15, %17 : f64
            %c0_30 = arith.constant 0 : index
            memref.store %18, %alloc_0[%c0_30, %arg10] : memref<1x28xf64>
          }
          %c0_19 = arith.constant 0 : index
          %3 = memref.load %alloc_0[%c0_19, %arg7] : memref<1x28xf64>
          %c0_20 = arith.constant 0 : index
          %4 = memref.load %alloc_0[%c0_20, %arg8] : memref<1x28xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = memref.load %arg4[%arg7, %arg8] : memref<?x28xf64>
          %7 = arith.addf %6, %5 : f64
          memref.store %7, %arg4[%arg7, %arg8] : memref<?x28xf64>
        }
        %2 = memref.load %arg4[%arg7, %arg8] : memref<?x28xf64>
        memref.store %2, %arg4[%arg8, %arg7] : memref<?x28xf64>
      }
    }
    %c27_8 = arith.constant 27 : index
    %c27_9 = arith.constant 27 : index
    memref.store %cst, %arg4[%c27_8, %c27_9] : memref<?x28xf64>
    return
  }
}

