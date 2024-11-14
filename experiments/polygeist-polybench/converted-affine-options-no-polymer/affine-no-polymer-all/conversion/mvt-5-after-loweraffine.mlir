module {
  func.func @kernel_mvt(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?x40xf64>) {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_0 = arith.constant 1 : index
    scf.parallel (%arg6) = (%c0) to (%c1) step (%c1_0) {
      %c128 = arith.constant 128 : index
      %0 = arith.muli %arg6, %c128 : index
      %c0_3 = arith.constant 0 : index
      %c1_4 = arith.constant 1 : index
      %c1_5 = arith.constant 1 : index
      scf.for %arg7 = %c0_3 to %c1_4 step %c1_5 {
        %c128_6 = arith.constant 128 : index
        %1 = arith.muli %arg7, %c128_6 : index
        %c0_7 = arith.constant 0 : index
        %c10 = arith.constant 10 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg8 = %c0_7 to %c10 step %c1_8 {
          %c4 = arith.constant 4 : index
          %2 = arith.muli %arg8, %c4 : index
          %3 = arith.addi %0, %2 : index
          %c1_9 = arith.constant 1 : index
          %4 = arith.addi %3, %c1_9 : index
          %c2_10 = arith.constant 2 : index
          %5 = arith.addi %3, %c2_10 : index
          %c3 = arith.constant 3 : index
          %6 = arith.addi %3, %c3 : index
          %c0_11 = arith.constant 0 : index
          %c10_12 = arith.constant 10 : index
          %c1_13 = arith.constant 1 : index
          scf.for %arg9 = %c0_11 to %c10_12 step %c1_13 {
            %c4_14 = arith.constant 4 : index
            %7 = arith.muli %arg9, %c4_14 : index
            %8 = arith.addi %1, %7 : index
            %9 = memref.load %arg1[%3] : memref<?xf64>
            %10 = memref.load %arg5[%3, %8] : memref<?x40xf64>
            %11 = memref.load %arg3[%8] : memref<?xf64>
            %12 = arith.mulf %10, %11 : f64
            %13 = arith.addf %9, %12 : f64
            memref.store %13, %arg1[%3] : memref<?xf64>
            %c1_15 = arith.constant 1 : index
            %14 = arith.addi %8, %c1_15 : index
            %15 = memref.load %arg1[%3] : memref<?xf64>
            %16 = memref.load %arg5[%3, %14] : memref<?x40xf64>
            %17 = memref.load %arg3[%14] : memref<?xf64>
            %18 = arith.mulf %16, %17 : f64
            %19 = arith.addf %15, %18 : f64
            memref.store %19, %arg1[%3] : memref<?xf64>
            %c2_16 = arith.constant 2 : index
            %20 = arith.addi %8, %c2_16 : index
            %21 = memref.load %arg1[%3] : memref<?xf64>
            %22 = memref.load %arg5[%3, %20] : memref<?x40xf64>
            %23 = memref.load %arg3[%20] : memref<?xf64>
            %24 = arith.mulf %22, %23 : f64
            %25 = arith.addf %21, %24 : f64
            memref.store %25, %arg1[%3] : memref<?xf64>
            %c3_17 = arith.constant 3 : index
            %26 = arith.addi %8, %c3_17 : index
            %27 = memref.load %arg1[%3] : memref<?xf64>
            %28 = memref.load %arg5[%3, %26] : memref<?x40xf64>
            %29 = memref.load %arg3[%26] : memref<?xf64>
            %30 = arith.mulf %28, %29 : f64
            %31 = arith.addf %27, %30 : f64
            memref.store %31, %arg1[%3] : memref<?xf64>
            %32 = memref.load %arg1[%4] : memref<?xf64>
            %33 = memref.load %arg5[%4, %8] : memref<?x40xf64>
            %34 = memref.load %arg3[%8] : memref<?xf64>
            %35 = arith.mulf %33, %34 : f64
            %36 = arith.addf %32, %35 : f64
            memref.store %36, %arg1[%4] : memref<?xf64>
            %c1_18 = arith.constant 1 : index
            %37 = arith.addi %8, %c1_18 : index
            %38 = memref.load %arg1[%4] : memref<?xf64>
            %39 = memref.load %arg5[%4, %37] : memref<?x40xf64>
            %40 = memref.load %arg3[%37] : memref<?xf64>
            %41 = arith.mulf %39, %40 : f64
            %42 = arith.addf %38, %41 : f64
            memref.store %42, %arg1[%4] : memref<?xf64>
            %c2_19 = arith.constant 2 : index
            %43 = arith.addi %8, %c2_19 : index
            %44 = memref.load %arg1[%4] : memref<?xf64>
            %45 = memref.load %arg5[%4, %43] : memref<?x40xf64>
            %46 = memref.load %arg3[%43] : memref<?xf64>
            %47 = arith.mulf %45, %46 : f64
            %48 = arith.addf %44, %47 : f64
            memref.store %48, %arg1[%4] : memref<?xf64>
            %c3_20 = arith.constant 3 : index
            %49 = arith.addi %8, %c3_20 : index
            %50 = memref.load %arg1[%4] : memref<?xf64>
            %51 = memref.load %arg5[%4, %49] : memref<?x40xf64>
            %52 = memref.load %arg3[%49] : memref<?xf64>
            %53 = arith.mulf %51, %52 : f64
            %54 = arith.addf %50, %53 : f64
            memref.store %54, %arg1[%4] : memref<?xf64>
            %55 = memref.load %arg1[%5] : memref<?xf64>
            %56 = memref.load %arg5[%5, %8] : memref<?x40xf64>
            %57 = memref.load %arg3[%8] : memref<?xf64>
            %58 = arith.mulf %56, %57 : f64
            %59 = arith.addf %55, %58 : f64
            memref.store %59, %arg1[%5] : memref<?xf64>
            %c1_21 = arith.constant 1 : index
            %60 = arith.addi %8, %c1_21 : index
            %61 = memref.load %arg1[%5] : memref<?xf64>
            %62 = memref.load %arg5[%5, %60] : memref<?x40xf64>
            %63 = memref.load %arg3[%60] : memref<?xf64>
            %64 = arith.mulf %62, %63 : f64
            %65 = arith.addf %61, %64 : f64
            memref.store %65, %arg1[%5] : memref<?xf64>
            %c2_22 = arith.constant 2 : index
            %66 = arith.addi %8, %c2_22 : index
            %67 = memref.load %arg1[%5] : memref<?xf64>
            %68 = memref.load %arg5[%5, %66] : memref<?x40xf64>
            %69 = memref.load %arg3[%66] : memref<?xf64>
            %70 = arith.mulf %68, %69 : f64
            %71 = arith.addf %67, %70 : f64
            memref.store %71, %arg1[%5] : memref<?xf64>
            %c3_23 = arith.constant 3 : index
            %72 = arith.addi %8, %c3_23 : index
            %73 = memref.load %arg1[%5] : memref<?xf64>
            %74 = memref.load %arg5[%5, %72] : memref<?x40xf64>
            %75 = memref.load %arg3[%72] : memref<?xf64>
            %76 = arith.mulf %74, %75 : f64
            %77 = arith.addf %73, %76 : f64
            memref.store %77, %arg1[%5] : memref<?xf64>
            %78 = memref.load %arg1[%6] : memref<?xf64>
            %79 = memref.load %arg5[%6, %8] : memref<?x40xf64>
            %80 = memref.load %arg3[%8] : memref<?xf64>
            %81 = arith.mulf %79, %80 : f64
            %82 = arith.addf %78, %81 : f64
            memref.store %82, %arg1[%6] : memref<?xf64>
            %c1_24 = arith.constant 1 : index
            %83 = arith.addi %8, %c1_24 : index
            %84 = memref.load %arg1[%6] : memref<?xf64>
            %85 = memref.load %arg5[%6, %83] : memref<?x40xf64>
            %86 = memref.load %arg3[%83] : memref<?xf64>
            %87 = arith.mulf %85, %86 : f64
            %88 = arith.addf %84, %87 : f64
            memref.store %88, %arg1[%6] : memref<?xf64>
            %c2_25 = arith.constant 2 : index
            %89 = arith.addi %8, %c2_25 : index
            %90 = memref.load %arg1[%6] : memref<?xf64>
            %91 = memref.load %arg5[%6, %89] : memref<?x40xf64>
            %92 = memref.load %arg3[%89] : memref<?xf64>
            %93 = arith.mulf %91, %92 : f64
            %94 = arith.addf %90, %93 : f64
            memref.store %94, %arg1[%6] : memref<?xf64>
            %c3_26 = arith.constant 3 : index
            %95 = arith.addi %8, %c3_26 : index
            %96 = memref.load %arg1[%6] : memref<?xf64>
            %97 = memref.load %arg5[%6, %95] : memref<?x40xf64>
            %98 = memref.load %arg3[%95] : memref<?xf64>
            %99 = arith.mulf %97, %98 : f64
            %100 = arith.addf %96, %99 : f64
            memref.store %100, %arg1[%6] : memref<?xf64>
          }
        }
      }
      scf.reduce 
    }
    %c0_1 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1_2 = arith.constant 1 : index
    scf.parallel (%arg6) = (%c0_1) to (%c2) step (%c1_2) {
      %c32 = arith.constant 32 : index
      %0 = arith.muli %arg6, %c32 : index
      %c0_3 = arith.constant 0 : index
      %c1_4 = arith.constant 1 : index
      %c1_5 = arith.constant 1 : index
      scf.for %arg7 = %c0_3 to %c1_4 step %c1_5 {
        %c128 = arith.constant 128 : index
        %1 = arith.muli %arg7, %c128 : index
        %c0_6 = arith.constant 0 : index
        %c32_7 = arith.constant 32 : index
        %c-32 = arith.constant -32 : index
        %2 = arith.muli %arg6, %c-32 : index
        %c40 = arith.constant 40 : index
        %3 = arith.addi %2, %c40 : index
        %4 = arith.minsi %c32_7, %3 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg8 = %c0_6 to %4 step %c1_8 {
          %5 = arith.addi %0, %arg8 : index
          %c0_9 = arith.constant 0 : index
          %c10 = arith.constant 10 : index
          %c1_10 = arith.constant 1 : index
          scf.for %arg9 = %c0_9 to %c10 step %c1_10 {
            %c4 = arith.constant 4 : index
            %6 = arith.muli %arg9, %c4 : index
            %7 = arith.addi %1, %6 : index
            %8 = memref.load %arg2[%5] : memref<?xf64>
            %9 = memref.load %arg5[%7, %5] : memref<?x40xf64>
            %10 = memref.load %arg4[%7] : memref<?xf64>
            %11 = arith.mulf %9, %10 : f64
            %12 = arith.addf %8, %11 : f64
            memref.store %12, %arg2[%5] : memref<?xf64>
            %c1_11 = arith.constant 1 : index
            %13 = arith.addi %7, %c1_11 : index
            %14 = memref.load %arg2[%5] : memref<?xf64>
            %15 = memref.load %arg5[%13, %5] : memref<?x40xf64>
            %16 = memref.load %arg4[%13] : memref<?xf64>
            %17 = arith.mulf %15, %16 : f64
            %18 = arith.addf %14, %17 : f64
            memref.store %18, %arg2[%5] : memref<?xf64>
            %c2_12 = arith.constant 2 : index
            %19 = arith.addi %7, %c2_12 : index
            %20 = memref.load %arg2[%5] : memref<?xf64>
            %21 = memref.load %arg5[%19, %5] : memref<?x40xf64>
            %22 = memref.load %arg4[%19] : memref<?xf64>
            %23 = arith.mulf %21, %22 : f64
            %24 = arith.addf %20, %23 : f64
            memref.store %24, %arg2[%5] : memref<?xf64>
            %c3 = arith.constant 3 : index
            %25 = arith.addi %7, %c3 : index
            %26 = memref.load %arg2[%5] : memref<?xf64>
            %27 = memref.load %arg5[%25, %5] : memref<?x40xf64>
            %28 = memref.load %arg4[%25] : memref<?xf64>
            %29 = arith.mulf %27, %28 : f64
            %30 = arith.addf %26, %29 : f64
            memref.store %30, %arg2[%5] : memref<?xf64>
          }
        }
      }
      scf.reduce 
    }
    return
  }
}

