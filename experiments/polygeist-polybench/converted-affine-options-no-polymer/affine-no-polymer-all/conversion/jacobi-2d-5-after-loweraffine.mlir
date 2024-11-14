module {
  func.func @kernel_jacobi_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>) {
    %cst = arith.constant 2.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_0 = arith.constant 1 : index
    scf.parallel (%arg4) = (%c0) to (%c1) step (%c1_0) {
      %c32 = arith.constant 32 : index
      %0 = arith.muli %arg4, %c32 : index
      %c0_1 = arith.constant 0 : index
      %c20 = arith.constant 20 : index
      %c1_2 = arith.constant 1 : index
      scf.for %arg5 = %c0_1 to %c20 step %c1_2 {
        %1 = arith.addi %0, %arg5 : index
        %c0_3 = arith.constant 0 : index
        %c28 = arith.constant 28 : index
        %c1_4 = arith.constant 1 : index
        scf.for %arg6 = %c0_3 to %c28 step %c1_4 {
          %c1_8 = arith.constant 1 : index
          %2 = arith.addi %arg6, %c1_8 : index
          %c0_9 = arith.constant 0 : index
          %c7 = arith.constant 7 : index
          %c1_10 = arith.constant 1 : index
          scf.for %arg7 = %c0_9 to %c7 step %c1_10 {
            %c4 = arith.constant 4 : index
            %3 = arith.muli %arg7, %c4 : index
            %c1_11 = arith.constant 1 : index
            %4 = arith.addi %3, %c1_11 : index
            %5 = memref.load %arg2[%2, %4] : memref<?x30xf64>
            %c-1 = arith.constant -1 : index
            %6 = arith.addi %4, %c-1 : index
            %7 = memref.load %arg2[%2, %6] : memref<?x30xf64>
            %8 = arith.addf %5, %7 : f64
            %c1_12 = arith.constant 1 : index
            %9 = arith.addi %4, %c1_12 : index
            %10 = memref.load %arg2[%2, %9] : memref<?x30xf64>
            %11 = arith.addf %8, %10 : f64
            %c1_13 = arith.constant 1 : index
            %12 = arith.addi %2, %c1_13 : index
            %13 = memref.load %arg2[%12, %4] : memref<?x30xf64>
            %14 = arith.addf %11, %13 : f64
            %c-1_14 = arith.constant -1 : index
            %15 = arith.addi %2, %c-1_14 : index
            %16 = memref.load %arg2[%15, %4] : memref<?x30xf64>
            %17 = arith.addf %14, %16 : f64
            %18 = arith.mulf %17, %cst : f64
            memref.store %18, %arg3[%2, %4] : memref<?x30xf64>
            %c1_15 = arith.constant 1 : index
            %19 = arith.addi %4, %c1_15 : index
            %20 = memref.load %arg2[%2, %19] : memref<?x30xf64>
            %c-1_16 = arith.constant -1 : index
            %21 = arith.addi %19, %c-1_16 : index
            %22 = memref.load %arg2[%2, %21] : memref<?x30xf64>
            %23 = arith.addf %20, %22 : f64
            %c1_17 = arith.constant 1 : index
            %24 = arith.addi %19, %c1_17 : index
            %25 = memref.load %arg2[%2, %24] : memref<?x30xf64>
            %26 = arith.addf %23, %25 : f64
            %c1_18 = arith.constant 1 : index
            %27 = arith.addi %2, %c1_18 : index
            %28 = memref.load %arg2[%27, %19] : memref<?x30xf64>
            %29 = arith.addf %26, %28 : f64
            %c-1_19 = arith.constant -1 : index
            %30 = arith.addi %2, %c-1_19 : index
            %31 = memref.load %arg2[%30, %19] : memref<?x30xf64>
            %32 = arith.addf %29, %31 : f64
            %33 = arith.mulf %32, %cst : f64
            memref.store %33, %arg3[%2, %19] : memref<?x30xf64>
            %c2 = arith.constant 2 : index
            %34 = arith.addi %4, %c2 : index
            %35 = memref.load %arg2[%2, %34] : memref<?x30xf64>
            %c-1_20 = arith.constant -1 : index
            %36 = arith.addi %34, %c-1_20 : index
            %37 = memref.load %arg2[%2, %36] : memref<?x30xf64>
            %38 = arith.addf %35, %37 : f64
            %c1_21 = arith.constant 1 : index
            %39 = arith.addi %34, %c1_21 : index
            %40 = memref.load %arg2[%2, %39] : memref<?x30xf64>
            %41 = arith.addf %38, %40 : f64
            %c1_22 = arith.constant 1 : index
            %42 = arith.addi %2, %c1_22 : index
            %43 = memref.load %arg2[%42, %34] : memref<?x30xf64>
            %44 = arith.addf %41, %43 : f64
            %c-1_23 = arith.constant -1 : index
            %45 = arith.addi %2, %c-1_23 : index
            %46 = memref.load %arg2[%45, %34] : memref<?x30xf64>
            %47 = arith.addf %44, %46 : f64
            %48 = arith.mulf %47, %cst : f64
            memref.store %48, %arg3[%2, %34] : memref<?x30xf64>
            %c3 = arith.constant 3 : index
            %49 = arith.addi %4, %c3 : index
            %50 = memref.load %arg2[%2, %49] : memref<?x30xf64>
            %c-1_24 = arith.constant -1 : index
            %51 = arith.addi %49, %c-1_24 : index
            %52 = memref.load %arg2[%2, %51] : memref<?x30xf64>
            %53 = arith.addf %50, %52 : f64
            %c1_25 = arith.constant 1 : index
            %54 = arith.addi %49, %c1_25 : index
            %55 = memref.load %arg2[%2, %54] : memref<?x30xf64>
            %56 = arith.addf %53, %55 : f64
            %c1_26 = arith.constant 1 : index
            %57 = arith.addi %2, %c1_26 : index
            %58 = memref.load %arg2[%57, %49] : memref<?x30xf64>
            %59 = arith.addf %56, %58 : f64
            %c-1_27 = arith.constant -1 : index
            %60 = arith.addi %2, %c-1_27 : index
            %61 = memref.load %arg2[%60, %49] : memref<?x30xf64>
            %62 = arith.addf %59, %61 : f64
            %63 = arith.mulf %62, %cst : f64
            memref.store %63, %arg3[%2, %49] : memref<?x30xf64>
          }
        }
        %c0_5 = arith.constant 0 : index
        %c28_6 = arith.constant 28 : index
        %c1_7 = arith.constant 1 : index
        scf.for %arg6 = %c0_5 to %c28_6 step %c1_7 {
          %c1_8 = arith.constant 1 : index
          %2 = arith.addi %arg6, %c1_8 : index
          %c0_9 = arith.constant 0 : index
          %c7 = arith.constant 7 : index
          %c1_10 = arith.constant 1 : index
          scf.for %arg7 = %c0_9 to %c7 step %c1_10 {
            %c4 = arith.constant 4 : index
            %3 = arith.muli %arg7, %c4 : index
            %c1_11 = arith.constant 1 : index
            %4 = arith.addi %3, %c1_11 : index
            %5 = memref.load %arg3[%2, %4] : memref<?x30xf64>
            %c-1 = arith.constant -1 : index
            %6 = arith.addi %4, %c-1 : index
            %7 = memref.load %arg3[%2, %6] : memref<?x30xf64>
            %8 = arith.addf %5, %7 : f64
            %c1_12 = arith.constant 1 : index
            %9 = arith.addi %4, %c1_12 : index
            %10 = memref.load %arg3[%2, %9] : memref<?x30xf64>
            %11 = arith.addf %8, %10 : f64
            %c1_13 = arith.constant 1 : index
            %12 = arith.addi %2, %c1_13 : index
            %13 = memref.load %arg3[%12, %4] : memref<?x30xf64>
            %14 = arith.addf %11, %13 : f64
            %c-1_14 = arith.constant -1 : index
            %15 = arith.addi %2, %c-1_14 : index
            %16 = memref.load %arg3[%15, %4] : memref<?x30xf64>
            %17 = arith.addf %14, %16 : f64
            %18 = arith.mulf %17, %cst : f64
            memref.store %18, %arg2[%2, %4] : memref<?x30xf64>
            %c1_15 = arith.constant 1 : index
            %19 = arith.addi %4, %c1_15 : index
            %20 = memref.load %arg3[%2, %19] : memref<?x30xf64>
            %c-1_16 = arith.constant -1 : index
            %21 = arith.addi %19, %c-1_16 : index
            %22 = memref.load %arg3[%2, %21] : memref<?x30xf64>
            %23 = arith.addf %20, %22 : f64
            %c1_17 = arith.constant 1 : index
            %24 = arith.addi %19, %c1_17 : index
            %25 = memref.load %arg3[%2, %24] : memref<?x30xf64>
            %26 = arith.addf %23, %25 : f64
            %c1_18 = arith.constant 1 : index
            %27 = arith.addi %2, %c1_18 : index
            %28 = memref.load %arg3[%27, %19] : memref<?x30xf64>
            %29 = arith.addf %26, %28 : f64
            %c-1_19 = arith.constant -1 : index
            %30 = arith.addi %2, %c-1_19 : index
            %31 = memref.load %arg3[%30, %19] : memref<?x30xf64>
            %32 = arith.addf %29, %31 : f64
            %33 = arith.mulf %32, %cst : f64
            memref.store %33, %arg2[%2, %19] : memref<?x30xf64>
            %c2 = arith.constant 2 : index
            %34 = arith.addi %4, %c2 : index
            %35 = memref.load %arg3[%2, %34] : memref<?x30xf64>
            %c-1_20 = arith.constant -1 : index
            %36 = arith.addi %34, %c-1_20 : index
            %37 = memref.load %arg3[%2, %36] : memref<?x30xf64>
            %38 = arith.addf %35, %37 : f64
            %c1_21 = arith.constant 1 : index
            %39 = arith.addi %34, %c1_21 : index
            %40 = memref.load %arg3[%2, %39] : memref<?x30xf64>
            %41 = arith.addf %38, %40 : f64
            %c1_22 = arith.constant 1 : index
            %42 = arith.addi %2, %c1_22 : index
            %43 = memref.load %arg3[%42, %34] : memref<?x30xf64>
            %44 = arith.addf %41, %43 : f64
            %c-1_23 = arith.constant -1 : index
            %45 = arith.addi %2, %c-1_23 : index
            %46 = memref.load %arg3[%45, %34] : memref<?x30xf64>
            %47 = arith.addf %44, %46 : f64
            %48 = arith.mulf %47, %cst : f64
            memref.store %48, %arg2[%2, %34] : memref<?x30xf64>
            %c3 = arith.constant 3 : index
            %49 = arith.addi %4, %c3 : index
            %50 = memref.load %arg3[%2, %49] : memref<?x30xf64>
            %c-1_24 = arith.constant -1 : index
            %51 = arith.addi %49, %c-1_24 : index
            %52 = memref.load %arg3[%2, %51] : memref<?x30xf64>
            %53 = arith.addf %50, %52 : f64
            %c1_25 = arith.constant 1 : index
            %54 = arith.addi %49, %c1_25 : index
            %55 = memref.load %arg3[%2, %54] : memref<?x30xf64>
            %56 = arith.addf %53, %55 : f64
            %c1_26 = arith.constant 1 : index
            %57 = arith.addi %2, %c1_26 : index
            %58 = memref.load %arg3[%57, %49] : memref<?x30xf64>
            %59 = arith.addf %56, %58 : f64
            %c-1_27 = arith.constant -1 : index
            %60 = arith.addi %2, %c-1_27 : index
            %61 = memref.load %arg3[%60, %49] : memref<?x30xf64>
            %62 = arith.addf %59, %61 : f64
            %63 = arith.mulf %62, %cst : f64
            memref.store %63, %arg2[%2, %49] : memref<?x30xf64>
          }
        }
      }
      scf.reduce 
    }
    return
  }
}

