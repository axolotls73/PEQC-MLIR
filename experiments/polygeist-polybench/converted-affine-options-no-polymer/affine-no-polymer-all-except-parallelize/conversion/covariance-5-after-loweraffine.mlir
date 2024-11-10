module {
  func.func @kernel_covariance(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c28 = arith.constant 28 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c28 step %c1 {
      %c0_6 = arith.constant 0 : index
      %c1_7 = arith.constant 1 : index
      %c1_8 = arith.constant 1 : index
      scf.for %arg7 = %c0_6 to %c1_7 step %c1_8 {
        %1 = arith.addi %arg6, %arg7 : index
        memref.store %cst_0, %arg5[%1] : memref<?xf64>
        %c0_9 = arith.constant 0 : index
        %c8 = arith.constant 8 : index
        %c1_10 = arith.constant 1 : index
        scf.for %arg8 = %c0_9 to %c8 step %c1_10 {
          %c4 = arith.constant 4 : index
          %4 = arith.muli %arg8, %c4 : index
          %5 = memref.load %arg3[%4, %1] : memref<?x28xf64>
          %6 = memref.load %arg5[%1] : memref<?xf64>
          %7 = arith.addf %6, %5 : f64
          memref.store %7, %arg5[%1] : memref<?xf64>
          %c1_11 = arith.constant 1 : index
          %8 = arith.addi %4, %c1_11 : index
          %9 = memref.load %arg3[%8, %1] : memref<?x28xf64>
          %10 = memref.load %arg5[%1] : memref<?xf64>
          %11 = arith.addf %10, %9 : f64
          memref.store %11, %arg5[%1] : memref<?xf64>
          %c2 = arith.constant 2 : index
          %12 = arith.addi %4, %c2 : index
          %13 = memref.load %arg3[%12, %1] : memref<?x28xf64>
          %14 = memref.load %arg5[%1] : memref<?xf64>
          %15 = arith.addf %14, %13 : f64
          memref.store %15, %arg5[%1] : memref<?xf64>
          %c3 = arith.constant 3 : index
          %16 = arith.addi %4, %c3 : index
          %17 = memref.load %arg3[%16, %1] : memref<?x28xf64>
          %18 = memref.load %arg5[%1] : memref<?xf64>
          %19 = arith.addf %18, %17 : f64
          memref.store %19, %arg5[%1] : memref<?xf64>
        }
        %2 = memref.load %arg5[%1] : memref<?xf64>
        %3 = arith.divf %2, %arg2 : f64
        memref.store %3, %arg5[%1] : memref<?xf64>
      }
    }
    %c0_1 = arith.constant 0 : index
    %c32 = arith.constant 32 : index
    %c1_2 = arith.constant 1 : index
    scf.for %arg6 = %c0_1 to %c32 step %c1_2 {
      %c0_6 = arith.constant 0 : index
      %c1_7 = arith.constant 1 : index
      %c1_8 = arith.constant 1 : index
      scf.for %arg7 = %c0_6 to %c1_7 step %c1_8 {
        %1 = arith.addi %arg6, %arg7 : index
        %c0_9 = arith.constant 0 : index
        %c7 = arith.constant 7 : index
        %c1_10 = arith.constant 1 : index
        scf.for %arg8 = %c0_9 to %c7 step %c1_10 {
          %c4 = arith.constant 4 : index
          %2 = arith.muli %arg8, %c4 : index
          %c0_11 = arith.constant 0 : index
          %c1_12 = arith.constant 1 : index
          %c1_13 = arith.constant 1 : index
          scf.for %arg9 = %c0_11 to %c1_12 step %c1_13 {
            %c4_14 = arith.constant 4 : index
            %3 = arith.muli %arg9, %c4_14 : index
            %4 = arith.addi %2, %3 : index
            %5 = memref.load %arg5[%4] : memref<?xf64>
            %6 = memref.load %arg3[%1, %4] : memref<?x28xf64>
            %7 = arith.subf %6, %5 : f64
            memref.store %7, %arg3[%1, %4] : memref<?x28xf64>
            %c1_15 = arith.constant 1 : index
            %8 = arith.addi %4, %c1_15 : index
            %9 = memref.load %arg5[%8] : memref<?xf64>
            %10 = memref.load %arg3[%1, %8] : memref<?x28xf64>
            %11 = arith.subf %10, %9 : f64
            memref.store %11, %arg3[%1, %8] : memref<?x28xf64>
            %c2 = arith.constant 2 : index
            %12 = arith.addi %4, %c2 : index
            %13 = memref.load %arg5[%12] : memref<?xf64>
            %14 = memref.load %arg3[%1, %12] : memref<?x28xf64>
            %15 = arith.subf %14, %13 : f64
            memref.store %15, %arg3[%1, %12] : memref<?x28xf64>
            %c3 = arith.constant 3 : index
            %16 = arith.addi %4, %c3 : index
            %17 = memref.load %arg5[%16] : memref<?xf64>
            %18 = memref.load %arg3[%1, %16] : memref<?x28xf64>
            %19 = arith.subf %18, %17 : f64
            memref.store %19, %arg3[%1, %16] : memref<?x28xf64>
          }
        }
      }
    }
    %0 = arith.subf %arg2, %cst : f64
    %c0_3 = arith.constant 0 : index
    %c28_4 = arith.constant 28 : index
    %c1_5 = arith.constant 1 : index
    scf.for %arg6 = %c0_3 to %c28_4 step %c1_5 {
      %c0_6 = arith.constant 0 : index
      %c-1 = arith.constant -1 : index
      %1 = arith.muli %arg6, %c-1 : index
      %c28_7 = arith.constant 28 : index
      %2 = arith.addi %1, %c28_7 : index
      %c1_8 = arith.constant 1 : index
      scf.for %arg7 = %c0_6 to %2 step %c1_8 {
        %3 = arith.addi %arg6, %arg7 : index
        memref.store %cst_0, %arg4[%arg6, %3] : memref<?x28xf64>
        %c0_9 = arith.constant 0 : index
        %c8 = arith.constant 8 : index
        %c1_10 = arith.constant 1 : index
        scf.for %arg8 = %c0_9 to %c8 step %c1_10 {
          %c4 = arith.constant 4 : index
          %6 = arith.muli %arg8, %c4 : index
          %7 = memref.load %arg3[%6, %arg6] : memref<?x28xf64>
          %8 = memref.load %arg3[%6, %3] : memref<?x28xf64>
          %9 = arith.mulf %7, %8 : f64
          %10 = memref.load %arg4[%arg6, %3] : memref<?x28xf64>
          %11 = arith.addf %10, %9 : f64
          memref.store %11, %arg4[%arg6, %3] : memref<?x28xf64>
          %c1_11 = arith.constant 1 : index
          %12 = arith.addi %6, %c1_11 : index
          %13 = memref.load %arg3[%12, %arg6] : memref<?x28xf64>
          %14 = memref.load %arg3[%12, %3] : memref<?x28xf64>
          %15 = arith.mulf %13, %14 : f64
          %16 = memref.load %arg4[%arg6, %3] : memref<?x28xf64>
          %17 = arith.addf %16, %15 : f64
          memref.store %17, %arg4[%arg6, %3] : memref<?x28xf64>
          %c2 = arith.constant 2 : index
          %18 = arith.addi %6, %c2 : index
          %19 = memref.load %arg3[%18, %arg6] : memref<?x28xf64>
          %20 = memref.load %arg3[%18, %3] : memref<?x28xf64>
          %21 = arith.mulf %19, %20 : f64
          %22 = memref.load %arg4[%arg6, %3] : memref<?x28xf64>
          %23 = arith.addf %22, %21 : f64
          memref.store %23, %arg4[%arg6, %3] : memref<?x28xf64>
          %c3 = arith.constant 3 : index
          %24 = arith.addi %6, %c3 : index
          %25 = memref.load %arg3[%24, %arg6] : memref<?x28xf64>
          %26 = memref.load %arg3[%24, %3] : memref<?x28xf64>
          %27 = arith.mulf %25, %26 : f64
          %28 = memref.load %arg4[%arg6, %3] : memref<?x28xf64>
          %29 = arith.addf %28, %27 : f64
          memref.store %29, %arg4[%arg6, %3] : memref<?x28xf64>
        }
        %4 = memref.load %arg4[%arg6, %3] : memref<?x28xf64>
        %5 = arith.divf %4, %0 : f64
        memref.store %5, %arg4[%arg6, %3] : memref<?x28xf64>
        memref.store %5, %arg4[%3, %arg6] : memref<?x28xf64>
      }
    }
    return
  }
}

