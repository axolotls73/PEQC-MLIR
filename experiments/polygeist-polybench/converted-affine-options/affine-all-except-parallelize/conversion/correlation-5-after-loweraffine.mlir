module {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %cst = arith.constant 1.000000e-01 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %cst_1 = arith.constant 1.000000e+00 : f64
    %alloca = memref.alloca() {scop.scratchpad} : memref<1xf64>
    %c27 = arith.constant 27 : index
    %c27_2 = arith.constant 27 : index
    memref.store %cst_1, %arg4[%c27, %c27_2] : memref<?x28xf64>
    %c0 = arith.constant 0 : index
    %c27_3 = arith.constant 27 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %c27_3 step %c1 {
      %c0_35 = arith.constant 0 : index
      %c1_36 = arith.constant 1 : index
      %c1_37 = arith.constant 1 : index
      scf.for %arg8 = %c0_35 to %c1_36 step %c1_37 {
        %5 = arith.addi %arg7, %arg8 : index
        %c0_38 = arith.constant 0 : index
        %c-1 = arith.constant -1 : index
        %6 = arith.muli %arg7, %c-1 : index
        %c-1_39 = arith.constant -1 : index
        %7 = arith.muli %arg8, %c-1_39 : index
        %8 = arith.addi %6, %7 : index
        %c27_40 = arith.constant 27 : index
        %9 = arith.addi %8, %c27_40 : index
        %c4 = arith.constant 4 : index
        %c0_41 = arith.constant 0 : index
        %c-1_42 = arith.constant -1 : index
        %10 = arith.cmpi slt, %9, %c0_41 : index
        %11 = arith.subi %c-1_42, %9 : index
        %12 = arith.select %10, %11, %9 : index
        %13 = arith.divsi %12, %c4 : index
        %14 = arith.subi %c-1_42, %13 : index
        %15 = arith.select %10, %14, %13 : index
        %c1_43 = arith.constant 1 : index
        scf.for %arg9 = %c0_38 to %15 step %c1_43 {
          %c4_55 = arith.constant 4 : index
          %32 = arith.muli %arg9, %c4_55 : index
          %33 = arith.addi %5, %32 : index
          %c1_56 = arith.constant 1 : index
          %34 = arith.addi %33, %c1_56 : index
          memref.store %cst_0, %arg4[%5, %34] : memref<?x28xf64>
          %c1_57 = arith.constant 1 : index
          %35 = arith.addi %34, %c1_57 : index
          memref.store %cst_0, %arg4[%5, %35] : memref<?x28xf64>
          %c2 = arith.constant 2 : index
          %36 = arith.addi %34, %c2 : index
          memref.store %cst_0, %arg4[%5, %36] : memref<?x28xf64>
          %c3_58 = arith.constant 3 : index
          %37 = arith.addi %34, %c3_58 : index
          memref.store %cst_0, %arg4[%5, %37] : memref<?x28xf64>
        }
        %c0_44 = arith.constant 0 : index
        %c-1_45 = arith.constant -1 : index
        %16 = arith.muli %arg7, %c-1_45 : index
        %c-1_46 = arith.constant -1 : index
        %17 = arith.muli %arg8, %c-1_46 : index
        %18 = arith.addi %16, %17 : index
        %c-1_47 = arith.constant -1 : index
        %19 = arith.muli %arg7, %c-1_47 : index
        %c-1_48 = arith.constant -1 : index
        %20 = arith.muli %arg8, %c-1_48 : index
        %21 = arith.addi %19, %20 : index
        %c27_49 = arith.constant 27 : index
        %22 = arith.addi %21, %c27_49 : index
        %c4_50 = arith.constant 4 : index
        %c0_51 = arith.constant 0 : index
        %c-1_52 = arith.constant -1 : index
        %23 = arith.cmpi slt, %22, %c0_51 : index
        %24 = arith.subi %c-1_52, %22 : index
        %25 = arith.select %23, %24, %22 : index
        %26 = arith.divsi %25, %c4_50 : index
        %27 = arith.subi %c-1_52, %26 : index
        %28 = arith.select %23, %27, %26 : index
        %c-4 = arith.constant -4 : index
        %29 = arith.muli %28, %c-4 : index
        %30 = arith.addi %18, %29 : index
        %c27_53 = arith.constant 27 : index
        %31 = arith.addi %30, %c27_53 : index
        %c1_54 = arith.constant 1 : index
        scf.for %arg9 = %c0_44 to %31 step %c1_54 {
          %32 = arith.addi %5, %arg9 : index
          %c-1_55 = arith.constant -1 : index
          %33 = arith.muli %5, %c-1_55 : index
          %c27_56 = arith.constant 27 : index
          %34 = arith.addi %33, %c27_56 : index
          %c4_57 = arith.constant 4 : index
          %c0_58 = arith.constant 0 : index
          %c-1_59 = arith.constant -1 : index
          %35 = arith.cmpi slt, %34, %c0_58 : index
          %36 = arith.subi %c-1_59, %34 : index
          %37 = arith.select %35, %36, %34 : index
          %38 = arith.divsi %37, %c4_57 : index
          %39 = arith.subi %c-1_59, %38 : index
          %40 = arith.select %35, %39, %38 : index
          %c4_60 = arith.constant 4 : index
          %41 = arith.muli %40, %c4_60 : index
          %42 = arith.addi %32, %41 : index
          %c1_61 = arith.constant 1 : index
          %43 = arith.addi %42, %c1_61 : index
          memref.store %cst_0, %arg4[%5, %43] : memref<?x28xf64>
        }
      }
    }
    %c0_4 = arith.constant 0 : index
    %c6 = arith.constant 6 : index
    %c1_5 = arith.constant 1 : index
    scf.for %arg7 = %c0_4 to %c6 step %c1_5 {
      %c4 = arith.constant 4 : index
      %5 = arith.muli %arg7, %c4 : index
      %c0_35 = arith.constant 0 : index
      %c1_36 = arith.constant 1 : index
      %c1_37 = arith.constant 1 : index
      scf.for %arg8 = %c0_35 to %c1_36 step %c1_37 {
        %c4_38 = arith.constant 4 : index
        %6 = arith.muli %arg8, %c4_38 : index
        %7 = arith.addi %5, %6 : index
        memref.store %cst_1, %arg4[%7, %7] : memref<?x28xf64>
        %c1_39 = arith.constant 1 : index
        %8 = arith.addi %7, %c1_39 : index
        memref.store %cst_1, %arg4[%8, %8] : memref<?x28xf64>
        %c2 = arith.constant 2 : index
        %9 = arith.addi %7, %c2 : index
        memref.store %cst_1, %arg4[%9, %9] : memref<?x28xf64>
        %c3_40 = arith.constant 3 : index
        %10 = arith.addi %7, %c3_40 : index
        memref.store %cst_1, %arg4[%10, %10] : memref<?x28xf64>
      }
    }
    %c0_6 = arith.constant 0 : index
    %c3 = arith.constant 3 : index
    %c1_7 = arith.constant 1 : index
    scf.for %arg7 = %c0_6 to %c3 step %c1_7 {
      %c24 = arith.constant 24 : index
      %5 = arith.addi %arg7, %c24 : index
      %c0_35 = arith.constant 0 : index
      %c1_36 = arith.constant 1 : index
      %c1_37 = arith.constant 1 : index
      scf.for %arg8 = %c0_35 to %c1_36 step %c1_37 {
        %6 = arith.addi %5, %arg8 : index
        memref.store %cst_1, %arg4[%6, %6] : memref<?x28xf64>
      }
    }
    %0 = math.sqrt %arg2 : f64
    %c0_8 = arith.constant 0 : index
    memref.store %0, %alloca[%c0_8] : memref<1xf64>
    %c0_9 = arith.constant 0 : index
    %c7 = arith.constant 7 : index
    %c1_10 = arith.constant 1 : index
    scf.for %arg7 = %c0_9 to %c7 step %c1_10 {
      %c4 = arith.constant 4 : index
      %5 = arith.muli %arg7, %c4 : index
      %c0_35 = arith.constant 0 : index
      %c1_36 = arith.constant 1 : index
      %c1_37 = arith.constant 1 : index
      scf.for %arg8 = %c0_35 to %c1_36 step %c1_37 {
        %c4_38 = arith.constant 4 : index
        %6 = arith.muli %arg8, %c4_38 : index
        %7 = arith.addi %5, %6 : index
        memref.store %cst_0, %arg6[%7] : memref<?xf64>
        memref.store %cst_0, %arg5[%7] : memref<?xf64>
        %c1_39 = arith.constant 1 : index
        %8 = arith.addi %7, %c1_39 : index
        memref.store %cst_0, %arg6[%8] : memref<?xf64>
        memref.store %cst_0, %arg5[%8] : memref<?xf64>
        %c2 = arith.constant 2 : index
        %9 = arith.addi %7, %c2 : index
        memref.store %cst_0, %arg6[%9] : memref<?xf64>
        memref.store %cst_0, %arg5[%9] : memref<?xf64>
        %c3_40 = arith.constant 3 : index
        %10 = arith.addi %7, %c3_40 : index
        memref.store %cst_0, %arg6[%10] : memref<?xf64>
        memref.store %cst_0, %arg5[%10] : memref<?xf64>
      }
    }
    %c0_11 = arith.constant 0 : index
    %c32 = arith.constant 32 : index
    %c1_12 = arith.constant 1 : index
    scf.for %arg7 = %c0_11 to %c32 step %c1_12 {
      %c0_35 = arith.constant 0 : index
      %c7_36 = arith.constant 7 : index
      %c1_37 = arith.constant 1 : index
      scf.for %arg8 = %c0_35 to %c7_36 step %c1_37 {
        %c4 = arith.constant 4 : index
        %5 = arith.muli %arg8, %c4 : index
        %c0_38 = arith.constant 0 : index
        %c1_39 = arith.constant 1 : index
        %c1_40 = arith.constant 1 : index
        scf.for %arg9 = %c0_38 to %c1_39 step %c1_40 {
          %6 = arith.addi %arg7, %arg9 : index
          %c0_41 = arith.constant 0 : index
          %c1_42 = arith.constant 1 : index
          %c1_43 = arith.constant 1 : index
          scf.for %arg10 = %c0_41 to %c1_42 step %c1_43 {
            %c4_44 = arith.constant 4 : index
            %7 = arith.muli %arg10, %c4_44 : index
            %8 = arith.addi %5, %7 : index
            %9 = memref.load %arg5[%8] : memref<?xf64>
            %10 = memref.load %arg3[%6, %8] : memref<?x28xf64>
            %11 = arith.addf %9, %10 : f64
            memref.store %11, %arg5[%8] : memref<?xf64>
            %c1_45 = arith.constant 1 : index
            %12 = arith.addi %8, %c1_45 : index
            %13 = memref.load %arg5[%12] : memref<?xf64>
            %14 = memref.load %arg3[%6, %12] : memref<?x28xf64>
            %15 = arith.addf %13, %14 : f64
            memref.store %15, %arg5[%12] : memref<?xf64>
            %c2 = arith.constant 2 : index
            %16 = arith.addi %8, %c2 : index
            %17 = memref.load %arg5[%16] : memref<?xf64>
            %18 = memref.load %arg3[%6, %16] : memref<?x28xf64>
            %19 = arith.addf %17, %18 : f64
            memref.store %19, %arg5[%16] : memref<?xf64>
            %c3_46 = arith.constant 3 : index
            %20 = arith.addi %8, %c3_46 : index
            %21 = memref.load %arg5[%20] : memref<?xf64>
            %22 = memref.load %arg3[%6, %20] : memref<?x28xf64>
            %23 = arith.addf %21, %22 : f64
            memref.store %23, %arg5[%20] : memref<?xf64>
          }
        }
      }
    }
    %c0_13 = arith.constant 0 : index
    %c7_14 = arith.constant 7 : index
    %c1_15 = arith.constant 1 : index
    scf.for %arg7 = %c0_13 to %c7_14 step %c1_15 {
      %c4 = arith.constant 4 : index
      %5 = arith.muli %arg7, %c4 : index
      %c0_35 = arith.constant 0 : index
      %c1_36 = arith.constant 1 : index
      %c1_37 = arith.constant 1 : index
      scf.for %arg8 = %c0_35 to %c1_36 step %c1_37 {
        %c4_38 = arith.constant 4 : index
        %6 = arith.muli %arg8, %c4_38 : index
        %7 = arith.addi %5, %6 : index
        %8 = memref.load %arg5[%7] : memref<?xf64>
        %9 = arith.divf %8, %arg2 : f64
        memref.store %9, %arg5[%7] : memref<?xf64>
        %c1_39 = arith.constant 1 : index
        %10 = arith.addi %7, %c1_39 : index
        %11 = memref.load %arg5[%10] : memref<?xf64>
        %12 = arith.divf %11, %arg2 : f64
        memref.store %12, %arg5[%10] : memref<?xf64>
        %c2 = arith.constant 2 : index
        %13 = arith.addi %7, %c2 : index
        %14 = memref.load %arg5[%13] : memref<?xf64>
        %15 = arith.divf %14, %arg2 : f64
        memref.store %15, %arg5[%13] : memref<?xf64>
        %c3_40 = arith.constant 3 : index
        %16 = arith.addi %7, %c3_40 : index
        %17 = memref.load %arg5[%16] : memref<?xf64>
        %18 = arith.divf %17, %arg2 : f64
        memref.store %18, %arg5[%16] : memref<?xf64>
      }
    }
    %c0_16 = arith.constant 0 : index
    %c32_17 = arith.constant 32 : index
    %c1_18 = arith.constant 1 : index
    scf.for %arg7 = %c0_16 to %c32_17 step %c1_18 {
      %c0_35 = arith.constant 0 : index
      %c7_36 = arith.constant 7 : index
      %c1_37 = arith.constant 1 : index
      scf.for %arg8 = %c0_35 to %c7_36 step %c1_37 {
        %c4 = arith.constant 4 : index
        %5 = arith.muli %arg8, %c4 : index
        %c0_38 = arith.constant 0 : index
        %c1_39 = arith.constant 1 : index
        %c1_40 = arith.constant 1 : index
        scf.for %arg9 = %c0_38 to %c1_39 step %c1_40 {
          %6 = arith.addi %arg7, %arg9 : index
          %c0_41 = arith.constant 0 : index
          %c1_42 = arith.constant 1 : index
          %c1_43 = arith.constant 1 : index
          scf.for %arg10 = %c0_41 to %c1_42 step %c1_43 {
            %c4_44 = arith.constant 4 : index
            %7 = arith.muli %arg10, %c4_44 : index
            %8 = arith.addi %5, %7 : index
            %9 = memref.load %arg6[%8] : memref<?xf64>
            %10 = memref.load %arg3[%6, %8] : memref<?x28xf64>
            %11 = memref.load %arg5[%8] : memref<?xf64>
            %12 = arith.subf %10, %11 : f64
            %13 = arith.mulf %12, %12 : f64
            %14 = arith.addf %9, %13 : f64
            memref.store %14, %arg6[%8] : memref<?xf64>
            %15 = memref.load %arg3[%6, %8] : memref<?x28xf64>
            %16 = memref.load %arg5[%8] : memref<?xf64>
            %17 = arith.subf %15, %16 : f64
            memref.store %17, %arg3[%6, %8] : memref<?x28xf64>
            %c1_45 = arith.constant 1 : index
            %18 = arith.addi %8, %c1_45 : index
            %19 = memref.load %arg6[%18] : memref<?xf64>
            %20 = memref.load %arg3[%6, %18] : memref<?x28xf64>
            %21 = memref.load %arg5[%18] : memref<?xf64>
            %22 = arith.subf %20, %21 : f64
            %23 = arith.mulf %22, %22 : f64
            %24 = arith.addf %19, %23 : f64
            memref.store %24, %arg6[%18] : memref<?xf64>
            %25 = memref.load %arg3[%6, %18] : memref<?x28xf64>
            %26 = memref.load %arg5[%18] : memref<?xf64>
            %27 = arith.subf %25, %26 : f64
            memref.store %27, %arg3[%6, %18] : memref<?x28xf64>
            %c2 = arith.constant 2 : index
            %28 = arith.addi %8, %c2 : index
            %29 = memref.load %arg6[%28] : memref<?xf64>
            %30 = memref.load %arg3[%6, %28] : memref<?x28xf64>
            %31 = memref.load %arg5[%28] : memref<?xf64>
            %32 = arith.subf %30, %31 : f64
            %33 = arith.mulf %32, %32 : f64
            %34 = arith.addf %29, %33 : f64
            memref.store %34, %arg6[%28] : memref<?xf64>
            %35 = memref.load %arg3[%6, %28] : memref<?x28xf64>
            %36 = memref.load %arg5[%28] : memref<?xf64>
            %37 = arith.subf %35, %36 : f64
            memref.store %37, %arg3[%6, %28] : memref<?x28xf64>
            %c3_46 = arith.constant 3 : index
            %38 = arith.addi %8, %c3_46 : index
            %39 = memref.load %arg6[%38] : memref<?xf64>
            %40 = memref.load %arg3[%6, %38] : memref<?x28xf64>
            %41 = memref.load %arg5[%38] : memref<?xf64>
            %42 = arith.subf %40, %41 : f64
            %43 = arith.mulf %42, %42 : f64
            %44 = arith.addf %39, %43 : f64
            memref.store %44, %arg6[%38] : memref<?xf64>
            %45 = memref.load %arg3[%6, %38] : memref<?x28xf64>
            %46 = memref.load %arg5[%38] : memref<?xf64>
            %47 = arith.subf %45, %46 : f64
            memref.store %47, %arg3[%6, %38] : memref<?x28xf64>
          }
        }
      }
    }
    %c0_19 = arith.constant 0 : index
    %c7_20 = arith.constant 7 : index
    %c1_21 = arith.constant 1 : index
    scf.for %arg7 = %c0_19 to %c7_20 step %c1_21 {
      %c4 = arith.constant 4 : index
      %5 = arith.muli %arg7, %c4 : index
      %c0_35 = arith.constant 0 : index
      %c1_36 = arith.constant 1 : index
      %c1_37 = arith.constant 1 : index
      scf.for %arg8 = %c0_35 to %c1_36 step %c1_37 {
        %c4_38 = arith.constant 4 : index
        %6 = arith.muli %arg8, %c4_38 : index
        %7 = arith.addi %5, %6 : index
        %8 = memref.load %arg6[%7] : memref<?xf64>
        %9 = arith.divf %8, %arg2 : f64
        %10 = math.sqrt %9 : f64
        %11 = arith.cmpf ole, %10, %cst : f64
        %12 = arith.select %11, %cst_1, %10 : f64
        memref.store %12, %arg6[%7] : memref<?xf64>
        %c1_39 = arith.constant 1 : index
        %13 = arith.addi %7, %c1_39 : index
        %14 = memref.load %arg6[%13] : memref<?xf64>
        %15 = arith.divf %14, %arg2 : f64
        %16 = math.sqrt %15 : f64
        %17 = arith.cmpf ole, %16, %cst : f64
        %18 = arith.select %17, %cst_1, %16 : f64
        memref.store %18, %arg6[%13] : memref<?xf64>
        %c2 = arith.constant 2 : index
        %19 = arith.addi %7, %c2 : index
        %20 = memref.load %arg6[%19] : memref<?xf64>
        %21 = arith.divf %20, %arg2 : f64
        %22 = math.sqrt %21 : f64
        %23 = arith.cmpf ole, %22, %cst : f64
        %24 = arith.select %23, %cst_1, %22 : f64
        memref.store %24, %arg6[%19] : memref<?xf64>
        %c3_40 = arith.constant 3 : index
        %25 = arith.addi %7, %c3_40 : index
        %26 = memref.load %arg6[%25] : memref<?xf64>
        %27 = arith.divf %26, %arg2 : f64
        %28 = math.sqrt %27 : f64
        %29 = arith.cmpf ole, %28, %cst : f64
        %30 = arith.select %29, %cst_1, %28 : f64
        memref.store %30, %arg6[%25] : memref<?xf64>
      }
    }
    %c0_22 = arith.constant 0 : index
    %1 = memref.load %alloca[%c0_22] : memref<1xf64>
    %c0_23 = arith.constant 0 : index
    %2 = memref.load %alloca[%c0_23] : memref<1xf64>
    %c0_24 = arith.constant 0 : index
    %3 = memref.load %alloca[%c0_24] : memref<1xf64>
    %c0_25 = arith.constant 0 : index
    %4 = memref.load %alloca[%c0_25] : memref<1xf64>
    %c0_26 = arith.constant 0 : index
    %c32_27 = arith.constant 32 : index
    %c1_28 = arith.constant 1 : index
    scf.for %arg7 = %c0_26 to %c32_27 step %c1_28 {
      %c0_35 = arith.constant 0 : index
      %c1_36 = arith.constant 1 : index
      %c1_37 = arith.constant 1 : index
      scf.for %arg8 = %c0_35 to %c1_36 step %c1_37 {
        %5 = arith.addi %arg7, %arg8 : index
        %c0_38 = arith.constant 0 : index
        %c7_39 = arith.constant 7 : index
        %c1_40 = arith.constant 1 : index
        scf.for %arg9 = %c0_38 to %c7_39 step %c1_40 {
          %c4 = arith.constant 4 : index
          %6 = arith.muli %arg9, %c4 : index
          %c0_41 = arith.constant 0 : index
          %c1_42 = arith.constant 1 : index
          %c1_43 = arith.constant 1 : index
          scf.for %arg10 = %c0_41 to %c1_42 step %c1_43 {
            %c4_44 = arith.constant 4 : index
            %7 = arith.muli %arg10, %c4_44 : index
            %8 = arith.addi %6, %7 : index
            %9 = memref.load %arg3[%5, %8] : memref<?x28xf64>
            %10 = memref.load %arg6[%8] : memref<?xf64>
            %11 = arith.mulf %1, %10 : f64
            %12 = arith.divf %9, %11 : f64
            memref.store %12, %arg3[%5, %8] : memref<?x28xf64>
            %c1_45 = arith.constant 1 : index
            %13 = arith.addi %8, %c1_45 : index
            %14 = memref.load %arg3[%5, %13] : memref<?x28xf64>
            %15 = memref.load %arg6[%13] : memref<?xf64>
            %16 = arith.mulf %2, %15 : f64
            %17 = arith.divf %14, %16 : f64
            memref.store %17, %arg3[%5, %13] : memref<?x28xf64>
            %c2 = arith.constant 2 : index
            %18 = arith.addi %8, %c2 : index
            %19 = memref.load %arg3[%5, %18] : memref<?x28xf64>
            %20 = memref.load %arg6[%18] : memref<?xf64>
            %21 = arith.mulf %3, %20 : f64
            %22 = arith.divf %19, %21 : f64
            memref.store %22, %arg3[%5, %18] : memref<?x28xf64>
            %c3_46 = arith.constant 3 : index
            %23 = arith.addi %8, %c3_46 : index
            %24 = memref.load %arg3[%5, %23] : memref<?x28xf64>
            %25 = memref.load %arg6[%23] : memref<?xf64>
            %26 = arith.mulf %4, %25 : f64
            %27 = arith.divf %24, %26 : f64
            memref.store %27, %arg3[%5, %23] : memref<?x28xf64>
          }
        }
      }
    }
    %c0_29 = arith.constant 0 : index
    %c27_30 = arith.constant 27 : index
    %c1_31 = arith.constant 1 : index
    scf.for %arg7 = %c0_29 to %c27_30 step %c1_31 {
      %c0_35 = arith.constant 0 : index
      %c1_36 = arith.constant 1 : index
      %c1_37 = arith.constant 1 : index
      scf.for %arg8 = %c0_35 to %c1_36 step %c1_37 {
        %5 = arith.addi %arg7, %arg8 : index
        %c0_38 = arith.constant 0 : index
        %c32_39 = arith.constant 32 : index
        %c1_40 = arith.constant 1 : index
        scf.for %arg9 = %c0_38 to %c32_39 step %c1_40 {
          %c0_41 = arith.constant 0 : index
          %c1_42 = arith.constant 1 : index
          %c1_43 = arith.constant 1 : index
          scf.for %arg10 = %c0_41 to %c1_42 step %c1_43 {
            %6 = arith.addi %arg9, %arg10 : index
            %7 = memref.load %arg3[%6, %5] : memref<?x28xf64>
            %8 = memref.load %arg3[%6, %5] : memref<?x28xf64>
            %9 = memref.load %arg3[%6, %5] : memref<?x28xf64>
            %10 = memref.load %arg3[%6, %5] : memref<?x28xf64>
            %c0_44 = arith.constant 0 : index
            %c-1 = arith.constant -1 : index
            %11 = arith.muli %arg7, %c-1 : index
            %c-1_45 = arith.constant -1 : index
            %12 = arith.muli %arg8, %c-1_45 : index
            %13 = arith.addi %11, %12 : index
            %c27_46 = arith.constant 27 : index
            %14 = arith.addi %13, %c27_46 : index
            %c4 = arith.constant 4 : index
            %c0_47 = arith.constant 0 : index
            %c-1_48 = arith.constant -1 : index
            %15 = arith.cmpi slt, %14, %c0_47 : index
            %16 = arith.subi %c-1_48, %14 : index
            %17 = arith.select %15, %16, %14 : index
            %18 = arith.divsi %17, %c4 : index
            %19 = arith.subi %c-1_48, %18 : index
            %20 = arith.select %15, %19, %18 : index
            %c1_49 = arith.constant 1 : index
            scf.for %arg11 = %c0_44 to %20 step %c1_49 {
              %c4_61 = arith.constant 4 : index
              %38 = arith.muli %arg11, %c4_61 : index
              %39 = arith.addi %5, %38 : index
              %c1_62 = arith.constant 1 : index
              %40 = arith.addi %39, %c1_62 : index
              %41 = memref.load %arg4[%5, %40] : memref<?x28xf64>
              %42 = memref.load %arg3[%6, %40] : memref<?x28xf64>
              %43 = arith.mulf %7, %42 : f64
              %44 = arith.addf %41, %43 : f64
              memref.store %44, %arg4[%5, %40] : memref<?x28xf64>
              %c1_63 = arith.constant 1 : index
              %45 = arith.addi %40, %c1_63 : index
              %46 = memref.load %arg4[%5, %45] : memref<?x28xf64>
              %47 = memref.load %arg3[%6, %45] : memref<?x28xf64>
              %48 = arith.mulf %8, %47 : f64
              %49 = arith.addf %46, %48 : f64
              memref.store %49, %arg4[%5, %45] : memref<?x28xf64>
              %c2 = arith.constant 2 : index
              %50 = arith.addi %40, %c2 : index
              %51 = memref.load %arg4[%5, %50] : memref<?x28xf64>
              %52 = memref.load %arg3[%6, %50] : memref<?x28xf64>
              %53 = arith.mulf %9, %52 : f64
              %54 = arith.addf %51, %53 : f64
              memref.store %54, %arg4[%5, %50] : memref<?x28xf64>
              %c3_64 = arith.constant 3 : index
              %55 = arith.addi %40, %c3_64 : index
              %56 = memref.load %arg4[%5, %55] : memref<?x28xf64>
              %57 = memref.load %arg3[%6, %55] : memref<?x28xf64>
              %58 = arith.mulf %10, %57 : f64
              %59 = arith.addf %56, %58 : f64
              memref.store %59, %arg4[%5, %55] : memref<?x28xf64>
            }
            %21 = memref.load %arg3[%6, %5] : memref<?x28xf64>
            %c0_50 = arith.constant 0 : index
            %c-1_51 = arith.constant -1 : index
            %22 = arith.muli %arg7, %c-1_51 : index
            %c-1_52 = arith.constant -1 : index
            %23 = arith.muli %arg8, %c-1_52 : index
            %24 = arith.addi %22, %23 : index
            %c-1_53 = arith.constant -1 : index
            %25 = arith.muli %arg7, %c-1_53 : index
            %c-1_54 = arith.constant -1 : index
            %26 = arith.muli %arg8, %c-1_54 : index
            %27 = arith.addi %25, %26 : index
            %c27_55 = arith.constant 27 : index
            %28 = arith.addi %27, %c27_55 : index
            %c4_56 = arith.constant 4 : index
            %c0_57 = arith.constant 0 : index
            %c-1_58 = arith.constant -1 : index
            %29 = arith.cmpi slt, %28, %c0_57 : index
            %30 = arith.subi %c-1_58, %28 : index
            %31 = arith.select %29, %30, %28 : index
            %32 = arith.divsi %31, %c4_56 : index
            %33 = arith.subi %c-1_58, %32 : index
            %34 = arith.select %29, %33, %32 : index
            %c-4 = arith.constant -4 : index
            %35 = arith.muli %34, %c-4 : index
            %36 = arith.addi %24, %35 : index
            %c27_59 = arith.constant 27 : index
            %37 = arith.addi %36, %c27_59 : index
            %c1_60 = arith.constant 1 : index
            scf.for %arg11 = %c0_50 to %37 step %c1_60 {
              %38 = arith.addi %5, %arg11 : index
              %c-1_61 = arith.constant -1 : index
              %39 = arith.muli %5, %c-1_61 : index
              %c27_62 = arith.constant 27 : index
              %40 = arith.addi %39, %c27_62 : index
              %c4_63 = arith.constant 4 : index
              %c0_64 = arith.constant 0 : index
              %c-1_65 = arith.constant -1 : index
              %41 = arith.cmpi slt, %40, %c0_64 : index
              %42 = arith.subi %c-1_65, %40 : index
              %43 = arith.select %41, %42, %40 : index
              %44 = arith.divsi %43, %c4_63 : index
              %45 = arith.subi %c-1_65, %44 : index
              %46 = arith.select %41, %45, %44 : index
              %c4_66 = arith.constant 4 : index
              %47 = arith.muli %46, %c4_66 : index
              %48 = arith.addi %38, %47 : index
              %c1_67 = arith.constant 1 : index
              %49 = arith.addi %48, %c1_67 : index
              %50 = memref.load %arg4[%5, %49] : memref<?x28xf64>
              %51 = memref.load %arg3[%6, %49] : memref<?x28xf64>
              %52 = arith.mulf %21, %51 : f64
              %53 = arith.addf %50, %52 : f64
              memref.store %53, %arg4[%5, %49] : memref<?x28xf64>
            }
          }
        }
      }
    }
    %c0_32 = arith.constant 0 : index
    %c27_33 = arith.constant 27 : index
    %c1_34 = arith.constant 1 : index
    scf.for %arg7 = %c0_32 to %c27_33 step %c1_34 {
      %c0_35 = arith.constant 0 : index
      %c1_36 = arith.constant 1 : index
      %c1_37 = arith.constant 1 : index
      scf.for %arg8 = %c0_35 to %c1_36 step %c1_37 {
        %5 = arith.addi %arg7, %arg8 : index
        %c0_38 = arith.constant 0 : index
        %c-1 = arith.constant -1 : index
        %6 = arith.muli %arg7, %c-1 : index
        %c-1_39 = arith.constant -1 : index
        %7 = arith.muli %arg8, %c-1_39 : index
        %8 = arith.addi %6, %7 : index
        %c27_40 = arith.constant 27 : index
        %9 = arith.addi %8, %c27_40 : index
        %c4 = arith.constant 4 : index
        %c0_41 = arith.constant 0 : index
        %c-1_42 = arith.constant -1 : index
        %10 = arith.cmpi slt, %9, %c0_41 : index
        %11 = arith.subi %c-1_42, %9 : index
        %12 = arith.select %10, %11, %9 : index
        %13 = arith.divsi %12, %c4 : index
        %14 = arith.subi %c-1_42, %13 : index
        %15 = arith.select %10, %14, %13 : index
        %c1_43 = arith.constant 1 : index
        scf.for %arg9 = %c0_38 to %15 step %c1_43 {
          %c4_55 = arith.constant 4 : index
          %32 = arith.muli %arg9, %c4_55 : index
          %33 = arith.addi %5, %32 : index
          %c1_56 = arith.constant 1 : index
          %34 = arith.addi %33, %c1_56 : index
          %35 = memref.load %arg4[%5, %34] : memref<?x28xf64>
          memref.store %35, %arg4[%34, %5] : memref<?x28xf64>
          %c1_57 = arith.constant 1 : index
          %36 = arith.addi %34, %c1_57 : index
          %37 = memref.load %arg4[%5, %36] : memref<?x28xf64>
          memref.store %37, %arg4[%36, %5] : memref<?x28xf64>
          %c2 = arith.constant 2 : index
          %38 = arith.addi %34, %c2 : index
          %39 = memref.load %arg4[%5, %38] : memref<?x28xf64>
          memref.store %39, %arg4[%38, %5] : memref<?x28xf64>
          %c3_58 = arith.constant 3 : index
          %40 = arith.addi %34, %c3_58 : index
          %41 = memref.load %arg4[%5, %40] : memref<?x28xf64>
          memref.store %41, %arg4[%40, %5] : memref<?x28xf64>
        }
        %c0_44 = arith.constant 0 : index
        %c-1_45 = arith.constant -1 : index
        %16 = arith.muli %arg7, %c-1_45 : index
        %c-1_46 = arith.constant -1 : index
        %17 = arith.muli %arg8, %c-1_46 : index
        %18 = arith.addi %16, %17 : index
        %c-1_47 = arith.constant -1 : index
        %19 = arith.muli %arg7, %c-1_47 : index
        %c-1_48 = arith.constant -1 : index
        %20 = arith.muli %arg8, %c-1_48 : index
        %21 = arith.addi %19, %20 : index
        %c27_49 = arith.constant 27 : index
        %22 = arith.addi %21, %c27_49 : index
        %c4_50 = arith.constant 4 : index
        %c0_51 = arith.constant 0 : index
        %c-1_52 = arith.constant -1 : index
        %23 = arith.cmpi slt, %22, %c0_51 : index
        %24 = arith.subi %c-1_52, %22 : index
        %25 = arith.select %23, %24, %22 : index
        %26 = arith.divsi %25, %c4_50 : index
        %27 = arith.subi %c-1_52, %26 : index
        %28 = arith.select %23, %27, %26 : index
        %c-4 = arith.constant -4 : index
        %29 = arith.muli %28, %c-4 : index
        %30 = arith.addi %18, %29 : index
        %c27_53 = arith.constant 27 : index
        %31 = arith.addi %30, %c27_53 : index
        %c1_54 = arith.constant 1 : index
        scf.for %arg9 = %c0_44 to %31 step %c1_54 {
          %32 = arith.addi %5, %arg9 : index
          %c-1_55 = arith.constant -1 : index
          %33 = arith.muli %5, %c-1_55 : index
          %c27_56 = arith.constant 27 : index
          %34 = arith.addi %33, %c27_56 : index
          %c4_57 = arith.constant 4 : index
          %c0_58 = arith.constant 0 : index
          %c-1_59 = arith.constant -1 : index
          %35 = arith.cmpi slt, %34, %c0_58 : index
          %36 = arith.subi %c-1_59, %34 : index
          %37 = arith.select %35, %36, %34 : index
          %38 = arith.divsi %37, %c4_57 : index
          %39 = arith.subi %c-1_59, %38 : index
          %40 = arith.select %35, %39, %38 : index
          %c4_60 = arith.constant 4 : index
          %41 = arith.muli %40, %c4_60 : index
          %42 = arith.addi %32, %41 : index
          %c1_61 = arith.constant 1 : index
          %43 = arith.addi %42, %c1_61 : index
          %44 = memref.load %arg4[%5, %43] : memref<?x28xf64>
          memref.store %44, %arg4[%43, %5] : memref<?x28xf64>
        }
      }
    }
    return
  }
}

