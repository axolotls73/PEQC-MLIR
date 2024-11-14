module {
  func.func @kernel_syrk(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>) {
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
    scf.for %arg6 = %c0 to %c1 step %c1 {
      %0 = arith.muli %arg6, %c32 : index
      scf.for %arg7 = %c0 to %c30 step %c1 {
        %1 = arith.addi %0, %arg7 : index
        %2 = arith.muli %arg6, %c32 : index
        %3 = arith.addi %arg7, %2 : index
        %4 = arith.addi %3, %c1 : index
        %5 = arith.cmpi slt, %4, %c0 : index
        %6 = arith.subi %c-1, %4 : index
        %7 = arith.select %5, %6, %4 : index
        %8 = arith.divsi %7, %c4 : index
        %9 = arith.subi %c-1, %8 : index
        %10 = arith.select %5, %9, %8 : index
        scf.for %arg8 = %c0 to %10 step %c1 {
          %25 = arith.muli %arg8, %c4 : index
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
        %11 = arith.muli %arg6, %c32 : index
        %12 = arith.addi %arg7, %11 : index
        %13 = arith.muli %arg6, %c32 : index
        %14 = arith.addi %arg7, %13 : index
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
        scf.for %arg8 = %c0 to %24 step %c1 {
          %25 = arith.addi %1, %c1 : index
          %26 = arith.cmpi slt, %25, %c0 : index
          %27 = arith.subi %c-1, %25 : index
          %28 = arith.select %26, %27, %25 : index
          %29 = arith.divsi %28, %c4 : index
          %30 = arith.subi %c-1, %29 : index
          %31 = arith.select %26, %30, %29 : index
          %32 = arith.muli %31, %c4 : index
          %33 = arith.addi %arg8, %32 : index
          %34 = memref.load %arg4[%1, %33] : memref<?x30xf64>
          %35 = arith.mulf %34, %arg3 : f64
          memref.store %35, %arg4[%1, %33] : memref<?x30xf64>
        }
      }
    }
    scf.for %arg6 = %c0 to %c30 step %c1 {
      %0 = arith.addi %arg6, %c1 : index
      scf.for %arg7 = %c0 to %0 step %c1 {
        scf.for %arg8 = %c0 to %c5 step %c1 {
          %1 = arith.muli %arg8, %c4 : index
          %2 = memref.load %arg4[%arg6, %arg7] : memref<?x30xf64>
          %3 = memref.load %arg5[%arg6, %1] : memref<?x20xf64>
          %4 = arith.mulf %arg2, %3 : f64
          %5 = memref.load %arg5[%arg7, %1] : memref<?x20xf64>
          %6 = arith.mulf %4, %5 : f64
          %7 = arith.addf %2, %6 : f64
          memref.store %7, %arg4[%arg6, %arg7] : memref<?x30xf64>
          %8 = arith.addi %1, %c1 : index
          %9 = memref.load %arg4[%arg6, %arg7] : memref<?x30xf64>
          %10 = memref.load %arg5[%arg6, %8] : memref<?x20xf64>
          %11 = arith.mulf %arg2, %10 : f64
          %12 = memref.load %arg5[%arg7, %8] : memref<?x20xf64>
          %13 = arith.mulf %11, %12 : f64
          %14 = arith.addf %9, %13 : f64
          memref.store %14, %arg4[%arg6, %arg7] : memref<?x30xf64>
          %15 = arith.addi %1, %c2 : index
          %16 = memref.load %arg4[%arg6, %arg7] : memref<?x30xf64>
          %17 = memref.load %arg5[%arg6, %15] : memref<?x20xf64>
          %18 = arith.mulf %arg2, %17 : f64
          %19 = memref.load %arg5[%arg7, %15] : memref<?x20xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = arith.addf %16, %20 : f64
          memref.store %21, %arg4[%arg6, %arg7] : memref<?x30xf64>
          %22 = arith.addi %1, %c3 : index
          %23 = memref.load %arg4[%arg6, %arg7] : memref<?x30xf64>
          %24 = memref.load %arg5[%arg6, %22] : memref<?x20xf64>
          %25 = arith.mulf %arg2, %24 : f64
          %26 = memref.load %arg5[%arg7, %22] : memref<?x20xf64>
          %27 = arith.mulf %25, %26 : f64
          %28 = arith.addf %23, %27 : f64
          memref.store %28, %arg4[%arg6, %arg7] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

