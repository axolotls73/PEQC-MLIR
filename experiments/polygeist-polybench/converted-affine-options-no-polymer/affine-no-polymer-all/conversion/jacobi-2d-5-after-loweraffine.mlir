module {
  func.func @kernel_jacobi_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>) {
    %cst = arith.constant 2.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg4 = %c0 to %c20 step %c1 {
      %c0_0 = arith.constant 0 : index
      %c1_1 = arith.constant 1 : index
      %c1_2 = arith.constant 1 : index
      scf.parallel (%arg5) = (%c0_0) to (%c1_1) step (%c1_2) {
        %0 = arith.addi %arg4, %arg5 : index
        %c0_3 = arith.constant 0 : index
        %c28 = arith.constant 28 : index
        %c1_4 = arith.constant 1 : index
        scf.for %arg6 = %c0_3 to %c28 step %c1_4 {
          %c1_8 = arith.constant 1 : index
          %1 = arith.addi %arg6, %c1_8 : index
          %c0_9 = arith.constant 0 : index
          %c7 = arith.constant 7 : index
          %c1_10 = arith.constant 1 : index
          scf.for %arg7 = %c0_9 to %c7 step %c1_10 {
            %c4 = arith.constant 4 : index
            %2 = arith.muli %arg7, %c4 : index
            %c1_11 = arith.constant 1 : index
            %3 = arith.addi %2, %c1_11 : index
            %4 = memref.load %arg2[%1, %3] : memref<?x30xf64>
            %c-1 = arith.constant -1 : index
            %5 = arith.addi %3, %c-1 : index
            %6 = memref.load %arg2[%1, %5] : memref<?x30xf64>
            %7 = arith.addf %4, %6 : f64
            %c1_12 = arith.constant 1 : index
            %8 = arith.addi %3, %c1_12 : index
            %9 = memref.load %arg2[%1, %8] : memref<?x30xf64>
            %10 = arith.addf %7, %9 : f64
            %c1_13 = arith.constant 1 : index
            %11 = arith.addi %1, %c1_13 : index
            %12 = memref.load %arg2[%11, %3] : memref<?x30xf64>
            %13 = arith.addf %10, %12 : f64
            %c-1_14 = arith.constant -1 : index
            %14 = arith.addi %1, %c-1_14 : index
            %15 = memref.load %arg2[%14, %3] : memref<?x30xf64>
            %16 = arith.addf %13, %15 : f64
            %17 = arith.mulf %16, %cst : f64
            memref.store %17, %arg3[%1, %3] : memref<?x30xf64>
            %c1_15 = arith.constant 1 : index
            %18 = arith.addi %3, %c1_15 : index
            %19 = memref.load %arg2[%1, %18] : memref<?x30xf64>
            %c-1_16 = arith.constant -1 : index
            %20 = arith.addi %18, %c-1_16 : index
            %21 = memref.load %arg2[%1, %20] : memref<?x30xf64>
            %22 = arith.addf %19, %21 : f64
            %c1_17 = arith.constant 1 : index
            %23 = arith.addi %18, %c1_17 : index
            %24 = memref.load %arg2[%1, %23] : memref<?x30xf64>
            %25 = arith.addf %22, %24 : f64
            %c1_18 = arith.constant 1 : index
            %26 = arith.addi %1, %c1_18 : index
            %27 = memref.load %arg2[%26, %18] : memref<?x30xf64>
            %28 = arith.addf %25, %27 : f64
            %c-1_19 = arith.constant -1 : index
            %29 = arith.addi %1, %c-1_19 : index
            %30 = memref.load %arg2[%29, %18] : memref<?x30xf64>
            %31 = arith.addf %28, %30 : f64
            %32 = arith.mulf %31, %cst : f64
            memref.store %32, %arg3[%1, %18] : memref<?x30xf64>
            %c2 = arith.constant 2 : index
            %33 = arith.addi %3, %c2 : index
            %34 = memref.load %arg2[%1, %33] : memref<?x30xf64>
            %c-1_20 = arith.constant -1 : index
            %35 = arith.addi %33, %c-1_20 : index
            %36 = memref.load %arg2[%1, %35] : memref<?x30xf64>
            %37 = arith.addf %34, %36 : f64
            %c1_21 = arith.constant 1 : index
            %38 = arith.addi %33, %c1_21 : index
            %39 = memref.load %arg2[%1, %38] : memref<?x30xf64>
            %40 = arith.addf %37, %39 : f64
            %c1_22 = arith.constant 1 : index
            %41 = arith.addi %1, %c1_22 : index
            %42 = memref.load %arg2[%41, %33] : memref<?x30xf64>
            %43 = arith.addf %40, %42 : f64
            %c-1_23 = arith.constant -1 : index
            %44 = arith.addi %1, %c-1_23 : index
            %45 = memref.load %arg2[%44, %33] : memref<?x30xf64>
            %46 = arith.addf %43, %45 : f64
            %47 = arith.mulf %46, %cst : f64
            memref.store %47, %arg3[%1, %33] : memref<?x30xf64>
            %c3 = arith.constant 3 : index
            %48 = arith.addi %3, %c3 : index
            %49 = memref.load %arg2[%1, %48] : memref<?x30xf64>
            %c-1_24 = arith.constant -1 : index
            %50 = arith.addi %48, %c-1_24 : index
            %51 = memref.load %arg2[%1, %50] : memref<?x30xf64>
            %52 = arith.addf %49, %51 : f64
            %c1_25 = arith.constant 1 : index
            %53 = arith.addi %48, %c1_25 : index
            %54 = memref.load %arg2[%1, %53] : memref<?x30xf64>
            %55 = arith.addf %52, %54 : f64
            %c1_26 = arith.constant 1 : index
            %56 = arith.addi %1, %c1_26 : index
            %57 = memref.load %arg2[%56, %48] : memref<?x30xf64>
            %58 = arith.addf %55, %57 : f64
            %c-1_27 = arith.constant -1 : index
            %59 = arith.addi %1, %c-1_27 : index
            %60 = memref.load %arg2[%59, %48] : memref<?x30xf64>
            %61 = arith.addf %58, %60 : f64
            %62 = arith.mulf %61, %cst : f64
            memref.store %62, %arg3[%1, %48] : memref<?x30xf64>
          }
        }
        %c0_5 = arith.constant 0 : index
        %c28_6 = arith.constant 28 : index
        %c1_7 = arith.constant 1 : index
        scf.for %arg6 = %c0_5 to %c28_6 step %c1_7 {
          %c1_8 = arith.constant 1 : index
          %1 = arith.addi %arg6, %c1_8 : index
          %c0_9 = arith.constant 0 : index
          %c7 = arith.constant 7 : index
          %c1_10 = arith.constant 1 : index
          scf.for %arg7 = %c0_9 to %c7 step %c1_10 {
            %c4 = arith.constant 4 : index
            %2 = arith.muli %arg7, %c4 : index
            %c1_11 = arith.constant 1 : index
            %3 = arith.addi %2, %c1_11 : index
            %4 = memref.load %arg3[%1, %3] : memref<?x30xf64>
            %c-1 = arith.constant -1 : index
            %5 = arith.addi %3, %c-1 : index
            %6 = memref.load %arg3[%1, %5] : memref<?x30xf64>
            %7 = arith.addf %4, %6 : f64
            %c1_12 = arith.constant 1 : index
            %8 = arith.addi %3, %c1_12 : index
            %9 = memref.load %arg3[%1, %8] : memref<?x30xf64>
            %10 = arith.addf %7, %9 : f64
            %c1_13 = arith.constant 1 : index
            %11 = arith.addi %1, %c1_13 : index
            %12 = memref.load %arg3[%11, %3] : memref<?x30xf64>
            %13 = arith.addf %10, %12 : f64
            %c-1_14 = arith.constant -1 : index
            %14 = arith.addi %1, %c-1_14 : index
            %15 = memref.load %arg3[%14, %3] : memref<?x30xf64>
            %16 = arith.addf %13, %15 : f64
            %17 = arith.mulf %16, %cst : f64
            memref.store %17, %arg2[%1, %3] : memref<?x30xf64>
            %c1_15 = arith.constant 1 : index
            %18 = arith.addi %3, %c1_15 : index
            %19 = memref.load %arg3[%1, %18] : memref<?x30xf64>
            %c-1_16 = arith.constant -1 : index
            %20 = arith.addi %18, %c-1_16 : index
            %21 = memref.load %arg3[%1, %20] : memref<?x30xf64>
            %22 = arith.addf %19, %21 : f64
            %c1_17 = arith.constant 1 : index
            %23 = arith.addi %18, %c1_17 : index
            %24 = memref.load %arg3[%1, %23] : memref<?x30xf64>
            %25 = arith.addf %22, %24 : f64
            %c1_18 = arith.constant 1 : index
            %26 = arith.addi %1, %c1_18 : index
            %27 = memref.load %arg3[%26, %18] : memref<?x30xf64>
            %28 = arith.addf %25, %27 : f64
            %c-1_19 = arith.constant -1 : index
            %29 = arith.addi %1, %c-1_19 : index
            %30 = memref.load %arg3[%29, %18] : memref<?x30xf64>
            %31 = arith.addf %28, %30 : f64
            %32 = arith.mulf %31, %cst : f64
            memref.store %32, %arg2[%1, %18] : memref<?x30xf64>
            %c2 = arith.constant 2 : index
            %33 = arith.addi %3, %c2 : index
            %34 = memref.load %arg3[%1, %33] : memref<?x30xf64>
            %c-1_20 = arith.constant -1 : index
            %35 = arith.addi %33, %c-1_20 : index
            %36 = memref.load %arg3[%1, %35] : memref<?x30xf64>
            %37 = arith.addf %34, %36 : f64
            %c1_21 = arith.constant 1 : index
            %38 = arith.addi %33, %c1_21 : index
            %39 = memref.load %arg3[%1, %38] : memref<?x30xf64>
            %40 = arith.addf %37, %39 : f64
            %c1_22 = arith.constant 1 : index
            %41 = arith.addi %1, %c1_22 : index
            %42 = memref.load %arg3[%41, %33] : memref<?x30xf64>
            %43 = arith.addf %40, %42 : f64
            %c-1_23 = arith.constant -1 : index
            %44 = arith.addi %1, %c-1_23 : index
            %45 = memref.load %arg3[%44, %33] : memref<?x30xf64>
            %46 = arith.addf %43, %45 : f64
            %47 = arith.mulf %46, %cst : f64
            memref.store %47, %arg2[%1, %33] : memref<?x30xf64>
            %c3 = arith.constant 3 : index
            %48 = arith.addi %3, %c3 : index
            %49 = memref.load %arg3[%1, %48] : memref<?x30xf64>
            %c-1_24 = arith.constant -1 : index
            %50 = arith.addi %48, %c-1_24 : index
            %51 = memref.load %arg3[%1, %50] : memref<?x30xf64>
            %52 = arith.addf %49, %51 : f64
            %c1_25 = arith.constant 1 : index
            %53 = arith.addi %48, %c1_25 : index
            %54 = memref.load %arg3[%1, %53] : memref<?x30xf64>
            %55 = arith.addf %52, %54 : f64
            %c1_26 = arith.constant 1 : index
            %56 = arith.addi %1, %c1_26 : index
            %57 = memref.load %arg3[%56, %48] : memref<?x30xf64>
            %58 = arith.addf %55, %57 : f64
            %c-1_27 = arith.constant -1 : index
            %59 = arith.addi %1, %c-1_27 : index
            %60 = memref.load %arg3[%59, %48] : memref<?x30xf64>
            %61 = arith.addf %58, %60 : f64
            %62 = arith.mulf %61, %cst : f64
            memref.store %62, %arg2[%1, %48] : memref<?x30xf64>
          }
        }
        scf.reduce 
      }
    }
    return
  }
}

