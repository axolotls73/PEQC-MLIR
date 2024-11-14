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
    %c1 = arith.constant 1 : index
    %c1_3 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %c1 step %c1_3 {
      %c32 = arith.constant 32 : index
      %5 = arith.muli %arg7, %c32 : index
      %c0_39 = arith.constant 0 : index
      %c27_40 = arith.constant 27 : index
      %c1_41 = arith.constant 1 : index
      scf.for %arg8 = %c0_39 to %c27_40 step %c1_41 {
        %6 = arith.addi %5, %arg8 : index
        %c0_42 = arith.constant 0 : index
        %c-1 = arith.constant -1 : index
        %7 = arith.muli %arg8, %c-1 : index
        %c-32 = arith.constant -32 : index
        %8 = arith.muli %arg7, %c-32 : index
        %9 = arith.addi %7, %8 : index
        %c27_43 = arith.constant 27 : index
        %10 = arith.addi %9, %c27_43 : index
        %c4 = arith.constant 4 : index
        %c0_44 = arith.constant 0 : index
        %c-1_45 = arith.constant -1 : index
        %11 = arith.cmpi slt, %10, %c0_44 : index
        %12 = arith.subi %c-1_45, %10 : index
        %13 = arith.select %11, %12, %10 : index
        %14 = arith.divsi %13, %c4 : index
        %15 = arith.subi %c-1_45, %14 : index
        %16 = arith.select %11, %15, %14 : index
        %c1_46 = arith.constant 1 : index
        scf.for %arg9 = %c0_42 to %16 step %c1_46 {
          %c4_58 = arith.constant 4 : index
          %33 = arith.muli %arg9, %c4_58 : index
          %34 = arith.addi %6, %33 : index
          %c1_59 = arith.constant 1 : index
          %35 = arith.addi %34, %c1_59 : index
          memref.store %cst_0, %arg4[%6, %35] : memref<?x28xf64>
          %c1_60 = arith.constant 1 : index
          %36 = arith.addi %35, %c1_60 : index
          memref.store %cst_0, %arg4[%6, %36] : memref<?x28xf64>
          %c2 = arith.constant 2 : index
          %37 = arith.addi %35, %c2 : index
          memref.store %cst_0, %arg4[%6, %37] : memref<?x28xf64>
          %c3 = arith.constant 3 : index
          %38 = arith.addi %35, %c3 : index
          memref.store %cst_0, %arg4[%6, %38] : memref<?x28xf64>
        }
        %c0_47 = arith.constant 0 : index
        %c-1_48 = arith.constant -1 : index
        %17 = arith.muli %arg8, %c-1_48 : index
        %c-32_49 = arith.constant -32 : index
        %18 = arith.muli %arg7, %c-32_49 : index
        %19 = arith.addi %17, %18 : index
        %c-1_50 = arith.constant -1 : index
        %20 = arith.muli %arg8, %c-1_50 : index
        %c-32_51 = arith.constant -32 : index
        %21 = arith.muli %arg7, %c-32_51 : index
        %22 = arith.addi %20, %21 : index
        %c27_52 = arith.constant 27 : index
        %23 = arith.addi %22, %c27_52 : index
        %c4_53 = arith.constant 4 : index
        %c0_54 = arith.constant 0 : index
        %c-1_55 = arith.constant -1 : index
        %24 = arith.cmpi slt, %23, %c0_54 : index
        %25 = arith.subi %c-1_55, %23 : index
        %26 = arith.select %24, %25, %23 : index
        %27 = arith.divsi %26, %c4_53 : index
        %28 = arith.subi %c-1_55, %27 : index
        %29 = arith.select %24, %28, %27 : index
        %c-4 = arith.constant -4 : index
        %30 = arith.muli %29, %c-4 : index
        %31 = arith.addi %19, %30 : index
        %c27_56 = arith.constant 27 : index
        %32 = arith.addi %31, %c27_56 : index
        %c1_57 = arith.constant 1 : index
        scf.for %arg9 = %c0_47 to %32 step %c1_57 {
          %33 = arith.addi %6, %arg9 : index
          %c-1_58 = arith.constant -1 : index
          %34 = arith.muli %6, %c-1_58 : index
          %c27_59 = arith.constant 27 : index
          %35 = arith.addi %34, %c27_59 : index
          %c4_60 = arith.constant 4 : index
          %c0_61 = arith.constant 0 : index
          %c-1_62 = arith.constant -1 : index
          %36 = arith.cmpi slt, %35, %c0_61 : index
          %37 = arith.subi %c-1_62, %35 : index
          %38 = arith.select %36, %37, %35 : index
          %39 = arith.divsi %38, %c4_60 : index
          %40 = arith.subi %c-1_62, %39 : index
          %41 = arith.select %36, %40, %39 : index
          %c4_63 = arith.constant 4 : index
          %42 = arith.muli %41, %c4_63 : index
          %43 = arith.addi %33, %42 : index
          %c1_64 = arith.constant 1 : index
          %44 = arith.addi %43, %c1_64 : index
          memref.store %cst_0, %arg4[%6, %44] : memref<?x28xf64>
        }
      }
    }
    %c0_4 = arith.constant 0 : index
    %c1_5 = arith.constant 1 : index
    %c1_6 = arith.constant 1 : index
    scf.for %arg7 = %c0_4 to %c1_5 step %c1_6 {
      %c128 = arith.constant 128 : index
      %5 = arith.muli %arg7, %c128 : index
      %c0_39 = arith.constant 0 : index
      %c6 = arith.constant 6 : index
      %c1_40 = arith.constant 1 : index
      scf.for %arg8 = %c0_39 to %c6 step %c1_40 {
        %c4 = arith.constant 4 : index
        %6 = arith.muli %arg8, %c4 : index
        %7 = arith.addi %5, %6 : index
        memref.store %cst_1, %arg4[%7, %7] : memref<?x28xf64>
        %c1_41 = arith.constant 1 : index
        %8 = arith.addi %7, %c1_41 : index
        memref.store %cst_1, %arg4[%8, %8] : memref<?x28xf64>
        %c2 = arith.constant 2 : index
        %9 = arith.addi %7, %c2 : index
        memref.store %cst_1, %arg4[%9, %9] : memref<?x28xf64>
        %c3 = arith.constant 3 : index
        %10 = arith.addi %7, %c3 : index
        memref.store %cst_1, %arg4[%10, %10] : memref<?x28xf64>
      }
    }
    %c0_7 = arith.constant 0 : index
    %c1_8 = arith.constant 1 : index
    %c1_9 = arith.constant 1 : index
    scf.for %arg7 = %c0_7 to %c1_8 step %c1_9 {
      %c32 = arith.constant 32 : index
      %5 = arith.muli %arg7, %c32 : index
      %c24 = arith.constant 24 : index
      %6 = arith.addi %5, %c24 : index
      %c0_39 = arith.constant 0 : index
      %c3 = arith.constant 3 : index
      %c1_40 = arith.constant 1 : index
      scf.for %arg8 = %c0_39 to %c3 step %c1_40 {
        %7 = arith.addi %6, %arg8 : index
        memref.store %cst_1, %arg4[%7, %7] : memref<?x28xf64>
      }
    }
    %0 = math.sqrt %arg2 : f64
    %c0_10 = arith.constant 0 : index
    memref.store %0, %alloca[%c0_10] : memref<1xf64>
    %c0_11 = arith.constant 0 : index
    %c1_12 = arith.constant 1 : index
    %c1_13 = arith.constant 1 : index
    scf.for %arg7 = %c0_11 to %c1_12 step %c1_13 {
      %c128 = arith.constant 128 : index
      %5 = arith.muli %arg7, %c128 : index
      %c0_39 = arith.constant 0 : index
      %c7 = arith.constant 7 : index
      %c1_40 = arith.constant 1 : index
      scf.for %arg8 = %c0_39 to %c7 step %c1_40 {
        %c4 = arith.constant 4 : index
        %6 = arith.muli %arg8, %c4 : index
        %7 = arith.addi %5, %6 : index
        memref.store %cst_0, %arg6[%7] : memref<?xf64>
        memref.store %cst_0, %arg5[%7] : memref<?xf64>
        %c1_41 = arith.constant 1 : index
        %8 = arith.addi %7, %c1_41 : index
        memref.store %cst_0, %arg6[%8] : memref<?xf64>
        memref.store %cst_0, %arg5[%8] : memref<?xf64>
        %c2 = arith.constant 2 : index
        %9 = arith.addi %7, %c2 : index
        memref.store %cst_0, %arg6[%9] : memref<?xf64>
        memref.store %cst_0, %arg5[%9] : memref<?xf64>
        %c3 = arith.constant 3 : index
        %10 = arith.addi %7, %c3 : index
        memref.store %cst_0, %arg6[%10] : memref<?xf64>
        memref.store %cst_0, %arg5[%10] : memref<?xf64>
      }
    }
    %c0_14 = arith.constant 0 : index
    %c1_15 = arith.constant 1 : index
    %c1_16 = arith.constant 1 : index
    scf.for %arg7 = %c0_14 to %c1_15 step %c1_16 {
      %c32 = arith.constant 32 : index
      %5 = arith.muli %arg7, %c32 : index
      %c0_39 = arith.constant 0 : index
      %c1_40 = arith.constant 1 : index
      %c1_41 = arith.constant 1 : index
      scf.for %arg8 = %c0_39 to %c1_40 step %c1_41 {
        %c128 = arith.constant 128 : index
        %6 = arith.muli %arg8, %c128 : index
        %c0_42 = arith.constant 0 : index
        %c32_43 = arith.constant 32 : index
        %c1_44 = arith.constant 1 : index
        scf.for %arg9 = %c0_42 to %c32_43 step %c1_44 {
          %7 = arith.addi %5, %arg9 : index
          %c0_45 = arith.constant 0 : index
          %c7 = arith.constant 7 : index
          %c1_46 = arith.constant 1 : index
          scf.for %arg10 = %c0_45 to %c7 step %c1_46 {
            %c4 = arith.constant 4 : index
            %8 = arith.muli %arg10, %c4 : index
            %9 = arith.addi %6, %8 : index
            %10 = memref.load %arg5[%9] : memref<?xf64>
            %11 = memref.load %arg3[%7, %9] : memref<?x28xf64>
            %12 = arith.addf %10, %11 : f64
            memref.store %12, %arg5[%9] : memref<?xf64>
            %c1_47 = arith.constant 1 : index
            %13 = arith.addi %9, %c1_47 : index
            %14 = memref.load %arg5[%13] : memref<?xf64>
            %15 = memref.load %arg3[%7, %13] : memref<?x28xf64>
            %16 = arith.addf %14, %15 : f64
            memref.store %16, %arg5[%13] : memref<?xf64>
            %c2 = arith.constant 2 : index
            %17 = arith.addi %9, %c2 : index
            %18 = memref.load %arg5[%17] : memref<?xf64>
            %19 = memref.load %arg3[%7, %17] : memref<?x28xf64>
            %20 = arith.addf %18, %19 : f64
            memref.store %20, %arg5[%17] : memref<?xf64>
            %c3 = arith.constant 3 : index
            %21 = arith.addi %9, %c3 : index
            %22 = memref.load %arg5[%21] : memref<?xf64>
            %23 = memref.load %arg3[%7, %21] : memref<?x28xf64>
            %24 = arith.addf %22, %23 : f64
            memref.store %24, %arg5[%21] : memref<?xf64>
          }
        }
      }
    }
    %c0_17 = arith.constant 0 : index
    %c1_18 = arith.constant 1 : index
    %c1_19 = arith.constant 1 : index
    scf.for %arg7 = %c0_17 to %c1_18 step %c1_19 {
      %c128 = arith.constant 128 : index
      %5 = arith.muli %arg7, %c128 : index
      %c0_39 = arith.constant 0 : index
      %c7 = arith.constant 7 : index
      %c1_40 = arith.constant 1 : index
      scf.for %arg8 = %c0_39 to %c7 step %c1_40 {
        %c4 = arith.constant 4 : index
        %6 = arith.muli %arg8, %c4 : index
        %7 = arith.addi %5, %6 : index
        %8 = memref.load %arg5[%7] : memref<?xf64>
        %9 = arith.divf %8, %arg2 : f64
        memref.store %9, %arg5[%7] : memref<?xf64>
        %c1_41 = arith.constant 1 : index
        %10 = arith.addi %7, %c1_41 : index
        %11 = memref.load %arg5[%10] : memref<?xf64>
        %12 = arith.divf %11, %arg2 : f64
        memref.store %12, %arg5[%10] : memref<?xf64>
        %c2 = arith.constant 2 : index
        %13 = arith.addi %7, %c2 : index
        %14 = memref.load %arg5[%13] : memref<?xf64>
        %15 = arith.divf %14, %arg2 : f64
        memref.store %15, %arg5[%13] : memref<?xf64>
        %c3 = arith.constant 3 : index
        %16 = arith.addi %7, %c3 : index
        %17 = memref.load %arg5[%16] : memref<?xf64>
        %18 = arith.divf %17, %arg2 : f64
        memref.store %18, %arg5[%16] : memref<?xf64>
      }
    }
    %c0_20 = arith.constant 0 : index
    %c1_21 = arith.constant 1 : index
    %c1_22 = arith.constant 1 : index
    scf.for %arg7 = %c0_20 to %c1_21 step %c1_22 {
      %c32 = arith.constant 32 : index
      %5 = arith.muli %arg7, %c32 : index
      %c0_39 = arith.constant 0 : index
      %c1_40 = arith.constant 1 : index
      %c1_41 = arith.constant 1 : index
      scf.for %arg8 = %c0_39 to %c1_40 step %c1_41 {
        %c128 = arith.constant 128 : index
        %6 = arith.muli %arg8, %c128 : index
        %c0_42 = arith.constant 0 : index
        %c32_43 = arith.constant 32 : index
        %c1_44 = arith.constant 1 : index
        scf.for %arg9 = %c0_42 to %c32_43 step %c1_44 {
          %7 = arith.addi %5, %arg9 : index
          %c0_45 = arith.constant 0 : index
          %c7 = arith.constant 7 : index
          %c1_46 = arith.constant 1 : index
          scf.for %arg10 = %c0_45 to %c7 step %c1_46 {
            %c4 = arith.constant 4 : index
            %8 = arith.muli %arg10, %c4 : index
            %9 = arith.addi %6, %8 : index
            %10 = memref.load %arg6[%9] : memref<?xf64>
            %11 = memref.load %arg3[%7, %9] : memref<?x28xf64>
            %12 = memref.load %arg5[%9] : memref<?xf64>
            %13 = arith.subf %11, %12 : f64
            %14 = arith.mulf %13, %13 : f64
            %15 = arith.addf %10, %14 : f64
            memref.store %15, %arg6[%9] : memref<?xf64>
            %16 = memref.load %arg3[%7, %9] : memref<?x28xf64>
            %17 = memref.load %arg5[%9] : memref<?xf64>
            %18 = arith.subf %16, %17 : f64
            memref.store %18, %arg3[%7, %9] : memref<?x28xf64>
            %c1_47 = arith.constant 1 : index
            %19 = arith.addi %9, %c1_47 : index
            %20 = memref.load %arg6[%19] : memref<?xf64>
            %21 = memref.load %arg3[%7, %19] : memref<?x28xf64>
            %22 = memref.load %arg5[%19] : memref<?xf64>
            %23 = arith.subf %21, %22 : f64
            %24 = arith.mulf %23, %23 : f64
            %25 = arith.addf %20, %24 : f64
            memref.store %25, %arg6[%19] : memref<?xf64>
            %26 = memref.load %arg3[%7, %19] : memref<?x28xf64>
            %27 = memref.load %arg5[%19] : memref<?xf64>
            %28 = arith.subf %26, %27 : f64
            memref.store %28, %arg3[%7, %19] : memref<?x28xf64>
            %c2 = arith.constant 2 : index
            %29 = arith.addi %9, %c2 : index
            %30 = memref.load %arg6[%29] : memref<?xf64>
            %31 = memref.load %arg3[%7, %29] : memref<?x28xf64>
            %32 = memref.load %arg5[%29] : memref<?xf64>
            %33 = arith.subf %31, %32 : f64
            %34 = arith.mulf %33, %33 : f64
            %35 = arith.addf %30, %34 : f64
            memref.store %35, %arg6[%29] : memref<?xf64>
            %36 = memref.load %arg3[%7, %29] : memref<?x28xf64>
            %37 = memref.load %arg5[%29] : memref<?xf64>
            %38 = arith.subf %36, %37 : f64
            memref.store %38, %arg3[%7, %29] : memref<?x28xf64>
            %c3 = arith.constant 3 : index
            %39 = arith.addi %9, %c3 : index
            %40 = memref.load %arg6[%39] : memref<?xf64>
            %41 = memref.load %arg3[%7, %39] : memref<?x28xf64>
            %42 = memref.load %arg5[%39] : memref<?xf64>
            %43 = arith.subf %41, %42 : f64
            %44 = arith.mulf %43, %43 : f64
            %45 = arith.addf %40, %44 : f64
            memref.store %45, %arg6[%39] : memref<?xf64>
            %46 = memref.load %arg3[%7, %39] : memref<?x28xf64>
            %47 = memref.load %arg5[%39] : memref<?xf64>
            %48 = arith.subf %46, %47 : f64
            memref.store %48, %arg3[%7, %39] : memref<?x28xf64>
          }
        }
      }
    }
    %c0_23 = arith.constant 0 : index
    %c1_24 = arith.constant 1 : index
    %c1_25 = arith.constant 1 : index
    scf.for %arg7 = %c0_23 to %c1_24 step %c1_25 {
      %c128 = arith.constant 128 : index
      %5 = arith.muli %arg7, %c128 : index
      %c0_39 = arith.constant 0 : index
      %c7 = arith.constant 7 : index
      %c1_40 = arith.constant 1 : index
      scf.for %arg8 = %c0_39 to %c7 step %c1_40 {
        %c4 = arith.constant 4 : index
        %6 = arith.muli %arg8, %c4 : index
        %7 = arith.addi %5, %6 : index
        %8 = memref.load %arg6[%7] : memref<?xf64>
        %9 = arith.divf %8, %arg2 : f64
        %10 = math.sqrt %9 : f64
        %11 = arith.cmpf ole, %10, %cst : f64
        %12 = arith.select %11, %cst_1, %10 : f64
        memref.store %12, %arg6[%7] : memref<?xf64>
        %c1_41 = arith.constant 1 : index
        %13 = arith.addi %7, %c1_41 : index
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
        %c3 = arith.constant 3 : index
        %25 = arith.addi %7, %c3 : index
        %26 = memref.load %arg6[%25] : memref<?xf64>
        %27 = arith.divf %26, %arg2 : f64
        %28 = math.sqrt %27 : f64
        %29 = arith.cmpf ole, %28, %cst : f64
        %30 = arith.select %29, %cst_1, %28 : f64
        memref.store %30, %arg6[%25] : memref<?xf64>
      }
    }
    %c0_26 = arith.constant 0 : index
    %1 = memref.load %alloca[%c0_26] : memref<1xf64>
    %c0_27 = arith.constant 0 : index
    %2 = memref.load %alloca[%c0_27] : memref<1xf64>
    %c0_28 = arith.constant 0 : index
    %3 = memref.load %alloca[%c0_28] : memref<1xf64>
    %c0_29 = arith.constant 0 : index
    %4 = memref.load %alloca[%c0_29] : memref<1xf64>
    %c0_30 = arith.constant 0 : index
    %c1_31 = arith.constant 1 : index
    %c1_32 = arith.constant 1 : index
    scf.for %arg7 = %c0_30 to %c1_31 step %c1_32 {
      %c32 = arith.constant 32 : index
      %5 = arith.muli %arg7, %c32 : index
      %c0_39 = arith.constant 0 : index
      %c1_40 = arith.constant 1 : index
      %c1_41 = arith.constant 1 : index
      scf.for %arg8 = %c0_39 to %c1_40 step %c1_41 {
        %c128 = arith.constant 128 : index
        %6 = arith.muli %arg8, %c128 : index
        %c0_42 = arith.constant 0 : index
        %c32_43 = arith.constant 32 : index
        %c1_44 = arith.constant 1 : index
        scf.for %arg9 = %c0_42 to %c32_43 step %c1_44 {
          %7 = arith.addi %5, %arg9 : index
          %c0_45 = arith.constant 0 : index
          %c7 = arith.constant 7 : index
          %c1_46 = arith.constant 1 : index
          scf.for %arg10 = %c0_45 to %c7 step %c1_46 {
            %c4 = arith.constant 4 : index
            %8 = arith.muli %arg10, %c4 : index
            %9 = arith.addi %6, %8 : index
            %10 = memref.load %arg3[%7, %9] : memref<?x28xf64>
            %11 = memref.load %arg6[%9] : memref<?xf64>
            %12 = arith.mulf %1, %11 : f64
            %13 = arith.divf %10, %12 : f64
            memref.store %13, %arg3[%7, %9] : memref<?x28xf64>
            %c1_47 = arith.constant 1 : index
            %14 = arith.addi %9, %c1_47 : index
            %15 = memref.load %arg3[%7, %14] : memref<?x28xf64>
            %16 = memref.load %arg6[%14] : memref<?xf64>
            %17 = arith.mulf %2, %16 : f64
            %18 = arith.divf %15, %17 : f64
            memref.store %18, %arg3[%7, %14] : memref<?x28xf64>
            %c2 = arith.constant 2 : index
            %19 = arith.addi %9, %c2 : index
            %20 = memref.load %arg3[%7, %19] : memref<?x28xf64>
            %21 = memref.load %arg6[%19] : memref<?xf64>
            %22 = arith.mulf %3, %21 : f64
            %23 = arith.divf %20, %22 : f64
            memref.store %23, %arg3[%7, %19] : memref<?x28xf64>
            %c3 = arith.constant 3 : index
            %24 = arith.addi %9, %c3 : index
            %25 = memref.load %arg3[%7, %24] : memref<?x28xf64>
            %26 = memref.load %arg6[%24] : memref<?xf64>
            %27 = arith.mulf %4, %26 : f64
            %28 = arith.divf %25, %27 : f64
            memref.store %28, %arg3[%7, %24] : memref<?x28xf64>
          }
        }
      }
    }
    %c0_33 = arith.constant 0 : index
    %c1_34 = arith.constant 1 : index
    %c1_35 = arith.constant 1 : index
    scf.for %arg7 = %c0_33 to %c1_34 step %c1_35 {
      %c32 = arith.constant 32 : index
      %5 = arith.muli %arg7, %c32 : index
      %c0_39 = arith.constant 0 : index
      %c1_40 = arith.constant 1 : index
      %c1_41 = arith.constant 1 : index
      scf.for %arg8 = %c0_39 to %c1_40 step %c1_41 {
        %c32_42 = arith.constant 32 : index
        %6 = arith.muli %arg8, %c32_42 : index
        %c0_43 = arith.constant 0 : index
        %c27_44 = arith.constant 27 : index
        %c1_45 = arith.constant 1 : index
        scf.for %arg9 = %c0_43 to %c27_44 step %c1_45 {
          %7 = arith.addi %5, %arg9 : index
          %c0_46 = arith.constant 0 : index
          %c32_47 = arith.constant 32 : index
          %c1_48 = arith.constant 1 : index
          scf.for %arg10 = %c0_46 to %c32_47 step %c1_48 {
            %8 = arith.addi %6, %arg10 : index
            %9 = memref.load %arg3[%8, %7] : memref<?x28xf64>
            %10 = memref.load %arg3[%8, %7] : memref<?x28xf64>
            %11 = memref.load %arg3[%8, %7] : memref<?x28xf64>
            %12 = memref.load %arg3[%8, %7] : memref<?x28xf64>
            %c0_49 = arith.constant 0 : index
            %c-1 = arith.constant -1 : index
            %13 = arith.muli %arg9, %c-1 : index
            %c-32 = arith.constant -32 : index
            %14 = arith.muli %arg7, %c-32 : index
            %15 = arith.addi %13, %14 : index
            %c27_50 = arith.constant 27 : index
            %16 = arith.addi %15, %c27_50 : index
            %c4 = arith.constant 4 : index
            %c0_51 = arith.constant 0 : index
            %c-1_52 = arith.constant -1 : index
            %17 = arith.cmpi slt, %16, %c0_51 : index
            %18 = arith.subi %c-1_52, %16 : index
            %19 = arith.select %17, %18, %16 : index
            %20 = arith.divsi %19, %c4 : index
            %21 = arith.subi %c-1_52, %20 : index
            %22 = arith.select %17, %21, %20 : index
            %c1_53 = arith.constant 1 : index
            scf.for %arg11 = %c0_49 to %22 step %c1_53 {
              %c4_65 = arith.constant 4 : index
              %40 = arith.muli %arg11, %c4_65 : index
              %41 = arith.addi %7, %40 : index
              %c1_66 = arith.constant 1 : index
              %42 = arith.addi %41, %c1_66 : index
              %43 = memref.load %arg4[%7, %42] : memref<?x28xf64>
              %44 = memref.load %arg3[%8, %42] : memref<?x28xf64>
              %45 = arith.mulf %9, %44 : f64
              %46 = arith.addf %43, %45 : f64
              memref.store %46, %arg4[%7, %42] : memref<?x28xf64>
              %c1_67 = arith.constant 1 : index
              %47 = arith.addi %42, %c1_67 : index
              %48 = memref.load %arg4[%7, %47] : memref<?x28xf64>
              %49 = memref.load %arg3[%8, %47] : memref<?x28xf64>
              %50 = arith.mulf %10, %49 : f64
              %51 = arith.addf %48, %50 : f64
              memref.store %51, %arg4[%7, %47] : memref<?x28xf64>
              %c2 = arith.constant 2 : index
              %52 = arith.addi %42, %c2 : index
              %53 = memref.load %arg4[%7, %52] : memref<?x28xf64>
              %54 = memref.load %arg3[%8, %52] : memref<?x28xf64>
              %55 = arith.mulf %11, %54 : f64
              %56 = arith.addf %53, %55 : f64
              memref.store %56, %arg4[%7, %52] : memref<?x28xf64>
              %c3 = arith.constant 3 : index
              %57 = arith.addi %42, %c3 : index
              %58 = memref.load %arg4[%7, %57] : memref<?x28xf64>
              %59 = memref.load %arg3[%8, %57] : memref<?x28xf64>
              %60 = arith.mulf %12, %59 : f64
              %61 = arith.addf %58, %60 : f64
              memref.store %61, %arg4[%7, %57] : memref<?x28xf64>
            }
            %23 = memref.load %arg3[%8, %7] : memref<?x28xf64>
            %c0_54 = arith.constant 0 : index
            %c-1_55 = arith.constant -1 : index
            %24 = arith.muli %arg9, %c-1_55 : index
            %c-32_56 = arith.constant -32 : index
            %25 = arith.muli %arg7, %c-32_56 : index
            %26 = arith.addi %24, %25 : index
            %c-1_57 = arith.constant -1 : index
            %27 = arith.muli %arg9, %c-1_57 : index
            %c-32_58 = arith.constant -32 : index
            %28 = arith.muli %arg7, %c-32_58 : index
            %29 = arith.addi %27, %28 : index
            %c27_59 = arith.constant 27 : index
            %30 = arith.addi %29, %c27_59 : index
            %c4_60 = arith.constant 4 : index
            %c0_61 = arith.constant 0 : index
            %c-1_62 = arith.constant -1 : index
            %31 = arith.cmpi slt, %30, %c0_61 : index
            %32 = arith.subi %c-1_62, %30 : index
            %33 = arith.select %31, %32, %30 : index
            %34 = arith.divsi %33, %c4_60 : index
            %35 = arith.subi %c-1_62, %34 : index
            %36 = arith.select %31, %35, %34 : index
            %c-4 = arith.constant -4 : index
            %37 = arith.muli %36, %c-4 : index
            %38 = arith.addi %26, %37 : index
            %c27_63 = arith.constant 27 : index
            %39 = arith.addi %38, %c27_63 : index
            %c1_64 = arith.constant 1 : index
            scf.for %arg11 = %c0_54 to %39 step %c1_64 {
              %40 = arith.addi %7, %arg11 : index
              %c-1_65 = arith.constant -1 : index
              %41 = arith.muli %7, %c-1_65 : index
              %c27_66 = arith.constant 27 : index
              %42 = arith.addi %41, %c27_66 : index
              %c4_67 = arith.constant 4 : index
              %c0_68 = arith.constant 0 : index
              %c-1_69 = arith.constant -1 : index
              %43 = arith.cmpi slt, %42, %c0_68 : index
              %44 = arith.subi %c-1_69, %42 : index
              %45 = arith.select %43, %44, %42 : index
              %46 = arith.divsi %45, %c4_67 : index
              %47 = arith.subi %c-1_69, %46 : index
              %48 = arith.select %43, %47, %46 : index
              %c4_70 = arith.constant 4 : index
              %49 = arith.muli %48, %c4_70 : index
              %50 = arith.addi %40, %49 : index
              %c1_71 = arith.constant 1 : index
              %51 = arith.addi %50, %c1_71 : index
              %52 = memref.load %arg4[%7, %51] : memref<?x28xf64>
              %53 = memref.load %arg3[%8, %51] : memref<?x28xf64>
              %54 = arith.mulf %23, %53 : f64
              %55 = arith.addf %52, %54 : f64
              memref.store %55, %arg4[%7, %51] : memref<?x28xf64>
            }
          }
        }
      }
    }
    %c0_36 = arith.constant 0 : index
    %c1_37 = arith.constant 1 : index
    %c1_38 = arith.constant 1 : index
    scf.for %arg7 = %c0_36 to %c1_37 step %c1_38 {
      %c32 = arith.constant 32 : index
      %5 = arith.muli %arg7, %c32 : index
      %c0_39 = arith.constant 0 : index
      %c27_40 = arith.constant 27 : index
      %c1_41 = arith.constant 1 : index
      scf.for %arg8 = %c0_39 to %c27_40 step %c1_41 {
        %6 = arith.addi %5, %arg8 : index
        %c0_42 = arith.constant 0 : index
        %c-1 = arith.constant -1 : index
        %7 = arith.muli %arg8, %c-1 : index
        %c-32 = arith.constant -32 : index
        %8 = arith.muli %arg7, %c-32 : index
        %9 = arith.addi %7, %8 : index
        %c27_43 = arith.constant 27 : index
        %10 = arith.addi %9, %c27_43 : index
        %c4 = arith.constant 4 : index
        %c0_44 = arith.constant 0 : index
        %c-1_45 = arith.constant -1 : index
        %11 = arith.cmpi slt, %10, %c0_44 : index
        %12 = arith.subi %c-1_45, %10 : index
        %13 = arith.select %11, %12, %10 : index
        %14 = arith.divsi %13, %c4 : index
        %15 = arith.subi %c-1_45, %14 : index
        %16 = arith.select %11, %15, %14 : index
        %c1_46 = arith.constant 1 : index
        scf.for %arg9 = %c0_42 to %16 step %c1_46 {
          %c4_58 = arith.constant 4 : index
          %33 = arith.muli %arg9, %c4_58 : index
          %34 = arith.addi %6, %33 : index
          %c1_59 = arith.constant 1 : index
          %35 = arith.addi %34, %c1_59 : index
          %36 = memref.load %arg4[%6, %35] : memref<?x28xf64>
          memref.store %36, %arg4[%35, %6] : memref<?x28xf64>
          %c1_60 = arith.constant 1 : index
          %37 = arith.addi %35, %c1_60 : index
          %38 = memref.load %arg4[%6, %37] : memref<?x28xf64>
          memref.store %38, %arg4[%37, %6] : memref<?x28xf64>
          %c2 = arith.constant 2 : index
          %39 = arith.addi %35, %c2 : index
          %40 = memref.load %arg4[%6, %39] : memref<?x28xf64>
          memref.store %40, %arg4[%39, %6] : memref<?x28xf64>
          %c3 = arith.constant 3 : index
          %41 = arith.addi %35, %c3 : index
          %42 = memref.load %arg4[%6, %41] : memref<?x28xf64>
          memref.store %42, %arg4[%41, %6] : memref<?x28xf64>
        }
        %c0_47 = arith.constant 0 : index
        %c-1_48 = arith.constant -1 : index
        %17 = arith.muli %arg8, %c-1_48 : index
        %c-32_49 = arith.constant -32 : index
        %18 = arith.muli %arg7, %c-32_49 : index
        %19 = arith.addi %17, %18 : index
        %c-1_50 = arith.constant -1 : index
        %20 = arith.muli %arg8, %c-1_50 : index
        %c-32_51 = arith.constant -32 : index
        %21 = arith.muli %arg7, %c-32_51 : index
        %22 = arith.addi %20, %21 : index
        %c27_52 = arith.constant 27 : index
        %23 = arith.addi %22, %c27_52 : index
        %c4_53 = arith.constant 4 : index
        %c0_54 = arith.constant 0 : index
        %c-1_55 = arith.constant -1 : index
        %24 = arith.cmpi slt, %23, %c0_54 : index
        %25 = arith.subi %c-1_55, %23 : index
        %26 = arith.select %24, %25, %23 : index
        %27 = arith.divsi %26, %c4_53 : index
        %28 = arith.subi %c-1_55, %27 : index
        %29 = arith.select %24, %28, %27 : index
        %c-4 = arith.constant -4 : index
        %30 = arith.muli %29, %c-4 : index
        %31 = arith.addi %19, %30 : index
        %c27_56 = arith.constant 27 : index
        %32 = arith.addi %31, %c27_56 : index
        %c1_57 = arith.constant 1 : index
        scf.for %arg9 = %c0_47 to %32 step %c1_57 {
          %33 = arith.addi %6, %arg9 : index
          %c-1_58 = arith.constant -1 : index
          %34 = arith.muli %6, %c-1_58 : index
          %c27_59 = arith.constant 27 : index
          %35 = arith.addi %34, %c27_59 : index
          %c4_60 = arith.constant 4 : index
          %c0_61 = arith.constant 0 : index
          %c-1_62 = arith.constant -1 : index
          %36 = arith.cmpi slt, %35, %c0_61 : index
          %37 = arith.subi %c-1_62, %35 : index
          %38 = arith.select %36, %37, %35 : index
          %39 = arith.divsi %38, %c4_60 : index
          %40 = arith.subi %c-1_62, %39 : index
          %41 = arith.select %36, %40, %39 : index
          %c4_63 = arith.constant 4 : index
          %42 = arith.muli %41, %c4_63 : index
          %43 = arith.addi %33, %42 : index
          %c1_64 = arith.constant 1 : index
          %44 = arith.addi %43, %c1_64 : index
          %45 = memref.load %arg4[%6, %44] : memref<?x28xf64>
          memref.store %45, %arg4[%44, %6] : memref<?x28xf64>
        }
      }
    }
    return
  }
}

