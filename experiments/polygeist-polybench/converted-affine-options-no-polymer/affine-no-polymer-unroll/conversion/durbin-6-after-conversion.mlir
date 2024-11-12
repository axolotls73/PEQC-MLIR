module {
  func.func @kernel_durbin(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>) {
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c4 = arith.constant 4 : index
    %c40 = arith.constant 40 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 1.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
    %0 = llvm.mlir.undef : f64
    memref.store %0, %alloca[] : memref<f64>
    %alloca_1 = memref.alloca() : memref<f64>
    memref.store %0, %alloca_1[] : memref<f64>
    %alloca_2 = memref.alloca() : memref<f64>
    memref.store %0, %alloca_2[] : memref<f64>
    %alloca_3 = memref.alloca() : memref<40xf64>
    %1 = memref.load %arg1[%c0] : memref<?xf64>
    %2 = arith.negf %1 : f64
    memref.store %2, %arg2[%c0] : memref<?xf64>
    memref.store %cst_0, %alloca_1[] : memref<f64>
    %3 = memref.load %arg1[%c0] : memref<?xf64>
    %4 = arith.negf %3 : f64
    memref.store %4, %alloca_2[] : memref<f64>
    scf.for %arg3 = %c1 to %c40 step %c1 {
      %5 = memref.load %alloca_2[] : memref<f64>
      %6 = arith.mulf %5, %5 : f64
      %7 = arith.subf %cst_0, %6 : f64
      %8 = memref.load %alloca_1[] : memref<f64>
      %9 = arith.mulf %7, %8 : f64
      memref.store %9, %alloca_1[] : memref<f64>
      memref.store %cst, %alloca[] : memref<f64>
      %10 = arith.cmpi slt, %arg3, %c0 : index
      %11 = arith.subi %c-1, %arg3 : index
      %12 = arith.select %10, %11, %arg3 : index
      %13 = arith.divsi %12, %c4 : index
      %14 = arith.subi %c-1, %13 : index
      %15 = arith.select %10, %14, %13 : index
      %16 = arith.muli %15, %c4 : index
      scf.for %arg4 = %c0 to %16 step %c4 {
        %57 = arith.muli %arg4, %c-1 : index
        %58 = arith.addi %arg3, %57 : index
        %59 = arith.addi %58, %c-1 : index
        %60 = memref.load %arg1[%59] : memref<?xf64>
        %61 = memref.load %arg2[%arg4] : memref<?xf64>
        %62 = arith.mulf %60, %61 : f64
        %63 = memref.load %alloca[] : memref<f64>
        %64 = arith.addf %63, %62 : f64
        memref.store %64, %alloca[] : memref<f64>
        %65 = arith.addi %arg4, %c1 : index
        %66 = arith.muli %65, %c-1 : index
        %67 = arith.addi %arg3, %66 : index
        %68 = arith.addi %67, %c-1 : index
        %69 = memref.load %arg1[%68] : memref<?xf64>
        %70 = memref.load %arg2[%65] : memref<?xf64>
        %71 = arith.mulf %69, %70 : f64
        %72 = memref.load %alloca[] : memref<f64>
        %73 = arith.addf %72, %71 : f64
        memref.store %73, %alloca[] : memref<f64>
        %74 = arith.addi %arg4, %c2 : index
        %75 = arith.muli %74, %c-1 : index
        %76 = arith.addi %arg3, %75 : index
        %77 = arith.addi %76, %c-1 : index
        %78 = memref.load %arg1[%77] : memref<?xf64>
        %79 = memref.load %arg2[%74] : memref<?xf64>
        %80 = arith.mulf %78, %79 : f64
        %81 = memref.load %alloca[] : memref<f64>
        %82 = arith.addf %81, %80 : f64
        memref.store %82, %alloca[] : memref<f64>
        %83 = arith.addi %arg4, %c3 : index
        %84 = arith.muli %83, %c-1 : index
        %85 = arith.addi %arg3, %84 : index
        %86 = arith.addi %85, %c-1 : index
        %87 = memref.load %arg1[%86] : memref<?xf64>
        %88 = memref.load %arg2[%83] : memref<?xf64>
        %89 = arith.mulf %87, %88 : f64
        %90 = memref.load %alloca[] : memref<f64>
        %91 = arith.addf %90, %89 : f64
        memref.store %91, %alloca[] : memref<f64>
      }
      %17 = arith.cmpi slt, %arg3, %c0 : index
      %18 = arith.subi %c-1, %arg3 : index
      %19 = arith.select %17, %18, %arg3 : index
      %20 = arith.divsi %19, %c4 : index
      %21 = arith.subi %c-1, %20 : index
      %22 = arith.select %17, %21, %20 : index
      %23 = arith.muli %22, %c4 : index
      scf.for %arg4 = %23 to %arg3 step %c1 {
        %57 = arith.muli %arg4, %c-1 : index
        %58 = arith.addi %arg3, %57 : index
        %59 = arith.addi %58, %c-1 : index
        %60 = memref.load %arg1[%59] : memref<?xf64>
        %61 = memref.load %arg2[%arg4] : memref<?xf64>
        %62 = arith.mulf %60, %61 : f64
        %63 = memref.load %alloca[] : memref<f64>
        %64 = arith.addf %63, %62 : f64
        memref.store %64, %alloca[] : memref<f64>
      }
      %24 = memref.load %arg1[%arg3] : memref<?xf64>
      %25 = memref.load %alloca[] : memref<f64>
      %26 = arith.addf %24, %25 : f64
      %27 = arith.negf %26 : f64
      %28 = arith.divf %27, %9 : f64
      memref.store %28, %alloca_2[] : memref<f64>
      %29 = arith.cmpi slt, %arg3, %c0 : index
      %30 = arith.subi %c-1, %arg3 : index
      %31 = arith.select %29, %30, %arg3 : index
      %32 = arith.divsi %31, %c4 : index
      %33 = arith.subi %c-1, %32 : index
      %34 = arith.select %29, %33, %32 : index
      %35 = arith.muli %34, %c4 : index
      scf.for %arg4 = %c0 to %35 step %c4 {
        %57 = memref.load %arg2[%arg4] : memref<?xf64>
        %58 = arith.muli %arg4, %c-1 : index
        %59 = arith.addi %arg3, %58 : index
        %60 = arith.addi %59, %c-1 : index
        %61 = memref.load %arg2[%60] : memref<?xf64>
        %62 = arith.mulf %28, %61 : f64
        %63 = arith.addf %57, %62 : f64
        memref.store %63, %alloca_3[%arg4] : memref<40xf64>
        %64 = arith.addi %arg4, %c1 : index
        %65 = memref.load %arg2[%64] : memref<?xf64>
        %66 = arith.muli %64, %c-1 : index
        %67 = arith.addi %arg3, %66 : index
        %68 = arith.addi %67, %c-1 : index
        %69 = memref.load %arg2[%68] : memref<?xf64>
        %70 = arith.mulf %28, %69 : f64
        %71 = arith.addf %65, %70 : f64
        memref.store %71, %alloca_3[%64] : memref<40xf64>
        %72 = arith.addi %arg4, %c2 : index
        %73 = memref.load %arg2[%72] : memref<?xf64>
        %74 = arith.muli %72, %c-1 : index
        %75 = arith.addi %arg3, %74 : index
        %76 = arith.addi %75, %c-1 : index
        %77 = memref.load %arg2[%76] : memref<?xf64>
        %78 = arith.mulf %28, %77 : f64
        %79 = arith.addf %73, %78 : f64
        memref.store %79, %alloca_3[%72] : memref<40xf64>
        %80 = arith.addi %arg4, %c3 : index
        %81 = memref.load %arg2[%80] : memref<?xf64>
        %82 = arith.muli %80, %c-1 : index
        %83 = arith.addi %arg3, %82 : index
        %84 = arith.addi %83, %c-1 : index
        %85 = memref.load %arg2[%84] : memref<?xf64>
        %86 = arith.mulf %28, %85 : f64
        %87 = arith.addf %81, %86 : f64
        memref.store %87, %alloca_3[%80] : memref<40xf64>
      }
      %36 = arith.cmpi slt, %arg3, %c0 : index
      %37 = arith.subi %c-1, %arg3 : index
      %38 = arith.select %36, %37, %arg3 : index
      %39 = arith.divsi %38, %c4 : index
      %40 = arith.subi %c-1, %39 : index
      %41 = arith.select %36, %40, %39 : index
      %42 = arith.muli %41, %c4 : index
      scf.for %arg4 = %42 to %arg3 step %c1 {
        %57 = memref.load %arg2[%arg4] : memref<?xf64>
        %58 = arith.muli %arg4, %c-1 : index
        %59 = arith.addi %arg3, %58 : index
        %60 = arith.addi %59, %c-1 : index
        %61 = memref.load %arg2[%60] : memref<?xf64>
        %62 = arith.mulf %28, %61 : f64
        %63 = arith.addf %57, %62 : f64
        memref.store %63, %alloca_3[%arg4] : memref<40xf64>
      }
      %43 = arith.cmpi slt, %arg3, %c0 : index
      %44 = arith.subi %c-1, %arg3 : index
      %45 = arith.select %43, %44, %arg3 : index
      %46 = arith.divsi %45, %c4 : index
      %47 = arith.subi %c-1, %46 : index
      %48 = arith.select %43, %47, %46 : index
      %49 = arith.muli %48, %c4 : index
      scf.for %arg4 = %c0 to %49 step %c4 {
        %57 = memref.load %alloca_3[%arg4] : memref<40xf64>
        memref.store %57, %arg2[%arg4] : memref<?xf64>
        %58 = arith.addi %arg4, %c1 : index
        %59 = memref.load %alloca_3[%58] : memref<40xf64>
        memref.store %59, %arg2[%58] : memref<?xf64>
        %60 = arith.addi %arg4, %c2 : index
        %61 = memref.load %alloca_3[%60] : memref<40xf64>
        memref.store %61, %arg2[%60] : memref<?xf64>
        %62 = arith.addi %arg4, %c3 : index
        %63 = memref.load %alloca_3[%62] : memref<40xf64>
        memref.store %63, %arg2[%62] : memref<?xf64>
      }
      %50 = arith.cmpi slt, %arg3, %c0 : index
      %51 = arith.subi %c-1, %arg3 : index
      %52 = arith.select %50, %51, %arg3 : index
      %53 = arith.divsi %52, %c4 : index
      %54 = arith.subi %c-1, %53 : index
      %55 = arith.select %50, %54, %53 : index
      %56 = arith.muli %55, %c4 : index
      scf.for %arg4 = %56 to %arg3 step %c1 {
        %57 = memref.load %alloca_3[%arg4] : memref<40xf64>
        memref.store %57, %arg2[%arg4] : memref<?xf64>
      }
      memref.store %28, %arg2[%arg3] : memref<?xf64>
    }
    return
  }
}

