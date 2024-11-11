module {
  func.func @kernel_symm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>, %arg6: memref<?x30xf64>) {
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c4 = arith.constant 4 : index
    %c30 = arith.constant 30 : index
    %c1 = arith.constant 1 : index
    %c20 = arith.constant 20 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
    memref.store %cst, %alloca[] : memref<f64>
    scf.for %arg7 = %c0 to %c20 step %c1 {
      scf.for %arg8 = %c0 to %c30 step %c1 {
        memref.store %cst, %alloca[] : memref<f64>
        %0 = arith.cmpi slt, %arg7, %c0 : index
        %1 = arith.subi %c-1, %arg7 : index
        %2 = arith.select %0, %1, %arg7 : index
        %3 = arith.divsi %2, %c4 : index
        %4 = arith.subi %c-1, %3 : index
        %5 = arith.select %0, %4, %3 : index
        %6 = arith.muli %5, %c4 : index
        scf.for %arg9 = %c0 to %6 step %c4 {
          %24 = memref.load %arg6[%arg7, %arg8] : memref<?x30xf64>
          %25 = arith.mulf %arg2, %24 : f64
          %26 = memref.load %arg5[%arg7, %arg9] : memref<?x20xf64>
          %27 = arith.mulf %25, %26 : f64
          %28 = memref.load %arg4[%arg9, %arg8] : memref<?x30xf64>
          %29 = arith.addf %28, %27 : f64
          memref.store %29, %arg4[%arg9, %arg8] : memref<?x30xf64>
          %30 = memref.load %arg6[%arg9, %arg8] : memref<?x30xf64>
          %31 = memref.load %arg5[%arg7, %arg9] : memref<?x20xf64>
          %32 = arith.mulf %30, %31 : f64
          %33 = memref.load %alloca[] : memref<f64>
          %34 = arith.addf %33, %32 : f64
          memref.store %34, %alloca[] : memref<f64>
          %35 = arith.addi %arg9, %c1 : index
          %36 = memref.load %arg6[%arg7, %arg8] : memref<?x30xf64>
          %37 = arith.mulf %arg2, %36 : f64
          %38 = memref.load %arg5[%arg7, %35] : memref<?x20xf64>
          %39 = arith.mulf %37, %38 : f64
          %40 = memref.load %arg4[%35, %arg8] : memref<?x30xf64>
          %41 = arith.addf %40, %39 : f64
          memref.store %41, %arg4[%35, %arg8] : memref<?x30xf64>
          %42 = memref.load %arg6[%35, %arg8] : memref<?x30xf64>
          %43 = memref.load %arg5[%arg7, %35] : memref<?x20xf64>
          %44 = arith.mulf %42, %43 : f64
          %45 = memref.load %alloca[] : memref<f64>
          %46 = arith.addf %45, %44 : f64
          memref.store %46, %alloca[] : memref<f64>
          %47 = arith.addi %arg9, %c2 : index
          %48 = memref.load %arg6[%arg7, %arg8] : memref<?x30xf64>
          %49 = arith.mulf %arg2, %48 : f64
          %50 = memref.load %arg5[%arg7, %47] : memref<?x20xf64>
          %51 = arith.mulf %49, %50 : f64
          %52 = memref.load %arg4[%47, %arg8] : memref<?x30xf64>
          %53 = arith.addf %52, %51 : f64
          memref.store %53, %arg4[%47, %arg8] : memref<?x30xf64>
          %54 = memref.load %arg6[%47, %arg8] : memref<?x30xf64>
          %55 = memref.load %arg5[%arg7, %47] : memref<?x20xf64>
          %56 = arith.mulf %54, %55 : f64
          %57 = memref.load %alloca[] : memref<f64>
          %58 = arith.addf %57, %56 : f64
          memref.store %58, %alloca[] : memref<f64>
          %59 = arith.addi %arg9, %c3 : index
          %60 = memref.load %arg6[%arg7, %arg8] : memref<?x30xf64>
          %61 = arith.mulf %arg2, %60 : f64
          %62 = memref.load %arg5[%arg7, %59] : memref<?x20xf64>
          %63 = arith.mulf %61, %62 : f64
          %64 = memref.load %arg4[%59, %arg8] : memref<?x30xf64>
          %65 = arith.addf %64, %63 : f64
          memref.store %65, %arg4[%59, %arg8] : memref<?x30xf64>
          %66 = memref.load %arg6[%59, %arg8] : memref<?x30xf64>
          %67 = memref.load %arg5[%arg7, %59] : memref<?x20xf64>
          %68 = arith.mulf %66, %67 : f64
          %69 = memref.load %alloca[] : memref<f64>
          %70 = arith.addf %69, %68 : f64
          memref.store %70, %alloca[] : memref<f64>
        }
        %7 = arith.cmpi slt, %arg7, %c0 : index
        %8 = arith.subi %c-1, %arg7 : index
        %9 = arith.select %7, %8, %arg7 : index
        %10 = arith.divsi %9, %c4 : index
        %11 = arith.subi %c-1, %10 : index
        %12 = arith.select %7, %11, %10 : index
        %13 = arith.muli %12, %c4 : index
        scf.for %arg9 = %13 to %arg7 step %c1 {
          %24 = memref.load %arg6[%arg7, %arg8] : memref<?x30xf64>
          %25 = arith.mulf %arg2, %24 : f64
          %26 = memref.load %arg5[%arg7, %arg9] : memref<?x20xf64>
          %27 = arith.mulf %25, %26 : f64
          %28 = memref.load %arg4[%arg9, %arg8] : memref<?x30xf64>
          %29 = arith.addf %28, %27 : f64
          memref.store %29, %arg4[%arg9, %arg8] : memref<?x30xf64>
          %30 = memref.load %arg6[%arg9, %arg8] : memref<?x30xf64>
          %31 = memref.load %arg5[%arg7, %arg9] : memref<?x20xf64>
          %32 = arith.mulf %30, %31 : f64
          %33 = memref.load %alloca[] : memref<f64>
          %34 = arith.addf %33, %32 : f64
          memref.store %34, %alloca[] : memref<f64>
        }
        %14 = memref.load %arg4[%arg7, %arg8] : memref<?x30xf64>
        %15 = arith.mulf %arg3, %14 : f64
        %16 = memref.load %arg6[%arg7, %arg8] : memref<?x30xf64>
        %17 = arith.mulf %arg2, %16 : f64
        %18 = memref.load %arg5[%arg7, %arg7] : memref<?x20xf64>
        %19 = arith.mulf %17, %18 : f64
        %20 = arith.addf %15, %19 : f64
        %21 = memref.load %alloca[] : memref<f64>
        %22 = arith.mulf %arg2, %21 : f64
        %23 = arith.addf %20, %22 : f64
        memref.store %23, %arg4[%arg7, %arg8] : memref<?x30xf64>
      }
    }
    return
  }
}

