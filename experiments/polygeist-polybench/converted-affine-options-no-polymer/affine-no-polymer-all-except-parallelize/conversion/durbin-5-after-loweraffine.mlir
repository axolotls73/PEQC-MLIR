module {
  func.func @kernel_durbin(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>) {
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
    %c0 = arith.constant 0 : index
    %1 = memref.load %arg1[%c0] : memref<?xf64>
    %2 = arith.negf %1 : f64
    %c0_4 = arith.constant 0 : index
    memref.store %2, %arg2[%c0_4] : memref<?xf64>
    memref.store %cst_0, %alloca_1[] : memref<f64>
    %c0_5 = arith.constant 0 : index
    %3 = memref.load %arg1[%c0_5] : memref<?xf64>
    %4 = arith.negf %3 : f64
    memref.store %4, %alloca_2[] : memref<f64>
    %c0_6 = arith.constant 0 : index
    %c39 = arith.constant 39 : index
    %c1 = arith.constant 1 : index
    scf.for %arg3 = %c0_6 to %c39 step %c1 {
      %c1_7 = arith.constant 1 : index
      %5 = arith.addi %arg3, %c1_7 : index
      %c0_8 = arith.constant 0 : index
      %c1_9 = arith.constant 1 : index
      %c1_10 = arith.constant 1 : index
      scf.for %arg4 = %c0_8 to %c1_9 step %c1_10 {
        %6 = arith.addi %5, %arg4 : index
        %7 = memref.load %alloca_2[] : memref<f64>
        %8 = arith.mulf %7, %7 : f64
        %9 = arith.subf %cst_0, %8 : f64
        %10 = memref.load %alloca_1[] : memref<f64>
        %11 = arith.mulf %9, %10 : f64
        memref.store %11, %alloca_1[] : memref<f64>
        memref.store %cst, %alloca[] : memref<f64>
        %c0_11 = arith.constant 0 : index
        %12 = arith.addi %arg4, %arg3 : index
        %c1_12 = arith.constant 1 : index
        %13 = arith.addi %12, %c1_12 : index
        %c4 = arith.constant 4 : index
        %c0_13 = arith.constant 0 : index
        %c-1 = arith.constant -1 : index
        %14 = arith.cmpi slt, %13, %c0_13 : index
        %15 = arith.subi %c-1, %13 : index
        %16 = arith.select %14, %15, %13 : index
        %17 = arith.divsi %16, %c4 : index
        %18 = arith.subi %c-1, %17 : index
        %19 = arith.select %14, %18, %17 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg5 = %c0_11 to %19 step %c1_14 {
          %c4_50 = arith.constant 4 : index
          %77 = arith.muli %arg5, %c4_50 : index
          %c-1_51 = arith.constant -1 : index
          %78 = arith.muli %77, %c-1_51 : index
          %79 = arith.addi %6, %78 : index
          %c-1_52 = arith.constant -1 : index
          %80 = arith.addi %79, %c-1_52 : index
          %81 = memref.load %arg1[%80] : memref<?xf64>
          %82 = memref.load %arg2[%77] : memref<?xf64>
          %83 = arith.mulf %81, %82 : f64
          %84 = memref.load %alloca[] : memref<f64>
          %85 = arith.addf %84, %83 : f64
          memref.store %85, %alloca[] : memref<f64>
          %c1_53 = arith.constant 1 : index
          %86 = arith.addi %77, %c1_53 : index
          %c-1_54 = arith.constant -1 : index
          %87 = arith.muli %86, %c-1_54 : index
          %88 = arith.addi %6, %87 : index
          %c-1_55 = arith.constant -1 : index
          %89 = arith.addi %88, %c-1_55 : index
          %90 = memref.load %arg1[%89] : memref<?xf64>
          %91 = memref.load %arg2[%86] : memref<?xf64>
          %92 = arith.mulf %90, %91 : f64
          %93 = memref.load %alloca[] : memref<f64>
          %94 = arith.addf %93, %92 : f64
          memref.store %94, %alloca[] : memref<f64>
          %c2 = arith.constant 2 : index
          %95 = arith.addi %77, %c2 : index
          %c-1_56 = arith.constant -1 : index
          %96 = arith.muli %95, %c-1_56 : index
          %97 = arith.addi %6, %96 : index
          %c-1_57 = arith.constant -1 : index
          %98 = arith.addi %97, %c-1_57 : index
          %99 = memref.load %arg1[%98] : memref<?xf64>
          %100 = memref.load %arg2[%95] : memref<?xf64>
          %101 = arith.mulf %99, %100 : f64
          %102 = memref.load %alloca[] : memref<f64>
          %103 = arith.addf %102, %101 : f64
          memref.store %103, %alloca[] : memref<f64>
          %c3 = arith.constant 3 : index
          %104 = arith.addi %77, %c3 : index
          %c-1_58 = arith.constant -1 : index
          %105 = arith.muli %104, %c-1_58 : index
          %106 = arith.addi %6, %105 : index
          %c-1_59 = arith.constant -1 : index
          %107 = arith.addi %106, %c-1_59 : index
          %108 = memref.load %arg1[%107] : memref<?xf64>
          %109 = memref.load %arg2[%104] : memref<?xf64>
          %110 = arith.mulf %108, %109 : f64
          %111 = memref.load %alloca[] : memref<f64>
          %112 = arith.addf %111, %110 : f64
          memref.store %112, %alloca[] : memref<f64>
        }
        %c0_15 = arith.constant 0 : index
        %20 = arith.addi %arg4, %arg3 : index
        %21 = arith.addi %arg4, %arg3 : index
        %c1_16 = arith.constant 1 : index
        %22 = arith.addi %21, %c1_16 : index
        %c4_17 = arith.constant 4 : index
        %c0_18 = arith.constant 0 : index
        %c-1_19 = arith.constant -1 : index
        %23 = arith.cmpi slt, %22, %c0_18 : index
        %24 = arith.subi %c-1_19, %22 : index
        %25 = arith.select %23, %24, %22 : index
        %26 = arith.divsi %25, %c4_17 : index
        %27 = arith.subi %c-1_19, %26 : index
        %28 = arith.select %23, %27, %26 : index
        %c-4 = arith.constant -4 : index
        %29 = arith.muli %28, %c-4 : index
        %30 = arith.addi %20, %29 : index
        %c1_20 = arith.constant 1 : index
        %31 = arith.addi %30, %c1_20 : index
        %c1_21 = arith.constant 1 : index
        scf.for %arg5 = %c0_15 to %31 step %c1_21 {
          %c4_50 = arith.constant 4 : index
          %c0_51 = arith.constant 0 : index
          %c-1_52 = arith.constant -1 : index
          %77 = arith.cmpi slt, %6, %c0_51 : index
          %78 = arith.subi %c-1_52, %6 : index
          %79 = arith.select %77, %78, %6 : index
          %80 = arith.divsi %79, %c4_50 : index
          %81 = arith.subi %c-1_52, %80 : index
          %82 = arith.select %77, %81, %80 : index
          %c4_53 = arith.constant 4 : index
          %83 = arith.muli %82, %c4_53 : index
          %84 = arith.addi %arg5, %83 : index
          %c-1_54 = arith.constant -1 : index
          %85 = arith.muli %84, %c-1_54 : index
          %86 = arith.addi %6, %85 : index
          %c-1_55 = arith.constant -1 : index
          %87 = arith.addi %86, %c-1_55 : index
          %88 = memref.load %arg1[%87] : memref<?xf64>
          %89 = memref.load %arg2[%84] : memref<?xf64>
          %90 = arith.mulf %88, %89 : f64
          %91 = memref.load %alloca[] : memref<f64>
          %92 = arith.addf %91, %90 : f64
          memref.store %92, %alloca[] : memref<f64>
        }
        %32 = memref.load %arg1[%6] : memref<?xf64>
        %33 = memref.load %alloca[] : memref<f64>
        %34 = arith.addf %32, %33 : f64
        %35 = arith.negf %34 : f64
        %36 = arith.divf %35, %11 : f64
        memref.store %36, %alloca_2[] : memref<f64>
        %c0_22 = arith.constant 0 : index
        %37 = arith.addi %arg4, %arg3 : index
        %c1_23 = arith.constant 1 : index
        %38 = arith.addi %37, %c1_23 : index
        %c4_24 = arith.constant 4 : index
        %c0_25 = arith.constant 0 : index
        %c-1_26 = arith.constant -1 : index
        %39 = arith.cmpi slt, %38, %c0_25 : index
        %40 = arith.subi %c-1_26, %38 : index
        %41 = arith.select %39, %40, %38 : index
        %42 = arith.divsi %41, %c4_24 : index
        %43 = arith.subi %c-1_26, %42 : index
        %44 = arith.select %39, %43, %42 : index
        %c1_27 = arith.constant 1 : index
        scf.for %arg5 = %c0_22 to %44 step %c1_27 {
          %c4_50 = arith.constant 4 : index
          %77 = arith.muli %arg5, %c4_50 : index
          %78 = memref.load %arg2[%77] : memref<?xf64>
          %c-1_51 = arith.constant -1 : index
          %79 = arith.muli %77, %c-1_51 : index
          %80 = arith.addi %6, %79 : index
          %c-1_52 = arith.constant -1 : index
          %81 = arith.addi %80, %c-1_52 : index
          %82 = memref.load %arg2[%81] : memref<?xf64>
          %83 = arith.mulf %36, %82 : f64
          %84 = arith.addf %78, %83 : f64
          memref.store %84, %alloca_3[%77] : memref<40xf64>
          %c1_53 = arith.constant 1 : index
          %85 = arith.addi %77, %c1_53 : index
          %86 = memref.load %arg2[%85] : memref<?xf64>
          %c-1_54 = arith.constant -1 : index
          %87 = arith.muli %85, %c-1_54 : index
          %88 = arith.addi %6, %87 : index
          %c-1_55 = arith.constant -1 : index
          %89 = arith.addi %88, %c-1_55 : index
          %90 = memref.load %arg2[%89] : memref<?xf64>
          %91 = arith.mulf %36, %90 : f64
          %92 = arith.addf %86, %91 : f64
          memref.store %92, %alloca_3[%85] : memref<40xf64>
          %c2 = arith.constant 2 : index
          %93 = arith.addi %77, %c2 : index
          %94 = memref.load %arg2[%93] : memref<?xf64>
          %c-1_56 = arith.constant -1 : index
          %95 = arith.muli %93, %c-1_56 : index
          %96 = arith.addi %6, %95 : index
          %c-1_57 = arith.constant -1 : index
          %97 = arith.addi %96, %c-1_57 : index
          %98 = memref.load %arg2[%97] : memref<?xf64>
          %99 = arith.mulf %36, %98 : f64
          %100 = arith.addf %94, %99 : f64
          memref.store %100, %alloca_3[%93] : memref<40xf64>
          %c3 = arith.constant 3 : index
          %101 = arith.addi %77, %c3 : index
          %102 = memref.load %arg2[%101] : memref<?xf64>
          %c-1_58 = arith.constant -1 : index
          %103 = arith.muli %101, %c-1_58 : index
          %104 = arith.addi %6, %103 : index
          %c-1_59 = arith.constant -1 : index
          %105 = arith.addi %104, %c-1_59 : index
          %106 = memref.load %arg2[%105] : memref<?xf64>
          %107 = arith.mulf %36, %106 : f64
          %108 = arith.addf %102, %107 : f64
          memref.store %108, %alloca_3[%101] : memref<40xf64>
        }
        %c0_28 = arith.constant 0 : index
        %45 = arith.addi %arg4, %arg3 : index
        %46 = arith.addi %arg4, %arg3 : index
        %c1_29 = arith.constant 1 : index
        %47 = arith.addi %46, %c1_29 : index
        %c4_30 = arith.constant 4 : index
        %c0_31 = arith.constant 0 : index
        %c-1_32 = arith.constant -1 : index
        %48 = arith.cmpi slt, %47, %c0_31 : index
        %49 = arith.subi %c-1_32, %47 : index
        %50 = arith.select %48, %49, %47 : index
        %51 = arith.divsi %50, %c4_30 : index
        %52 = arith.subi %c-1_32, %51 : index
        %53 = arith.select %48, %52, %51 : index
        %c-4_33 = arith.constant -4 : index
        %54 = arith.muli %53, %c-4_33 : index
        %55 = arith.addi %45, %54 : index
        %c1_34 = arith.constant 1 : index
        %56 = arith.addi %55, %c1_34 : index
        %c1_35 = arith.constant 1 : index
        scf.for %arg5 = %c0_28 to %56 step %c1_35 {
          %c4_50 = arith.constant 4 : index
          %c0_51 = arith.constant 0 : index
          %c-1_52 = arith.constant -1 : index
          %77 = arith.cmpi slt, %6, %c0_51 : index
          %78 = arith.subi %c-1_52, %6 : index
          %79 = arith.select %77, %78, %6 : index
          %80 = arith.divsi %79, %c4_50 : index
          %81 = arith.subi %c-1_52, %80 : index
          %82 = arith.select %77, %81, %80 : index
          %c4_53 = arith.constant 4 : index
          %83 = arith.muli %82, %c4_53 : index
          %84 = arith.addi %arg5, %83 : index
          %85 = memref.load %arg2[%84] : memref<?xf64>
          %c-1_54 = arith.constant -1 : index
          %86 = arith.muli %84, %c-1_54 : index
          %87 = arith.addi %6, %86 : index
          %c-1_55 = arith.constant -1 : index
          %88 = arith.addi %87, %c-1_55 : index
          %89 = memref.load %arg2[%88] : memref<?xf64>
          %90 = arith.mulf %36, %89 : f64
          %91 = arith.addf %85, %90 : f64
          memref.store %91, %alloca_3[%84] : memref<40xf64>
        }
        %c0_36 = arith.constant 0 : index
        %57 = arith.addi %arg4, %arg3 : index
        %c1_37 = arith.constant 1 : index
        %58 = arith.addi %57, %c1_37 : index
        %c4_38 = arith.constant 4 : index
        %c0_39 = arith.constant 0 : index
        %c-1_40 = arith.constant -1 : index
        %59 = arith.cmpi slt, %58, %c0_39 : index
        %60 = arith.subi %c-1_40, %58 : index
        %61 = arith.select %59, %60, %58 : index
        %62 = arith.divsi %61, %c4_38 : index
        %63 = arith.subi %c-1_40, %62 : index
        %64 = arith.select %59, %63, %62 : index
        %c1_41 = arith.constant 1 : index
        scf.for %arg5 = %c0_36 to %64 step %c1_41 {
          %c4_50 = arith.constant 4 : index
          %77 = arith.muli %arg5, %c4_50 : index
          %78 = memref.load %alloca_3[%77] : memref<40xf64>
          memref.store %78, %arg2[%77] : memref<?xf64>
          %c1_51 = arith.constant 1 : index
          %79 = arith.addi %77, %c1_51 : index
          %80 = memref.load %alloca_3[%79] : memref<40xf64>
          memref.store %80, %arg2[%79] : memref<?xf64>
          %c2 = arith.constant 2 : index
          %81 = arith.addi %77, %c2 : index
          %82 = memref.load %alloca_3[%81] : memref<40xf64>
          memref.store %82, %arg2[%81] : memref<?xf64>
          %c3 = arith.constant 3 : index
          %83 = arith.addi %77, %c3 : index
          %84 = memref.load %alloca_3[%83] : memref<40xf64>
          memref.store %84, %arg2[%83] : memref<?xf64>
        }
        %c0_42 = arith.constant 0 : index
        %65 = arith.addi %arg4, %arg3 : index
        %66 = arith.addi %arg4, %arg3 : index
        %c1_43 = arith.constant 1 : index
        %67 = arith.addi %66, %c1_43 : index
        %c4_44 = arith.constant 4 : index
        %c0_45 = arith.constant 0 : index
        %c-1_46 = arith.constant -1 : index
        %68 = arith.cmpi slt, %67, %c0_45 : index
        %69 = arith.subi %c-1_46, %67 : index
        %70 = arith.select %68, %69, %67 : index
        %71 = arith.divsi %70, %c4_44 : index
        %72 = arith.subi %c-1_46, %71 : index
        %73 = arith.select %68, %72, %71 : index
        %c-4_47 = arith.constant -4 : index
        %74 = arith.muli %73, %c-4_47 : index
        %75 = arith.addi %65, %74 : index
        %c1_48 = arith.constant 1 : index
        %76 = arith.addi %75, %c1_48 : index
        %c1_49 = arith.constant 1 : index
        scf.for %arg5 = %c0_42 to %76 step %c1_49 {
          %c4_50 = arith.constant 4 : index
          %c0_51 = arith.constant 0 : index
          %c-1_52 = arith.constant -1 : index
          %77 = arith.cmpi slt, %6, %c0_51 : index
          %78 = arith.subi %c-1_52, %6 : index
          %79 = arith.select %77, %78, %6 : index
          %80 = arith.divsi %79, %c4_50 : index
          %81 = arith.subi %c-1_52, %80 : index
          %82 = arith.select %77, %81, %80 : index
          %c4_53 = arith.constant 4 : index
          %83 = arith.muli %82, %c4_53 : index
          %84 = arith.addi %arg5, %83 : index
          %85 = memref.load %alloca_3[%84] : memref<40xf64>
          memref.store %85, %arg2[%84] : memref<?xf64>
        }
        memref.store %36, %arg2[%6] : memref<?xf64>
      }
    }
    return
  }
}

