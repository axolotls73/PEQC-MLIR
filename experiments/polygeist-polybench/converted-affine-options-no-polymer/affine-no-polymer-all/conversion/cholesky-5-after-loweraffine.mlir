module {
  func.func @kernel_cholesky(%arg0: i32, %arg1: memref<?x40xf64>) {
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %c0 to %c2 step %c1 {
      %c32 = arith.constant 32 : index
      %0 = arith.muli %arg2, %c32 : index
      %c0_0 = arith.constant 0 : index
      %c32_1 = arith.constant 32 : index
      %c-32 = arith.constant -32 : index
      %1 = arith.muli %arg2, %c-32 : index
      %c40 = arith.constant 40 : index
      %2 = arith.addi %1, %c40 : index
      %3 = arith.minsi %c32_1, %2 : index
      %c1_2 = arith.constant 1 : index
      scf.for %arg3 = %c0_0 to %3 step %c1_2 {
        %4 = arith.addi %0, %arg3 : index
        %c0_3 = arith.constant 0 : index
        %c32_4 = arith.constant 32 : index
        %5 = arith.muli %arg2, %c32_4 : index
        %6 = arith.addi %arg3, %5 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg4 = %c0_3 to %6 step %c1_5 {
          %c0_13 = arith.constant 0 : index
          %c4_14 = arith.constant 4 : index
          %c0_15 = arith.constant 0 : index
          %c-1_16 = arith.constant -1 : index
          %21 = arith.cmpi slt, %arg4, %c0_15 : index
          %22 = arith.subi %c-1_16, %arg4 : index
          %23 = arith.select %21, %22, %arg4 : index
          %24 = arith.divsi %23, %c4_14 : index
          %25 = arith.subi %c-1_16, %24 : index
          %26 = arith.select %21, %25, %24 : index
          %c1_17 = arith.constant 1 : index
          scf.for %arg5 = %c0_13 to %26 step %c1_17 {
            %c4_22 = arith.constant 4 : index
            %34 = arith.muli %arg5, %c4_22 : index
            %35 = memref.load %arg1[%4, %34] : memref<?x40xf64>
            %36 = memref.load %arg1[%arg4, %34] : memref<?x40xf64>
            %37 = arith.mulf %35, %36 : f64
            %38 = memref.load %arg1[%4, %arg4] : memref<?x40xf64>
            %39 = arith.subf %38, %37 : f64
            memref.store %39, %arg1[%4, %arg4] : memref<?x40xf64>
            %c1_23 = arith.constant 1 : index
            %40 = arith.addi %34, %c1_23 : index
            %41 = memref.load %arg1[%4, %40] : memref<?x40xf64>
            %42 = memref.load %arg1[%arg4, %40] : memref<?x40xf64>
            %43 = arith.mulf %41, %42 : f64
            %44 = memref.load %arg1[%4, %arg4] : memref<?x40xf64>
            %45 = arith.subf %44, %43 : f64
            memref.store %45, %arg1[%4, %arg4] : memref<?x40xf64>
            %c2_24 = arith.constant 2 : index
            %46 = arith.addi %34, %c2_24 : index
            %47 = memref.load %arg1[%4, %46] : memref<?x40xf64>
            %48 = memref.load %arg1[%arg4, %46] : memref<?x40xf64>
            %49 = arith.mulf %47, %48 : f64
            %50 = memref.load %arg1[%4, %arg4] : memref<?x40xf64>
            %51 = arith.subf %50, %49 : f64
            memref.store %51, %arg1[%4, %arg4] : memref<?x40xf64>
            %c3 = arith.constant 3 : index
            %52 = arith.addi %34, %c3 : index
            %53 = memref.load %arg1[%4, %52] : memref<?x40xf64>
            %54 = memref.load %arg1[%arg4, %52] : memref<?x40xf64>
            %55 = arith.mulf %53, %54 : f64
            %56 = memref.load %arg1[%4, %arg4] : memref<?x40xf64>
            %57 = arith.subf %56, %55 : f64
            memref.store %57, %arg1[%4, %arg4] : memref<?x40xf64>
          }
          %c0_18 = arith.constant 0 : index
          %c4_19 = arith.constant 4 : index
          %27 = arith.remsi %arg4, %c4_19 : index
          %c0_20 = arith.constant 0 : index
          %28 = arith.cmpi slt, %27, %c0_20 : index
          %29 = arith.addi %27, %c4_19 : index
          %30 = arith.select %28, %29, %27 : index
          %c1_21 = arith.constant 1 : index
          scf.for %arg5 = %c0_18 to %30 step %c1_21 {
            %c4_22 = arith.constant 4 : index
            %c0_23 = arith.constant 0 : index
            %c-1_24 = arith.constant -1 : index
            %34 = arith.cmpi slt, %arg4, %c0_23 : index
            %35 = arith.subi %c-1_24, %arg4 : index
            %36 = arith.select %34, %35, %arg4 : index
            %37 = arith.divsi %36, %c4_22 : index
            %38 = arith.subi %c-1_24, %37 : index
            %39 = arith.select %34, %38, %37 : index
            %c4_25 = arith.constant 4 : index
            %40 = arith.muli %39, %c4_25 : index
            %41 = arith.addi %arg5, %40 : index
            %42 = memref.load %arg1[%4, %41] : memref<?x40xf64>
            %43 = memref.load %arg1[%arg4, %41] : memref<?x40xf64>
            %44 = arith.mulf %42, %43 : f64
            %45 = memref.load %arg1[%4, %arg4] : memref<?x40xf64>
            %46 = arith.subf %45, %44 : f64
            memref.store %46, %arg1[%4, %arg4] : memref<?x40xf64>
          }
          %31 = memref.load %arg1[%arg4, %arg4] : memref<?x40xf64>
          %32 = memref.load %arg1[%4, %arg4] : memref<?x40xf64>
          %33 = arith.divf %32, %31 : f64
          memref.store %33, %arg1[%4, %arg4] : memref<?x40xf64>
        }
        %c0_6 = arith.constant 0 : index
        %c8 = arith.constant 8 : index
        %7 = arith.muli %arg2, %c8 : index
        %c4 = arith.constant 4 : index
        %c0_7 = arith.constant 0 : index
        %c-1 = arith.constant -1 : index
        %8 = arith.cmpi slt, %arg3, %c0_7 : index
        %9 = arith.subi %c-1, %arg3 : index
        %10 = arith.select %8, %9, %arg3 : index
        %11 = arith.divsi %10, %c4 : index
        %12 = arith.subi %c-1, %11 : index
        %13 = arith.select %8, %12, %11 : index
        %14 = arith.addi %7, %13 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg4 = %c0_6 to %14 step %c1_8 {
          %c4_13 = arith.constant 4 : index
          %21 = arith.muli %arg4, %c4_13 : index
          %22 = memref.load %arg1[%4, %21] : memref<?x40xf64>
          %23 = arith.mulf %22, %22 : f64
          %24 = memref.load %arg1[%4, %4] : memref<?x40xf64>
          %25 = arith.subf %24, %23 : f64
          memref.store %25, %arg1[%4, %4] : memref<?x40xf64>
          %c1_14 = arith.constant 1 : index
          %26 = arith.addi %21, %c1_14 : index
          %27 = memref.load %arg1[%4, %26] : memref<?x40xf64>
          %28 = arith.mulf %27, %27 : f64
          %29 = memref.load %arg1[%4, %4] : memref<?x40xf64>
          %30 = arith.subf %29, %28 : f64
          memref.store %30, %arg1[%4, %4] : memref<?x40xf64>
          %c2_15 = arith.constant 2 : index
          %31 = arith.addi %21, %c2_15 : index
          %32 = memref.load %arg1[%4, %31] : memref<?x40xf64>
          %33 = arith.mulf %32, %32 : f64
          %34 = memref.load %arg1[%4, %4] : memref<?x40xf64>
          %35 = arith.subf %34, %33 : f64
          memref.store %35, %arg1[%4, %4] : memref<?x40xf64>
          %c3 = arith.constant 3 : index
          %36 = arith.addi %21, %c3 : index
          %37 = memref.load %arg1[%4, %36] : memref<?x40xf64>
          %38 = arith.mulf %37, %37 : f64
          %39 = memref.load %arg1[%4, %4] : memref<?x40xf64>
          %40 = arith.subf %39, %38 : f64
          memref.store %40, %arg1[%4, %4] : memref<?x40xf64>
        }
        %c0_9 = arith.constant 0 : index
        %c4_10 = arith.constant 4 : index
        %15 = arith.remsi %4, %c4_10 : index
        %c0_11 = arith.constant 0 : index
        %16 = arith.cmpi slt, %15, %c0_11 : index
        %17 = arith.addi %15, %c4_10 : index
        %18 = arith.select %16, %17, %15 : index
        %c1_12 = arith.constant 1 : index
        scf.for %arg4 = %c0_9 to %18 step %c1_12 {
          %c4_13 = arith.constant 4 : index
          %c0_14 = arith.constant 0 : index
          %c-1_15 = arith.constant -1 : index
          %21 = arith.cmpi slt, %4, %c0_14 : index
          %22 = arith.subi %c-1_15, %4 : index
          %23 = arith.select %21, %22, %4 : index
          %24 = arith.divsi %23, %c4_13 : index
          %25 = arith.subi %c-1_15, %24 : index
          %26 = arith.select %21, %25, %24 : index
          %c4_16 = arith.constant 4 : index
          %27 = arith.muli %26, %c4_16 : index
          %28 = arith.addi %arg4, %27 : index
          %29 = memref.load %arg1[%4, %28] : memref<?x40xf64>
          %30 = arith.mulf %29, %29 : f64
          %31 = memref.load %arg1[%4, %4] : memref<?x40xf64>
          %32 = arith.subf %31, %30 : f64
          memref.store %32, %arg1[%4, %4] : memref<?x40xf64>
        }
        %19 = memref.load %arg1[%4, %4] : memref<?x40xf64>
        %20 = math.sqrt %19 : f64
        memref.store %20, %arg1[%4, %4] : memref<?x40xf64>
      }
    }
    return
  }
}

