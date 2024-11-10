module {
  func.func @kernel_trisolv(%arg0: i32, %arg1: memref<?x40xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %c0 = arith.constant 0 : index
    %c40 = arith.constant 40 : index
    %c1 = arith.constant 1 : index
    scf.for %arg4 = %c0 to %c40 step %c1 {
      %c0_0 = arith.constant 0 : index
      %c1_1 = arith.constant 1 : index
      %c1_2 = arith.constant 1 : index
      scf.for %arg5 = %c0_0 to %c1_1 step %c1_2 {
        %0 = arith.addi %arg4, %arg5 : index
        %1 = memref.load %arg3[%0] : memref<?xf64>
        memref.store %1, %arg2[%0] : memref<?xf64>
        %c0_3 = arith.constant 0 : index
        %2 = arith.addi %arg4, %arg5 : index
        %c4 = arith.constant 4 : index
        %c0_4 = arith.constant 0 : index
        %c-1 = arith.constant -1 : index
        %3 = arith.cmpi slt, %2, %c0_4 : index
        %4 = arith.subi %c-1, %2 : index
        %5 = arith.select %3, %4, %2 : index
        %6 = arith.divsi %5, %c4 : index
        %7 = arith.subi %c-1, %6 : index
        %8 = arith.select %3, %7, %6 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg6 = %c0_3 to %8 step %c1_5 {
          %c4_10 = arith.constant 4 : index
          %17 = arith.muli %arg6, %c4_10 : index
          %18 = memref.load %arg1[%0, %17] : memref<?x40xf64>
          %19 = memref.load %arg2[%17] : memref<?xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = memref.load %arg2[%0] : memref<?xf64>
          %22 = arith.subf %21, %20 : f64
          memref.store %22, %arg2[%0] : memref<?xf64>
          %c1_11 = arith.constant 1 : index
          %23 = arith.addi %17, %c1_11 : index
          %24 = memref.load %arg1[%0, %23] : memref<?x40xf64>
          %25 = memref.load %arg2[%23] : memref<?xf64>
          %26 = arith.mulf %24, %25 : f64
          %27 = memref.load %arg2[%0] : memref<?xf64>
          %28 = arith.subf %27, %26 : f64
          memref.store %28, %arg2[%0] : memref<?xf64>
          %c2 = arith.constant 2 : index
          %29 = arith.addi %17, %c2 : index
          %30 = memref.load %arg1[%0, %29] : memref<?x40xf64>
          %31 = memref.load %arg2[%29] : memref<?xf64>
          %32 = arith.mulf %30, %31 : f64
          %33 = memref.load %arg2[%0] : memref<?xf64>
          %34 = arith.subf %33, %32 : f64
          memref.store %34, %arg2[%0] : memref<?xf64>
          %c3 = arith.constant 3 : index
          %35 = arith.addi %17, %c3 : index
          %36 = memref.load %arg1[%0, %35] : memref<?x40xf64>
          %37 = memref.load %arg2[%35] : memref<?xf64>
          %38 = arith.mulf %36, %37 : f64
          %39 = memref.load %arg2[%0] : memref<?xf64>
          %40 = arith.subf %39, %38 : f64
          memref.store %40, %arg2[%0] : memref<?xf64>
        }
        %c0_6 = arith.constant 0 : index
        %9 = arith.addi %arg4, %arg5 : index
        %c4_7 = arith.constant 4 : index
        %10 = arith.remsi %9, %c4_7 : index
        %c0_8 = arith.constant 0 : index
        %11 = arith.cmpi slt, %10, %c0_8 : index
        %12 = arith.addi %10, %c4_7 : index
        %13 = arith.select %11, %12, %10 : index
        %c1_9 = arith.constant 1 : index
        scf.for %arg6 = %c0_6 to %13 step %c1_9 {
          %c4_10 = arith.constant 4 : index
          %c0_11 = arith.constant 0 : index
          %c-1_12 = arith.constant -1 : index
          %17 = arith.cmpi slt, %0, %c0_11 : index
          %18 = arith.subi %c-1_12, %0 : index
          %19 = arith.select %17, %18, %0 : index
          %20 = arith.divsi %19, %c4_10 : index
          %21 = arith.subi %c-1_12, %20 : index
          %22 = arith.select %17, %21, %20 : index
          %c4_13 = arith.constant 4 : index
          %23 = arith.muli %22, %c4_13 : index
          %24 = arith.addi %arg6, %23 : index
          %25 = memref.load %arg1[%0, %24] : memref<?x40xf64>
          %26 = memref.load %arg2[%24] : memref<?xf64>
          %27 = arith.mulf %25, %26 : f64
          %28 = memref.load %arg2[%0] : memref<?xf64>
          %29 = arith.subf %28, %27 : f64
          memref.store %29, %arg2[%0] : memref<?xf64>
        }
        %14 = memref.load %arg2[%0] : memref<?xf64>
        %15 = memref.load %arg1[%0, %0] : memref<?x40xf64>
        %16 = arith.divf %14, %15 : f64
        memref.store %16, %arg2[%0] : memref<?xf64>
      }
    }
    return
  }
}

