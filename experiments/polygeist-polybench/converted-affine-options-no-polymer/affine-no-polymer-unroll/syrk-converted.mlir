module {
  func.func @kernel_syrk(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>) {
    %c20 = arith.constant 20 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c4 = arith.constant 4 : index
    %c0 = arith.constant 0 : index
    %c30 = arith.constant 30 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c30 step %c1 {
      %0 = arith.addi %arg6, %c1 : index
      %1 = arith.cmpi slt, %0, %c0 : index
      %2 = arith.subi %c-1, %0 : index
      %3 = arith.select %1, %2, %0 : index
      %4 = arith.divsi %3, %c4 : index
      %5 = arith.subi %c-1, %4 : index
      %6 = arith.select %1, %5, %4 : index
      %7 = arith.muli %6, %c4 : index
      scf.for %arg7 = %c0 to %7 step %c4 {
        %17 = memref.load %arg4[%arg6, %arg7] : memref<?x30xf64>
        %18 = arith.mulf %17, %arg3 : f64
        memref.store %18, %arg4[%arg6, %arg7] : memref<?x30xf64>
        %19 = arith.addi %arg7, %c1 : index
        %20 = memref.load %arg4[%arg6, %19] : memref<?x30xf64>
        %21 = arith.mulf %20, %arg3 : f64
        memref.store %21, %arg4[%arg6, %19] : memref<?x30xf64>
        %22 = arith.addi %arg7, %c2 : index
        %23 = memref.load %arg4[%arg6, %22] : memref<?x30xf64>
        %24 = arith.mulf %23, %arg3 : f64
        memref.store %24, %arg4[%arg6, %22] : memref<?x30xf64>
        %25 = arith.addi %arg7, %c3 : index
        %26 = memref.load %arg4[%arg6, %25] : memref<?x30xf64>
        %27 = arith.mulf %26, %arg3 : f64
        memref.store %27, %arg4[%arg6, %25] : memref<?x30xf64>
      }
      %8 = arith.addi %arg6, %c1 : index
      %9 = arith.cmpi slt, %8, %c0 : index
      %10 = arith.subi %c-1, %8 : index
      %11 = arith.select %9, %10, %8 : index
      %12 = arith.divsi %11, %c4 : index
      %13 = arith.subi %c-1, %12 : index
      %14 = arith.select %9, %13, %12 : index
      %15 = arith.muli %14, %c4 : index
      %16 = arith.addi %arg6, %c1 : index
      scf.for %arg7 = %15 to %16 step %c1 {
        %17 = memref.load %arg4[%arg6, %arg7] : memref<?x30xf64>
        %18 = arith.mulf %17, %arg3 : f64
        memref.store %18, %arg4[%arg6, %arg7] : memref<?x30xf64>
      }
      scf.for %arg7 = %c0 to %c20 step %c1 {
        %17 = arith.addi %arg6, %c1 : index
        %18 = arith.cmpi slt, %17, %c0 : index
        %19 = arith.subi %c-1, %17 : index
        %20 = arith.select %18, %19, %17 : index
        %21 = arith.divsi %20, %c4 : index
        %22 = arith.subi %c-1, %21 : index
        %23 = arith.select %18, %22, %21 : index
        %24 = arith.muli %23, %c4 : index
        scf.for %arg8 = %c0 to %24 step %c4 {
          %34 = memref.load %arg5[%arg6, %arg7] : memref<?x20xf64>
          %35 = arith.mulf %arg2, %34 : f64
          %36 = memref.load %arg5[%arg8, %arg7] : memref<?x20xf64>
          %37 = arith.mulf %35, %36 : f64
          %38 = memref.load %arg4[%arg6, %arg8] : memref<?x30xf64>
          %39 = arith.addf %38, %37 : f64
          memref.store %39, %arg4[%arg6, %arg8] : memref<?x30xf64>
          %40 = arith.addi %arg8, %c1 : index
          %41 = memref.load %arg5[%arg6, %arg7] : memref<?x20xf64>
          %42 = arith.mulf %arg2, %41 : f64
          %43 = memref.load %arg5[%40, %arg7] : memref<?x20xf64>
          %44 = arith.mulf %42, %43 : f64
          %45 = memref.load %arg4[%arg6, %40] : memref<?x30xf64>
          %46 = arith.addf %45, %44 : f64
          memref.store %46, %arg4[%arg6, %40] : memref<?x30xf64>
          %47 = arith.addi %arg8, %c2 : index
          %48 = memref.load %arg5[%arg6, %arg7] : memref<?x20xf64>
          %49 = arith.mulf %arg2, %48 : f64
          %50 = memref.load %arg5[%47, %arg7] : memref<?x20xf64>
          %51 = arith.mulf %49, %50 : f64
          %52 = memref.load %arg4[%arg6, %47] : memref<?x30xf64>
          %53 = arith.addf %52, %51 : f64
          memref.store %53, %arg4[%arg6, %47] : memref<?x30xf64>
          %54 = arith.addi %arg8, %c3 : index
          %55 = memref.load %arg5[%arg6, %arg7] : memref<?x20xf64>
          %56 = arith.mulf %arg2, %55 : f64
          %57 = memref.load %arg5[%54, %arg7] : memref<?x20xf64>
          %58 = arith.mulf %56, %57 : f64
          %59 = memref.load %arg4[%arg6, %54] : memref<?x30xf64>
          %60 = arith.addf %59, %58 : f64
          memref.store %60, %arg4[%arg6, %54] : memref<?x30xf64>
        }
        %25 = arith.addi %arg6, %c1 : index
        %26 = arith.cmpi slt, %25, %c0 : index
        %27 = arith.subi %c-1, %25 : index
        %28 = arith.select %26, %27, %25 : index
        %29 = arith.divsi %28, %c4 : index
        %30 = arith.subi %c-1, %29 : index
        %31 = arith.select %26, %30, %29 : index
        %32 = arith.muli %31, %c4 : index
        %33 = arith.addi %arg6, %c1 : index
        scf.for %arg8 = %32 to %33 step %c1 {
          %34 = memref.load %arg5[%arg6, %arg7] : memref<?x20xf64>
          %35 = arith.mulf %arg2, %34 : f64
          %36 = memref.load %arg5[%arg8, %arg7] : memref<?x20xf64>
          %37 = arith.mulf %35, %36 : f64
          %38 = memref.load %arg4[%arg6, %arg8] : memref<?x30xf64>
          %39 = arith.addf %38, %37 : f64
          memref.store %39, %arg4[%arg6, %arg8] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

