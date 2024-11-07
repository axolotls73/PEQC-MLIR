module {
  func.func @kernel_trisolv(%arg0: i32, %arg1: memref<?x40xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %c0 = arith.constant 0 : index
    %c40 = arith.constant 40 : index
    %c1 = arith.constant 1 : index
    scf.for %arg4 = %c0 to %c40 step %c1 {
      %0 = memref.load %arg3[%arg4] : memref<?xf64>
      memref.store %0, %arg2[%arg4] : memref<?xf64>
      %c0_0 = arith.constant 0 : index
      %c4 = arith.constant 4 : index
      %c0_1 = arith.constant 0 : index
      %c-1 = arith.constant -1 : index
      %1 = arith.cmpi slt, %arg4, %c0_1 : index
      %2 = arith.subi %c-1, %arg4 : index
      %3 = arith.select %1, %2, %arg4 : index
      %4 = arith.divsi %3, %c4 : index
      %5 = arith.subi %c-1, %4 : index
      %6 = arith.select %1, %5, %4 : index
      %c4_2 = arith.constant 4 : index
      %7 = arith.muli %6, %c4_2 : index
      %c4_3 = arith.constant 4 : index
      scf.for %arg5 = %c0_0 to %7 step %c4_3 {
        %18 = memref.load %arg1[%arg4, %arg5] : memref<?x40xf64>
        %19 = memref.load %arg2[%arg5] : memref<?xf64>
        %20 = arith.mulf %18, %19 : f64
        %21 = memref.load %arg2[%arg4] : memref<?xf64>
        %22 = arith.subf %21, %20 : f64
        memref.store %22, %arg2[%arg4] : memref<?xf64>
        %c1_9 = arith.constant 1 : index
        %23 = arith.addi %arg5, %c1_9 : index
        %24 = memref.load %arg1[%arg4, %23] : memref<?x40xf64>
        %25 = memref.load %arg2[%23] : memref<?xf64>
        %26 = arith.mulf %24, %25 : f64
        %27 = memref.load %arg2[%arg4] : memref<?xf64>
        %28 = arith.subf %27, %26 : f64
        memref.store %28, %arg2[%arg4] : memref<?xf64>
        %c2 = arith.constant 2 : index
        %29 = arith.addi %arg5, %c2 : index
        %30 = memref.load %arg1[%arg4, %29] : memref<?x40xf64>
        %31 = memref.load %arg2[%29] : memref<?xf64>
        %32 = arith.mulf %30, %31 : f64
        %33 = memref.load %arg2[%arg4] : memref<?xf64>
        %34 = arith.subf %33, %32 : f64
        memref.store %34, %arg2[%arg4] : memref<?xf64>
        %c3 = arith.constant 3 : index
        %35 = arith.addi %arg5, %c3 : index
        %36 = memref.load %arg1[%arg4, %35] : memref<?x40xf64>
        %37 = memref.load %arg2[%35] : memref<?xf64>
        %38 = arith.mulf %36, %37 : f64
        %39 = memref.load %arg2[%arg4] : memref<?xf64>
        %40 = arith.subf %39, %38 : f64
        memref.store %40, %arg2[%arg4] : memref<?xf64>
      }
      %c4_4 = arith.constant 4 : index
      %c0_5 = arith.constant 0 : index
      %c-1_6 = arith.constant -1 : index
      %8 = arith.cmpi slt, %arg4, %c0_5 : index
      %9 = arith.subi %c-1_6, %arg4 : index
      %10 = arith.select %8, %9, %arg4 : index
      %11 = arith.divsi %10, %c4_4 : index
      %12 = arith.subi %c-1_6, %11 : index
      %13 = arith.select %8, %12, %11 : index
      %c4_7 = arith.constant 4 : index
      %14 = arith.muli %13, %c4_7 : index
      %c1_8 = arith.constant 1 : index
      scf.for %arg5 = %14 to %arg4 step %c1_8 {
        %18 = memref.load %arg1[%arg4, %arg5] : memref<?x40xf64>
        %19 = memref.load %arg2[%arg5] : memref<?xf64>
        %20 = arith.mulf %18, %19 : f64
        %21 = memref.load %arg2[%arg4] : memref<?xf64>
        %22 = arith.subf %21, %20 : f64
        memref.store %22, %arg2[%arg4] : memref<?xf64>
      }
      %15 = memref.load %arg2[%arg4] : memref<?xf64>
      %16 = memref.load %arg1[%arg4, %arg4] : memref<?x40xf64>
      %17 = arith.divf %15, %16 : f64
      memref.store %17, %arg2[%arg4] : memref<?xf64>
    }
    return
  }
}

