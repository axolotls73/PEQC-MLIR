module {
  func.func @kernel_lu(%arg0: i32, %arg1: memref<?x40xf64>) {
    %c0 = arith.constant 0 : index
    %c40 = arith.constant 40 : index
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %c0 to %c40 step %c1 {
      %c0_0 = arith.constant 0 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg3 = %c0_0 to %arg2 step %c1_1 {
        %c0_4 = arith.constant 0 : index
        %c4 = arith.constant 4 : index
        %c0_5 = arith.constant 0 : index
        %c-1 = arith.constant -1 : index
        %0 = arith.cmpi slt, %arg3, %c0_5 : index
        %1 = arith.subi %c-1, %arg3 : index
        %2 = arith.select %0, %1, %arg3 : index
        %3 = arith.divsi %2, %c4 : index
        %4 = arith.subi %c-1, %3 : index
        %5 = arith.select %0, %4, %3 : index
        %c4_6 = arith.constant 4 : index
        %6 = arith.muli %5, %c4_6 : index
        %c4_7 = arith.constant 4 : index
        scf.for %arg4 = %c0_4 to %6 step %c4_7 {
          %17 = memref.load %arg1[%arg2, %arg4] : memref<?x40xf64>
          %18 = memref.load %arg1[%arg4, %arg3] : memref<?x40xf64>
          %19 = arith.mulf %17, %18 : f64
          %20 = memref.load %arg1[%arg2, %arg3] : memref<?x40xf64>
          %21 = arith.subf %20, %19 : f64
          memref.store %21, %arg1[%arg2, %arg3] : memref<?x40xf64>
          %c1_13 = arith.constant 1 : index
          %22 = arith.addi %arg4, %c1_13 : index
          %23 = memref.load %arg1[%arg2, %22] : memref<?x40xf64>
          %24 = memref.load %arg1[%22, %arg3] : memref<?x40xf64>
          %25 = arith.mulf %23, %24 : f64
          %26 = memref.load %arg1[%arg2, %arg3] : memref<?x40xf64>
          %27 = arith.subf %26, %25 : f64
          memref.store %27, %arg1[%arg2, %arg3] : memref<?x40xf64>
          %c2 = arith.constant 2 : index
          %28 = arith.addi %arg4, %c2 : index
          %29 = memref.load %arg1[%arg2, %28] : memref<?x40xf64>
          %30 = memref.load %arg1[%28, %arg3] : memref<?x40xf64>
          %31 = arith.mulf %29, %30 : f64
          %32 = memref.load %arg1[%arg2, %arg3] : memref<?x40xf64>
          %33 = arith.subf %32, %31 : f64
          memref.store %33, %arg1[%arg2, %arg3] : memref<?x40xf64>
          %c3 = arith.constant 3 : index
          %34 = arith.addi %arg4, %c3 : index
          %35 = memref.load %arg1[%arg2, %34] : memref<?x40xf64>
          %36 = memref.load %arg1[%34, %arg3] : memref<?x40xf64>
          %37 = arith.mulf %35, %36 : f64
          %38 = memref.load %arg1[%arg2, %arg3] : memref<?x40xf64>
          %39 = arith.subf %38, %37 : f64
          memref.store %39, %arg1[%arg2, %arg3] : memref<?x40xf64>
        }
        %c4_8 = arith.constant 4 : index
        %c0_9 = arith.constant 0 : index
        %c-1_10 = arith.constant -1 : index
        %7 = arith.cmpi slt, %arg3, %c0_9 : index
        %8 = arith.subi %c-1_10, %arg3 : index
        %9 = arith.select %7, %8, %arg3 : index
        %10 = arith.divsi %9, %c4_8 : index
        %11 = arith.subi %c-1_10, %10 : index
        %12 = arith.select %7, %11, %10 : index
        %c4_11 = arith.constant 4 : index
        %13 = arith.muli %12, %c4_11 : index
        %c1_12 = arith.constant 1 : index
        scf.for %arg4 = %13 to %arg3 step %c1_12 {
          %17 = memref.load %arg1[%arg2, %arg4] : memref<?x40xf64>
          %18 = memref.load %arg1[%arg4, %arg3] : memref<?x40xf64>
          %19 = arith.mulf %17, %18 : f64
          %20 = memref.load %arg1[%arg2, %arg3] : memref<?x40xf64>
          %21 = arith.subf %20, %19 : f64
          memref.store %21, %arg1[%arg2, %arg3] : memref<?x40xf64>
        }
        %14 = memref.load %arg1[%arg3, %arg3] : memref<?x40xf64>
        %15 = memref.load %arg1[%arg2, %arg3] : memref<?x40xf64>
        %16 = arith.divf %15, %14 : f64
        memref.store %16, %arg1[%arg2, %arg3] : memref<?x40xf64>
      }
      %c40_2 = arith.constant 40 : index
      %c1_3 = arith.constant 1 : index
      scf.for %arg3 = %arg2 to %c40_2 step %c1_3 {
        %c0_4 = arith.constant 0 : index
        %c4 = arith.constant 4 : index
        %c0_5 = arith.constant 0 : index
        %c-1 = arith.constant -1 : index
        %0 = arith.cmpi slt, %arg2, %c0_5 : index
        %1 = arith.subi %c-1, %arg2 : index
        %2 = arith.select %0, %1, %arg2 : index
        %3 = arith.divsi %2, %c4 : index
        %4 = arith.subi %c-1, %3 : index
        %5 = arith.select %0, %4, %3 : index
        %c4_6 = arith.constant 4 : index
        %6 = arith.muli %5, %c4_6 : index
        %c4_7 = arith.constant 4 : index
        scf.for %arg4 = %c0_4 to %6 step %c4_7 {
          %14 = memref.load %arg1[%arg2, %arg4] : memref<?x40xf64>
          %15 = memref.load %arg1[%arg4, %arg3] : memref<?x40xf64>
          %16 = arith.mulf %14, %15 : f64
          %17 = memref.load %arg1[%arg2, %arg3] : memref<?x40xf64>
          %18 = arith.subf %17, %16 : f64
          memref.store %18, %arg1[%arg2, %arg3] : memref<?x40xf64>
          %c1_13 = arith.constant 1 : index
          %19 = arith.addi %arg4, %c1_13 : index
          %20 = memref.load %arg1[%arg2, %19] : memref<?x40xf64>
          %21 = memref.load %arg1[%19, %arg3] : memref<?x40xf64>
          %22 = arith.mulf %20, %21 : f64
          %23 = memref.load %arg1[%arg2, %arg3] : memref<?x40xf64>
          %24 = arith.subf %23, %22 : f64
          memref.store %24, %arg1[%arg2, %arg3] : memref<?x40xf64>
          %c2 = arith.constant 2 : index
          %25 = arith.addi %arg4, %c2 : index
          %26 = memref.load %arg1[%arg2, %25] : memref<?x40xf64>
          %27 = memref.load %arg1[%25, %arg3] : memref<?x40xf64>
          %28 = arith.mulf %26, %27 : f64
          %29 = memref.load %arg1[%arg2, %arg3] : memref<?x40xf64>
          %30 = arith.subf %29, %28 : f64
          memref.store %30, %arg1[%arg2, %arg3] : memref<?x40xf64>
          %c3 = arith.constant 3 : index
          %31 = arith.addi %arg4, %c3 : index
          %32 = memref.load %arg1[%arg2, %31] : memref<?x40xf64>
          %33 = memref.load %arg1[%31, %arg3] : memref<?x40xf64>
          %34 = arith.mulf %32, %33 : f64
          %35 = memref.load %arg1[%arg2, %arg3] : memref<?x40xf64>
          %36 = arith.subf %35, %34 : f64
          memref.store %36, %arg1[%arg2, %arg3] : memref<?x40xf64>
        }
        %c4_8 = arith.constant 4 : index
        %c0_9 = arith.constant 0 : index
        %c-1_10 = arith.constant -1 : index
        %7 = arith.cmpi slt, %arg2, %c0_9 : index
        %8 = arith.subi %c-1_10, %arg2 : index
        %9 = arith.select %7, %8, %arg2 : index
        %10 = arith.divsi %9, %c4_8 : index
        %11 = arith.subi %c-1_10, %10 : index
        %12 = arith.select %7, %11, %10 : index
        %c4_11 = arith.constant 4 : index
        %13 = arith.muli %12, %c4_11 : index
        %c1_12 = arith.constant 1 : index
        scf.for %arg4 = %13 to %arg2 step %c1_12 {
          %14 = memref.load %arg1[%arg2, %arg4] : memref<?x40xf64>
          %15 = memref.load %arg1[%arg4, %arg3] : memref<?x40xf64>
          %16 = arith.mulf %14, %15 : f64
          %17 = memref.load %arg1[%arg2, %arg3] : memref<?x40xf64>
          %18 = arith.subf %17, %16 : f64
          memref.store %18, %arg1[%arg2, %arg3] : memref<?x40xf64>
        }
      }
    }
    return
  }
}

