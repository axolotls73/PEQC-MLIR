module {
  func.func @kernel_covariance(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>) {
    %alloc = memref.alloc() : memref<1xf64>
    %alloc_0 = memref.alloc() : memref<1x28xf64>
    %cst = arith.constant 1.000000e+00 : f64
    %cst_1 = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c28 = arith.constant 28 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c28 step %c1 {
      memref.store %cst_1, %arg5[%arg6] : memref<?xf64>
      %c0_5 = arith.constant 0 : index
      %c32 = arith.constant 32 : index
      %c1_6 = arith.constant 1 : index
      scf.for %arg7 = %c0_5 to %c32 step %c1_6 {
        %3 = memref.load %arg3[%arg7, %arg6] : memref<?x28xf64>
        %4 = memref.load %arg5[%arg6] : memref<?xf64>
        %5 = arith.addf %4, %3 : f64
        memref.store %5, %arg5[%arg6] : memref<?xf64>
      }
      %1 = memref.load %arg5[%arg6] : memref<?xf64>
      %2 = arith.divf %1, %arg2 : f64
      memref.store %2, %arg5[%arg6] : memref<?xf64>
    }
    %0 = arith.subf %arg2, %cst : f64
    %c0_2 = arith.constant 0 : index
    %c28_3 = arith.constant 28 : index
    %c1_4 = arith.constant 1 : index
    scf.for %arg6 = %c0_2 to %c28_3 step %c1_4 {
      %c28_5 = arith.constant 28 : index
      %c1_6 = arith.constant 1 : index
      scf.for %arg7 = %arg6 to %c28_5 step %c1_6 {
        memref.store %cst_1, %arg4[%arg6, %arg7] : memref<?x28xf64>
        %c0_7 = arith.constant 0 : index
        %c32 = arith.constant 32 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg8 = %c0_7 to %c32 step %c1_8 {
          %c0_9 = arith.constant 0 : index
          %c28_10 = arith.constant 28 : index
          %c1_11 = arith.constant 1 : index
          scf.for %arg9 = %c0_9 to %c28_10 step %c1_11 {
            %c0_14 = arith.constant 0 : index
            memref.store %cst_1, %alloc[%c0_14] : memref<1xf64>
            %c0_15 = arith.constant 0 : index
            %c32_16 = arith.constant 32 : index
            %c1_17 = arith.constant 1 : index
            scf.for %arg10 = %c0_15 to %c32_16 step %c1_17 {
              %13 = memref.load %arg3[%arg10, %arg9] : memref<?x28xf64>
              %c0_26 = arith.constant 0 : index
              %14 = memref.load %alloc[%c0_26] : memref<1xf64>
              %15 = arith.addf %14, %13 : f64
              %c0_27 = arith.constant 0 : index
              memref.store %15, %alloc[%c0_27] : memref<1xf64>
            }
            %c0_18 = arith.constant 0 : index
            %8 = memref.load %alloc[%c0_18] : memref<1xf64>
            %9 = arith.divf %8, %arg2 : f64
            %c0_19 = arith.constant 0 : index
            memref.store %9, %alloc[%c0_19] : memref<1xf64>
            %c0_20 = arith.constant 0 : index
            %c32_21 = arith.constant 32 : index
            %c1_22 = arith.constant 1 : index
            scf.for %arg10 = %c0_20 to %c32_21 step %c1_22 {
              %c0_26 = arith.constant 0 : index
              %13 = memref.load %alloc[%c0_26] : memref<1xf64>
              %14 = memref.load %arg3[%arg10, %arg9] : memref<?x28xf64>
              %15 = arith.subf %14, %13 : f64
              memref.store %15, %arg3[%arg10, %arg9] : memref<?x28xf64>
            }
            %c0_23 = arith.constant 0 : index
            %10 = memref.load %alloc[%c0_23] : memref<1xf64>
            %c0_24 = arith.constant 0 : index
            %11 = memref.load %alloc_0[%c0_24, %arg9] : memref<1x28xf64>
            %12 = arith.subf %11, %10 : f64
            %c0_25 = arith.constant 0 : index
            memref.store %12, %alloc_0[%c0_25, %arg9] : memref<1x28xf64>
          }
          %c0_12 = arith.constant 0 : index
          %3 = memref.load %alloc_0[%c0_12, %arg6] : memref<1x28xf64>
          %c0_13 = arith.constant 0 : index
          %4 = memref.load %alloc_0[%c0_13, %arg7] : memref<1x28xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = memref.load %arg4[%arg6, %arg7] : memref<?x28xf64>
          %7 = arith.addf %6, %5 : f64
          memref.store %7, %arg4[%arg6, %arg7] : memref<?x28xf64>
        }
        %1 = memref.load %arg4[%arg6, %arg7] : memref<?x28xf64>
        %2 = arith.divf %1, %0 : f64
        memref.store %2, %arg4[%arg6, %arg7] : memref<?x28xf64>
        memref.store %2, %arg4[%arg7, %arg6] : memref<?x28xf64>
      }
    }
    return
  }
}

