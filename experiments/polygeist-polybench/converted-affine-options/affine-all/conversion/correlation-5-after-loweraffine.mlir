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
    scf.parallel (%arg7) = (%c0) to (%c1) step (%c1_3) {
      %c32 = arith.constant 32 : index
      %1 = arith.muli %arg7, %c32 : index
      %c0_35 = arith.constant 0 : index
      %c27_36 = arith.constant 27 : index
      %c1_37 = arith.constant 1 : index
      scf.for %arg8 = %c0_35 to %c27_36 step %c1_37 {
        %2 = arith.addi %1, %arg8 : index
        %c0_38 = arith.constant 0 : index
        %c-1 = arith.constant -1 : index
        %3 = arith.muli %arg8, %c-1 : index
        %c-32 = arith.constant -32 : index
        %4 = arith.muli %arg7, %c-32 : index
        %5 = arith.addi %3, %4 : index
        %c27_39 = arith.constant 27 : index
        %6 = arith.addi %5, %c27_39 : index
        %c4 = arith.constant 4 : index
        %c0_40 = arith.constant 0 : index
        %c-1_41 = arith.constant -1 : index
        %7 = arith.cmpi slt, %6, %c0_40 : index
        %8 = arith.subi %c-1_41, %6 : index
        %9 = arith.select %7, %8, %6 : index
        %10 = arith.divsi %9, %c4 : index
        %11 = arith.subi %c-1_41, %10 : index
        %12 = arith.select %7, %11, %10 : index
        %c1_42 = arith.constant 1 : index
        scf.for %arg9 = %c0_38 to %12 step %c1_42 {
          %c4_54 = arith.constant 4 : index
          %29 = arith.muli %arg9, %c4_54 : index
          %30 = arith.addi %2, %29 : index
          %c1_55 = arith.constant 1 : index
          %31 = arith.addi %30, %c1_55 : index
          memref.store %cst_0, %arg4[%2, %31] : memref<?x28xf64>
          %c1_56 = arith.constant 1 : index
          %32 = arith.addi %31, %c1_56 : index
          memref.store %cst_0, %arg4[%2, %32] : memref<?x28xf64>
          %c2 = arith.constant 2 : index
          %33 = arith.addi %31, %c2 : index
          memref.store %cst_0, %arg4[%2, %33] : memref<?x28xf64>
          %c3 = arith.constant 3 : index
          %34 = arith.addi %31, %c3 : index
          memref.store %cst_0, %arg4[%2, %34] : memref<?x28xf64>
        }
        %c0_43 = arith.constant 0 : index
        %c-1_44 = arith.constant -1 : index
        %13 = arith.muli %arg8, %c-1_44 : index
        %c-32_45 = arith.constant -32 : index
        %14 = arith.muli %arg7, %c-32_45 : index
        %15 = arith.addi %13, %14 : index
        %c-1_46 = arith.constant -1 : index
        %16 = arith.muli %arg8, %c-1_46 : index
        %c-32_47 = arith.constant -32 : index
        %17 = arith.muli %arg7, %c-32_47 : index
        %18 = arith.addi %16, %17 : index
        %c27_48 = arith.constant 27 : index
        %19 = arith.addi %18, %c27_48 : index
        %c4_49 = arith.constant 4 : index
        %c0_50 = arith.constant 0 : index
        %c-1_51 = arith.constant -1 : index
        %20 = arith.cmpi slt, %19, %c0_50 : index
        %21 = arith.subi %c-1_51, %19 : index
        %22 = arith.select %20, %21, %19 : index
        %23 = arith.divsi %22, %c4_49 : index
        %24 = arith.subi %c-1_51, %23 : index
        %25 = arith.select %20, %24, %23 : index
        %c-4 = arith.constant -4 : index
        %26 = arith.muli %25, %c-4 : index
        %27 = arith.addi %15, %26 : index
        %c27_52 = arith.constant 27 : index
        %28 = arith.addi %27, %c27_52 : index
        %c1_53 = arith.constant 1 : index
        scf.for %arg9 = %c0_43 to %28 step %c1_53 {
          %29 = arith.addi %2, %arg9 : index
          %c-1_54 = arith.constant -1 : index
          %30 = arith.muli %2, %c-1_54 : index
          %c27_55 = arith.constant 27 : index
          %31 = arith.addi %30, %c27_55 : index
          %c4_56 = arith.constant 4 : index
          %c0_57 = arith.constant 0 : index
          %c-1_58 = arith.constant -1 : index
          %32 = arith.cmpi slt, %31, %c0_57 : index
          %33 = arith.subi %c-1_58, %31 : index
          %34 = arith.select %32, %33, %31 : index
          %35 = arith.divsi %34, %c4_56 : index
          %36 = arith.subi %c-1_58, %35 : index
          %37 = arith.select %32, %36, %35 : index
          %c4_59 = arith.constant 4 : index
          %38 = arith.muli %37, %c4_59 : index
          %39 = arith.addi %29, %38 : index
          %c1_60 = arith.constant 1 : index
          %40 = arith.addi %39, %c1_60 : index
          memref.store %cst_0, %arg4[%2, %40] : memref<?x28xf64>
        }
      }
      scf.reduce 
    }
    %c0_4 = arith.constant 0 : index
    %c1_5 = arith.constant 1 : index
    %c1_6 = arith.constant 1 : index
    scf.parallel (%arg7) = (%c0_4) to (%c1_5) step (%c1_6) {
      %c128 = arith.constant 128 : index
      %1 = arith.muli %arg7, %c128 : index
      %c0_35 = arith.constant 0 : index
      %c6 = arith.constant 6 : index
      %c1_36 = arith.constant 1 : index
      scf.for %arg8 = %c0_35 to %c6 step %c1_36 {
        %c4 = arith.constant 4 : index
        %2 = arith.muli %arg8, %c4 : index
        %3 = arith.addi %1, %2 : index
        memref.store %cst_1, %arg4[%3, %3] : memref<?x28xf64>
        %c1_37 = arith.constant 1 : index
        %4 = arith.addi %3, %c1_37 : index
        memref.store %cst_1, %arg4[%4, %4] : memref<?x28xf64>
        %c2 = arith.constant 2 : index
        %5 = arith.addi %3, %c2 : index
        memref.store %cst_1, %arg4[%5, %5] : memref<?x28xf64>
        %c3 = arith.constant 3 : index
        %6 = arith.addi %3, %c3 : index
        memref.store %cst_1, %arg4[%6, %6] : memref<?x28xf64>
      }
      scf.reduce 
    }
    %c0_7 = arith.constant 0 : index
    %c1_8 = arith.constant 1 : index
    %c1_9 = arith.constant 1 : index
    scf.parallel (%arg7) = (%c0_7) to (%c1_8) step (%c1_9) {
      %c32 = arith.constant 32 : index
      %1 = arith.muli %arg7, %c32 : index
      %c24 = arith.constant 24 : index
      %2 = arith.addi %1, %c24 : index
      %c0_35 = arith.constant 0 : index
      %c3 = arith.constant 3 : index
      %c1_36 = arith.constant 1 : index
      scf.for %arg8 = %c0_35 to %c3 step %c1_36 {
        %3 = arith.addi %2, %arg8 : index
        memref.store %cst_1, %arg4[%3, %3] : memref<?x28xf64>
      }
      scf.reduce 
    }
    %0 = math.sqrt %arg2 : f64
    %c0_10 = arith.constant 0 : index
    memref.store %0, %alloca[%c0_10] : memref<1xf64>
    %c0_11 = arith.constant 0 : index
    %c1_12 = arith.constant 1 : index
    %c1_13 = arith.constant 1 : index
    scf.parallel (%arg7) = (%c0_11) to (%c1_12) step (%c1_13) {
      %c128 = arith.constant 128 : index
      %1 = arith.muli %arg7, %c128 : index
      %c0_35 = arith.constant 0 : index
      %c7 = arith.constant 7 : index
      %c1_36 = arith.constant 1 : index
      scf.for %arg8 = %c0_35 to %c7 step %c1_36 {
        %c4 = arith.constant 4 : index
        %2 = arith.muli %arg8, %c4 : index
        %3 = arith.addi %1, %2 : index
        memref.store %cst_0, %arg6[%3] : memref<?xf64>
        memref.store %cst_0, %arg5[%3] : memref<?xf64>
        %c1_37 = arith.constant 1 : index
        %4 = arith.addi %3, %c1_37 : index
        memref.store %cst_0, %arg6[%4] : memref<?xf64>
        memref.store %cst_0, %arg5[%4] : memref<?xf64>
        %c2 = arith.constant 2 : index
        %5 = arith.addi %3, %c2 : index
        memref.store %cst_0, %arg6[%5] : memref<?xf64>
        memref.store %cst_0, %arg5[%5] : memref<?xf64>
        %c3 = arith.constant 3 : index
        %6 = arith.addi %3, %c3 : index
        memref.store %cst_0, %arg6[%6] : memref<?xf64>
        memref.store %cst_0, %arg5[%6] : memref<?xf64>
      }
      scf.reduce 
    }
    %c0_14 = arith.constant 0 : index
    %c1_15 = arith.constant 1 : index
    %c1_16 = arith.constant 1 : index
    scf.parallel (%arg7) = (%c0_14) to (%c1_15) step (%c1_16) {
      %c32 = arith.constant 32 : index
      %1 = arith.muli %arg7, %c32 : index
      %c0_35 = arith.constant 0 : index
      %c1_36 = arith.constant 1 : index
      %c1_37 = arith.constant 1 : index
      scf.for %arg8 = %c0_35 to %c1_36 step %c1_37 {
        %c128 = arith.constant 128 : index
        %2 = arith.muli %arg8, %c128 : index
        %c0_38 = arith.constant 0 : index
        %c32_39 = arith.constant 32 : index
        %c1_40 = arith.constant 1 : index
        scf.for %arg9 = %c0_38 to %c32_39 step %c1_40 {
          %3 = arith.addi %1, %arg9 : index
          %c0_41 = arith.constant 0 : index
          %c7 = arith.constant 7 : index
          %c1_42 = arith.constant 1 : index
          scf.for %arg10 = %c0_41 to %c7 step %c1_42 {
            %c4 = arith.constant 4 : index
            %4 = arith.muli %arg10, %c4 : index
            %5 = arith.addi %2, %4 : index
            %6 = memref.load %arg5[%5] : memref<?xf64>
            %7 = memref.load %arg3[%3, %5] : memref<?x28xf64>
            %8 = arith.addf %6, %7 : f64
            memref.store %8, %arg5[%5] : memref<?xf64>
            %c1_43 = arith.constant 1 : index
            %9 = arith.addi %5, %c1_43 : index
            %10 = memref.load %arg5[%9] : memref<?xf64>
            %11 = memref.load %arg3[%3, %9] : memref<?x28xf64>
            %12 = arith.addf %10, %11 : f64
            memref.store %12, %arg5[%9] : memref<?xf64>
            %c2 = arith.constant 2 : index
            %13 = arith.addi %5, %c2 : index
            %14 = memref.load %arg5[%13] : memref<?xf64>
            %15 = memref.load %arg3[%3, %13] : memref<?x28xf64>
            %16 = arith.addf %14, %15 : f64
            memref.store %16, %arg5[%13] : memref<?xf64>
            %c3 = arith.constant 3 : index
            %17 = arith.addi %5, %c3 : index
            %18 = memref.load %arg5[%17] : memref<?xf64>
            %19 = memref.load %arg3[%3, %17] : memref<?x28xf64>
            %20 = arith.addf %18, %19 : f64
            memref.store %20, %arg5[%17] : memref<?xf64>
          }
        }
      }
      scf.reduce 
    }
    %c0_17 = arith.constant 0 : index
    %c1_18 = arith.constant 1 : index
    %c1_19 = arith.constant 1 : index
    scf.parallel (%arg7) = (%c0_17) to (%c1_18) step (%c1_19) {
      %c128 = arith.constant 128 : index
      %1 = arith.muli %arg7, %c128 : index
      %c0_35 = arith.constant 0 : index
      %c7 = arith.constant 7 : index
      %c1_36 = arith.constant 1 : index
      scf.for %arg8 = %c0_35 to %c7 step %c1_36 {
        %c4 = arith.constant 4 : index
        %2 = arith.muli %arg8, %c4 : index
        %3 = arith.addi %1, %2 : index
        %4 = memref.load %arg5[%3] : memref<?xf64>
        %5 = arith.divf %4, %arg2 : f64
        memref.store %5, %arg5[%3] : memref<?xf64>
        %c1_37 = arith.constant 1 : index
        %6 = arith.addi %3, %c1_37 : index
        %7 = memref.load %arg5[%6] : memref<?xf64>
        %8 = arith.divf %7, %arg2 : f64
        memref.store %8, %arg5[%6] : memref<?xf64>
        %c2 = arith.constant 2 : index
        %9 = arith.addi %3, %c2 : index
        %10 = memref.load %arg5[%9] : memref<?xf64>
        %11 = arith.divf %10, %arg2 : f64
        memref.store %11, %arg5[%9] : memref<?xf64>
        %c3 = arith.constant 3 : index
        %12 = arith.addi %3, %c3 : index
        %13 = memref.load %arg5[%12] : memref<?xf64>
        %14 = arith.divf %13, %arg2 : f64
        memref.store %14, %arg5[%12] : memref<?xf64>
      }
      scf.reduce 
    }
    %c0_20 = arith.constant 0 : index
    %c1_21 = arith.constant 1 : index
    %c1_22 = arith.constant 1 : index
    scf.parallel (%arg7) = (%c0_20) to (%c1_21) step (%c1_22) {
      %c32 = arith.constant 32 : index
      %1 = arith.muli %arg7, %c32 : index
      %c0_35 = arith.constant 0 : index
      %c1_36 = arith.constant 1 : index
      %c1_37 = arith.constant 1 : index
      scf.for %arg8 = %c0_35 to %c1_36 step %c1_37 {
        %c128 = arith.constant 128 : index
        %2 = arith.muli %arg8, %c128 : index
        %c0_38 = arith.constant 0 : index
        %c32_39 = arith.constant 32 : index
        %c1_40 = arith.constant 1 : index
        scf.for %arg9 = %c0_38 to %c32_39 step %c1_40 {
          %3 = arith.addi %1, %arg9 : index
          %c0_41 = arith.constant 0 : index
          %c7 = arith.constant 7 : index
          %c1_42 = arith.constant 1 : index
          scf.for %arg10 = %c0_41 to %c7 step %c1_42 {
            %c4 = arith.constant 4 : index
            %4 = arith.muli %arg10, %c4 : index
            %5 = arith.addi %2, %4 : index
            %6 = memref.load %arg6[%5] : memref<?xf64>
            %7 = memref.load %arg3[%3, %5] : memref<?x28xf64>
            %8 = memref.load %arg5[%5] : memref<?xf64>
            %9 = arith.subf %7, %8 : f64
            %10 = arith.mulf %9, %9 : f64
            %11 = arith.addf %6, %10 : f64
            memref.store %11, %arg6[%5] : memref<?xf64>
            %12 = memref.load %arg3[%3, %5] : memref<?x28xf64>
            %13 = memref.load %arg5[%5] : memref<?xf64>
            %14 = arith.subf %12, %13 : f64
            memref.store %14, %arg3[%3, %5] : memref<?x28xf64>
            %c1_43 = arith.constant 1 : index
            %15 = arith.addi %5, %c1_43 : index
            %16 = memref.load %arg6[%15] : memref<?xf64>
            %17 = memref.load %arg3[%3, %15] : memref<?x28xf64>
            %18 = memref.load %arg5[%15] : memref<?xf64>
            %19 = arith.subf %17, %18 : f64
            %20 = arith.mulf %19, %19 : f64
            %21 = arith.addf %16, %20 : f64
            memref.store %21, %arg6[%15] : memref<?xf64>
            %22 = memref.load %arg3[%3, %15] : memref<?x28xf64>
            %23 = memref.load %arg5[%15] : memref<?xf64>
            %24 = arith.subf %22, %23 : f64
            memref.store %24, %arg3[%3, %15] : memref<?x28xf64>
            %c2 = arith.constant 2 : index
            %25 = arith.addi %5, %c2 : index
            %26 = memref.load %arg6[%25] : memref<?xf64>
            %27 = memref.load %arg3[%3, %25] : memref<?x28xf64>
            %28 = memref.load %arg5[%25] : memref<?xf64>
            %29 = arith.subf %27, %28 : f64
            %30 = arith.mulf %29, %29 : f64
            %31 = arith.addf %26, %30 : f64
            memref.store %31, %arg6[%25] : memref<?xf64>
            %32 = memref.load %arg3[%3, %25] : memref<?x28xf64>
            %33 = memref.load %arg5[%25] : memref<?xf64>
            %34 = arith.subf %32, %33 : f64
            memref.store %34, %arg3[%3, %25] : memref<?x28xf64>
            %c3 = arith.constant 3 : index
            %35 = arith.addi %5, %c3 : index
            %36 = memref.load %arg6[%35] : memref<?xf64>
            %37 = memref.load %arg3[%3, %35] : memref<?x28xf64>
            %38 = memref.load %arg5[%35] : memref<?xf64>
            %39 = arith.subf %37, %38 : f64
            %40 = arith.mulf %39, %39 : f64
            %41 = arith.addf %36, %40 : f64
            memref.store %41, %arg6[%35] : memref<?xf64>
            %42 = memref.load %arg3[%3, %35] : memref<?x28xf64>
            %43 = memref.load %arg5[%35] : memref<?xf64>
            %44 = arith.subf %42, %43 : f64
            memref.store %44, %arg3[%3, %35] : memref<?x28xf64>
          }
        }
      }
      scf.reduce 
    }
    %c0_23 = arith.constant 0 : index
    %c1_24 = arith.constant 1 : index
    %c1_25 = arith.constant 1 : index
    scf.parallel (%arg7) = (%c0_23) to (%c1_24) step (%c1_25) {
      %c128 = arith.constant 128 : index
      %1 = arith.muli %arg7, %c128 : index
      %c0_35 = arith.constant 0 : index
      %c7 = arith.constant 7 : index
      %c1_36 = arith.constant 1 : index
      scf.for %arg8 = %c0_35 to %c7 step %c1_36 {
        %c4 = arith.constant 4 : index
        %2 = arith.muli %arg8, %c4 : index
        %3 = arith.addi %1, %2 : index
        %4 = memref.load %arg6[%3] : memref<?xf64>
        %5 = arith.divf %4, %arg2 : f64
        %6 = math.sqrt %5 : f64
        %7 = arith.cmpf ole, %6, %cst : f64
        %8 = arith.select %7, %cst_1, %6 : f64
        memref.store %8, %arg6[%3] : memref<?xf64>
        %c1_37 = arith.constant 1 : index
        %9 = arith.addi %3, %c1_37 : index
        %10 = memref.load %arg6[%9] : memref<?xf64>
        %11 = arith.divf %10, %arg2 : f64
        %12 = math.sqrt %11 : f64
        %13 = arith.cmpf ole, %12, %cst : f64
        %14 = arith.select %13, %cst_1, %12 : f64
        memref.store %14, %arg6[%9] : memref<?xf64>
        %c2 = arith.constant 2 : index
        %15 = arith.addi %3, %c2 : index
        %16 = memref.load %arg6[%15] : memref<?xf64>
        %17 = arith.divf %16, %arg2 : f64
        %18 = math.sqrt %17 : f64
        %19 = arith.cmpf ole, %18, %cst : f64
        %20 = arith.select %19, %cst_1, %18 : f64
        memref.store %20, %arg6[%15] : memref<?xf64>
        %c3 = arith.constant 3 : index
        %21 = arith.addi %3, %c3 : index
        %22 = memref.load %arg6[%21] : memref<?xf64>
        %23 = arith.divf %22, %arg2 : f64
        %24 = math.sqrt %23 : f64
        %25 = arith.cmpf ole, %24, %cst : f64
        %26 = arith.select %25, %cst_1, %24 : f64
        memref.store %26, %arg6[%21] : memref<?xf64>
      }
      scf.reduce 
    }
    %c0_26 = arith.constant 0 : index
    %c1_27 = arith.constant 1 : index
    %c1_28 = arith.constant 1 : index
    scf.parallel (%arg7) = (%c0_26) to (%c1_27) step (%c1_28) {
      %c32 = arith.constant 32 : index
      %1 = arith.muli %arg7, %c32 : index
      %c0_35 = arith.constant 0 : index
      %2 = memref.load %alloca[%c0_35] : memref<1xf64>
      %c0_36 = arith.constant 0 : index
      %3 = memref.load %alloca[%c0_36] : memref<1xf64>
      %c0_37 = arith.constant 0 : index
      %4 = memref.load %alloca[%c0_37] : memref<1xf64>
      %c0_38 = arith.constant 0 : index
      %5 = memref.load %alloca[%c0_38] : memref<1xf64>
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
          %7 = arith.addi %1, %arg9 : index
          %c0_45 = arith.constant 0 : index
          %c7 = arith.constant 7 : index
          %c1_46 = arith.constant 1 : index
          scf.for %arg10 = %c0_45 to %c7 step %c1_46 {
            %c4 = arith.constant 4 : index
            %8 = arith.muli %arg10, %c4 : index
            %9 = arith.addi %6, %8 : index
            %10 = memref.load %arg3[%7, %9] : memref<?x28xf64>
            %11 = memref.load %arg6[%9] : memref<?xf64>
            %12 = arith.mulf %2, %11 : f64
            %13 = arith.divf %10, %12 : f64
            memref.store %13, %arg3[%7, %9] : memref<?x28xf64>
            %c1_47 = arith.constant 1 : index
            %14 = arith.addi %9, %c1_47 : index
            %15 = memref.load %arg3[%7, %14] : memref<?x28xf64>
            %16 = memref.load %arg6[%14] : memref<?xf64>
            %17 = arith.mulf %3, %16 : f64
            %18 = arith.divf %15, %17 : f64
            memref.store %18, %arg3[%7, %14] : memref<?x28xf64>
            %c2 = arith.constant 2 : index
            %19 = arith.addi %9, %c2 : index
            %20 = memref.load %arg3[%7, %19] : memref<?x28xf64>
            %21 = memref.load %arg6[%19] : memref<?xf64>
            %22 = arith.mulf %4, %21 : f64
            %23 = arith.divf %20, %22 : f64
            memref.store %23, %arg3[%7, %19] : memref<?x28xf64>
            %c3 = arith.constant 3 : index
            %24 = arith.addi %9, %c3 : index
            %25 = memref.load %arg3[%7, %24] : memref<?x28xf64>
            %26 = memref.load %arg6[%24] : memref<?xf64>
            %27 = arith.mulf %5, %26 : f64
            %28 = arith.divf %25, %27 : f64
            memref.store %28, %arg3[%7, %24] : memref<?x28xf64>
          }
        }
      }
      scf.reduce 
    }
    %c0_29 = arith.constant 0 : index
    %c1_30 = arith.constant 1 : index
    %c1_31 = arith.constant 1 : index
    scf.parallel (%arg7) = (%c0_29) to (%c1_30) step (%c1_31) {
      %c32 = arith.constant 32 : index
      %1 = arith.muli %arg7, %c32 : index
      %c0_35 = arith.constant 0 : index
      %c1_36 = arith.constant 1 : index
      %c1_37 = arith.constant 1 : index
      scf.for %arg8 = %c0_35 to %c1_36 step %c1_37 {
        %c32_38 = arith.constant 32 : index
        %2 = arith.muli %arg8, %c32_38 : index
        %c0_39 = arith.constant 0 : index
        %c27_40 = arith.constant 27 : index
        %c1_41 = arith.constant 1 : index
        scf.for %arg9 = %c0_39 to %c27_40 step %c1_41 {
          %3 = arith.addi %1, %arg9 : index
          %c0_42 = arith.constant 0 : index
          %c32_43 = arith.constant 32 : index
          %c1_44 = arith.constant 1 : index
          scf.for %arg10 = %c0_42 to %c32_43 step %c1_44 {
            %4 = arith.addi %2, %arg10 : index
            %5 = memref.load %arg3[%4, %3] : memref<?x28xf64>
            %6 = memref.load %arg3[%4, %3] : memref<?x28xf64>
            %7 = memref.load %arg3[%4, %3] : memref<?x28xf64>
            %8 = memref.load %arg3[%4, %3] : memref<?x28xf64>
            %c0_45 = arith.constant 0 : index
            %c-1 = arith.constant -1 : index
            %9 = arith.muli %arg9, %c-1 : index
            %c-32 = arith.constant -32 : index
            %10 = arith.muli %arg7, %c-32 : index
            %11 = arith.addi %9, %10 : index
            %c27_46 = arith.constant 27 : index
            %12 = arith.addi %11, %c27_46 : index
            %c4 = arith.constant 4 : index
            %c0_47 = arith.constant 0 : index
            %c-1_48 = arith.constant -1 : index
            %13 = arith.cmpi slt, %12, %c0_47 : index
            %14 = arith.subi %c-1_48, %12 : index
            %15 = arith.select %13, %14, %12 : index
            %16 = arith.divsi %15, %c4 : index
            %17 = arith.subi %c-1_48, %16 : index
            %18 = arith.select %13, %17, %16 : index
            %c1_49 = arith.constant 1 : index
            scf.for %arg11 = %c0_45 to %18 step %c1_49 {
              %c4_61 = arith.constant 4 : index
              %36 = arith.muli %arg11, %c4_61 : index
              %37 = arith.addi %3, %36 : index
              %c1_62 = arith.constant 1 : index
              %38 = arith.addi %37, %c1_62 : index
              %39 = memref.load %arg4[%3, %38] : memref<?x28xf64>
              %40 = memref.load %arg3[%4, %38] : memref<?x28xf64>
              %41 = arith.mulf %5, %40 : f64
              %42 = arith.addf %39, %41 : f64
              memref.store %42, %arg4[%3, %38] : memref<?x28xf64>
              %c1_63 = arith.constant 1 : index
              %43 = arith.addi %38, %c1_63 : index
              %44 = memref.load %arg4[%3, %43] : memref<?x28xf64>
              %45 = memref.load %arg3[%4, %43] : memref<?x28xf64>
              %46 = arith.mulf %6, %45 : f64
              %47 = arith.addf %44, %46 : f64
              memref.store %47, %arg4[%3, %43] : memref<?x28xf64>
              %c2 = arith.constant 2 : index
              %48 = arith.addi %38, %c2 : index
              %49 = memref.load %arg4[%3, %48] : memref<?x28xf64>
              %50 = memref.load %arg3[%4, %48] : memref<?x28xf64>
              %51 = arith.mulf %7, %50 : f64
              %52 = arith.addf %49, %51 : f64
              memref.store %52, %arg4[%3, %48] : memref<?x28xf64>
              %c3 = arith.constant 3 : index
              %53 = arith.addi %38, %c3 : index
              %54 = memref.load %arg4[%3, %53] : memref<?x28xf64>
              %55 = memref.load %arg3[%4, %53] : memref<?x28xf64>
              %56 = arith.mulf %8, %55 : f64
              %57 = arith.addf %54, %56 : f64
              memref.store %57, %arg4[%3, %53] : memref<?x28xf64>
            }
            %19 = memref.load %arg3[%4, %3] : memref<?x28xf64>
            %c0_50 = arith.constant 0 : index
            %c-1_51 = arith.constant -1 : index
            %20 = arith.muli %arg9, %c-1_51 : index
            %c-32_52 = arith.constant -32 : index
            %21 = arith.muli %arg7, %c-32_52 : index
            %22 = arith.addi %20, %21 : index
            %c-1_53 = arith.constant -1 : index
            %23 = arith.muli %arg9, %c-1_53 : index
            %c-32_54 = arith.constant -32 : index
            %24 = arith.muli %arg7, %c-32_54 : index
            %25 = arith.addi %23, %24 : index
            %c27_55 = arith.constant 27 : index
            %26 = arith.addi %25, %c27_55 : index
            %c4_56 = arith.constant 4 : index
            %c0_57 = arith.constant 0 : index
            %c-1_58 = arith.constant -1 : index
            %27 = arith.cmpi slt, %26, %c0_57 : index
            %28 = arith.subi %c-1_58, %26 : index
            %29 = arith.select %27, %28, %26 : index
            %30 = arith.divsi %29, %c4_56 : index
            %31 = arith.subi %c-1_58, %30 : index
            %32 = arith.select %27, %31, %30 : index
            %c-4 = arith.constant -4 : index
            %33 = arith.muli %32, %c-4 : index
            %34 = arith.addi %22, %33 : index
            %c27_59 = arith.constant 27 : index
            %35 = arith.addi %34, %c27_59 : index
            %c1_60 = arith.constant 1 : index
            scf.for %arg11 = %c0_50 to %35 step %c1_60 {
              %36 = arith.addi %3, %arg11 : index
              %c-1_61 = arith.constant -1 : index
              %37 = arith.muli %3, %c-1_61 : index
              %c27_62 = arith.constant 27 : index
              %38 = arith.addi %37, %c27_62 : index
              %c4_63 = arith.constant 4 : index
              %c0_64 = arith.constant 0 : index
              %c-1_65 = arith.constant -1 : index
              %39 = arith.cmpi slt, %38, %c0_64 : index
              %40 = arith.subi %c-1_65, %38 : index
              %41 = arith.select %39, %40, %38 : index
              %42 = arith.divsi %41, %c4_63 : index
              %43 = arith.subi %c-1_65, %42 : index
              %44 = arith.select %39, %43, %42 : index
              %c4_66 = arith.constant 4 : index
              %45 = arith.muli %44, %c4_66 : index
              %46 = arith.addi %36, %45 : index
              %c1_67 = arith.constant 1 : index
              %47 = arith.addi %46, %c1_67 : index
              %48 = memref.load %arg4[%3, %47] : memref<?x28xf64>
              %49 = memref.load %arg3[%4, %47] : memref<?x28xf64>
              %50 = arith.mulf %19, %49 : f64
              %51 = arith.addf %48, %50 : f64
              memref.store %51, %arg4[%3, %47] : memref<?x28xf64>
            }
          }
        }
      }
      scf.reduce 
    }
    %c0_32 = arith.constant 0 : index
    %c1_33 = arith.constant 1 : index
    %c1_34 = arith.constant 1 : index
    scf.parallel (%arg7) = (%c0_32) to (%c1_33) step (%c1_34) {
      %c32 = arith.constant 32 : index
      %1 = arith.muli %arg7, %c32 : index
      %c0_35 = arith.constant 0 : index
      %c27_36 = arith.constant 27 : index
      %c1_37 = arith.constant 1 : index
      scf.for %arg8 = %c0_35 to %c27_36 step %c1_37 {
        %2 = arith.addi %1, %arg8 : index
        %c0_38 = arith.constant 0 : index
        %c-1 = arith.constant -1 : index
        %3 = arith.muli %arg8, %c-1 : index
        %c-32 = arith.constant -32 : index
        %4 = arith.muli %arg7, %c-32 : index
        %5 = arith.addi %3, %4 : index
        %c27_39 = arith.constant 27 : index
        %6 = arith.addi %5, %c27_39 : index
        %c4 = arith.constant 4 : index
        %c0_40 = arith.constant 0 : index
        %c-1_41 = arith.constant -1 : index
        %7 = arith.cmpi slt, %6, %c0_40 : index
        %8 = arith.subi %c-1_41, %6 : index
        %9 = arith.select %7, %8, %6 : index
        %10 = arith.divsi %9, %c4 : index
        %11 = arith.subi %c-1_41, %10 : index
        %12 = arith.select %7, %11, %10 : index
        %c1_42 = arith.constant 1 : index
        scf.for %arg9 = %c0_38 to %12 step %c1_42 {
          %c4_54 = arith.constant 4 : index
          %29 = arith.muli %arg9, %c4_54 : index
          %30 = arith.addi %2, %29 : index
          %c1_55 = arith.constant 1 : index
          %31 = arith.addi %30, %c1_55 : index
          %32 = memref.load %arg4[%2, %31] : memref<?x28xf64>
          memref.store %32, %arg4[%31, %2] : memref<?x28xf64>
          %c1_56 = arith.constant 1 : index
          %33 = arith.addi %31, %c1_56 : index
          %34 = memref.load %arg4[%2, %33] : memref<?x28xf64>
          memref.store %34, %arg4[%33, %2] : memref<?x28xf64>
          %c2 = arith.constant 2 : index
          %35 = arith.addi %31, %c2 : index
          %36 = memref.load %arg4[%2, %35] : memref<?x28xf64>
          memref.store %36, %arg4[%35, %2] : memref<?x28xf64>
          %c3 = arith.constant 3 : index
          %37 = arith.addi %31, %c3 : index
          %38 = memref.load %arg4[%2, %37] : memref<?x28xf64>
          memref.store %38, %arg4[%37, %2] : memref<?x28xf64>
        }
        %c0_43 = arith.constant 0 : index
        %c-1_44 = arith.constant -1 : index
        %13 = arith.muli %arg8, %c-1_44 : index
        %c-32_45 = arith.constant -32 : index
        %14 = arith.muli %arg7, %c-32_45 : index
        %15 = arith.addi %13, %14 : index
        %c-1_46 = arith.constant -1 : index
        %16 = arith.muli %arg8, %c-1_46 : index
        %c-32_47 = arith.constant -32 : index
        %17 = arith.muli %arg7, %c-32_47 : index
        %18 = arith.addi %16, %17 : index
        %c27_48 = arith.constant 27 : index
        %19 = arith.addi %18, %c27_48 : index
        %c4_49 = arith.constant 4 : index
        %c0_50 = arith.constant 0 : index
        %c-1_51 = arith.constant -1 : index
        %20 = arith.cmpi slt, %19, %c0_50 : index
        %21 = arith.subi %c-1_51, %19 : index
        %22 = arith.select %20, %21, %19 : index
        %23 = arith.divsi %22, %c4_49 : index
        %24 = arith.subi %c-1_51, %23 : index
        %25 = arith.select %20, %24, %23 : index
        %c-4 = arith.constant -4 : index
        %26 = arith.muli %25, %c-4 : index
        %27 = arith.addi %15, %26 : index
        %c27_52 = arith.constant 27 : index
        %28 = arith.addi %27, %c27_52 : index
        %c1_53 = arith.constant 1 : index
        scf.for %arg9 = %c0_43 to %28 step %c1_53 {
          %29 = arith.addi %2, %arg9 : index
          %c-1_54 = arith.constant -1 : index
          %30 = arith.muli %2, %c-1_54 : index
          %c27_55 = arith.constant 27 : index
          %31 = arith.addi %30, %c27_55 : index
          %c4_56 = arith.constant 4 : index
          %c0_57 = arith.constant 0 : index
          %c-1_58 = arith.constant -1 : index
          %32 = arith.cmpi slt, %31, %c0_57 : index
          %33 = arith.subi %c-1_58, %31 : index
          %34 = arith.select %32, %33, %31 : index
          %35 = arith.divsi %34, %c4_56 : index
          %36 = arith.subi %c-1_58, %35 : index
          %37 = arith.select %32, %36, %35 : index
          %c4_59 = arith.constant 4 : index
          %38 = arith.muli %37, %c4_59 : index
          %39 = arith.addi %29, %38 : index
          %c1_60 = arith.constant 1 : index
          %40 = arith.addi %39, %c1_60 : index
          %41 = memref.load %arg4[%2, %40] : memref<?x28xf64>
          memref.store %41, %arg4[%40, %2] : memref<?x28xf64>
        }
      }
      scf.reduce 
    }
    return
  }
}

