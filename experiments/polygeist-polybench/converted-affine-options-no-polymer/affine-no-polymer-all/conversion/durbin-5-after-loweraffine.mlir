module {
  func.func @kernel_durbin(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>) {
    %0 = llvm.mlir.undef : f64
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 1.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
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
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.for %arg3 = %c0_6 to %c2 step %c1 {
      %c32 = arith.constant 32 : index
      %5 = arith.muli %arg3, %c32 : index
      %c1_7 = arith.constant 1 : index
      %6 = arith.addi %5, %c1_7 : index
      %c0_8 = arith.constant 0 : index
      %c32_9 = arith.constant 32 : index
      %c-32 = arith.constant -32 : index
      %7 = arith.muli %arg3, %c-32 : index
      %c39 = arith.constant 39 : index
      %8 = arith.addi %7, %c39 : index
      %9 = arith.minsi %c32_9, %8 : index
      %c1_10 = arith.constant 1 : index
      scf.for %arg4 = %c0_8 to %9 step %c1_10 {
        %10 = arith.addi %6, %arg4 : index
        %11 = memref.load %alloca_2[] : memref<f64>
        %12 = arith.mulf %11, %11 : f64
        %13 = arith.subf %cst_0, %12 : f64
        %14 = memref.load %alloca_1[] : memref<f64>
        %15 = arith.mulf %13, %14 : f64
        memref.store %15, %alloca_1[] : memref<f64>
        memref.store %cst, %alloca[] : memref<f64>
        %c0_11 = arith.constant 0 : index
        %c32_12 = arith.constant 32 : index
        %16 = arith.muli %arg3, %c32_12 : index
        %17 = arith.addi %arg4, %16 : index
        %c1_13 = arith.constant 1 : index
        %18 = arith.addi %17, %c1_13 : index
        %c4 = arith.constant 4 : index
        %c0_14 = arith.constant 0 : index
        %c-1 = arith.constant -1 : index
        %19 = arith.cmpi slt, %18, %c0_14 : index
        %20 = arith.subi %c-1, %18 : index
        %21 = arith.select %19, %20, %18 : index
        %22 = arith.divsi %21, %c4 : index
        %23 = arith.subi %c-1, %22 : index
        %24 = arith.select %19, %23, %22 : index
        %c1_15 = arith.constant 1 : index
        scf.for %arg5 = %c0_11 to %24 step %c1_15 {
          %c4_59 = arith.constant 4 : index
          %90 = arith.muli %arg5, %c4_59 : index
          %c-1_60 = arith.constant -1 : index
          %91 = arith.muli %90, %c-1_60 : index
          %92 = arith.addi %10, %91 : index
          %c-1_61 = arith.constant -1 : index
          %93 = arith.addi %92, %c-1_61 : index
          %94 = memref.load %arg1[%93] : memref<?xf64>
          %95 = memref.load %arg2[%90] : memref<?xf64>
          %96 = arith.mulf %94, %95 : f64
          %97 = memref.load %alloca[] : memref<f64>
          %98 = arith.addf %97, %96 : f64
          memref.store %98, %alloca[] : memref<f64>
          %c1_62 = arith.constant 1 : index
          %99 = arith.addi %90, %c1_62 : index
          %c-1_63 = arith.constant -1 : index
          %100 = arith.muli %99, %c-1_63 : index
          %101 = arith.addi %10, %100 : index
          %c-1_64 = arith.constant -1 : index
          %102 = arith.addi %101, %c-1_64 : index
          %103 = memref.load %arg1[%102] : memref<?xf64>
          %104 = memref.load %arg2[%99] : memref<?xf64>
          %105 = arith.mulf %103, %104 : f64
          %106 = memref.load %alloca[] : memref<f64>
          %107 = arith.addf %106, %105 : f64
          memref.store %107, %alloca[] : memref<f64>
          %c2_65 = arith.constant 2 : index
          %108 = arith.addi %90, %c2_65 : index
          %c-1_66 = arith.constant -1 : index
          %109 = arith.muli %108, %c-1_66 : index
          %110 = arith.addi %10, %109 : index
          %c-1_67 = arith.constant -1 : index
          %111 = arith.addi %110, %c-1_67 : index
          %112 = memref.load %arg1[%111] : memref<?xf64>
          %113 = memref.load %arg2[%108] : memref<?xf64>
          %114 = arith.mulf %112, %113 : f64
          %115 = memref.load %alloca[] : memref<f64>
          %116 = arith.addf %115, %114 : f64
          memref.store %116, %alloca[] : memref<f64>
          %c3 = arith.constant 3 : index
          %117 = arith.addi %90, %c3 : index
          %c-1_68 = arith.constant -1 : index
          %118 = arith.muli %117, %c-1_68 : index
          %119 = arith.addi %10, %118 : index
          %c-1_69 = arith.constant -1 : index
          %120 = arith.addi %119, %c-1_69 : index
          %121 = memref.load %arg1[%120] : memref<?xf64>
          %122 = memref.load %arg2[%117] : memref<?xf64>
          %123 = arith.mulf %121, %122 : f64
          %124 = memref.load %alloca[] : memref<f64>
          %125 = arith.addf %124, %123 : f64
          memref.store %125, %alloca[] : memref<f64>
        }
        %c0_16 = arith.constant 0 : index
        %c32_17 = arith.constant 32 : index
        %25 = arith.muli %arg3, %c32_17 : index
        %26 = arith.addi %arg4, %25 : index
        %c32_18 = arith.constant 32 : index
        %27 = arith.muli %arg3, %c32_18 : index
        %28 = arith.addi %arg4, %27 : index
        %c1_19 = arith.constant 1 : index
        %29 = arith.addi %28, %c1_19 : index
        %c4_20 = arith.constant 4 : index
        %c0_21 = arith.constant 0 : index
        %c-1_22 = arith.constant -1 : index
        %30 = arith.cmpi slt, %29, %c0_21 : index
        %31 = arith.subi %c-1_22, %29 : index
        %32 = arith.select %30, %31, %29 : index
        %33 = arith.divsi %32, %c4_20 : index
        %34 = arith.subi %c-1_22, %33 : index
        %35 = arith.select %30, %34, %33 : index
        %c-4 = arith.constant -4 : index
        %36 = arith.muli %35, %c-4 : index
        %37 = arith.addi %26, %36 : index
        %c1_23 = arith.constant 1 : index
        %38 = arith.addi %37, %c1_23 : index
        %c1_24 = arith.constant 1 : index
        scf.for %arg5 = %c0_16 to %38 step %c1_24 {
          %c4_59 = arith.constant 4 : index
          %c0_60 = arith.constant 0 : index
          %c-1_61 = arith.constant -1 : index
          %90 = arith.cmpi slt, %10, %c0_60 : index
          %91 = arith.subi %c-1_61, %10 : index
          %92 = arith.select %90, %91, %10 : index
          %93 = arith.divsi %92, %c4_59 : index
          %94 = arith.subi %c-1_61, %93 : index
          %95 = arith.select %90, %94, %93 : index
          %c4_62 = arith.constant 4 : index
          %96 = arith.muli %95, %c4_62 : index
          %97 = arith.addi %arg5, %96 : index
          %c-1_63 = arith.constant -1 : index
          %98 = arith.muli %97, %c-1_63 : index
          %99 = arith.addi %10, %98 : index
          %c-1_64 = arith.constant -1 : index
          %100 = arith.addi %99, %c-1_64 : index
          %101 = memref.load %arg1[%100] : memref<?xf64>
          %102 = memref.load %arg2[%97] : memref<?xf64>
          %103 = arith.mulf %101, %102 : f64
          %104 = memref.load %alloca[] : memref<f64>
          %105 = arith.addf %104, %103 : f64
          memref.store %105, %alloca[] : memref<f64>
        }
        %39 = memref.load %arg1[%10] : memref<?xf64>
        %40 = memref.load %alloca[] : memref<f64>
        %41 = arith.addf %39, %40 : f64
        %42 = arith.negf %41 : f64
        %43 = arith.divf %42, %15 : f64
        memref.store %43, %alloca_2[] : memref<f64>
        %c0_25 = arith.constant 0 : index
        %c32_26 = arith.constant 32 : index
        %44 = arith.muli %arg3, %c32_26 : index
        %45 = arith.addi %arg4, %44 : index
        %c1_27 = arith.constant 1 : index
        %46 = arith.addi %45, %c1_27 : index
        %c4_28 = arith.constant 4 : index
        %c0_29 = arith.constant 0 : index
        %c-1_30 = arith.constant -1 : index
        %47 = arith.cmpi slt, %46, %c0_29 : index
        %48 = arith.subi %c-1_30, %46 : index
        %49 = arith.select %47, %48, %46 : index
        %50 = arith.divsi %49, %c4_28 : index
        %51 = arith.subi %c-1_30, %50 : index
        %52 = arith.select %47, %51, %50 : index
        %c1_31 = arith.constant 1 : index
        scf.parallel (%arg5) = (%c0_25) to (%52) step (%c1_31) {
          %c4_59 = arith.constant 4 : index
          %90 = arith.muli %arg5, %c4_59 : index
          %91 = memref.load %arg2[%90] : memref<?xf64>
          %c-1_60 = arith.constant -1 : index
          %92 = arith.muli %90, %c-1_60 : index
          %93 = arith.addi %10, %92 : index
          %c-1_61 = arith.constant -1 : index
          %94 = arith.addi %93, %c-1_61 : index
          %95 = memref.load %arg2[%94] : memref<?xf64>
          %96 = arith.mulf %43, %95 : f64
          %97 = arith.addf %91, %96 : f64
          memref.store %97, %alloca_3[%90] : memref<40xf64>
          %c1_62 = arith.constant 1 : index
          %98 = arith.addi %90, %c1_62 : index
          %99 = memref.load %arg2[%98] : memref<?xf64>
          %c-1_63 = arith.constant -1 : index
          %100 = arith.muli %98, %c-1_63 : index
          %101 = arith.addi %10, %100 : index
          %c-1_64 = arith.constant -1 : index
          %102 = arith.addi %101, %c-1_64 : index
          %103 = memref.load %arg2[%102] : memref<?xf64>
          %104 = arith.mulf %43, %103 : f64
          %105 = arith.addf %99, %104 : f64
          memref.store %105, %alloca_3[%98] : memref<40xf64>
          %c2_65 = arith.constant 2 : index
          %106 = arith.addi %90, %c2_65 : index
          %107 = memref.load %arg2[%106] : memref<?xf64>
          %c-1_66 = arith.constant -1 : index
          %108 = arith.muli %106, %c-1_66 : index
          %109 = arith.addi %10, %108 : index
          %c-1_67 = arith.constant -1 : index
          %110 = arith.addi %109, %c-1_67 : index
          %111 = memref.load %arg2[%110] : memref<?xf64>
          %112 = arith.mulf %43, %111 : f64
          %113 = arith.addf %107, %112 : f64
          memref.store %113, %alloca_3[%106] : memref<40xf64>
          %c3 = arith.constant 3 : index
          %114 = arith.addi %90, %c3 : index
          %115 = memref.load %arg2[%114] : memref<?xf64>
          %c-1_68 = arith.constant -1 : index
          %116 = arith.muli %114, %c-1_68 : index
          %117 = arith.addi %10, %116 : index
          %c-1_69 = arith.constant -1 : index
          %118 = arith.addi %117, %c-1_69 : index
          %119 = memref.load %arg2[%118] : memref<?xf64>
          %120 = arith.mulf %43, %119 : f64
          %121 = arith.addf %115, %120 : f64
          memref.store %121, %alloca_3[%114] : memref<40xf64>
          scf.reduce 
        }
        %c0_32 = arith.constant 0 : index
        %c32_33 = arith.constant 32 : index
        %53 = arith.muli %arg3, %c32_33 : index
        %54 = arith.addi %arg4, %53 : index
        %c32_34 = arith.constant 32 : index
        %55 = arith.muli %arg3, %c32_34 : index
        %56 = arith.addi %arg4, %55 : index
        %c1_35 = arith.constant 1 : index
        %57 = arith.addi %56, %c1_35 : index
        %c4_36 = arith.constant 4 : index
        %c0_37 = arith.constant 0 : index
        %c-1_38 = arith.constant -1 : index
        %58 = arith.cmpi slt, %57, %c0_37 : index
        %59 = arith.subi %c-1_38, %57 : index
        %60 = arith.select %58, %59, %57 : index
        %61 = arith.divsi %60, %c4_36 : index
        %62 = arith.subi %c-1_38, %61 : index
        %63 = arith.select %58, %62, %61 : index
        %c-4_39 = arith.constant -4 : index
        %64 = arith.muli %63, %c-4_39 : index
        %65 = arith.addi %54, %64 : index
        %c1_40 = arith.constant 1 : index
        %66 = arith.addi %65, %c1_40 : index
        %c1_41 = arith.constant 1 : index
        scf.parallel (%arg5) = (%c0_32) to (%66) step (%c1_41) {
          %c4_59 = arith.constant 4 : index
          %c0_60 = arith.constant 0 : index
          %c-1_61 = arith.constant -1 : index
          %90 = arith.cmpi slt, %10, %c0_60 : index
          %91 = arith.subi %c-1_61, %10 : index
          %92 = arith.select %90, %91, %10 : index
          %93 = arith.divsi %92, %c4_59 : index
          %94 = arith.subi %c-1_61, %93 : index
          %95 = arith.select %90, %94, %93 : index
          %c4_62 = arith.constant 4 : index
          %96 = arith.muli %95, %c4_62 : index
          %97 = arith.addi %96, %arg5 : index
          %98 = memref.load %arg2[%97] : memref<?xf64>
          %c-1_63 = arith.constant -1 : index
          %99 = arith.muli %97, %c-1_63 : index
          %100 = arith.addi %10, %99 : index
          %c-1_64 = arith.constant -1 : index
          %101 = arith.addi %100, %c-1_64 : index
          %102 = memref.load %arg2[%101] : memref<?xf64>
          %103 = arith.mulf %43, %102 : f64
          %104 = arith.addf %98, %103 : f64
          memref.store %104, %alloca_3[%97] : memref<40xf64>
          scf.reduce 
        }
        %c0_42 = arith.constant 0 : index
        %c32_43 = arith.constant 32 : index
        %67 = arith.muli %arg3, %c32_43 : index
        %68 = arith.addi %arg4, %67 : index
        %c1_44 = arith.constant 1 : index
        %69 = arith.addi %68, %c1_44 : index
        %c4_45 = arith.constant 4 : index
        %c0_46 = arith.constant 0 : index
        %c-1_47 = arith.constant -1 : index
        %70 = arith.cmpi slt, %69, %c0_46 : index
        %71 = arith.subi %c-1_47, %69 : index
        %72 = arith.select %70, %71, %69 : index
        %73 = arith.divsi %72, %c4_45 : index
        %74 = arith.subi %c-1_47, %73 : index
        %75 = arith.select %70, %74, %73 : index
        %c1_48 = arith.constant 1 : index
        scf.parallel (%arg5) = (%c0_42) to (%75) step (%c1_48) {
          %c4_59 = arith.constant 4 : index
          %90 = arith.muli %arg5, %c4_59 : index
          %91 = memref.load %alloca_3[%90] : memref<40xf64>
          memref.store %91, %arg2[%90] : memref<?xf64>
          %c1_60 = arith.constant 1 : index
          %92 = arith.addi %90, %c1_60 : index
          %93 = memref.load %alloca_3[%92] : memref<40xf64>
          memref.store %93, %arg2[%92] : memref<?xf64>
          %c2_61 = arith.constant 2 : index
          %94 = arith.addi %90, %c2_61 : index
          %95 = memref.load %alloca_3[%94] : memref<40xf64>
          memref.store %95, %arg2[%94] : memref<?xf64>
          %c3 = arith.constant 3 : index
          %96 = arith.addi %90, %c3 : index
          %97 = memref.load %alloca_3[%96] : memref<40xf64>
          memref.store %97, %arg2[%96] : memref<?xf64>
          scf.reduce 
        }
        %c0_49 = arith.constant 0 : index
        %c32_50 = arith.constant 32 : index
        %76 = arith.muli %arg3, %c32_50 : index
        %77 = arith.addi %arg4, %76 : index
        %c32_51 = arith.constant 32 : index
        %78 = arith.muli %arg3, %c32_51 : index
        %79 = arith.addi %arg4, %78 : index
        %c1_52 = arith.constant 1 : index
        %80 = arith.addi %79, %c1_52 : index
        %c4_53 = arith.constant 4 : index
        %c0_54 = arith.constant 0 : index
        %c-1_55 = arith.constant -1 : index
        %81 = arith.cmpi slt, %80, %c0_54 : index
        %82 = arith.subi %c-1_55, %80 : index
        %83 = arith.select %81, %82, %80 : index
        %84 = arith.divsi %83, %c4_53 : index
        %85 = arith.subi %c-1_55, %84 : index
        %86 = arith.select %81, %85, %84 : index
        %c-4_56 = arith.constant -4 : index
        %87 = arith.muli %86, %c-4_56 : index
        %88 = arith.addi %77, %87 : index
        %c1_57 = arith.constant 1 : index
        %89 = arith.addi %88, %c1_57 : index
        %c1_58 = arith.constant 1 : index
        scf.parallel (%arg5) = (%c0_49) to (%89) step (%c1_58) {
          %c4_59 = arith.constant 4 : index
          %c0_60 = arith.constant 0 : index
          %c-1_61 = arith.constant -1 : index
          %90 = arith.cmpi slt, %10, %c0_60 : index
          %91 = arith.subi %c-1_61, %10 : index
          %92 = arith.select %90, %91, %10 : index
          %93 = arith.divsi %92, %c4_59 : index
          %94 = arith.subi %c-1_61, %93 : index
          %95 = arith.select %90, %94, %93 : index
          %c4_62 = arith.constant 4 : index
          %96 = arith.muli %95, %c4_62 : index
          %97 = arith.addi %96, %arg5 : index
          %98 = memref.load %alloca_3[%97] : memref<40xf64>
          memref.store %98, %arg2[%97] : memref<?xf64>
          scf.reduce 
        }
        memref.store %43, %arg2[%10] : memref<?xf64>
      }
    }
    return
  }
}

