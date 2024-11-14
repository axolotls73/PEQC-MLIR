module {
  func.func @kernel_lu(%arg0: i32, %arg1: memref<?x40xf64>) {
    %c8 = arith.constant 8 : index
    %c3 = arith.constant 3 : index
    %c-1 = arith.constant -1 : index
    %c4 = arith.constant 4 : index
    %c40 = arith.constant 40 : index
    %c-32 = arith.constant -32 : index
    %c32 = arith.constant 32 : index
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %c0 to %c2 step %c1 {
      %0 = arith.muli %arg2, %c32 : index
      %1 = arith.muli %arg2, %c-32 : index
      %2 = arith.addi %1, %c40 : index
      %3 = arith.minsi %2, %c32 : index
      scf.for %arg3 = %c0 to %3 step %c1 {
        %4 = arith.addi %0, %arg3 : index
        %5 = arith.muli %arg2, %c32 : index
        %6 = arith.addi %arg3, %5 : index
        scf.for %arg4 = %c0 to %6 step %c1 {
          %11 = arith.cmpi slt, %arg4, %c0 : index
          %12 = arith.subi %c-1, %arg4 : index
          %13 = arith.select %11, %12, %arg4 : index
          %14 = arith.divsi %13, %c4 : index
          %15 = arith.subi %c-1, %14 : index
          %16 = arith.select %11, %15, %14 : index
          scf.for %arg5 = %c0 to %16 step %c1 {
            %24 = arith.muli %arg5, %c4 : index
            %25 = memref.load %arg1[%4, %24] : memref<?x40xf64>
            %26 = memref.load %arg1[%24, %arg4] : memref<?x40xf64>
            %27 = arith.mulf %25, %26 : f64
            %28 = memref.load %arg1[%4, %arg4] : memref<?x40xf64>
            %29 = arith.subf %28, %27 : f64
            memref.store %29, %arg1[%4, %arg4] : memref<?x40xf64>
            %30 = arith.addi %24, %c1 : index
            %31 = memref.load %arg1[%4, %30] : memref<?x40xf64>
            %32 = memref.load %arg1[%30, %arg4] : memref<?x40xf64>
            %33 = arith.mulf %31, %32 : f64
            %34 = memref.load %arg1[%4, %arg4] : memref<?x40xf64>
            %35 = arith.subf %34, %33 : f64
            memref.store %35, %arg1[%4, %arg4] : memref<?x40xf64>
            %36 = arith.addi %24, %c2 : index
            %37 = memref.load %arg1[%4, %36] : memref<?x40xf64>
            %38 = memref.load %arg1[%36, %arg4] : memref<?x40xf64>
            %39 = arith.mulf %37, %38 : f64
            %40 = memref.load %arg1[%4, %arg4] : memref<?x40xf64>
            %41 = arith.subf %40, %39 : f64
            memref.store %41, %arg1[%4, %arg4] : memref<?x40xf64>
            %42 = arith.addi %24, %c3 : index
            %43 = memref.load %arg1[%4, %42] : memref<?x40xf64>
            %44 = memref.load %arg1[%42, %arg4] : memref<?x40xf64>
            %45 = arith.mulf %43, %44 : f64
            %46 = memref.load %arg1[%4, %arg4] : memref<?x40xf64>
            %47 = arith.subf %46, %45 : f64
            memref.store %47, %arg1[%4, %arg4] : memref<?x40xf64>
          }
          %17 = arith.remsi %arg4, %c4 : index
          %18 = arith.cmpi slt, %17, %c0 : index
          %19 = arith.addi %17, %c4 : index
          %20 = arith.select %18, %19, %17 : index
          scf.for %arg5 = %c0 to %20 step %c1 {
            %24 = arith.cmpi slt, %arg4, %c0 : index
            %25 = arith.subi %c-1, %arg4 : index
            %26 = arith.select %24, %25, %arg4 : index
            %27 = arith.divsi %26, %c4 : index
            %28 = arith.subi %c-1, %27 : index
            %29 = arith.select %24, %28, %27 : index
            %30 = arith.muli %29, %c4 : index
            %31 = arith.addi %arg5, %30 : index
            %32 = memref.load %arg1[%4, %31] : memref<?x40xf64>
            %33 = memref.load %arg1[%31, %arg4] : memref<?x40xf64>
            %34 = arith.mulf %32, %33 : f64
            %35 = memref.load %arg1[%4, %arg4] : memref<?x40xf64>
            %36 = arith.subf %35, %34 : f64
            memref.store %36, %arg1[%4, %arg4] : memref<?x40xf64>
          }
          %21 = memref.load %arg1[%arg4, %arg4] : memref<?x40xf64>
          %22 = memref.load %arg1[%4, %arg4] : memref<?x40xf64>
          %23 = arith.divf %22, %21 : f64
          memref.store %23, %arg1[%4, %arg4] : memref<?x40xf64>
        }
        %7 = arith.muli %arg3, %c-1 : index
        %8 = arith.muli %arg2, %c-32 : index
        %9 = arith.addi %7, %8 : index
        %10 = arith.addi %9, %c40 : index
        scf.for %arg4 = %c0 to %10 step %c1 {
          %11 = arith.addi %4, %arg4 : index
          %12 = arith.muli %arg2, %c8 : index
          %13 = arith.cmpi slt, %arg3, %c0 : index
          %14 = arith.subi %c-1, %arg3 : index
          %15 = arith.select %13, %14, %arg3 : index
          %16 = arith.divsi %15, %c4 : index
          %17 = arith.subi %c-1, %16 : index
          %18 = arith.select %13, %17, %16 : index
          %19 = arith.addi %12, %18 : index
          scf.for %arg5 = %c0 to %19 step %c1 {
            %24 = arith.muli %arg5, %c4 : index
            %25 = memref.load %arg1[%4, %24] : memref<?x40xf64>
            %26 = memref.load %arg1[%24, %11] : memref<?x40xf64>
            %27 = arith.mulf %25, %26 : f64
            %28 = memref.load %arg1[%4, %11] : memref<?x40xf64>
            %29 = arith.subf %28, %27 : f64
            memref.store %29, %arg1[%4, %11] : memref<?x40xf64>
            %30 = arith.addi %24, %c1 : index
            %31 = memref.load %arg1[%4, %30] : memref<?x40xf64>
            %32 = memref.load %arg1[%30, %11] : memref<?x40xf64>
            %33 = arith.mulf %31, %32 : f64
            %34 = memref.load %arg1[%4, %11] : memref<?x40xf64>
            %35 = arith.subf %34, %33 : f64
            memref.store %35, %arg1[%4, %11] : memref<?x40xf64>
            %36 = arith.addi %24, %c2 : index
            %37 = memref.load %arg1[%4, %36] : memref<?x40xf64>
            %38 = memref.load %arg1[%36, %11] : memref<?x40xf64>
            %39 = arith.mulf %37, %38 : f64
            %40 = memref.load %arg1[%4, %11] : memref<?x40xf64>
            %41 = arith.subf %40, %39 : f64
            memref.store %41, %arg1[%4, %11] : memref<?x40xf64>
            %42 = arith.addi %24, %c3 : index
            %43 = memref.load %arg1[%4, %42] : memref<?x40xf64>
            %44 = memref.load %arg1[%42, %11] : memref<?x40xf64>
            %45 = arith.mulf %43, %44 : f64
            %46 = memref.load %arg1[%4, %11] : memref<?x40xf64>
            %47 = arith.subf %46, %45 : f64
            memref.store %47, %arg1[%4, %11] : memref<?x40xf64>
          }
          %20 = arith.remsi %4, %c4 : index
          %21 = arith.cmpi slt, %20, %c0 : index
          %22 = arith.addi %20, %c4 : index
          %23 = arith.select %21, %22, %20 : index
          scf.for %arg5 = %c0 to %23 step %c1 {
            %24 = arith.cmpi slt, %4, %c0 : index
            %25 = arith.subi %c-1, %4 : index
            %26 = arith.select %24, %25, %4 : index
            %27 = arith.divsi %26, %c4 : index
            %28 = arith.subi %c-1, %27 : index
            %29 = arith.select %24, %28, %27 : index
            %30 = arith.muli %29, %c4 : index
            %31 = arith.addi %arg5, %30 : index
            %32 = memref.load %arg1[%4, %31] : memref<?x40xf64>
            %33 = memref.load %arg1[%31, %11] : memref<?x40xf64>
            %34 = arith.mulf %32, %33 : f64
            %35 = memref.load %arg1[%4, %11] : memref<?x40xf64>
            %36 = arith.subf %35, %34 : f64
            memref.store %36, %arg1[%4, %11] : memref<?x40xf64>
          }
        }
      }
    }
    return
  }
}

