module {
  func.func @kernel_gemver(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x40xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>, %arg8: memref<?xf64>, %arg9: memref<?xf64>, %arg10: memref<?xf64>, %arg11: memref<?xf64>) {
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.for %arg12 = %c0 to %c2 step %c1 {
      %c0_6 = arith.constant 0 : index
      %c2_7 = arith.constant 2 : index
      %c1_8 = arith.constant 1 : index
      scf.for %arg13 = %c0_6 to %c2_7 step %c1_8 {
        %c0_9 = arith.constant 0 : index
        %c-32 = arith.constant -32 : index
        %0 = arith.muli %arg13, %c-32 : index
        %c40 = arith.constant 40 : index
        %1 = arith.addi %0, %c40 : index
        %c32 = arith.constant 32 : index
        %2 = arith.minsi %1, %c32 : index
        %c1_10 = arith.constant 1 : index
        scf.for %arg14 = %c0_9 to %2 step %c1_10 {
          %c32_11 = arith.constant 32 : index
          %3 = arith.muli %arg13, %c32_11 : index
          %4 = arith.addi %3, %arg14 : index
          %5 = memref.load %arg4[%4] : memref<?xf64>
          %6 = memref.load %arg6[%4] : memref<?xf64>
          %7 = memref.load %arg10[%4] : memref<?xf64>
          %8 = memref.load %arg4[%4] : memref<?xf64>
          %9 = memref.load %arg6[%4] : memref<?xf64>
          %10 = memref.load %arg10[%4] : memref<?xf64>
          %11 = memref.load %arg4[%4] : memref<?xf64>
          %12 = memref.load %arg6[%4] : memref<?xf64>
          %13 = memref.load %arg10[%4] : memref<?xf64>
          %14 = memref.load %arg4[%4] : memref<?xf64>
          %15 = memref.load %arg6[%4] : memref<?xf64>
          %16 = memref.load %arg10[%4] : memref<?xf64>
          %c0_12 = arith.constant 0 : index
          %c-8 = arith.constant -8 : index
          %17 = arith.muli %arg12, %c-8 : index
          %c10 = arith.constant 10 : index
          %18 = arith.addi %17, %c10 : index
          %c8 = arith.constant 8 : index
          %19 = arith.minsi %18, %c8 : index
          %c1_13 = arith.constant 1 : index
          scf.for %arg15 = %c0_12 to %19 step %c1_13 {
            %c32_14 = arith.constant 32 : index
            %20 = arith.muli %arg12, %c32_14 : index
            %c4 = arith.constant 4 : index
            %21 = arith.muli %arg15, %c4 : index
            %22 = arith.addi %20, %21 : index
            %23 = memref.load %arg3[%4, %22] : memref<?x40xf64>
            %24 = memref.load %arg5[%22] : memref<?xf64>
            %25 = arith.mulf %5, %24 : f64
            %26 = arith.addf %23, %25 : f64
            %27 = memref.load %arg7[%22] : memref<?xf64>
            %28 = arith.mulf %6, %27 : f64
            %29 = arith.addf %26, %28 : f64
            memref.store %29, %arg3[%4, %22] : memref<?x40xf64>
            %30 = memref.load %arg9[%22] : memref<?xf64>
            %31 = memref.load %arg3[%4, %22] : memref<?x40xf64>
            %32 = arith.mulf %arg2, %31 : f64
            %33 = arith.mulf %32, %7 : f64
            %34 = arith.addf %30, %33 : f64
            memref.store %34, %arg9[%22] : memref<?xf64>
            %c1_15 = arith.constant 1 : index
            %35 = arith.addi %22, %c1_15 : index
            %36 = memref.load %arg3[%4, %35] : memref<?x40xf64>
            %37 = memref.load %arg5[%35] : memref<?xf64>
            %38 = arith.mulf %8, %37 : f64
            %39 = arith.addf %36, %38 : f64
            %40 = memref.load %arg7[%35] : memref<?xf64>
            %41 = arith.mulf %9, %40 : f64
            %42 = arith.addf %39, %41 : f64
            memref.store %42, %arg3[%4, %35] : memref<?x40xf64>
            %43 = memref.load %arg9[%35] : memref<?xf64>
            %44 = memref.load %arg3[%4, %35] : memref<?x40xf64>
            %45 = arith.mulf %arg2, %44 : f64
            %46 = arith.mulf %45, %10 : f64
            %47 = arith.addf %43, %46 : f64
            memref.store %47, %arg9[%35] : memref<?xf64>
            %c2_16 = arith.constant 2 : index
            %48 = arith.addi %22, %c2_16 : index
            %49 = memref.load %arg3[%4, %48] : memref<?x40xf64>
            %50 = memref.load %arg5[%48] : memref<?xf64>
            %51 = arith.mulf %11, %50 : f64
            %52 = arith.addf %49, %51 : f64
            %53 = memref.load %arg7[%48] : memref<?xf64>
            %54 = arith.mulf %12, %53 : f64
            %55 = arith.addf %52, %54 : f64
            memref.store %55, %arg3[%4, %48] : memref<?x40xf64>
            %56 = memref.load %arg9[%48] : memref<?xf64>
            %57 = memref.load %arg3[%4, %48] : memref<?x40xf64>
            %58 = arith.mulf %arg2, %57 : f64
            %59 = arith.mulf %58, %13 : f64
            %60 = arith.addf %56, %59 : f64
            memref.store %60, %arg9[%48] : memref<?xf64>
            %c3 = arith.constant 3 : index
            %61 = arith.addi %22, %c3 : index
            %62 = memref.load %arg3[%4, %61] : memref<?x40xf64>
            %63 = memref.load %arg5[%61] : memref<?xf64>
            %64 = arith.mulf %14, %63 : f64
            %65 = arith.addf %62, %64 : f64
            %66 = memref.load %arg7[%61] : memref<?xf64>
            %67 = arith.mulf %15, %66 : f64
            %68 = arith.addf %65, %67 : f64
            memref.store %68, %arg3[%4, %61] : memref<?x40xf64>
            %69 = memref.load %arg9[%61] : memref<?xf64>
            %70 = memref.load %arg3[%4, %61] : memref<?x40xf64>
            %71 = arith.mulf %arg2, %70 : f64
            %72 = arith.mulf %71, %16 : f64
            %73 = arith.addf %69, %72 : f64
            memref.store %73, %arg9[%61] : memref<?xf64>
          }
        }
      }
    }
    %c0_0 = arith.constant 0 : index
    %c2_1 = arith.constant 2 : index
    %c1_2 = arith.constant 1 : index
    scf.for %arg12 = %c0_0 to %c2_1 step %c1_2 {
      %c0_6 = arith.constant 0 : index
      %c-8 = arith.constant -8 : index
      %0 = arith.muli %arg12, %c-8 : index
      %c10 = arith.constant 10 : index
      %1 = arith.addi %0, %c10 : index
      %c8 = arith.constant 8 : index
      %2 = arith.minsi %1, %c8 : index
      %c1_7 = arith.constant 1 : index
      scf.for %arg13 = %c0_6 to %2 step %c1_7 {
        %c32 = arith.constant 32 : index
        %3 = arith.muli %arg12, %c32 : index
        %c4 = arith.constant 4 : index
        %4 = arith.muli %arg13, %c4 : index
        %5 = arith.addi %3, %4 : index
        %6 = memref.load %arg9[%5] : memref<?xf64>
        %7 = memref.load %arg11[%5] : memref<?xf64>
        %8 = arith.addf %6, %7 : f64
        memref.store %8, %arg9[%5] : memref<?xf64>
        %c1_8 = arith.constant 1 : index
        %9 = arith.addi %5, %c1_8 : index
        %10 = memref.load %arg9[%9] : memref<?xf64>
        %11 = memref.load %arg11[%9] : memref<?xf64>
        %12 = arith.addf %10, %11 : f64
        memref.store %12, %arg9[%9] : memref<?xf64>
        %c2_9 = arith.constant 2 : index
        %13 = arith.addi %5, %c2_9 : index
        %14 = memref.load %arg9[%13] : memref<?xf64>
        %15 = memref.load %arg11[%13] : memref<?xf64>
        %16 = arith.addf %14, %15 : f64
        memref.store %16, %arg9[%13] : memref<?xf64>
        %c3 = arith.constant 3 : index
        %17 = arith.addi %5, %c3 : index
        %18 = memref.load %arg9[%17] : memref<?xf64>
        %19 = memref.load %arg11[%17] : memref<?xf64>
        %20 = arith.addf %18, %19 : f64
        memref.store %20, %arg9[%17] : memref<?xf64>
      }
    }
    %c0_3 = arith.constant 0 : index
    %c2_4 = arith.constant 2 : index
    %c1_5 = arith.constant 1 : index
    scf.parallel (%arg12) = (%c0_3) to (%c2_4) step (%c1_5) {
      %c0_6 = arith.constant 0 : index
      %c2_7 = arith.constant 2 : index
      %c1_8 = arith.constant 1 : index
      scf.for %arg13 = %c0_6 to %c2_7 step %c1_8 {
        %c32 = arith.constant 32 : index
        %0 = arith.muli %arg12, %c32 : index
        %c40 = arith.constant 40 : index
        %c32_9 = arith.constant 32 : index
        %1 = arith.muli %arg12, %c32_9 : index
        %c32_10 = arith.constant 32 : index
        %2 = arith.addi %1, %c32_10 : index
        %3 = arith.minsi %c40, %2 : index
        %c1_11 = arith.constant 1 : index
        scf.parallel (%arg14) = (%0) to (%3) step (%c1_11) {
          %c0_12 = arith.constant 0 : index
          %c-8 = arith.constant -8 : index
          %4 = arith.muli %arg13, %c-8 : index
          %c10 = arith.constant 10 : index
          %5 = arith.addi %4, %c10 : index
          %c8 = arith.constant 8 : index
          %6 = arith.minsi %5, %c8 : index
          %c1_13 = arith.constant 1 : index
          scf.for %arg15 = %c0_12 to %6 step %c1_13 {
            %c32_14 = arith.constant 32 : index
            %7 = arith.muli %arg13, %c32_14 : index
            %c4 = arith.constant 4 : index
            %8 = arith.muli %arg15, %c4 : index
            %9 = arith.addi %7, %8 : index
            %10 = memref.load %arg8[%arg14] : memref<?xf64>
            %11 = memref.load %arg3[%arg14, %9] : memref<?x40xf64>
            %12 = arith.mulf %arg1, %11 : f64
            %13 = memref.load %arg9[%9] : memref<?xf64>
            %14 = arith.mulf %12, %13 : f64
            %15 = arith.addf %10, %14 : f64
            memref.store %15, %arg8[%arg14] : memref<?xf64>
            %c1_15 = arith.constant 1 : index
            %16 = arith.addi %9, %c1_15 : index
            %17 = memref.load %arg8[%arg14] : memref<?xf64>
            %18 = memref.load %arg3[%arg14, %16] : memref<?x40xf64>
            %19 = arith.mulf %arg1, %18 : f64
            %20 = memref.load %arg9[%16] : memref<?xf64>
            %21 = arith.mulf %19, %20 : f64
            %22 = arith.addf %17, %21 : f64
            memref.store %22, %arg8[%arg14] : memref<?xf64>
            %c2_16 = arith.constant 2 : index
            %23 = arith.addi %9, %c2_16 : index
            %24 = memref.load %arg8[%arg14] : memref<?xf64>
            %25 = memref.load %arg3[%arg14, %23] : memref<?x40xf64>
            %26 = arith.mulf %arg1, %25 : f64
            %27 = memref.load %arg9[%23] : memref<?xf64>
            %28 = arith.mulf %26, %27 : f64
            %29 = arith.addf %24, %28 : f64
            memref.store %29, %arg8[%arg14] : memref<?xf64>
            %c3 = arith.constant 3 : index
            %30 = arith.addi %9, %c3 : index
            %31 = memref.load %arg8[%arg14] : memref<?xf64>
            %32 = memref.load %arg3[%arg14, %30] : memref<?x40xf64>
            %33 = arith.mulf %arg1, %32 : f64
            %34 = memref.load %arg9[%30] : memref<?xf64>
            %35 = arith.mulf %33, %34 : f64
            %36 = arith.addf %31, %35 : f64
            memref.store %36, %arg8[%arg14] : memref<?xf64>
          }
          scf.reduce 
        }
      }
      scf.reduce 
    }
    return
  }
}

