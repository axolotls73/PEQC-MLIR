module {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %alloc = memref.alloc() : memref<1x28xf64>
    %alloc_0 = memref.alloc() : memref<1xf64>
    %cst = arith.constant 1.000000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %cst_2 = arith.constant 1.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c28 = arith.constant 28 : index
    %c32 = arith.constant 32 : index
    scf.for %arg7 = %c0 to %c28 step %c32 {
      %c28_10 = arith.constant 28 : index
      %1 = arith.addi %arg7, %c28_10 : index
      %c1 = arith.constant 1 : index
      scf.for %arg8 = %arg7 to %1 step %c1 {
        memref.store %cst_1, %arg6[%arg8] : memref<?xf64>
        %c0_11 = arith.constant 0 : index
        %c32_12 = arith.constant 32 : index
        %c1_13 = arith.constant 1 : index
        scf.for %arg9 = %c0_11 to %c32_12 step %c1_13 {
          memref.store %cst_1, %arg5[%arg8] : memref<?xf64>
          %c0_14 = arith.constant 0 : index
          %c32_15 = arith.constant 32 : index
          %c1_16 = arith.constant 1 : index
          scf.for %arg10 = %c0_14 to %c32_15 step %c1_16 {
            %15 = memref.load %arg3[%arg10, %arg8] : memref<?x28xf64>
            %16 = memref.load %arg5[%arg8] : memref<?xf64>
            %17 = arith.addf %16, %15 : f64
            memref.store %17, %arg5[%arg8] : memref<?xf64>
          }
          %7 = memref.load %arg5[%arg8] : memref<?xf64>
          %8 = arith.divf %7, %arg2 : f64
          memref.store %8, %arg5[%arg8] : memref<?xf64>
          %9 = memref.load %arg3[%arg9, %arg8] : memref<?x28xf64>
          %10 = memref.load %arg5[%arg8] : memref<?xf64>
          %11 = arith.subf %9, %10 : f64
          %12 = arith.mulf %11, %11 : f64
          %13 = memref.load %arg6[%arg8] : memref<?xf64>
          %14 = arith.addf %13, %12 : f64
          memref.store %14, %arg6[%arg8] : memref<?xf64>
        }
        %2 = memref.load %arg6[%arg8] : memref<?xf64>
        %3 = arith.divf %2, %arg2 : f64
        %4 = math.sqrt %3 : f64
        %5 = arith.cmpf ole, %4, %cst_2 : f64
        %6 = arith.select %5, %cst, %4 : f64
        memref.store %6, %arg6[%arg8] : memref<?xf64>
      }
    }
    %0 = math.sqrt %arg2 : f64
    %c0_3 = arith.constant 0 : index
    %c32_4 = arith.constant 32 : index
    %c32_5 = arith.constant 32 : index
    scf.for %arg7 = %c0_3 to %c32_4 step %c32_5 {
      %c0_10 = arith.constant 0 : index
      %c28_11 = arith.constant 28 : index
      %c32_12 = arith.constant 32 : index
      scf.for %arg8 = %c0_10 to %c28_11 step %c32_12 {
        %c32_13 = arith.constant 32 : index
        %1 = arith.addi %arg7, %c32_13 : index
        %c1 = arith.constant 1 : index
        scf.for %arg9 = %arg7 to %1 step %c1 {
          %c28_14 = arith.constant 28 : index
          %2 = arith.addi %arg8, %c28_14 : index
          %c1_15 = arith.constant 1 : index
          scf.for %arg10 = %arg8 to %2 step %c1_15 {
            %c0_16 = arith.constant 0 : index
            memref.store %cst_1, %alloc_0[%c0_16] : memref<1xf64>
            %c0_17 = arith.constant 0 : index
            %c32_18 = arith.constant 32 : index
            %c1_19 = arith.constant 1 : index
            scf.for %arg11 = %c0_17 to %c32_18 step %c1_19 {
              %14 = memref.load %arg3[%arg11, %arg10] : memref<?x28xf64>
              %15 = memref.load %arg5[%arg10] : memref<?xf64>
              %16 = arith.subf %14, %15 : f64
              %17 = arith.mulf %16, %16 : f64
              %c0_23 = arith.constant 0 : index
              %18 = memref.load %alloc_0[%c0_23] : memref<1xf64>
              %19 = arith.addf %18, %17 : f64
              %c0_24 = arith.constant 0 : index
              memref.store %19, %alloc_0[%c0_24] : memref<1xf64>
            }
            %c0_20 = arith.constant 0 : index
            %3 = memref.load %alloc_0[%c0_20] : memref<1xf64>
            %4 = arith.divf %3, %arg2 : f64
            %5 = math.sqrt %4 : f64
            %6 = arith.cmpf ole, %5, %cst_2 : f64
            %7 = arith.select %6, %cst, %5 : f64
            %c0_21 = arith.constant 0 : index
            memref.store %7, %alloc_0[%c0_21] : memref<1xf64>
            %8 = memref.load %arg5[%arg10] : memref<?xf64>
            %9 = memref.load %arg3[%arg9, %arg10] : memref<?x28xf64>
            %10 = arith.subf %9, %8 : f64
            memref.store %10, %arg3[%arg9, %arg10] : memref<?x28xf64>
            %c0_22 = arith.constant 0 : index
            %11 = memref.load %alloc_0[%c0_22] : memref<1xf64>
            %12 = arith.mulf %0, %11 : f64
            %13 = arith.divf %10, %12 : f64
            memref.store %13, %arg3[%arg9, %arg10] : memref<?x28xf64>
          }
        }
      }
    }
    %c0_6 = arith.constant 0 : index
    %c27 = arith.constant 27 : index
    %c32_7 = arith.constant 32 : index
    scf.for %arg7 = %c0_6 to %c27 step %c32_7 {
      %c27_10 = arith.constant 27 : index
      %1 = arith.addi %arg7, %c27_10 : index
      %c1 = arith.constant 1 : index
      scf.for %arg8 = %arg7 to %1 step %c1 {
        memref.store %cst, %arg4[%arg8, %arg8] : memref<?x28xf64>
        %c0_11 = arith.constant 0 : index
        %c-1 = arith.constant -1 : index
        %2 = arith.muli %arg8, %c-1 : index
        %c27_12 = arith.constant 27 : index
        %3 = arith.addi %2, %c27_12 : index
        %c1_13 = arith.constant 1 : index
        scf.for %arg9 = %c0_11 to %3 step %c1_13 {
          %4 = arith.addi %arg8, %arg9 : index
          %c1_14 = arith.constant 1 : index
          %5 = arith.addi %4, %c1_14 : index
          memref.store %cst_1, %arg4[%arg8, %5] : memref<?x28xf64>
          %c0_15 = arith.constant 0 : index
          %c32_16 = arith.constant 32 : index
          %c1_17 = arith.constant 1 : index
          scf.for %arg10 = %c0_15 to %c32_16 step %c1_17 {
            %c0_20 = arith.constant 0 : index
            %c28_21 = arith.constant 28 : index
            %c1_22 = arith.constant 1 : index
            scf.for %arg11 = %c0_20 to %c28_21 step %c1_22 {
              %c0_29 = arith.constant 0 : index
              memref.store %cst_1, %alloc_0[%c0_29] : memref<1xf64>
              %c0_30 = arith.constant 0 : index
              %c32_31 = arith.constant 32 : index
              %c1_32 = arith.constant 1 : index
              scf.for %arg12 = %c0_30 to %c32_31 step %c1_32 {
                %c-1_39 = arith.constant -1 : index
                %35 = arith.muli %arg10, %c-1_39 : index
                %36 = arith.addi %35, %arg12 : index
                %37 = memref.load %alloc[%36, %arg11] : memref<1x28xf64>
                %38 = memref.load %arg5[%arg11] : memref<?xf64>
                %39 = arith.subf %37, %38 : f64
                %40 = arith.mulf %39, %39 : f64
                %c0_40 = arith.constant 0 : index
                %41 = memref.load %alloc_0[%c0_40] : memref<1xf64>
                %42 = arith.addf %41, %40 : f64
                %c0_41 = arith.constant 0 : index
                memref.store %42, %alloc_0[%c0_41] : memref<1xf64>
              }
              %c0_33 = arith.constant 0 : index
              %24 = memref.load %alloc_0[%c0_33] : memref<1xf64>
              %25 = arith.divf %24, %arg2 : f64
              %26 = math.sqrt %25 : f64
              %27 = arith.cmpf ole, %26, %cst_2 : f64
              %28 = arith.select %27, %cst, %26 : f64
              %c0_34 = arith.constant 0 : index
              memref.store %28, %alloc_0[%c0_34] : memref<1xf64>
              %29 = memref.load %arg5[%arg11] : memref<?xf64>
              %c0_35 = arith.constant 0 : index
              %30 = memref.load %alloc[%c0_35, %arg11] : memref<1x28xf64>
              %31 = arith.subf %30, %29 : f64
              %c0_36 = arith.constant 0 : index
              memref.store %31, %alloc[%c0_36, %arg11] : memref<1x28xf64>
              %c0_37 = arith.constant 0 : index
              %32 = memref.load %alloc_0[%c0_37] : memref<1xf64>
              %33 = arith.mulf %0, %32 : f64
              %34 = arith.divf %31, %33 : f64
              %c0_38 = arith.constant 0 : index
              memref.store %34, %alloc[%c0_38, %arg11] : memref<1x28xf64>
            }
            %c0_23 = arith.constant 0 : index
            %11 = memref.load %alloc[%c0_23, %arg8] : memref<1x28xf64>
            %12 = arith.addi %arg8, %arg9 : index
            %c1_24 = arith.constant 1 : index
            %13 = arith.addi %12, %c1_24 : index
            %c0_25 = arith.constant 0 : index
            %14 = arith.addi %arg8, %arg9 : index
            %c1_26 = arith.constant 1 : index
            %15 = arith.addi %14, %c1_26 : index
            %16 = memref.load %alloc[%c0_25, %15] : memref<1x28xf64>
            %17 = arith.mulf %11, %16 : f64
            %18 = arith.addi %arg8, %arg9 : index
            %c1_27 = arith.constant 1 : index
            %19 = arith.addi %18, %c1_27 : index
            %20 = memref.load %arg4[%arg8, %19] : memref<?x28xf64>
            %21 = arith.addf %20, %17 : f64
            %22 = arith.addi %arg8, %arg9 : index
            %c1_28 = arith.constant 1 : index
            %23 = arith.addi %22, %c1_28 : index
            memref.store %21, %arg4[%arg8, %23] : memref<?x28xf64>
          }
          %6 = arith.addi %arg8, %arg9 : index
          %c1_18 = arith.constant 1 : index
          %7 = arith.addi %6, %c1_18 : index
          %8 = memref.load %arg4[%arg8, %7] : memref<?x28xf64>
          %9 = arith.addi %arg8, %arg9 : index
          %c1_19 = arith.constant 1 : index
          %10 = arith.addi %9, %c1_19 : index
          memref.store %8, %arg4[%10, %arg8] : memref<?x28xf64>
        }
      }
    }
    %c27_8 = arith.constant 27 : index
    %c27_9 = arith.constant 27 : index
    memref.store %cst, %arg4[%c27_8, %c27_9] : memref<?x28xf64>
    return
  }
}

