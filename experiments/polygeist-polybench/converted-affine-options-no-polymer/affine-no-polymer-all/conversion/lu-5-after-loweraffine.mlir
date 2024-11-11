module {
  func.func @kernel_lu(%arg0: i32, %arg1: memref<?x40xf64>) {
    %c0 = arith.constant 0 : index
    %c10 = arith.constant 10 : index
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %c0 to %c10 step %c1 {
      %c4 = arith.constant 4 : index
      %0 = arith.muli %arg2, %c4 : index
      %c0_0 = arith.constant 0 : index
      %c4_1 = arith.constant 4 : index
      %c1_2 = arith.constant 1 : index
      scf.for %arg3 = %c0_0 to %c4_1 step %c1_2 {
        %1 = arith.addi %0, %arg3 : index
        %c0_3 = arith.constant 0 : index
        %c4_4 = arith.constant 4 : index
        %2 = arith.muli %arg2, %c4_4 : index
        %3 = arith.addi %arg3, %2 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg4 = %c0_3 to %3 step %c1_5 {
          %c0_8 = arith.constant 0 : index
          %c4_9 = arith.constant 4 : index
          %c0_10 = arith.constant 0 : index
          %c-1_11 = arith.constant -1 : index
          %8 = arith.cmpi slt, %arg4, %c0_10 : index
          %9 = arith.subi %c-1_11, %arg4 : index
          %10 = arith.select %8, %9, %arg4 : index
          %11 = arith.divsi %10, %c4_9 : index
          %12 = arith.subi %c-1_11, %11 : index
          %13 = arith.select %8, %12, %11 : index
          %c1_12 = arith.constant 1 : index
          scf.for %arg5 = %c0_8 to %13 step %c1_12 {
            %c4_17 = arith.constant 4 : index
            %21 = arith.muli %arg5, %c4_17 : index
            %22 = memref.load %arg1[%1, %21] : memref<?x40xf64>
            %23 = memref.load %arg1[%21, %arg4] : memref<?x40xf64>
            %24 = arith.mulf %22, %23 : f64
            %25 = memref.load %arg1[%1, %arg4] : memref<?x40xf64>
            %26 = arith.subf %25, %24 : f64
            memref.store %26, %arg1[%1, %arg4] : memref<?x40xf64>
            %c1_18 = arith.constant 1 : index
            %27 = arith.addi %21, %c1_18 : index
            %28 = memref.load %arg1[%1, %27] : memref<?x40xf64>
            %29 = memref.load %arg1[%27, %arg4] : memref<?x40xf64>
            %30 = arith.mulf %28, %29 : f64
            %31 = memref.load %arg1[%1, %arg4] : memref<?x40xf64>
            %32 = arith.subf %31, %30 : f64
            memref.store %32, %arg1[%1, %arg4] : memref<?x40xf64>
            %c2 = arith.constant 2 : index
            %33 = arith.addi %21, %c2 : index
            %34 = memref.load %arg1[%1, %33] : memref<?x40xf64>
            %35 = memref.load %arg1[%33, %arg4] : memref<?x40xf64>
            %36 = arith.mulf %34, %35 : f64
            %37 = memref.load %arg1[%1, %arg4] : memref<?x40xf64>
            %38 = arith.subf %37, %36 : f64
            memref.store %38, %arg1[%1, %arg4] : memref<?x40xf64>
            %c3 = arith.constant 3 : index
            %39 = arith.addi %21, %c3 : index
            %40 = memref.load %arg1[%1, %39] : memref<?x40xf64>
            %41 = memref.load %arg1[%39, %arg4] : memref<?x40xf64>
            %42 = arith.mulf %40, %41 : f64
            %43 = memref.load %arg1[%1, %arg4] : memref<?x40xf64>
            %44 = arith.subf %43, %42 : f64
            memref.store %44, %arg1[%1, %arg4] : memref<?x40xf64>
          }
          %c0_13 = arith.constant 0 : index
          %c4_14 = arith.constant 4 : index
          %14 = arith.remsi %arg4, %c4_14 : index
          %c0_15 = arith.constant 0 : index
          %15 = arith.cmpi slt, %14, %c0_15 : index
          %16 = arith.addi %14, %c4_14 : index
          %17 = arith.select %15, %16, %14 : index
          %c1_16 = arith.constant 1 : index
          scf.for %arg5 = %c0_13 to %17 step %c1_16 {
            %c4_17 = arith.constant 4 : index
            %c0_18 = arith.constant 0 : index
            %c-1_19 = arith.constant -1 : index
            %21 = arith.cmpi slt, %arg4, %c0_18 : index
            %22 = arith.subi %c-1_19, %arg4 : index
            %23 = arith.select %21, %22, %arg4 : index
            %24 = arith.divsi %23, %c4_17 : index
            %25 = arith.subi %c-1_19, %24 : index
            %26 = arith.select %21, %25, %24 : index
            %c4_20 = arith.constant 4 : index
            %27 = arith.muli %26, %c4_20 : index
            %28 = arith.addi %arg5, %27 : index
            %29 = memref.load %arg1[%1, %28] : memref<?x40xf64>
            %30 = memref.load %arg1[%28, %arg4] : memref<?x40xf64>
            %31 = arith.mulf %29, %30 : f64
            %32 = memref.load %arg1[%1, %arg4] : memref<?x40xf64>
            %33 = arith.subf %32, %31 : f64
            memref.store %33, %arg1[%1, %arg4] : memref<?x40xf64>
          }
          %18 = memref.load %arg1[%arg4, %arg4] : memref<?x40xf64>
          %19 = memref.load %arg1[%1, %arg4] : memref<?x40xf64>
          %20 = arith.divf %19, %18 : f64
          memref.store %20, %arg1[%1, %arg4] : memref<?x40xf64>
        }
        %c0_6 = arith.constant 0 : index
        %c-1 = arith.constant -1 : index
        %4 = arith.muli %arg3, %c-1 : index
        %c-4 = arith.constant -4 : index
        %5 = arith.muli %arg2, %c-4 : index
        %6 = arith.addi %4, %5 : index
        %c40 = arith.constant 40 : index
        %7 = arith.addi %6, %c40 : index
        %c1_7 = arith.constant 1 : index
        scf.parallel (%arg4) = (%c0_6) to (%7) step (%c1_7) {
          %8 = arith.addi %1, %arg4 : index
          %c0_8 = arith.constant 0 : index
          %c4_9 = arith.constant 4 : index
          %c0_10 = arith.constant 0 : index
          %c-1_11 = arith.constant -1 : index
          %9 = arith.cmpi slt, %arg3, %c0_10 : index
          %10 = arith.subi %c-1_11, %arg3 : index
          %11 = arith.select %9, %10, %arg3 : index
          %12 = arith.divsi %11, %c4_9 : index
          %13 = arith.subi %c-1_11, %12 : index
          %14 = arith.select %9, %13, %12 : index
          %15 = arith.addi %arg2, %14 : index
          %c1_12 = arith.constant 1 : index
          scf.for %arg5 = %c0_8 to %15 step %c1_12 {
            %c4_17 = arith.constant 4 : index
            %20 = arith.muli %arg5, %c4_17 : index
            %21 = memref.load %arg1[%1, %20] : memref<?x40xf64>
            %22 = memref.load %arg1[%20, %8] : memref<?x40xf64>
            %23 = arith.mulf %21, %22 : f64
            %24 = memref.load %arg1[%1, %8] : memref<?x40xf64>
            %25 = arith.subf %24, %23 : f64
            memref.store %25, %arg1[%1, %8] : memref<?x40xf64>
            %c1_18 = arith.constant 1 : index
            %26 = arith.addi %20, %c1_18 : index
            %27 = memref.load %arg1[%1, %26] : memref<?x40xf64>
            %28 = memref.load %arg1[%26, %8] : memref<?x40xf64>
            %29 = arith.mulf %27, %28 : f64
            %30 = memref.load %arg1[%1, %8] : memref<?x40xf64>
            %31 = arith.subf %30, %29 : f64
            memref.store %31, %arg1[%1, %8] : memref<?x40xf64>
            %c2 = arith.constant 2 : index
            %32 = arith.addi %20, %c2 : index
            %33 = memref.load %arg1[%1, %32] : memref<?x40xf64>
            %34 = memref.load %arg1[%32, %8] : memref<?x40xf64>
            %35 = arith.mulf %33, %34 : f64
            %36 = memref.load %arg1[%1, %8] : memref<?x40xf64>
            %37 = arith.subf %36, %35 : f64
            memref.store %37, %arg1[%1, %8] : memref<?x40xf64>
            %c3 = arith.constant 3 : index
            %38 = arith.addi %20, %c3 : index
            %39 = memref.load %arg1[%1, %38] : memref<?x40xf64>
            %40 = memref.load %arg1[%38, %8] : memref<?x40xf64>
            %41 = arith.mulf %39, %40 : f64
            %42 = memref.load %arg1[%1, %8] : memref<?x40xf64>
            %43 = arith.subf %42, %41 : f64
            memref.store %43, %arg1[%1, %8] : memref<?x40xf64>
          }
          %c0_13 = arith.constant 0 : index
          %c4_14 = arith.constant 4 : index
          %16 = arith.remsi %1, %c4_14 : index
          %c0_15 = arith.constant 0 : index
          %17 = arith.cmpi slt, %16, %c0_15 : index
          %18 = arith.addi %16, %c4_14 : index
          %19 = arith.select %17, %18, %16 : index
          %c1_16 = arith.constant 1 : index
          scf.for %arg5 = %c0_13 to %19 step %c1_16 {
            %c4_17 = arith.constant 4 : index
            %c0_18 = arith.constant 0 : index
            %c-1_19 = arith.constant -1 : index
            %20 = arith.cmpi slt, %1, %c0_18 : index
            %21 = arith.subi %c-1_19, %1 : index
            %22 = arith.select %20, %21, %1 : index
            %23 = arith.divsi %22, %c4_17 : index
            %24 = arith.subi %c-1_19, %23 : index
            %25 = arith.select %20, %24, %23 : index
            %c4_20 = arith.constant 4 : index
            %26 = arith.muli %25, %c4_20 : index
            %27 = arith.addi %arg5, %26 : index
            %28 = memref.load %arg1[%1, %27] : memref<?x40xf64>
            %29 = memref.load %arg1[%27, %8] : memref<?x40xf64>
            %30 = arith.mulf %28, %29 : f64
            %31 = memref.load %arg1[%1, %8] : memref<?x40xf64>
            %32 = arith.subf %31, %30 : f64
            memref.store %32, %arg1[%1, %8] : memref<?x40xf64>
          }
          scf.reduce 
        }
      }
    }
    return
  }
}

