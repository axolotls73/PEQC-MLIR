module {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %cst_1 = arith.constant 1.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c28 = arith.constant 28 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %c28 step %c1 {
      %c0_11 = arith.constant 0 : index
      %c1_12 = arith.constant 1 : index
      %c1_13 = arith.constant 1 : index
      scf.for %arg8 = %c0_11 to %c1_12 step %c1_13 {
        %1 = arith.addi %arg7, %arg8 : index
        memref.store %cst_0, %arg5[%1] : memref<?xf64>
        %c0_14 = arith.constant 0 : index
        %c8 = arith.constant 8 : index
        %c1_15 = arith.constant 1 : index
        scf.for %arg9 = %c0_14 to %c8 step %c1_15 {
          %c4 = arith.constant 4 : index
          %4 = arith.muli %arg9, %c4 : index
          %5 = memref.load %arg3[%4, %1] : memref<?x28xf64>
          %6 = memref.load %arg5[%1] : memref<?xf64>
          %7 = arith.addf %6, %5 : f64
          memref.store %7, %arg5[%1] : memref<?xf64>
          %c1_16 = arith.constant 1 : index
          %8 = arith.addi %4, %c1_16 : index
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
    %c0_2 = arith.constant 0 : index
    %c28_3 = arith.constant 28 : index
    %c1_4 = arith.constant 1 : index
    scf.for %arg7 = %c0_2 to %c28_3 step %c1_4 {
      %c0_11 = arith.constant 0 : index
      %c1_12 = arith.constant 1 : index
      %c1_13 = arith.constant 1 : index
      scf.for %arg8 = %c0_11 to %c1_12 step %c1_13 {
        %1 = arith.addi %arg7, %arg8 : index
        memref.store %cst_0, %arg6[%1] : memref<?xf64>
        %2 = memref.load %arg5[%1] : memref<?xf64>
        %3 = memref.load %arg5[%1] : memref<?xf64>
        %4 = memref.load %arg5[%1] : memref<?xf64>
        %5 = memref.load %arg5[%1] : memref<?xf64>
        %c0_14 = arith.constant 0 : index
        %c8 = arith.constant 8 : index
        %c1_15 = arith.constant 1 : index
        scf.for %arg9 = %c0_14 to %c8 step %c1_15 {
          %c4 = arith.constant 4 : index
          %11 = arith.muli %arg9, %c4 : index
          %12 = memref.load %arg3[%11, %1] : memref<?x28xf64>
          %13 = arith.subf %12, %2 : f64
          %14 = arith.mulf %13, %13 : f64
          %15 = memref.load %arg6[%1] : memref<?xf64>
          %16 = arith.addf %15, %14 : f64
          memref.store %16, %arg6[%1] : memref<?xf64>
          %c1_16 = arith.constant 1 : index
          %17 = arith.addi %11, %c1_16 : index
          %18 = memref.load %arg3[%17, %1] : memref<?x28xf64>
          %19 = arith.subf %18, %3 : f64
          %20 = arith.mulf %19, %19 : f64
          %21 = memref.load %arg6[%1] : memref<?xf64>
          %22 = arith.addf %21, %20 : f64
          memref.store %22, %arg6[%1] : memref<?xf64>
          %c2 = arith.constant 2 : index
          %23 = arith.addi %11, %c2 : index
          %24 = memref.load %arg3[%23, %1] : memref<?x28xf64>
          %25 = arith.subf %24, %4 : f64
          %26 = arith.mulf %25, %25 : f64
          %27 = memref.load %arg6[%1] : memref<?xf64>
          %28 = arith.addf %27, %26 : f64
          memref.store %28, %arg6[%1] : memref<?xf64>
          %c3 = arith.constant 3 : index
          %29 = arith.addi %11, %c3 : index
          %30 = memref.load %arg3[%29, %1] : memref<?x28xf64>
          %31 = arith.subf %30, %5 : f64
          %32 = arith.mulf %31, %31 : f64
          %33 = memref.load %arg6[%1] : memref<?xf64>
          %34 = arith.addf %33, %32 : f64
          memref.store %34, %arg6[%1] : memref<?xf64>
        }
        %6 = memref.load %arg6[%1] : memref<?xf64>
        %7 = arith.divf %6, %arg2 : f64
        %8 = math.sqrt %7 : f64
        %9 = arith.cmpf ole, %8, %cst_1 : f64
        %10 = arith.select %9, %cst, %8 : f64
        memref.store %10, %arg6[%1] : memref<?xf64>
      }
    }
    %0 = math.sqrt %arg2 : f64
    %c0_5 = arith.constant 0 : index
    %c32 = arith.constant 32 : index
    %c1_6 = arith.constant 1 : index
    scf.for %arg7 = %c0_5 to %c32 step %c1_6 {
      %c0_11 = arith.constant 0 : index
      %c1_12 = arith.constant 1 : index
      %c1_13 = arith.constant 1 : index
      scf.for %arg8 = %c0_11 to %c1_12 step %c1_13 {
        %1 = arith.addi %arg7, %arg8 : index
        %c0_14 = arith.constant 0 : index
        %c7 = arith.constant 7 : index
        %c1_15 = arith.constant 1 : index
        scf.for %arg9 = %c0_14 to %c7 step %c1_15 {
          %c4 = arith.constant 4 : index
          %2 = arith.muli %arg9, %c4 : index
          %c0_16 = arith.constant 0 : index
          %c1_17 = arith.constant 1 : index
          %c1_18 = arith.constant 1 : index
          scf.for %arg10 = %c0_16 to %c1_17 step %c1_18 {
            %c4_19 = arith.constant 4 : index
            %3 = arith.muli %arg10, %c4_19 : index
            %4 = arith.addi %2, %3 : index
            %5 = memref.load %arg5[%4] : memref<?xf64>
            %6 = memref.load %arg3[%1, %4] : memref<?x28xf64>
            %7 = arith.subf %6, %5 : f64
            memref.store %7, %arg3[%1, %4] : memref<?x28xf64>
            %8 = memref.load %arg6[%4] : memref<?xf64>
            %9 = arith.mulf %0, %8 : f64
            %10 = arith.divf %7, %9 : f64
            memref.store %10, %arg3[%1, %4] : memref<?x28xf64>
            %c1_20 = arith.constant 1 : index
            %11 = arith.addi %4, %c1_20 : index
            %12 = memref.load %arg5[%11] : memref<?xf64>
            %13 = memref.load %arg3[%1, %11] : memref<?x28xf64>
            %14 = arith.subf %13, %12 : f64
            memref.store %14, %arg3[%1, %11] : memref<?x28xf64>
            %15 = memref.load %arg6[%11] : memref<?xf64>
            %16 = arith.mulf %0, %15 : f64
            %17 = arith.divf %14, %16 : f64
            memref.store %17, %arg3[%1, %11] : memref<?x28xf64>
            %c2 = arith.constant 2 : index
            %18 = arith.addi %4, %c2 : index
            %19 = memref.load %arg5[%18] : memref<?xf64>
            %20 = memref.load %arg3[%1, %18] : memref<?x28xf64>
            %21 = arith.subf %20, %19 : f64
            memref.store %21, %arg3[%1, %18] : memref<?x28xf64>
            %22 = memref.load %arg6[%18] : memref<?xf64>
            %23 = arith.mulf %0, %22 : f64
            %24 = arith.divf %21, %23 : f64
            memref.store %24, %arg3[%1, %18] : memref<?x28xf64>
            %c3 = arith.constant 3 : index
            %25 = arith.addi %4, %c3 : index
            %26 = memref.load %arg5[%25] : memref<?xf64>
            %27 = memref.load %arg3[%1, %25] : memref<?x28xf64>
            %28 = arith.subf %27, %26 : f64
            memref.store %28, %arg3[%1, %25] : memref<?x28xf64>
            %29 = memref.load %arg6[%25] : memref<?xf64>
            %30 = arith.mulf %0, %29 : f64
            %31 = arith.divf %28, %30 : f64
            memref.store %31, %arg3[%1, %25] : memref<?x28xf64>
          }
        }
      }
    }
    %c0_7 = arith.constant 0 : index
    %c27 = arith.constant 27 : index
    %c1_8 = arith.constant 1 : index
    scf.for %arg7 = %c0_7 to %c27 step %c1_8 {
      %c0_11 = arith.constant 0 : index
      %c1_12 = arith.constant 1 : index
      %c1_13 = arith.constant 1 : index
      scf.for %arg8 = %c0_11 to %c1_12 step %c1_13 {
        %1 = arith.addi %arg7, %arg8 : index
        memref.store %cst, %arg4[%1, %1] : memref<?x28xf64>
        %c0_14 = arith.constant 0 : index
        %c-1 = arith.constant -1 : index
        %2 = arith.muli %arg7, %c-1 : index
        %c-1_15 = arith.constant -1 : index
        %3 = arith.muli %arg8, %c-1_15 : index
        %4 = arith.addi %2, %3 : index
        %c27_16 = arith.constant 27 : index
        %5 = arith.addi %4, %c27_16 : index
        %c1_17 = arith.constant 1 : index
        scf.for %arg9 = %c0_14 to %5 step %c1_17 {
          %6 = arith.addi %1, %arg9 : index
          %c1_18 = arith.constant 1 : index
          %7 = arith.addi %6, %c1_18 : index
          memref.store %cst_0, %arg4[%1, %7] : memref<?x28xf64>
          %c0_19 = arith.constant 0 : index
          %c8 = arith.constant 8 : index
          %c1_20 = arith.constant 1 : index
          scf.for %arg10 = %c0_19 to %c8 step %c1_20 {
            %c4 = arith.constant 4 : index
            %9 = arith.muli %arg10, %c4 : index
            %10 = memref.load %arg3[%9, %1] : memref<?x28xf64>
            %11 = memref.load %arg3[%9, %7] : memref<?x28xf64>
            %12 = arith.mulf %10, %11 : f64
            %13 = memref.load %arg4[%1, %7] : memref<?x28xf64>
            %14 = arith.addf %13, %12 : f64
            memref.store %14, %arg4[%1, %7] : memref<?x28xf64>
            %c1_21 = arith.constant 1 : index
            %15 = arith.addi %9, %c1_21 : index
            %16 = memref.load %arg3[%15, %1] : memref<?x28xf64>
            %17 = memref.load %arg3[%15, %7] : memref<?x28xf64>
            %18 = arith.mulf %16, %17 : f64
            %19 = memref.load %arg4[%1, %7] : memref<?x28xf64>
            %20 = arith.addf %19, %18 : f64
            memref.store %20, %arg4[%1, %7] : memref<?x28xf64>
            %c2 = arith.constant 2 : index
            %21 = arith.addi %9, %c2 : index
            %22 = memref.load %arg3[%21, %1] : memref<?x28xf64>
            %23 = memref.load %arg3[%21, %7] : memref<?x28xf64>
            %24 = arith.mulf %22, %23 : f64
            %25 = memref.load %arg4[%1, %7] : memref<?x28xf64>
            %26 = arith.addf %25, %24 : f64
            memref.store %26, %arg4[%1, %7] : memref<?x28xf64>
            %c3 = arith.constant 3 : index
            %27 = arith.addi %9, %c3 : index
            %28 = memref.load %arg3[%27, %1] : memref<?x28xf64>
            %29 = memref.load %arg3[%27, %7] : memref<?x28xf64>
            %30 = arith.mulf %28, %29 : f64
            %31 = memref.load %arg4[%1, %7] : memref<?x28xf64>
            %32 = arith.addf %31, %30 : f64
            memref.store %32, %arg4[%1, %7] : memref<?x28xf64>
          }
          %8 = memref.load %arg4[%1, %7] : memref<?x28xf64>
          memref.store %8, %arg4[%7, %1] : memref<?x28xf64>
        }
      }
    }
    %c27_9 = arith.constant 27 : index
    %c27_10 = arith.constant 27 : index
    memref.store %cst, %arg4[%c27_9, %c27_10] : memref<?x28xf64>
    return
  }
}

