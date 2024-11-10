module {
  func.func @kernel_syr2k(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>, %arg6: memref<?x20xf64>) {
    %c5 = arith.constant 5 : index
    %c-4 = arith.constant -4 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c4 = arith.constant 4 : index
    %c0 = arith.constant 0 : index
    %c30 = arith.constant 30 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %c30 step %c1 {
      scf.for %arg8 = %c0 to %c1 step %c1 {
        %0 = arith.addi %arg7, %arg8 : index
        %1 = arith.addi %arg7, %arg8 : index
        %2 = arith.addi %1, %c1 : index
        %3 = arith.cmpi slt, %2, %c0 : index
        %4 = arith.subi %c-1, %2 : index
        %5 = arith.select %3, %4, %2 : index
        %6 = arith.divsi %5, %c4 : index
        %7 = arith.subi %c-1, %6 : index
        %8 = arith.select %3, %7, %6 : index
        scf.for %arg9 = %c0 to %8 step %c1 {
          %21 = arith.muli %arg9, %c4 : index
          %22 = memref.load %arg4[%0, %21] : memref<?x30xf64>
          %23 = arith.mulf %22, %arg3 : f64
          memref.store %23, %arg4[%0, %21] : memref<?x30xf64>
          %24 = arith.addi %21, %c1 : index
          %25 = memref.load %arg4[%0, %24] : memref<?x30xf64>
          %26 = arith.mulf %25, %arg3 : f64
          memref.store %26, %arg4[%0, %24] : memref<?x30xf64>
          %27 = arith.addi %21, %c2 : index
          %28 = memref.load %arg4[%0, %27] : memref<?x30xf64>
          %29 = arith.mulf %28, %arg3 : f64
          memref.store %29, %arg4[%0, %27] : memref<?x30xf64>
          %30 = arith.addi %21, %c3 : index
          %31 = memref.load %arg4[%0, %30] : memref<?x30xf64>
          %32 = arith.mulf %31, %arg3 : f64
          memref.store %32, %arg4[%0, %30] : memref<?x30xf64>
        }
        %9 = arith.addi %arg7, %arg8 : index
        %10 = arith.addi %arg7, %arg8 : index
        %11 = arith.addi %10, %c1 : index
        %12 = arith.cmpi slt, %11, %c0 : index
        %13 = arith.subi %c-1, %11 : index
        %14 = arith.select %12, %13, %11 : index
        %15 = arith.divsi %14, %c4 : index
        %16 = arith.subi %c-1, %15 : index
        %17 = arith.select %12, %16, %15 : index
        %18 = arith.muli %17, %c-4 : index
        %19 = arith.addi %9, %18 : index
        %20 = arith.addi %19, %c1 : index
        scf.for %arg9 = %c0 to %20 step %c1 {
          %21 = arith.addi %0, %c1 : index
          %22 = arith.cmpi slt, %21, %c0 : index
          %23 = arith.subi %c-1, %21 : index
          %24 = arith.select %22, %23, %21 : index
          %25 = arith.divsi %24, %c4 : index
          %26 = arith.subi %c-1, %25 : index
          %27 = arith.select %22, %26, %25 : index
          %28 = arith.muli %27, %c4 : index
          %29 = arith.addi %arg9, %28 : index
          %30 = memref.load %arg4[%0, %29] : memref<?x30xf64>
          %31 = arith.mulf %30, %arg3 : f64
          memref.store %31, %arg4[%0, %29] : memref<?x30xf64>
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

