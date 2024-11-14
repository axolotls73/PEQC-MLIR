module {
  func.func @kernel_covariance(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_1 = arith.constant 1 : index
    scf.parallel (%arg6) = (%c0) to (%c1) step (%c1_1) {
      %c32 = arith.constant 32 : index
      %1 = arith.muli %arg6, %c32 : index
      %c0_7 = arith.constant 0 : index
      %c28_8 = arith.constant 28 : index
      %c1_9 = arith.constant 1 : index
      scf.for %arg7 = %c0_7 to %c28_8 step %c1_9 {
        %2 = arith.addi %1, %arg7 : index
        memref.store %cst_0, %arg5[%2] : memref<?xf64>
        %c0_10 = arith.constant 0 : index
        %c8 = arith.constant 8 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg8 = %c0_10 to %c8 step %c1_11 {
          %c4 = arith.constant 4 : index
          %5 = arith.muli %arg8, %c4 : index
          %6 = memref.load %arg3[%5, %2] : memref<?x28xf64>
          %7 = memref.load %arg5[%2] : memref<?xf64>
          %8 = arith.addf %7, %6 : f64
          memref.store %8, %arg5[%2] : memref<?xf64>
          %c1_12 = arith.constant 1 : index
          %9 = arith.addi %5, %c1_12 : index
          %10 = memref.load %arg3[%9, %2] : memref<?x28xf64>
          %11 = memref.load %arg5[%2] : memref<?xf64>
          %12 = arith.addf %11, %10 : f64
          memref.store %12, %arg5[%2] : memref<?xf64>
          %c2 = arith.constant 2 : index
          %13 = arith.addi %5, %c2 : index
          %14 = memref.load %arg3[%13, %2] : memref<?x28xf64>
          %15 = memref.load %arg5[%2] : memref<?xf64>
          %16 = arith.addf %15, %14 : f64
          memref.store %16, %arg5[%2] : memref<?xf64>
          %c3 = arith.constant 3 : index
          %17 = arith.addi %5, %c3 : index
          %18 = memref.load %arg3[%17, %2] : memref<?x28xf64>
          %19 = memref.load %arg5[%2] : memref<?xf64>
          %20 = arith.addf %19, %18 : f64
          memref.store %20, %arg5[%2] : memref<?xf64>
        }
        %3 = memref.load %arg5[%2] : memref<?xf64>
        %4 = arith.divf %3, %arg2 : f64
        memref.store %4, %arg5[%2] : memref<?xf64>
      }
      scf.reduce 
    }
    %c0_2 = arith.constant 0 : index
    %c1_3 = arith.constant 1 : index
    %c1_4 = arith.constant 1 : index
    scf.parallel (%arg6) = (%c0_2) to (%c1_3) step (%c1_4) {
      %c32 = arith.constant 32 : index
      %1 = arith.muli %arg6, %c32 : index
      %c0_7 = arith.constant 0 : index
      %c1_8 = arith.constant 1 : index
      %c1_9 = arith.constant 1 : index
      scf.for %arg7 = %c0_7 to %c1_8 step %c1_9 {
        %c128 = arith.constant 128 : index
        %2 = arith.muli %arg7, %c128 : index
        %c0_10 = arith.constant 0 : index
        %c32_11 = arith.constant 32 : index
        %c1_12 = arith.constant 1 : index
        scf.for %arg8 = %c0_10 to %c32_11 step %c1_12 {
          %3 = arith.addi %1, %arg8 : index
          %c0_13 = arith.constant 0 : index
          %c7 = arith.constant 7 : index
          %c1_14 = arith.constant 1 : index
          scf.for %arg9 = %c0_13 to %c7 step %c1_14 {
            %c4 = arith.constant 4 : index
            %4 = arith.muli %arg9, %c4 : index
            %5 = arith.addi %2, %4 : index
            %6 = memref.load %arg5[%5] : memref<?xf64>
            %7 = memref.load %arg3[%3, %5] : memref<?x28xf64>
            %8 = arith.subf %7, %6 : f64
            memref.store %8, %arg3[%3, %5] : memref<?x28xf64>
            %c1_15 = arith.constant 1 : index
            %9 = arith.addi %5, %c1_15 : index
            %10 = memref.load %arg5[%9] : memref<?xf64>
            %11 = memref.load %arg3[%3, %9] : memref<?x28xf64>
            %12 = arith.subf %11, %10 : f64
            memref.store %12, %arg3[%3, %9] : memref<?x28xf64>
            %c2 = arith.constant 2 : index
            %13 = arith.addi %5, %c2 : index
            %14 = memref.load %arg5[%13] : memref<?xf64>
            %15 = memref.load %arg3[%3, %13] : memref<?x28xf64>
            %16 = arith.subf %15, %14 : f64
            memref.store %16, %arg3[%3, %13] : memref<?x28xf64>
            %c3 = arith.constant 3 : index
            %17 = arith.addi %5, %c3 : index
            %18 = memref.load %arg5[%17] : memref<?xf64>
            %19 = memref.load %arg3[%3, %17] : memref<?x28xf64>
            %20 = arith.subf %19, %18 : f64
            memref.store %20, %arg3[%3, %17] : memref<?x28xf64>
          }
        }
      }
      scf.reduce 
    }
    %0 = arith.subf %arg2, %cst : f64
    %c0_5 = arith.constant 0 : index
    %c28 = arith.constant 28 : index
    %c1_6 = arith.constant 1 : index
    scf.parallel (%arg6) = (%c0_5) to (%c28) step (%c1_6) {
      %c0_7 = arith.constant 0 : index
      %c-1 = arith.constant -1 : index
      %1 = arith.muli %arg6, %c-1 : index
      %c28_8 = arith.constant 28 : index
      %2 = arith.addi %1, %c28_8 : index
      %c1_9 = arith.constant 1 : index
      scf.for %arg7 = %c0_7 to %2 step %c1_9 {
        %3 = arith.addi %arg6, %arg7 : index
        memref.store %cst_0, %arg4[%arg6, %3] : memref<?x28xf64>
        %c0_10 = arith.constant 0 : index
        %c8 = arith.constant 8 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg8 = %c0_10 to %c8 step %c1_11 {
          %c4 = arith.constant 4 : index
          %6 = arith.muli %arg8, %c4 : index
          %7 = memref.load %arg3[%6, %arg6] : memref<?x28xf64>
          %8 = memref.load %arg3[%6, %3] : memref<?x28xf64>
          %9 = arith.mulf %7, %8 : f64
          %10 = memref.load %arg4[%arg6, %3] : memref<?x28xf64>
          %11 = arith.addf %10, %9 : f64
          memref.store %11, %arg4[%arg6, %3] : memref<?x28xf64>
          %c1_12 = arith.constant 1 : index
          %12 = arith.addi %6, %c1_12 : index
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
      scf.reduce 
    }
    return
  }
}

