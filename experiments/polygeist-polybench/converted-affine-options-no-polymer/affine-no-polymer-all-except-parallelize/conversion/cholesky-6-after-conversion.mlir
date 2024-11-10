module {
  func.func @kernel_cholesky(%arg0: i32, %arg1: memref<?x40xf64>) {
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c4 = arith.constant 4 : index
    %c0 = arith.constant 0 : index
    %c40 = arith.constant 40 : index
    %c1 = arith.constant 1 : index
    scf.for %arg2 = %c0 to %c40 step %c1 {
      scf.for %arg3 = %c0 to %c1 step %c1 {
        %0 = arith.addi %arg2, %arg3 : index
        %1 = arith.addi %arg2, %arg3 : index
        scf.for %arg4 = %c0 to %1 step %c1 {
          %16 = arith.cmpi slt, %arg4, %c0 : index
          %17 = arith.subi %c-1, %arg4 : index
          %18 = arith.select %16, %17, %arg4 : index
          %19 = arith.divsi %18, %c4 : index
          %20 = arith.subi %c-1, %19 : index
          %21 = arith.select %16, %20, %19 : index
          scf.for %arg5 = %c0 to %21 step %c1 {
            %29 = arith.muli %arg5, %c4 : index
            %30 = memref.load %arg1[%0, %29] : memref<?x40xf64>
            %31 = memref.load %arg1[%arg4, %29] : memref<?x40xf64>
            %32 = arith.mulf %30, %31 : f64
            %33 = memref.load %arg1[%0, %arg4] : memref<?x40xf64>
            %34 = arith.subf %33, %32 : f64
            memref.store %34, %arg1[%0, %arg4] : memref<?x40xf64>
            %35 = arith.addi %29, %c1 : index
            %36 = memref.load %arg1[%0, %35] : memref<?x40xf64>
            %37 = memref.load %arg1[%arg4, %35] : memref<?x40xf64>
            %38 = arith.mulf %36, %37 : f64
            %39 = memref.load %arg1[%0, %arg4] : memref<?x40xf64>
            %40 = arith.subf %39, %38 : f64
            memref.store %40, %arg1[%0, %arg4] : memref<?x40xf64>
            %41 = arith.addi %29, %c2 : index
            %42 = memref.load %arg1[%0, %41] : memref<?x40xf64>
            %43 = memref.load %arg1[%arg4, %41] : memref<?x40xf64>
            %44 = arith.mulf %42, %43 : f64
            %45 = memref.load %arg1[%0, %arg4] : memref<?x40xf64>
            %46 = arith.subf %45, %44 : f64
            memref.store %46, %arg1[%0, %arg4] : memref<?x40xf64>
            %47 = arith.addi %29, %c3 : index
            %48 = memref.load %arg1[%0, %47] : memref<?x40xf64>
            %49 = memref.load %arg1[%arg4, %47] : memref<?x40xf64>
            %50 = arith.mulf %48, %49 : f64
            %51 = memref.load %arg1[%0, %arg4] : memref<?x40xf64>
            %52 = arith.subf %51, %50 : f64
            memref.store %52, %arg1[%0, %arg4] : memref<?x40xf64>
          }
          %22 = arith.remsi %arg4, %c4 : index
          %23 = arith.cmpi slt, %22, %c0 : index
          %24 = arith.addi %22, %c4 : index
          %25 = arith.select %23, %24, %22 : index
          scf.for %arg5 = %c0 to %25 step %c1 {
            %29 = arith.cmpi slt, %arg4, %c0 : index
            %30 = arith.subi %c-1, %arg4 : index
            %31 = arith.select %29, %30, %arg4 : index
            %32 = arith.divsi %31, %c4 : index
            %33 = arith.subi %c-1, %32 : index
            %34 = arith.select %29, %33, %32 : index
            %35 = arith.muli %34, %c4 : index
            %36 = arith.addi %arg5, %35 : index
            %37 = memref.load %arg1[%0, %36] : memref<?x40xf64>
            %38 = memref.load %arg1[%arg4, %36] : memref<?x40xf64>
            %39 = arith.mulf %37, %38 : f64
            %40 = memref.load %arg1[%0, %arg4] : memref<?x40xf64>
            %41 = arith.subf %40, %39 : f64
            memref.store %41, %arg1[%0, %arg4] : memref<?x40xf64>
          }
          %26 = memref.load %arg1[%arg4, %arg4] : memref<?x40xf64>
          %27 = memref.load %arg1[%0, %arg4] : memref<?x40xf64>
          %28 = arith.divf %27, %26 : f64
          memref.store %28, %arg1[%0, %arg4] : memref<?x40xf64>
        }
        %2 = arith.addi %arg2, %arg3 : index
        %3 = arith.cmpi slt, %2, %c0 : index
        %4 = arith.subi %c-1, %2 : index
        %5 = arith.select %3, %4, %2 : index
        %6 = arith.divsi %5, %c4 : index
        %7 = arith.subi %c-1, %6 : index
        %8 = arith.select %3, %7, %6 : index
        scf.for %arg4 = %c0 to %8 step %c1 {
          %16 = arith.muli %arg4, %c4 : index
          %17 = memref.load %arg1[%0, %16] : memref<?x40xf64>
          %18 = arith.mulf %17, %17 : f64
          %19 = memref.load %arg1[%0, %0] : memref<?x40xf64>
          %20 = arith.subf %19, %18 : f64
          memref.store %20, %arg1[%0, %0] : memref<?x40xf64>
          %21 = arith.addi %16, %c1 : index
          %22 = memref.load %arg1[%0, %21] : memref<?x40xf64>
          %23 = arith.mulf %22, %22 : f64
          %24 = memref.load %arg1[%0, %0] : memref<?x40xf64>
          %25 = arith.subf %24, %23 : f64
          memref.store %25, %arg1[%0, %0] : memref<?x40xf64>
          %26 = arith.addi %16, %c2 : index
          %27 = memref.load %arg1[%0, %26] : memref<?x40xf64>
          %28 = arith.mulf %27, %27 : f64
          %29 = memref.load %arg1[%0, %0] : memref<?x40xf64>
          %30 = arith.subf %29, %28 : f64
          memref.store %30, %arg1[%0, %0] : memref<?x40xf64>
          %31 = arith.addi %16, %c3 : index
          %32 = memref.load %arg1[%0, %31] : memref<?x40xf64>
          %33 = arith.mulf %32, %32 : f64
          %34 = memref.load %arg1[%0, %0] : memref<?x40xf64>
          %35 = arith.subf %34, %33 : f64
          memref.store %35, %arg1[%0, %0] : memref<?x40xf64>
        }
        %9 = arith.addi %arg2, %arg3 : index
        %10 = arith.remsi %9, %c4 : index
        %11 = arith.cmpi slt, %10, %c0 : index
        %12 = arith.addi %10, %c4 : index
        %13 = arith.select %11, %12, %10 : index
        scf.for %arg4 = %c0 to %13 step %c1 {
          %16 = arith.cmpi slt, %0, %c0 : index
          %17 = arith.subi %c-1, %0 : index
          %18 = arith.select %16, %17, %0 : index
          %19 = arith.divsi %18, %c4 : index
          %20 = arith.subi %c-1, %19 : index
          %21 = arith.select %16, %20, %19 : index
          %22 = arith.muli %21, %c4 : index
          %23 = arith.addi %arg4, %22 : index
          %24 = memref.load %arg1[%0, %23] : memref<?x40xf64>
          %25 = arith.mulf %24, %24 : f64
          %26 = memref.load %arg1[%0, %0] : memref<?x40xf64>
          %27 = arith.subf %26, %25 : f64
          memref.store %27, %arg1[%0, %0] : memref<?x40xf64>
        }
        %14 = memref.load %arg1[%0, %0] : memref<?x40xf64>
        %15 = math.sqrt %14 : f64
        memref.store %15, %arg1[%0, %0] : memref<?x40xf64>
      }
    }
    return
  }
}

