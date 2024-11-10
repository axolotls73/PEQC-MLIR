module {
  func.func @kernel_syr2k(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>, %arg6: memref<?x20xf64>) {
    %c20 = arith.constant 20 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c4 = arith.constant 4 : index
    %c0 = arith.constant 0 : index
    %c30 = arith.constant 30 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %c30 step %c1 {
      %0 = arith.addi %arg7, %c1 : index
      %1 = arith.cmpi slt, %0, %c0 : index
      %2 = arith.subi %c-1, %0 : index
      %3 = arith.select %1, %2, %0 : index
      %4 = arith.divsi %3, %c4 : index
      %5 = arith.subi %c-1, %4 : index
      %6 = arith.select %1, %5, %4 : index
      %7 = arith.muli %6, %c4 : index
      scf.for %arg8 = %c0 to %7 step %c4 {
        %17 = memref.load %arg4[%arg7, %arg8] : memref<?x30xf64>
        %18 = arith.mulf %17, %arg3 : f64
        memref.store %18, %arg4[%arg7, %arg8] : memref<?x30xf64>
        %19 = arith.addi %arg8, %c1 : index
        %20 = memref.load %arg4[%arg7, %19] : memref<?x30xf64>
        %21 = arith.mulf %20, %arg3 : f64
        memref.store %21, %arg4[%arg7, %19] : memref<?x30xf64>
        %22 = arith.addi %arg8, %c2 : index
        %23 = memref.load %arg4[%arg7, %22] : memref<?x30xf64>
        %24 = arith.mulf %23, %arg3 : f64
        memref.store %24, %arg4[%arg7, %22] : memref<?x30xf64>
        %25 = arith.addi %arg8, %c3 : index
        %26 = memref.load %arg4[%arg7, %25] : memref<?x30xf64>
        %27 = arith.mulf %26, %arg3 : f64
        memref.store %27, %arg4[%arg7, %25] : memref<?x30xf64>
      }
      %8 = arith.addi %arg7, %c1 : index
      %9 = arith.cmpi slt, %8, %c0 : index
      %10 = arith.subi %c-1, %8 : index
      %11 = arith.select %9, %10, %8 : index
      %12 = arith.divsi %11, %c4 : index
      %13 = arith.subi %c-1, %12 : index
      %14 = arith.select %9, %13, %12 : index
      %15 = arith.muli %14, %c4 : index
      %16 = arith.addi %arg7, %c1 : index
      scf.for %arg8 = %15 to %16 step %c1 {
        %17 = memref.load %arg4[%arg7, %arg8] : memref<?x30xf64>
        %18 = arith.mulf %17, %arg3 : f64
        memref.store %18, %arg4[%arg7, %arg8] : memref<?x30xf64>
      }
      scf.for %arg8 = %c0 to %c20 step %c1 {
        %17 = arith.addi %arg7, %c1 : index
        %18 = arith.cmpi slt, %17, %c0 : index
        %19 = arith.subi %c-1, %17 : index
        %20 = arith.select %18, %19, %17 : index
        %21 = arith.divsi %20, %c4 : index
        %22 = arith.subi %c-1, %21 : index
        %23 = arith.select %18, %22, %21 : index
        %24 = arith.muli %23, %c4 : index
        scf.for %arg9 = %c0 to %24 step %c4 {
          %34 = memref.load %arg5[%arg9, %arg8] : memref<?x20xf64>
          %35 = arith.mulf %34, %arg2 : f64
          %36 = memref.load %arg6[%arg7, %arg8] : memref<?x20xf64>
          %37 = arith.mulf %35, %36 : f64
          %38 = memref.load %arg6[%arg9, %arg8] : memref<?x20xf64>
          %39 = arith.mulf %38, %arg2 : f64
          %40 = memref.load %arg5[%arg7, %arg8] : memref<?x20xf64>
          %41 = arith.mulf %39, %40 : f64
          %42 = arith.addf %37, %41 : f64
          %43 = memref.load %arg4[%arg7, %arg9] : memref<?x30xf64>
          %44 = arith.addf %43, %42 : f64
          memref.store %44, %arg4[%arg7, %arg9] : memref<?x30xf64>
          %45 = arith.addi %arg9, %c1 : index
          %46 = memref.load %arg5[%45, %arg8] : memref<?x20xf64>
          %47 = arith.mulf %46, %arg2 : f64
          %48 = memref.load %arg6[%arg7, %arg8] : memref<?x20xf64>
          %49 = arith.mulf %47, %48 : f64
          %50 = memref.load %arg6[%45, %arg8] : memref<?x20xf64>
          %51 = arith.mulf %50, %arg2 : f64
          %52 = memref.load %arg5[%arg7, %arg8] : memref<?x20xf64>
          %53 = arith.mulf %51, %52 : f64
          %54 = arith.addf %49, %53 : f64
          %55 = memref.load %arg4[%arg7, %45] : memref<?x30xf64>
          %56 = arith.addf %55, %54 : f64
          memref.store %56, %arg4[%arg7, %45] : memref<?x30xf64>
          %57 = arith.addi %arg9, %c2 : index
          %58 = memref.load %arg5[%57, %arg8] : memref<?x20xf64>
          %59 = arith.mulf %58, %arg2 : f64
          %60 = memref.load %arg6[%arg7, %arg8] : memref<?x20xf64>
          %61 = arith.mulf %59, %60 : f64
          %62 = memref.load %arg6[%57, %arg8] : memref<?x20xf64>
          %63 = arith.mulf %62, %arg2 : f64
          %64 = memref.load %arg5[%arg7, %arg8] : memref<?x20xf64>
          %65 = arith.mulf %63, %64 : f64
          %66 = arith.addf %61, %65 : f64
          %67 = memref.load %arg4[%arg7, %57] : memref<?x30xf64>
          %68 = arith.addf %67, %66 : f64
          memref.store %68, %arg4[%arg7, %57] : memref<?x30xf64>
          %69 = arith.addi %arg9, %c3 : index
          %70 = memref.load %arg5[%69, %arg8] : memref<?x20xf64>
          %71 = arith.mulf %70, %arg2 : f64
          %72 = memref.load %arg6[%arg7, %arg8] : memref<?x20xf64>
          %73 = arith.mulf %71, %72 : f64
          %74 = memref.load %arg6[%69, %arg8] : memref<?x20xf64>
          %75 = arith.mulf %74, %arg2 : f64
          %76 = memref.load %arg5[%arg7, %arg8] : memref<?x20xf64>
          %77 = arith.mulf %75, %76 : f64
          %78 = arith.addf %73, %77 : f64
          %79 = memref.load %arg4[%arg7, %69] : memref<?x30xf64>
          %80 = arith.addf %79, %78 : f64
          memref.store %80, %arg4[%arg7, %69] : memref<?x30xf64>
        }
        %25 = arith.addi %arg7, %c1 : index
        %26 = arith.cmpi slt, %25, %c0 : index
        %27 = arith.subi %c-1, %25 : index
        %28 = arith.select %26, %27, %25 : index
        %29 = arith.divsi %28, %c4 : index
        %30 = arith.subi %c-1, %29 : index
        %31 = arith.select %26, %30, %29 : index
        %32 = arith.muli %31, %c4 : index
        %33 = arith.addi %arg7, %c1 : index
        scf.for %arg9 = %32 to %33 step %c1 {
          %34 = memref.load %arg5[%arg9, %arg8] : memref<?x20xf64>
          %35 = arith.mulf %34, %arg2 : f64
          %36 = memref.load %arg6[%arg7, %arg8] : memref<?x20xf64>
          %37 = arith.mulf %35, %36 : f64
          %38 = memref.load %arg6[%arg9, %arg8] : memref<?x20xf64>
          %39 = arith.mulf %38, %arg2 : f64
          %40 = memref.load %arg5[%arg7, %arg8] : memref<?x20xf64>
          %41 = arith.mulf %39, %40 : f64
          %42 = arith.addf %37, %41 : f64
          %43 = memref.load %arg4[%arg7, %arg9] : memref<?x30xf64>
          %44 = arith.addf %43, %42 : f64
          memref.store %44, %arg4[%arg7, %arg9] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

