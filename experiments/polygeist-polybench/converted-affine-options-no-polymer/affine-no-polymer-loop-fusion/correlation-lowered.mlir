module {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %alloc = memref.alloc() : memref<1x28xf64>
    %alloc_0 = memref.alloc() : memref<1xf64>
    %cst = arith.constant 1.000000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %cst_2 = arith.constant 1.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c28 = arith.constant 28 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %c28 step %c1 {
      memref.store %cst_1, %arg6[%arg7] : memref<?xf64>
      %c0_9 = arith.constant 0 : index
      %c32_10 = arith.constant 32 : index
      %c1_11 = arith.constant 1 : index
      scf.for %arg8 = %c0_9 to %c32_10 step %c1_11 {
        memref.store %cst_1, %arg5[%arg7] : memref<?xf64>
        %c0_12 = arith.constant 0 : index
        %c32_13 = arith.constant 32 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg9 = %c0_12 to %c32_13 step %c1_14 {
          %14 = memref.load %arg3[%arg9, %arg7] : memref<?x28xf64>
          %15 = memref.load %arg5[%arg7] : memref<?xf64>
          %16 = arith.addf %15, %14 : f64
          memref.store %16, %arg5[%arg7] : memref<?xf64>
        }
        %6 = memref.load %arg5[%arg7] : memref<?xf64>
        %7 = arith.divf %6, %arg2 : f64
        memref.store %7, %arg5[%arg7] : memref<?xf64>
        %8 = memref.load %arg3[%arg8, %arg7] : memref<?x28xf64>
        %9 = memref.load %arg5[%arg7] : memref<?xf64>
        %10 = arith.subf %8, %9 : f64
        %11 = arith.mulf %10, %10 : f64
        %12 = memref.load %arg6[%arg7] : memref<?xf64>
        %13 = arith.addf %12, %11 : f64
        memref.store %13, %arg6[%arg7] : memref<?xf64>
      }
      %1 = memref.load %arg6[%arg7] : memref<?xf64>
      %2 = arith.divf %1, %arg2 : f64
      %3 = math.sqrt %2 : f64
      %4 = arith.cmpf ole, %3, %cst_2 : f64
      %5 = arith.select %4, %cst, %3 : f64
      memref.store %5, %arg6[%arg7] : memref<?xf64>
    }
    %0 = math.sqrt %arg2 : f64
    %c0_3 = arith.constant 0 : index
    %c32 = arith.constant 32 : index
    %c1_4 = arith.constant 1 : index
    scf.for %arg7 = %c0_3 to %c32 step %c1_4 {
      %c0_9 = arith.constant 0 : index
      %c28_10 = arith.constant 28 : index
      %c1_11 = arith.constant 1 : index
      scf.for %arg8 = %c0_9 to %c28_10 step %c1_11 {
        %c0_12 = arith.constant 0 : index
        memref.store %cst_1, %alloc_0[%c0_12] : memref<1xf64>
        %c0_13 = arith.constant 0 : index
        %c32_14 = arith.constant 32 : index
        %c1_15 = arith.constant 1 : index
        scf.for %arg9 = %c0_13 to %c32_14 step %c1_15 {
          %12 = memref.load %arg3[%arg9, %arg8] : memref<?x28xf64>
          %13 = memref.load %arg5[%arg8] : memref<?xf64>
          %14 = arith.subf %12, %13 : f64
          %15 = arith.mulf %14, %14 : f64
          %c0_19 = arith.constant 0 : index
          %16 = memref.load %alloc_0[%c0_19] : memref<1xf64>
          %17 = arith.addf %16, %15 : f64
          %c0_20 = arith.constant 0 : index
          memref.store %17, %alloc_0[%c0_20] : memref<1xf64>
        }
        %c0_16 = arith.constant 0 : index
        %1 = memref.load %alloc_0[%c0_16] : memref<1xf64>
        %2 = arith.divf %1, %arg2 : f64
        %3 = math.sqrt %2 : f64
        %4 = arith.cmpf ole, %3, %cst_2 : f64
        %5 = arith.select %4, %cst, %3 : f64
        %c0_17 = arith.constant 0 : index
        memref.store %5, %alloc_0[%c0_17] : memref<1xf64>
        %6 = memref.load %arg5[%arg8] : memref<?xf64>
        %7 = memref.load %arg3[%arg7, %arg8] : memref<?x28xf64>
        %8 = arith.subf %7, %6 : f64
        memref.store %8, %arg3[%arg7, %arg8] : memref<?x28xf64>
        %c0_18 = arith.constant 0 : index
        %9 = memref.load %alloc_0[%c0_18] : memref<1xf64>
        %10 = arith.mulf %0, %9 : f64
        %11 = arith.divf %8, %10 : f64
        memref.store %11, %arg3[%arg7, %arg8] : memref<?x28xf64>
      }
    }
    %c0_5 = arith.constant 0 : index
    %c27 = arith.constant 27 : index
    %c1_6 = arith.constant 1 : index
    scf.for %arg7 = %c0_5 to %c27 step %c1_6 {
      memref.store %cst, %arg4[%arg7, %arg7] : memref<?x28xf64>
      %c1_9 = arith.constant 1 : index
      %1 = arith.addi %arg7, %c1_9 : index
      %c28_10 = arith.constant 28 : index
      %c1_11 = arith.constant 1 : index
      scf.for %arg8 = %1 to %c28_10 step %c1_11 {
        memref.store %cst_1, %arg4[%arg7, %arg8] : memref<?x28xf64>
        %c0_12 = arith.constant 0 : index
        %c32_13 = arith.constant 32 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg9 = %c0_12 to %c32_13 step %c1_14 {
          %c0_15 = arith.constant 0 : index
          %c28_16 = arith.constant 28 : index
          %c1_17 = arith.constant 1 : index
          scf.for %arg10 = %c0_15 to %c28_16 step %c1_17 {
            %c0_20 = arith.constant 0 : index
            memref.store %cst_1, %alloc_0[%c0_20] : memref<1xf64>
            %c0_21 = arith.constant 0 : index
            %c32_22 = arith.constant 32 : index
            %c1_23 = arith.constant 1 : index
            scf.for %arg11 = %c0_21 to %c32_22 step %c1_23 {
              %c-1 = arith.constant -1 : index
              %19 = arith.muli %arg9, %c-1 : index
              %20 = arith.addi %19, %arg11 : index
              %21 = memref.load %alloc[%20, %arg10] : memref<1x28xf64>
              %22 = memref.load %arg5[%arg10] : memref<?xf64>
              %23 = arith.subf %21, %22 : f64
              %24 = arith.mulf %23, %23 : f64
              %c0_30 = arith.constant 0 : index
              %25 = memref.load %alloc_0[%c0_30] : memref<1xf64>
              %26 = arith.addf %25, %24 : f64
              %c0_31 = arith.constant 0 : index
              memref.store %26, %alloc_0[%c0_31] : memref<1xf64>
            }
            %c0_24 = arith.constant 0 : index
            %8 = memref.load %alloc_0[%c0_24] : memref<1xf64>
            %9 = arith.divf %8, %arg2 : f64
            %10 = math.sqrt %9 : f64
            %11 = arith.cmpf ole, %10, %cst_2 : f64
            %12 = arith.select %11, %cst, %10 : f64
            %c0_25 = arith.constant 0 : index
            memref.store %12, %alloc_0[%c0_25] : memref<1xf64>
            %13 = memref.load %arg5[%arg10] : memref<?xf64>
            %c0_26 = arith.constant 0 : index
            %14 = memref.load %alloc[%c0_26, %arg10] : memref<1x28xf64>
            %15 = arith.subf %14, %13 : f64
            %c0_27 = arith.constant 0 : index
            memref.store %15, %alloc[%c0_27, %arg10] : memref<1x28xf64>
            %c0_28 = arith.constant 0 : index
            %16 = memref.load %alloc_0[%c0_28] : memref<1xf64>
            %17 = arith.mulf %0, %16 : f64
            %18 = arith.divf %15, %17 : f64
            %c0_29 = arith.constant 0 : index
            memref.store %18, %alloc[%c0_29, %arg10] : memref<1x28xf64>
          }
          %c0_18 = arith.constant 0 : index
          %3 = memref.load %alloc[%c0_18, %arg7] : memref<1x28xf64>
          %c0_19 = arith.constant 0 : index
          %4 = memref.load %alloc[%c0_19, %arg8] : memref<1x28xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = memref.load %arg4[%arg7, %arg8] : memref<?x28xf64>
          %7 = arith.addf %6, %5 : f64
          memref.store %7, %arg4[%arg7, %arg8] : memref<?x28xf64>
        }
        %2 = memref.load %arg4[%arg7, %arg8] : memref<?x28xf64>
        memref.store %2, %arg4[%arg8, %arg7] : memref<?x28xf64>
      }
    }
    %c27_7 = arith.constant 27 : index
    %c27_8 = arith.constant 27 : index
    memref.store %cst, %arg4[%c27_7, %c27_8] : memref<?x28xf64>
    return
  }
}

