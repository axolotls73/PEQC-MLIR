module {
  func.func @kernel_cholesky(%arg0: i32, %arg1: memref<?x40xf64>) {
    %c0 = arith.constant 0 : index
    %c40 = arith.constant 40 : index
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %c0 to %c40 step %c1 {
      %c0_0 = arith.constant 0 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg3 = %c0_0 to %arg2 step %c1_1 {
        %c0_11 = arith.constant 0 : index
        %c4_12 = arith.constant 4 : index
        %c0_13 = arith.constant 0 : index
        %c-1_14 = arith.constant -1 : index
        %16 = arith.cmpi slt, %arg3, %c0_13 : index
        %17 = arith.subi %c-1_14, %arg3 : index
        %18 = arith.select %16, %17, %arg3 : index
        %19 = arith.divsi %18, %c4_12 : index
        %20 = arith.subi %c-1_14, %19 : index
        %21 = arith.select %16, %20, %19 : index
        %c4_15 = arith.constant 4 : index
        %22 = arith.muli %21, %c4_15 : index
        %c4_16 = arith.constant 4 : index
        scf.for %arg4 = %c0_11 to %22 step %c4_16 {
          %33 = memref.load %arg1[%arg2, %arg4] : memref<?x40xf64>
          %34 = memref.load %arg1[%arg3, %arg4] : memref<?x40xf64>
          %35 = arith.mulf %33, %34 : f64
          %36 = memref.load %arg1[%arg2, %arg3] : memref<?x40xf64>
          %37 = arith.subf %36, %35 : f64
          memref.store %37, %arg1[%arg2, %arg3] : memref<?x40xf64>
          %c1_22 = arith.constant 1 : index
          %38 = arith.addi %arg4, %c1_22 : index
          %39 = memref.load %arg1[%arg2, %38] : memref<?x40xf64>
          %40 = memref.load %arg1[%arg3, %38] : memref<?x40xf64>
          %41 = arith.mulf %39, %40 : f64
          %42 = memref.load %arg1[%arg2, %arg3] : memref<?x40xf64>
          %43 = arith.subf %42, %41 : f64
          memref.store %43, %arg1[%arg2, %arg3] : memref<?x40xf64>
          %c2 = arith.constant 2 : index
          %44 = arith.addi %arg4, %c2 : index
          %45 = memref.load %arg1[%arg2, %44] : memref<?x40xf64>
          %46 = memref.load %arg1[%arg3, %44] : memref<?x40xf64>
          %47 = arith.mulf %45, %46 : f64
          %48 = memref.load %arg1[%arg2, %arg3] : memref<?x40xf64>
          %49 = arith.subf %48, %47 : f64
          memref.store %49, %arg1[%arg2, %arg3] : memref<?x40xf64>
          %c3 = arith.constant 3 : index
          %50 = arith.addi %arg4, %c3 : index
          %51 = memref.load %arg1[%arg2, %50] : memref<?x40xf64>
          %52 = memref.load %arg1[%arg3, %50] : memref<?x40xf64>
          %53 = arith.mulf %51, %52 : f64
          %54 = memref.load %arg1[%arg2, %arg3] : memref<?x40xf64>
          %55 = arith.subf %54, %53 : f64
          memref.store %55, %arg1[%arg2, %arg3] : memref<?x40xf64>
        }
        %c4_17 = arith.constant 4 : index
        %c0_18 = arith.constant 0 : index
        %c-1_19 = arith.constant -1 : index
        %23 = arith.cmpi slt, %arg3, %c0_18 : index
        %24 = arith.subi %c-1_19, %arg3 : index
        %25 = arith.select %23, %24, %arg3 : index
        %26 = arith.divsi %25, %c4_17 : index
        %27 = arith.subi %c-1_19, %26 : index
        %28 = arith.select %23, %27, %26 : index
        %c4_20 = arith.constant 4 : index
        %29 = arith.muli %28, %c4_20 : index
        %c1_21 = arith.constant 1 : index
        scf.for %arg4 = %29 to %arg3 step %c1_21 {
          %33 = memref.load %arg1[%arg2, %arg4] : memref<?x40xf64>
          %34 = memref.load %arg1[%arg3, %arg4] : memref<?x40xf64>
          %35 = arith.mulf %33, %34 : f64
          %36 = memref.load %arg1[%arg2, %arg3] : memref<?x40xf64>
          %37 = arith.subf %36, %35 : f64
          memref.store %37, %arg1[%arg2, %arg3] : memref<?x40xf64>
        }
        %30 = memref.load %arg1[%arg3, %arg3] : memref<?x40xf64>
        %31 = memref.load %arg1[%arg2, %arg3] : memref<?x40xf64>
        %32 = arith.divf %31, %30 : f64
        memref.store %32, %arg1[%arg2, %arg3] : memref<?x40xf64>
      }
      %c0_2 = arith.constant 0 : index
      %c4 = arith.constant 4 : index
      %c0_3 = arith.constant 0 : index
      %c-1 = arith.constant -1 : index
      %0 = arith.cmpi slt, %arg2, %c0_3 : index
      %1 = arith.subi %c-1, %arg2 : index
      %2 = arith.select %0, %1, %arg2 : index
      %3 = arith.divsi %2, %c4 : index
      %4 = arith.subi %c-1, %3 : index
      %5 = arith.select %0, %4, %3 : index
      %c4_4 = arith.constant 4 : index
      %6 = arith.muli %5, %c4_4 : index
      %c4_5 = arith.constant 4 : index
      scf.for %arg3 = %c0_2 to %6 step %c4_5 {
        %16 = memref.load %arg1[%arg2, %arg3] : memref<?x40xf64>
        %17 = arith.mulf %16, %16 : f64
        %18 = memref.load %arg1[%arg2, %arg2] : memref<?x40xf64>
        %19 = arith.subf %18, %17 : f64
        memref.store %19, %arg1[%arg2, %arg2] : memref<?x40xf64>
        %c1_11 = arith.constant 1 : index
        %20 = arith.addi %arg3, %c1_11 : index
        %21 = memref.load %arg1[%arg2, %20] : memref<?x40xf64>
        %22 = arith.mulf %21, %21 : f64
        %23 = memref.load %arg1[%arg2, %arg2] : memref<?x40xf64>
        %24 = arith.subf %23, %22 : f64
        memref.store %24, %arg1[%arg2, %arg2] : memref<?x40xf64>
        %c2 = arith.constant 2 : index
        %25 = arith.addi %arg3, %c2 : index
        %26 = memref.load %arg1[%arg2, %25] : memref<?x40xf64>
        %27 = arith.mulf %26, %26 : f64
        %28 = memref.load %arg1[%arg2, %arg2] : memref<?x40xf64>
        %29 = arith.subf %28, %27 : f64
        memref.store %29, %arg1[%arg2, %arg2] : memref<?x40xf64>
        %c3 = arith.constant 3 : index
        %30 = arith.addi %arg3, %c3 : index
        %31 = memref.load %arg1[%arg2, %30] : memref<?x40xf64>
        %32 = arith.mulf %31, %31 : f64
        %33 = memref.load %arg1[%arg2, %arg2] : memref<?x40xf64>
        %34 = arith.subf %33, %32 : f64
        memref.store %34, %arg1[%arg2, %arg2] : memref<?x40xf64>
      }
      %c4_6 = arith.constant 4 : index
      %c0_7 = arith.constant 0 : index
      %c-1_8 = arith.constant -1 : index
      %7 = arith.cmpi slt, %arg2, %c0_7 : index
      %8 = arith.subi %c-1_8, %arg2 : index
      %9 = arith.select %7, %8, %arg2 : index
      %10 = arith.divsi %9, %c4_6 : index
      %11 = arith.subi %c-1_8, %10 : index
      %12 = arith.select %7, %11, %10 : index
      %c4_9 = arith.constant 4 : index
      %13 = arith.muli %12, %c4_9 : index
      %c1_10 = arith.constant 1 : index
      scf.for %arg3 = %13 to %arg2 step %c1_10 {
        %16 = memref.load %arg1[%arg2, %arg3] : memref<?x40xf64>
        %17 = arith.mulf %16, %16 : f64
        %18 = memref.load %arg1[%arg2, %arg2] : memref<?x40xf64>
        %19 = arith.subf %18, %17 : f64
        memref.store %19, %arg1[%arg2, %arg2] : memref<?x40xf64>
      }
      %14 = memref.load %arg1[%arg2, %arg2] : memref<?x40xf64>
      %15 = math.sqrt %14 : f64
      memref.store %15, %arg1[%arg2, %arg2] : memref<?x40xf64>
    }
    return
  }
}

