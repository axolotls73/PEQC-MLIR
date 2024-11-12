module {
  func.func @kernel_adi(%arg0: i32, %arg1: i32, %arg2: memref<?x20xf64>, %arg3: memref<?x20xf64>, %arg4: memref<?x20xf64>, %arg5: memref<?x20xf64>) {
    %cst = arith.constant 9.9999999999999982 : f64
    %cst_0 = arith.constant -18.999999999999996 : f64
    %cst_1 = arith.constant -9.9999999999999982 : f64
    %cst_2 = arith.constant -19.999999999999996 : f64
    %cst_3 = arith.constant 40.999999999999993 : f64
    %cst_4 = arith.constant 19.999999999999996 : f64
    %cst_5 = arith.constant 0.000000e+00 : f64
    %cst_6 = arith.constant 1.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    memref.store %cst_6, %arg3[%c0, %c1] : memref<?x20xf64>
    %c1_7 = arith.constant 1 : index
    %c0_8 = arith.constant 0 : index
    memref.store %cst_5, %arg4[%c1_7, %c0_8] : memref<?x20xf64>
    %c0_9 = arith.constant 0 : index
    %c1_10 = arith.constant 1 : index
    %0 = memref.load %arg3[%c0_9, %c1_10] : memref<?x20xf64>
    %c1_11 = arith.constant 1 : index
    %c0_12 = arith.constant 0 : index
    memref.store %0, %arg5[%c1_11, %c0_12] : memref<?x20xf64>
    %c1_13 = arith.constant 1 : index
    %c0_14 = arith.constant 0 : index
    %1 = memref.load %arg4[%c1_13, %c0_14] : memref<?x20xf64>
    %2 = arith.mulf %1, %cst_2 : f64
    %3 = arith.addf %2, %cst_3 : f64
    %4 = arith.divf %cst_4, %3 : f64
    %c1_15 = arith.constant 1 : index
    %c1_16 = arith.constant 1 : index
    memref.store %4, %arg4[%c1_15, %c1_16] : memref<?x20xf64>
    %c1_17 = arith.constant 1 : index
    %c0_18 = arith.constant 0 : index
    %5 = memref.load %arg2[%c1_17, %c0_18] : memref<?x20xf64>
    %6 = arith.mulf %5, %cst : f64
    %c1_19 = arith.constant 1 : index
    %c1_20 = arith.constant 1 : index
    %7 = memref.load %arg2[%c1_19, %c1_20] : memref<?x20xf64>
    %8 = arith.mulf %7, %cst_0 : f64
    %9 = arith.addf %6, %8 : f64
    %c1_21 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %10 = memref.load %arg2[%c1_21, %c2] : memref<?x20xf64>
    %11 = arith.mulf %10, %cst_1 : f64
    %12 = arith.subf %9, %11 : f64
    %c1_22 = arith.constant 1 : index
    %c0_23 = arith.constant 0 : index
    %13 = memref.load %arg5[%c1_22, %c0_23] : memref<?x20xf64>
    %14 = arith.mulf %13, %cst_2 : f64
    %15 = arith.subf %12, %14 : f64
    %16 = arith.divf %15, %3 : f64
    %c1_24 = arith.constant 1 : index
    %c1_25 = arith.constant 1 : index
    memref.store %16, %arg5[%c1_24, %c1_25] : memref<?x20xf64>
    %c19 = arith.constant 19 : index
    %c1_26 = arith.constant 1 : index
    memref.store %cst_6, %arg3[%c19, %c1_26] : memref<?x20xf64>
    %c0_27 = arith.constant 0 : index
    %c4 = arith.constant 4 : index
    %c1_28 = arith.constant 1 : index
    scf.for %arg6 = %c0_27 to %c4 step %c1_28 {
      %c4_32 = arith.constant 4 : index
      %17 = arith.muli %arg6, %c4_32 : index
      %c1_33 = arith.constant 1 : index
      %18 = arith.addi %17, %c1_33 : index
      %c0_34 = arith.constant 0 : index
      %c1_35 = arith.constant 1 : index
      %c1_36 = arith.constant 1 : index
      scf.for %arg7 = %c0_34 to %c1_35 step %c1_36 {
        %c4_37 = arith.constant 4 : index
        %19 = arith.muli %arg7, %c4_37 : index
        %20 = arith.addi %18, %19 : index
        %c1_38 = arith.constant 1 : index
        %c-1 = arith.constant -1 : index
        %21 = arith.muli %20, %c-1 : index
        %c19_39 = arith.constant 19 : index
        %22 = arith.addi %21, %c19_39 : index
        %23 = memref.load %arg4[%c1_38, %22] : memref<?x20xf64>
        %c-1_40 = arith.constant -1 : index
        %24 = arith.muli %20, %c-1_40 : index
        %c20 = arith.constant 20 : index
        %25 = arith.addi %24, %c20 : index
        %c1_41 = arith.constant 1 : index
        %26 = memref.load %arg3[%25, %c1_41] : memref<?x20xf64>
        %27 = arith.mulf %23, %26 : f64
        %c1_42 = arith.constant 1 : index
        %c-1_43 = arith.constant -1 : index
        %28 = arith.muli %20, %c-1_43 : index
        %c19_44 = arith.constant 19 : index
        %29 = arith.addi %28, %c19_44 : index
        %30 = memref.load %arg5[%c1_42, %29] : memref<?x20xf64>
        %31 = arith.addf %27, %30 : f64
        %c-1_45 = arith.constant -1 : index
        %32 = arith.muli %20, %c-1_45 : index
        %c19_46 = arith.constant 19 : index
        %33 = arith.addi %32, %c19_46 : index
        %c1_47 = arith.constant 1 : index
        memref.store %31, %arg3[%33, %c1_47] : memref<?x20xf64>
        %c1_48 = arith.constant 1 : index
        %34 = arith.addi %20, %c1_48 : index
        %c1_49 = arith.constant 1 : index
        %c-1_50 = arith.constant -1 : index
        %35 = arith.muli %34, %c-1_50 : index
        %c19_51 = arith.constant 19 : index
        %36 = arith.addi %35, %c19_51 : index
        %37 = memref.load %arg4[%c1_49, %36] : memref<?x20xf64>
        %c-1_52 = arith.constant -1 : index
        %38 = arith.muli %34, %c-1_52 : index
        %c20_53 = arith.constant 20 : index
        %39 = arith.addi %38, %c20_53 : index
        %c1_54 = arith.constant 1 : index
        %40 = memref.load %arg3[%39, %c1_54] : memref<?x20xf64>
        %41 = arith.mulf %37, %40 : f64
        %c1_55 = arith.constant 1 : index
        %c-1_56 = arith.constant -1 : index
        %42 = arith.muli %34, %c-1_56 : index
        %c19_57 = arith.constant 19 : index
        %43 = arith.addi %42, %c19_57 : index
        %44 = memref.load %arg5[%c1_55, %43] : memref<?x20xf64>
        %45 = arith.addf %41, %44 : f64
        %c-1_58 = arith.constant -1 : index
        %46 = arith.muli %34, %c-1_58 : index
        %c19_59 = arith.constant 19 : index
        %47 = arith.addi %46, %c19_59 : index
        %c1_60 = arith.constant 1 : index
        memref.store %45, %arg3[%47, %c1_60] : memref<?x20xf64>
        %c2_61 = arith.constant 2 : index
        %48 = arith.addi %20, %c2_61 : index
        %c1_62 = arith.constant 1 : index
        %c-1_63 = arith.constant -1 : index
        %49 = arith.muli %48, %c-1_63 : index
        %c19_64 = arith.constant 19 : index
        %50 = arith.addi %49, %c19_64 : index
        %51 = memref.load %arg4[%c1_62, %50] : memref<?x20xf64>
        %c-1_65 = arith.constant -1 : index
        %52 = arith.muli %48, %c-1_65 : index
        %c20_66 = arith.constant 20 : index
        %53 = arith.addi %52, %c20_66 : index
        %c1_67 = arith.constant 1 : index
        %54 = memref.load %arg3[%53, %c1_67] : memref<?x20xf64>
        %55 = arith.mulf %51, %54 : f64
        %c1_68 = arith.constant 1 : index
        %c-1_69 = arith.constant -1 : index
        %56 = arith.muli %48, %c-1_69 : index
        %c19_70 = arith.constant 19 : index
        %57 = arith.addi %56, %c19_70 : index
        %58 = memref.load %arg5[%c1_68, %57] : memref<?x20xf64>
        %59 = arith.addf %55, %58 : f64
        %c-1_71 = arith.constant -1 : index
        %60 = arith.muli %48, %c-1_71 : index
        %c19_72 = arith.constant 19 : index
        %61 = arith.addi %60, %c19_72 : index
        %c1_73 = arith.constant 1 : index
        memref.store %59, %arg3[%61, %c1_73] : memref<?x20xf64>
        %c3 = arith.constant 3 : index
        %62 = arith.addi %20, %c3 : index
        %c1_74 = arith.constant 1 : index
        %c-1_75 = arith.constant -1 : index
        %63 = arith.muli %62, %c-1_75 : index
        %c19_76 = arith.constant 19 : index
        %64 = arith.addi %63, %c19_76 : index
        %65 = memref.load %arg4[%c1_74, %64] : memref<?x20xf64>
        %c-1_77 = arith.constant -1 : index
        %66 = arith.muli %62, %c-1_77 : index
        %c20_78 = arith.constant 20 : index
        %67 = arith.addi %66, %c20_78 : index
        %c1_79 = arith.constant 1 : index
        %68 = memref.load %arg3[%67, %c1_79] : memref<?x20xf64>
        %69 = arith.mulf %65, %68 : f64
        %c1_80 = arith.constant 1 : index
        %c-1_81 = arith.constant -1 : index
        %70 = arith.muli %62, %c-1_81 : index
        %c19_82 = arith.constant 19 : index
        %71 = arith.addi %70, %c19_82 : index
        %72 = memref.load %arg5[%c1_80, %71] : memref<?x20xf64>
        %73 = arith.addf %69, %72 : f64
        %c-1_83 = arith.constant -1 : index
        %74 = arith.muli %62, %c-1_83 : index
        %c19_84 = arith.constant 19 : index
        %75 = arith.addi %74, %c19_84 : index
        %c1_85 = arith.constant 1 : index
        memref.store %73, %arg3[%75, %c1_85] : memref<?x20xf64>
      }
    }
    %c0_29 = arith.constant 0 : index
    %c2_30 = arith.constant 2 : index
    %c1_31 = arith.constant 1 : index
    scf.for %arg6 = %c0_29 to %c2_30 step %c1_31 {
      %c17 = arith.constant 17 : index
      %17 = arith.addi %arg6, %c17 : index
      %c0_32 = arith.constant 0 : index
      %c1_33 = arith.constant 1 : index
      %c1_34 = arith.constant 1 : index
      scf.parallel (%arg7) = (%c0_32) to (%c1_33) step (%c1_34) {
        %18 = arith.addi %17, %arg7 : index
        %c1_35 = arith.constant 1 : index
        %c-1 = arith.constant -1 : index
        %19 = arith.muli %18, %c-1 : index
        %c19_36 = arith.constant 19 : index
        %20 = arith.addi %19, %c19_36 : index
        %21 = memref.load %arg4[%c1_35, %20] : memref<?x20xf64>
        %c-1_37 = arith.constant -1 : index
        %22 = arith.muli %18, %c-1_37 : index
        %c20 = arith.constant 20 : index
        %23 = arith.addi %22, %c20 : index
        %c1_38 = arith.constant 1 : index
        %24 = memref.load %arg3[%23, %c1_38] : memref<?x20xf64>
        %25 = arith.mulf %21, %24 : f64
        %c1_39 = arith.constant 1 : index
        %c-1_40 = arith.constant -1 : index
        %26 = arith.muli %18, %c-1_40 : index
        %c19_41 = arith.constant 19 : index
        %27 = arith.addi %26, %c19_41 : index
        %28 = memref.load %arg5[%c1_39, %27] : memref<?x20xf64>
        %29 = arith.addf %25, %28 : f64
        %c-1_42 = arith.constant -1 : index
        %30 = arith.muli %18, %c-1_42 : index
        %c19_43 = arith.constant 19 : index
        %31 = arith.addi %30, %c19_43 : index
        %c1_44 = arith.constant 1 : index
        memref.store %29, %arg3[%31, %c1_44] : memref<?x20xf64>
        scf.reduce 
      }
    }
    return
  }
}

