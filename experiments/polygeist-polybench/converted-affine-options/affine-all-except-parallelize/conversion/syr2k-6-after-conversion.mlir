module {
  func.func @kernel_syr2k(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>, %arg6: memref<?x20xf64>) {
    %c5 = arith.constant 5 : index
    %c-4 = arith.constant -4 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c4 = arith.constant 4 : index
    %c30 = arith.constant 30 : index
    %c32 = arith.constant 32 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %c1 step %c1 {
      %0 = arith.muli %arg7, %c32 : index
      scf.for %arg8 = %c0 to %c30 step %c1 {
        %1 = arith.addi %0, %arg8 : index
        %2 = arith.muli %arg7, %c32 : index
        %3 = arith.addi %arg8, %2 : index
        %4 = arith.addi %3, %c1 : index
        %5 = arith.cmpi slt, %4, %c0 : index
        %6 = arith.subi %c-1, %4 : index
        %7 = arith.select %5, %6, %4 : index
        %8 = arith.divsi %7, %c4 : index
        %9 = arith.subi %c-1, %8 : index
        %10 = arith.select %5, %9, %8 : index
        scf.for %arg9 = %c0 to %10 step %c1 {
          %25 = arith.muli %arg9, %c4 : index
          %26 = memref.load %arg4[%1, %25] : memref<?x30xf64>
          %27 = arith.mulf %26, %arg3 : f64
          memref.store %27, %arg4[%1, %25] : memref<?x30xf64>
          %28 = arith.addi %25, %c1 : index
          %29 = memref.load %arg4[%1, %28] : memref<?x30xf64>
          %30 = arith.mulf %29, %arg3 : f64
          memref.store %30, %arg4[%1, %28] : memref<?x30xf64>
          %31 = arith.addi %25, %c2 : index
          %32 = memref.load %arg4[%1, %31] : memref<?x30xf64>
          %33 = arith.mulf %32, %arg3 : f64
          memref.store %33, %arg4[%1, %31] : memref<?x30xf64>
          %34 = arith.addi %25, %c3 : index
          %35 = memref.load %arg4[%1, %34] : memref<?x30xf64>
          %36 = arith.mulf %35, %arg3 : f64
          memref.store %36, %arg4[%1, %34] : memref<?x30xf64>
        }
        %11 = arith.muli %arg7, %c32 : index
        %12 = arith.addi %arg8, %11 : index
        %13 = arith.muli %arg7, %c32 : index
        %14 = arith.addi %arg8, %13 : index
        %15 = arith.addi %14, %c1 : index
        %16 = arith.cmpi slt, %15, %c0 : index
        %17 = arith.subi %c-1, %15 : index
        %18 = arith.select %16, %17, %15 : index
        %19 = arith.divsi %18, %c4 : index
        %20 = arith.subi %c-1, %19 : index
        %21 = arith.select %16, %20, %19 : index
        %22 = arith.muli %21, %c-4 : index
        %23 = arith.addi %12, %22 : index
        %24 = arith.addi %23, %c1 : index
        scf.for %arg9 = %c0 to %24 step %c1 {
          %25 = arith.addi %1, %c1 : index
          %26 = arith.cmpi slt, %25, %c0 : index
          %27 = arith.subi %c-1, %25 : index
          %28 = arith.select %26, %27, %25 : index
          %29 = arith.divsi %28, %c4 : index
          %30 = arith.subi %c-1, %29 : index
          %31 = arith.select %26, %30, %29 : index
          %32 = arith.muli %31, %c4 : index
          %33 = arith.addi %arg9, %32 : index
          %34 = memref.load %arg4[%1, %33] : memref<?x30xf64>
          %35 = arith.mulf %34, %arg3 : f64
          memref.store %35, %arg4[%1, %33] : memref<?x30xf64>
        }
      }
    }
    scf.for %arg7 = %c0 to %c30 step %c1 {
      %0 = arith.addi %arg7, %c1 : index
      scf.for %arg8 = %c0 to %0 step %c1 {
        scf.for %arg9 = %c0 to %c5 step %c1 {
          %1 = arith.muli %arg9, %c4 : index
          %2 = memref.load %arg4[%arg7, %arg8] : memref<?x30xf64>
          %3 = memref.load %arg5[%arg8, %1] : memref<?x20xf64>
          %4 = arith.mulf %3, %arg2 : f64
          %5 = memref.load %arg6[%arg7, %1] : memref<?x20xf64>
          %6 = arith.mulf %4, %5 : f64
          %7 = memref.load %arg6[%arg8, %1] : memref<?x20xf64>
          %8 = arith.mulf %7, %arg2 : f64
          %9 = memref.load %arg5[%arg7, %1] : memref<?x20xf64>
          %10 = arith.mulf %8, %9 : f64
          %11 = arith.addf %6, %10 : f64
          %12 = arith.addf %2, %11 : f64
          memref.store %12, %arg4[%arg7, %arg8] : memref<?x30xf64>
          %13 = arith.addi %1, %c1 : index
          %14 = memref.load %arg4[%arg7, %arg8] : memref<?x30xf64>
          %15 = memref.load %arg5[%arg8, %13] : memref<?x20xf64>
          %16 = arith.mulf %15, %arg2 : f64
          %17 = memref.load %arg6[%arg7, %13] : memref<?x20xf64>
          %18 = arith.mulf %16, %17 : f64
          %19 = memref.load %arg6[%arg8, %13] : memref<?x20xf64>
          %20 = arith.mulf %19, %arg2 : f64
          %21 = memref.load %arg5[%arg7, %13] : memref<?x20xf64>
          %22 = arith.mulf %20, %21 : f64
          %23 = arith.addf %18, %22 : f64
          %24 = arith.addf %14, %23 : f64
          memref.store %24, %arg4[%arg7, %arg8] : memref<?x30xf64>
          %25 = arith.addi %1, %c2 : index
          %26 = memref.load %arg4[%arg7, %arg8] : memref<?x30xf64>
          %27 = memref.load %arg5[%arg8, %25] : memref<?x20xf64>
          %28 = arith.mulf %27, %arg2 : f64
          %29 = memref.load %arg6[%arg7, %25] : memref<?x20xf64>
          %30 = arith.mulf %28, %29 : f64
          %31 = memref.load %arg6[%arg8, %25] : memref<?x20xf64>
          %32 = arith.mulf %31, %arg2 : f64
          %33 = memref.load %arg5[%arg7, %25] : memref<?x20xf64>
          %34 = arith.mulf %32, %33 : f64
          %35 = arith.addf %30, %34 : f64
          %36 = arith.addf %26, %35 : f64
          memref.store %36, %arg4[%arg7, %arg8] : memref<?x30xf64>
          %37 = arith.addi %1, %c3 : index
          %38 = memref.load %arg4[%arg7, %arg8] : memref<?x30xf64>
          %39 = memref.load %arg5[%arg8, %37] : memref<?x20xf64>
          %40 = arith.mulf %39, %arg2 : f64
          %41 = memref.load %arg6[%arg7, %37] : memref<?x20xf64>
          %42 = arith.mulf %40, %41 : f64
          %43 = memref.load %arg6[%arg8, %37] : memref<?x20xf64>
          %44 = arith.mulf %43, %arg2 : f64
          %45 = memref.load %arg5[%arg7, %37] : memref<?x20xf64>
          %46 = arith.mulf %44, %45 : f64
          %47 = arith.addf %42, %46 : f64
          %48 = arith.addf %38, %47 : f64
          memref.store %48, %arg4[%arg7, %arg8] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

