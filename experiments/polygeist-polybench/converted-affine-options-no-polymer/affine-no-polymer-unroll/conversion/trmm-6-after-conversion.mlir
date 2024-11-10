module {
  func.func @kernel_trmm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x20xf64>, %arg4: memref<?x30xf64>) {
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c19 = arith.constant 19 : index
    %c-1 = arith.constant -1 : index
    %c30 = arith.constant 30 : index
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg5 = %c0 to %c20 step %c1 {
      scf.for %arg6 = %c0 to %c30 step %c1 {
        %0 = arith.addi %arg5, %c1 : index
        %1 = arith.muli %arg5, %c-1 : index
        %2 = arith.addi %1, %c19 : index
        %3 = arith.cmpi slt, %2, %c0 : index
        %4 = arith.subi %c-1, %2 : index
        %5 = arith.select %3, %4, %2 : index
        %6 = arith.divsi %5, %c4 : index
        %7 = arith.subi %c-1, %6 : index
        %8 = arith.select %3, %7, %6 : index
        %9 = arith.muli %8, %c4 : index
        %10 = arith.addi %arg5, %9 : index
        %11 = arith.addi %10, %c1 : index
        scf.for %arg7 = %0 to %11 step %c4 {
          %25 = memref.load %arg3[%arg7, %arg5] : memref<?x20xf64>
          %26 = memref.load %arg4[%arg7, %arg6] : memref<?x30xf64>
          %27 = arith.mulf %25, %26 : f64
          %28 = memref.load %arg4[%arg5, %arg6] : memref<?x30xf64>
          %29 = arith.addf %28, %27 : f64
          memref.store %29, %arg4[%arg5, %arg6] : memref<?x30xf64>
          %30 = arith.addi %arg7, %c1 : index
          %31 = memref.load %arg3[%30, %arg5] : memref<?x20xf64>
          %32 = memref.load %arg4[%30, %arg6] : memref<?x30xf64>
          %33 = arith.mulf %31, %32 : f64
          %34 = memref.load %arg4[%arg5, %arg6] : memref<?x30xf64>
          %35 = arith.addf %34, %33 : f64
          memref.store %35, %arg4[%arg5, %arg6] : memref<?x30xf64>
          %36 = arith.addi %arg7, %c2 : index
          %37 = memref.load %arg3[%36, %arg5] : memref<?x20xf64>
          %38 = memref.load %arg4[%36, %arg6] : memref<?x30xf64>
          %39 = arith.mulf %37, %38 : f64
          %40 = memref.load %arg4[%arg5, %arg6] : memref<?x30xf64>
          %41 = arith.addf %40, %39 : f64
          memref.store %41, %arg4[%arg5, %arg6] : memref<?x30xf64>
          %42 = arith.addi %arg7, %c3 : index
          %43 = memref.load %arg3[%42, %arg5] : memref<?x20xf64>
          %44 = memref.load %arg4[%42, %arg6] : memref<?x30xf64>
          %45 = arith.mulf %43, %44 : f64
          %46 = memref.load %arg4[%arg5, %arg6] : memref<?x30xf64>
          %47 = arith.addf %46, %45 : f64
          memref.store %47, %arg4[%arg5, %arg6] : memref<?x30xf64>
        }
        %12 = arith.muli %arg5, %c-1 : index
        %13 = arith.addi %12, %c19 : index
        %14 = arith.cmpi slt, %13, %c0 : index
        %15 = arith.subi %c-1, %13 : index
        %16 = arith.select %14, %15, %13 : index
        %17 = arith.divsi %16, %c4 : index
        %18 = arith.subi %c-1, %17 : index
        %19 = arith.select %14, %18, %17 : index
        %20 = arith.muli %19, %c4 : index
        %21 = arith.addi %arg5, %20 : index
        %22 = arith.addi %21, %c1 : index
        scf.for %arg7 = %22 to %c20 step %c1 {
          %25 = memref.load %arg3[%arg7, %arg5] : memref<?x20xf64>
          %26 = memref.load %arg4[%arg7, %arg6] : memref<?x30xf64>
          %27 = arith.mulf %25, %26 : f64
          %28 = memref.load %arg4[%arg5, %arg6] : memref<?x30xf64>
          %29 = arith.addf %28, %27 : f64
          memref.store %29, %arg4[%arg5, %arg6] : memref<?x30xf64>
        }
        %23 = memref.load %arg4[%arg5, %arg6] : memref<?x30xf64>
        %24 = arith.mulf %arg2, %23 : f64
        memref.store %24, %arg4[%arg5, %arg6] : memref<?x30xf64>
      }
    }
    return
  }
}

