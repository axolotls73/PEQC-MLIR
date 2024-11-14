module {
  func.func @kernel_trisolv(%arg0: i32, %arg1: memref<?x40xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.for %arg4 = %c0 to %c2 step %c1 {
      %c32 = arith.constant 32 : index
      %0 = arith.muli %arg4, %c32 : index
      %c0_0 = arith.constant 0 : index
      %c32_1 = arith.constant 32 : index
      %c-32 = arith.constant -32 : index
      %1 = arith.muli %arg4, %c-32 : index
      %c40 = arith.constant 40 : index
      %2 = arith.addi %1, %c40 : index
      %3 = arith.minsi %c32_1, %2 : index
      %c1_2 = arith.constant 1 : index
      scf.for %arg5 = %c0_0 to %3 step %c1_2 {
        %4 = arith.addi %0, %arg5 : index
        %5 = memref.load %arg3[%4] : memref<?xf64>
        memref.store %5, %arg2[%4] : memref<?xf64>
        %c0_3 = arith.constant 0 : index
        %c8 = arith.constant 8 : index
        %6 = arith.muli %arg4, %c8 : index
        %c4 = arith.constant 4 : index
        %c0_4 = arith.constant 0 : index
        %c-1 = arith.constant -1 : index
        %7 = arith.cmpi slt, %arg5, %c0_4 : index
        %8 = arith.subi %c-1, %arg5 : index
        %9 = arith.select %7, %8, %arg5 : index
        %10 = arith.divsi %9, %c4 : index
        %11 = arith.subi %c-1, %10 : index
        %12 = arith.select %7, %11, %10 : index
        %13 = arith.addi %6, %12 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg6 = %c0_3 to %13 step %c1_5 {
          %c4_10 = arith.constant 4 : index
          %21 = arith.muli %arg6, %c4_10 : index
          %22 = memref.load %arg1[%4, %21] : memref<?x40xf64>
          %23 = memref.load %arg2[%21] : memref<?xf64>
          %24 = arith.mulf %22, %23 : f64
          %25 = memref.load %arg2[%4] : memref<?xf64>
          %26 = arith.subf %25, %24 : f64
          memref.store %26, %arg2[%4] : memref<?xf64>
          %c1_11 = arith.constant 1 : index
          %27 = arith.addi %21, %c1_11 : index
          %28 = memref.load %arg1[%4, %27] : memref<?x40xf64>
          %29 = memref.load %arg2[%27] : memref<?xf64>
          %30 = arith.mulf %28, %29 : f64
          %31 = memref.load %arg2[%4] : memref<?xf64>
          %32 = arith.subf %31, %30 : f64
          memref.store %32, %arg2[%4] : memref<?xf64>
          %c2_12 = arith.constant 2 : index
          %33 = arith.addi %21, %c2_12 : index
          %34 = memref.load %arg1[%4, %33] : memref<?x40xf64>
          %35 = memref.load %arg2[%33] : memref<?xf64>
          %36 = arith.mulf %34, %35 : f64
          %37 = memref.load %arg2[%4] : memref<?xf64>
          %38 = arith.subf %37, %36 : f64
          memref.store %38, %arg2[%4] : memref<?xf64>
          %c3 = arith.constant 3 : index
          %39 = arith.addi %21, %c3 : index
          %40 = memref.load %arg1[%4, %39] : memref<?x40xf64>
          %41 = memref.load %arg2[%39] : memref<?xf64>
          %42 = arith.mulf %40, %41 : f64
          %43 = memref.load %arg2[%4] : memref<?xf64>
          %44 = arith.subf %43, %42 : f64
          memref.store %44, %arg2[%4] : memref<?xf64>
        }
        %c0_6 = arith.constant 0 : index
        %c4_7 = arith.constant 4 : index
        %14 = arith.remsi %4, %c4_7 : index
        %c0_8 = arith.constant 0 : index
        %15 = arith.cmpi slt, %14, %c0_8 : index
        %16 = arith.addi %14, %c4_7 : index
        %17 = arith.select %15, %16, %14 : index
        %c1_9 = arith.constant 1 : index
        scf.for %arg6 = %c0_6 to %17 step %c1_9 {
          %c4_10 = arith.constant 4 : index
          %c0_11 = arith.constant 0 : index
          %c-1_12 = arith.constant -1 : index
          %21 = arith.cmpi slt, %4, %c0_11 : index
          %22 = arith.subi %c-1_12, %4 : index
          %23 = arith.select %21, %22, %4 : index
          %24 = arith.divsi %23, %c4_10 : index
          %25 = arith.subi %c-1_12, %24 : index
          %26 = arith.select %21, %25, %24 : index
          %c4_13 = arith.constant 4 : index
          %27 = arith.muli %26, %c4_13 : index
          %28 = arith.addi %arg6, %27 : index
          %29 = memref.load %arg1[%4, %28] : memref<?x40xf64>
          %30 = memref.load %arg2[%28] : memref<?xf64>
          %31 = arith.mulf %29, %30 : f64
          %32 = memref.load %arg2[%4] : memref<?xf64>
          %33 = arith.subf %32, %31 : f64
          memref.store %33, %arg2[%4] : memref<?xf64>
        }
        %18 = memref.load %arg2[%4] : memref<?xf64>
        %19 = memref.load %arg1[%4, %4] : memref<?x40xf64>
        %20 = arith.divf %18, %19 : f64
        memref.store %20, %arg2[%4] : memref<?xf64>
      }
    }
    return
  }
}

