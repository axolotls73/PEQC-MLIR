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
    scf.parallel (%arg7) = (%c0) to (%c27_3) step (%c1) {
      %c0_31 = arith.constant 0 : index
      %c1_32 = arith.constant 1 : index
      %c1_33 = arith.constant 1 : index
      scf.for %arg8 = %c0_31 to %c1_32 step %c1_33 {
        %1 = arith.addi %arg7, %arg8 : index
        %c0_34 = arith.constant 0 : index
        %c-1 = arith.constant -1 : index
        %2 = arith.muli %arg7, %c-1 : index
        %c-1_35 = arith.constant -1 : index
        %3 = arith.muli %arg8, %c-1_35 : index
        %4 = arith.addi %2, %3 : index
        %c27_36 = arith.constant 27 : index
        %5 = arith.addi %4, %c27_36 : index
        %c4 = arith.constant 4 : index
        %c0_37 = arith.constant 0 : index
        %c-1_38 = arith.constant -1 : index
        %6 = arith.cmpi slt, %5, %c0_37 : index
        %7 = arith.subi %c-1_38, %5 : index
        %8 = arith.select %6, %7, %5 : index
        %9 = arith.divsi %8, %c4 : index
        %10 = arith.subi %c-1_38, %9 : index
        %11 = arith.select %6, %10, %9 : index
        %c1_39 = arith.constant 1 : index
        scf.for %arg9 = %c0_34 to %11 step %c1_39 {
          %c4_51 = arith.constant 4 : index
          %28 = arith.muli %arg9, %c4_51 : index
          %29 = arith.addi %1, %28 : index
          %c1_52 = arith.constant 1 : index
          %30 = arith.addi %29, %c1_52 : index
          memref.store %cst_0, %arg4[%1, %30] : memref<?x28xf64>
          %c1_53 = arith.constant 1 : index
          %31 = arith.addi %30, %c1_53 : index
          memref.store %cst_0, %arg4[%1, %31] : memref<?x28xf64>
          %c2 = arith.constant 2 : index
          %32 = arith.addi %30, %c2 : index
          memref.store %cst_0, %arg4[%1, %32] : memref<?x28xf64>
          %c3_54 = arith.constant 3 : index
          %33 = arith.addi %30, %c3_54 : index
          memref.store %cst_0, %arg4[%1, %33] : memref<?x28xf64>
        }
        %c0_40 = arith.constant 0 : index
        %c-1_41 = arith.constant -1 : index
        %12 = arith.muli %arg7, %c-1_41 : index
        %c-1_42 = arith.constant -1 : index
        %13 = arith.muli %arg8, %c-1_42 : index
        %14 = arith.addi %12, %13 : index
        %c-1_43 = arith.constant -1 : index
        %15 = arith.muli %arg7, %c-1_43 : index
        %c-1_44 = arith.constant -1 : index
        %16 = arith.muli %arg8, %c-1_44 : index
        %17 = arith.addi %15, %16 : index
        %c27_45 = arith.constant 27 : index
        %18 = arith.addi %17, %c27_45 : index
        %c4_46 = arith.constant 4 : index
        %c0_47 = arith.constant 0 : index
        %c-1_48 = arith.constant -1 : index
        %19 = arith.cmpi slt, %18, %c0_47 : index
        %20 = arith.subi %c-1_48, %18 : index
        %21 = arith.select %19, %20, %18 : index
        %22 = arith.divsi %21, %c4_46 : index
        %23 = arith.subi %c-1_48, %22 : index
        %24 = arith.select %19, %23, %22 : index
        %c-4 = arith.constant -4 : index
        %25 = arith.muli %24, %c-4 : index
        %26 = arith.addi %14, %25 : index
        %c27_49 = arith.constant 27 : index
        %27 = arith.addi %26, %c27_49 : index
        %c1_50 = arith.constant 1 : index
        scf.for %arg9 = %c0_40 to %27 step %c1_50 {
          %28 = arith.addi %1, %arg9 : index
          %c-1_51 = arith.constant -1 : index
          %29 = arith.muli %1, %c-1_51 : index
          %c27_52 = arith.constant 27 : index
          %30 = arith.addi %29, %c27_52 : index
          %c4_53 = arith.constant 4 : index
          %c0_54 = arith.constant 0 : index
          %c-1_55 = arith.constant -1 : index
          %31 = arith.cmpi slt, %30, %c0_54 : index
          %32 = arith.subi %c-1_55, %30 : index
          %33 = arith.select %31, %32, %30 : index
          %34 = arith.divsi %33, %c4_53 : index
          %35 = arith.subi %c-1_55, %34 : index
          %36 = arith.select %31, %35, %34 : index
          %c4_56 = arith.constant 4 : index
          %37 = arith.muli %36, %c4_56 : index
          %38 = arith.addi %28, %37 : index
          %c1_57 = arith.constant 1 : index
          %39 = arith.addi %38, %c1_57 : index
          memref.store %cst_0, %arg4[%1, %39] : memref<?x28xf64>
        }
      }
      scf.reduce 
    }
    %c0_4 = arith.constant 0 : index
    %c6 = arith.constant 6 : index
    %c1_5 = arith.constant 1 : index
    scf.for %arg7 = %c0_4 to %c6 step %c1_5 {
      %c4 = arith.constant 4 : index
      %1 = arith.muli %arg7, %c4 : index
      %c0_31 = arith.constant 0 : index
      %c1_32 = arith.constant 1 : index
      %c1_33 = arith.constant 1 : index
      scf.for %arg8 = %c0_31 to %c1_32 step %c1_33 {
        %c4_34 = arith.constant 4 : index
        %2 = arith.muli %arg8, %c4_34 : index
        %3 = arith.addi %1, %2 : index
        memref.store %cst_1, %arg4[%3, %3] : memref<?x28xf64>
        %c1_35 = arith.constant 1 : index
        %4 = arith.addi %3, %c1_35 : index
        memref.store %cst_1, %arg4[%4, %4] : memref<?x28xf64>
        %c2 = arith.constant 2 : index
        %5 = arith.addi %3, %c2 : index
        memref.store %cst_1, %arg4[%5, %5] : memref<?x28xf64>
        %c3_36 = arith.constant 3 : index
        %6 = arith.addi %3, %c3_36 : index
        memref.store %cst_1, %arg4[%6, %6] : memref<?x28xf64>
      }
    }
    %c0_6 = arith.constant 0 : index
    %c3 = arith.constant 3 : index
    %c1_7 = arith.constant 1 : index
    scf.parallel (%arg7) = (%c0_6) to (%c3) step (%c1_7) {
      %c24 = arith.constant 24 : index
      %1 = arith.addi %arg7, %c24 : index
      %c0_31 = arith.constant 0 : index
      %c1_32 = arith.constant 1 : index
      %c1_33 = arith.constant 1 : index
      scf.for %arg8 = %c0_31 to %c1_32 step %c1_33 {
        %2 = arith.addi %1, %arg8 : index
        memref.store %cst_1, %arg4[%2, %2] : memref<?x28xf64>
      }
      scf.reduce 
    }
    %0 = math.sqrt %arg2 : f64
    %c0_8 = arith.constant 0 : index
    memref.store %0, %alloca[%c0_8] : memref<1xf64>
    %c0_9 = arith.constant 0 : index
    %c7 = arith.constant 7 : index
    %c1_10 = arith.constant 1 : index
    scf.for %arg7 = %c0_9 to %c7 step %c1_10 {
      %c4 = arith.constant 4 : index
      %1 = arith.muli %arg7, %c4 : index
      %c0_31 = arith.constant 0 : index
      %c1_32 = arith.constant 1 : index
      %c1_33 = arith.constant 1 : index
      scf.for %arg8 = %c0_31 to %c1_32 step %c1_33 {
        %c4_34 = arith.constant 4 : index
        %2 = arith.muli %arg8, %c4_34 : index
        %3 = arith.addi %1, %2 : index
        memref.store %cst_0, %arg6[%3] : memref<?xf64>
        memref.store %cst_0, %arg5[%3] : memref<?xf64>
        %c1_35 = arith.constant 1 : index
        %4 = arith.addi %3, %c1_35 : index
        memref.store %cst_0, %arg6[%4] : memref<?xf64>
        memref.store %cst_0, %arg5[%4] : memref<?xf64>
        %c2 = arith.constant 2 : index
        %5 = arith.addi %3, %c2 : index
        memref.store %cst_0, %arg6[%5] : memref<?xf64>
        memref.store %cst_0, %arg5[%5] : memref<?xf64>
        %c3_36 = arith.constant 3 : index
        %6 = arith.addi %3, %c3_36 : index
        memref.store %cst_0, %arg6[%6] : memref<?xf64>
        memref.store %cst_0, %arg5[%6] : memref<?xf64>
      }
    }
    %c0_11 = arith.constant 0 : index
    %c32 = arith.constant 32 : index
    %c1_12 = arith.constant 1 : index
    scf.for %arg7 = %c0_11 to %c32 step %c1_12 {
      %c0_31 = arith.constant 0 : index
      %c7_32 = arith.constant 7 : index
      %c1_33 = arith.constant 1 : index
      scf.for %arg8 = %c0_31 to %c7_32 step %c1_33 {
        %c4 = arith.constant 4 : index
        %1 = arith.muli %arg8, %c4 : index
        %c0_34 = arith.constant 0 : index
        %c1_35 = arith.constant 1 : index
        %c1_36 = arith.constant 1 : index
        scf.parallel (%arg9) = (%c0_34) to (%c1_35) step (%c1_36) {
          %2 = arith.addi %arg7, %arg9 : index
          %c0_37 = arith.constant 0 : index
          %c1_38 = arith.constant 1 : index
          %c1_39 = arith.constant 1 : index
          scf.for %arg10 = %c0_37 to %c1_38 step %c1_39 {
            %c4_40 = arith.constant 4 : index
            %3 = arith.muli %arg10, %c4_40 : index
            %4 = arith.addi %1, %3 : index
            %5 = memref.load %arg5[%4] : memref<?xf64>
            %6 = memref.load %arg3[%2, %4] : memref<?x28xf64>
            %7 = arith.addf %5, %6 : f64
            memref.store %7, %arg5[%4] : memref<?xf64>
            %c1_41 = arith.constant 1 : index
            %8 = arith.addi %4, %c1_41 : index
            %9 = memref.load %arg5[%8] : memref<?xf64>
            %10 = memref.load %arg3[%2, %8] : memref<?x28xf64>
            %11 = arith.addf %9, %10 : f64
            memref.store %11, %arg5[%8] : memref<?xf64>
            %c2 = arith.constant 2 : index
            %12 = arith.addi %4, %c2 : index
            %13 = memref.load %arg5[%12] : memref<?xf64>
            %14 = memref.load %arg3[%2, %12] : memref<?x28xf64>
            %15 = arith.addf %13, %14 : f64
            memref.store %15, %arg5[%12] : memref<?xf64>
            %c3_42 = arith.constant 3 : index
            %16 = arith.addi %4, %c3_42 : index
            %17 = memref.load %arg5[%16] : memref<?xf64>
            %18 = memref.load %arg3[%2, %16] : memref<?x28xf64>
            %19 = arith.addf %17, %18 : f64
            memref.store %19, %arg5[%16] : memref<?xf64>
          }
          scf.reduce 
        }
      }
    }
    %c0_13 = arith.constant 0 : index
    %c7_14 = arith.constant 7 : index
    %c1_15 = arith.constant 1 : index
    scf.for %arg7 = %c0_13 to %c7_14 step %c1_15 {
      %c4 = arith.constant 4 : index
      %1 = arith.muli %arg7, %c4 : index
      %c0_31 = arith.constant 0 : index
      %c1_32 = arith.constant 1 : index
      %c1_33 = arith.constant 1 : index
      scf.for %arg8 = %c0_31 to %c1_32 step %c1_33 {
        %c4_34 = arith.constant 4 : index
        %2 = arith.muli %arg8, %c4_34 : index
        %3 = arith.addi %1, %2 : index
        %4 = memref.load %arg5[%3] : memref<?xf64>
        %5 = arith.divf %4, %arg2 : f64
        memref.store %5, %arg5[%3] : memref<?xf64>
        %c1_35 = arith.constant 1 : index
        %6 = arith.addi %3, %c1_35 : index
        %7 = memref.load %arg5[%6] : memref<?xf64>
        %8 = arith.divf %7, %arg2 : f64
        memref.store %8, %arg5[%6] : memref<?xf64>
        %c2 = arith.constant 2 : index
        %9 = arith.addi %3, %c2 : index
        %10 = memref.load %arg5[%9] : memref<?xf64>
        %11 = arith.divf %10, %arg2 : f64
        memref.store %11, %arg5[%9] : memref<?xf64>
        %c3_36 = arith.constant 3 : index
        %12 = arith.addi %3, %c3_36 : index
        %13 = memref.load %arg5[%12] : memref<?xf64>
        %14 = arith.divf %13, %arg2 : f64
        memref.store %14, %arg5[%12] : memref<?xf64>
      }
    }
    %c0_16 = arith.constant 0 : index
    %c32_17 = arith.constant 32 : index
    %c1_18 = arith.constant 1 : index
    scf.for %arg7 = %c0_16 to %c32_17 step %c1_18 {
      %c0_31 = arith.constant 0 : index
      %c7_32 = arith.constant 7 : index
      %c1_33 = arith.constant 1 : index
      scf.for %arg8 = %c0_31 to %c7_32 step %c1_33 {
        %c4 = arith.constant 4 : index
        %1 = arith.muli %arg8, %c4 : index
        %c0_34 = arith.constant 0 : index
        %c1_35 = arith.constant 1 : index
        %c1_36 = arith.constant 1 : index
        scf.parallel (%arg9) = (%c0_34) to (%c1_35) step (%c1_36) {
          %2 = arith.addi %arg7, %arg9 : index
          %c0_37 = arith.constant 0 : index
          %c1_38 = arith.constant 1 : index
          %c1_39 = arith.constant 1 : index
          scf.for %arg10 = %c0_37 to %c1_38 step %c1_39 {
            %c4_40 = arith.constant 4 : index
            %3 = arith.muli %arg10, %c4_40 : index
            %4 = arith.addi %1, %3 : index
            %5 = memref.load %arg6[%4] : memref<?xf64>
            %6 = memref.load %arg3[%2, %4] : memref<?x28xf64>
            %7 = memref.load %arg5[%4] : memref<?xf64>
            %8 = arith.subf %6, %7 : f64
            %9 = arith.mulf %8, %8 : f64
            %10 = arith.addf %5, %9 : f64
            memref.store %10, %arg6[%4] : memref<?xf64>
            %11 = memref.load %arg3[%2, %4] : memref<?x28xf64>
            %12 = memref.load %arg5[%4] : memref<?xf64>
            %13 = arith.subf %11, %12 : f64
            memref.store %13, %arg3[%2, %4] : memref<?x28xf64>
            %c1_41 = arith.constant 1 : index
            %14 = arith.addi %4, %c1_41 : index
            %15 = memref.load %arg6[%14] : memref<?xf64>
            %16 = memref.load %arg3[%2, %14] : memref<?x28xf64>
            %17 = memref.load %arg5[%14] : memref<?xf64>
            %18 = arith.subf %16, %17 : f64
            %19 = arith.mulf %18, %18 : f64
            %20 = arith.addf %15, %19 : f64
            memref.store %20, %arg6[%14] : memref<?xf64>
            %21 = memref.load %arg3[%2, %14] : memref<?x28xf64>
            %22 = memref.load %arg5[%14] : memref<?xf64>
            %23 = arith.subf %21, %22 : f64
            memref.store %23, %arg3[%2, %14] : memref<?x28xf64>
            %c2 = arith.constant 2 : index
            %24 = arith.addi %4, %c2 : index
            %25 = memref.load %arg6[%24] : memref<?xf64>
            %26 = memref.load %arg3[%2, %24] : memref<?x28xf64>
            %27 = memref.load %arg5[%24] : memref<?xf64>
            %28 = arith.subf %26, %27 : f64
            %29 = arith.mulf %28, %28 : f64
            %30 = arith.addf %25, %29 : f64
            memref.store %30, %arg6[%24] : memref<?xf64>
            %31 = memref.load %arg3[%2, %24] : memref<?x28xf64>
            %32 = memref.load %arg5[%24] : memref<?xf64>
            %33 = arith.subf %31, %32 : f64
            memref.store %33, %arg3[%2, %24] : memref<?x28xf64>
            %c3_42 = arith.constant 3 : index
            %34 = arith.addi %4, %c3_42 : index
            %35 = memref.load %arg6[%34] : memref<?xf64>
            %36 = memref.load %arg3[%2, %34] : memref<?x28xf64>
            %37 = memref.load %arg5[%34] : memref<?xf64>
            %38 = arith.subf %36, %37 : f64
            %39 = arith.mulf %38, %38 : f64
            %40 = arith.addf %35, %39 : f64
            memref.store %40, %arg6[%34] : memref<?xf64>
            %41 = memref.load %arg3[%2, %34] : memref<?x28xf64>
            %42 = memref.load %arg5[%34] : memref<?xf64>
            %43 = arith.subf %41, %42 : f64
            memref.store %43, %arg3[%2, %34] : memref<?x28xf64>
          }
          scf.reduce 
        }
      }
    }
    %c0_19 = arith.constant 0 : index
    %c7_20 = arith.constant 7 : index
    %c1_21 = arith.constant 1 : index
    scf.for %arg7 = %c0_19 to %c7_20 step %c1_21 {
      %c4 = arith.constant 4 : index
      %1 = arith.muli %arg7, %c4 : index
      %c0_31 = arith.constant 0 : index
      %c1_32 = arith.constant 1 : index
      %c1_33 = arith.constant 1 : index
      scf.for %arg8 = %c0_31 to %c1_32 step %c1_33 {
        %c4_34 = arith.constant 4 : index
        %2 = arith.muli %arg8, %c4_34 : index
        %3 = arith.addi %1, %2 : index
        %4 = memref.load %arg6[%3] : memref<?xf64>
        %5 = arith.divf %4, %arg2 : f64
        %6 = math.sqrt %5 : f64
        %7 = arith.cmpf ole, %6, %cst : f64
        %8 = arith.select %7, %cst_1, %6 : f64
        memref.store %8, %arg6[%3] : memref<?xf64>
        %c1_35 = arith.constant 1 : index
        %9 = arith.addi %3, %c1_35 : index
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
        %c3_36 = arith.constant 3 : index
        %21 = arith.addi %3, %c3_36 : index
        %22 = memref.load %arg6[%21] : memref<?xf64>
        %23 = arith.divf %22, %arg2 : f64
        %24 = math.sqrt %23 : f64
        %25 = arith.cmpf ole, %24, %cst : f64
        %26 = arith.select %25, %cst_1, %24 : f64
        memref.store %26, %arg6[%21] : memref<?xf64>
      }
    }
    %c0_22 = arith.constant 0 : index
    %c32_23 = arith.constant 32 : index
    %c1_24 = arith.constant 1 : index
    scf.parallel (%arg7) = (%c0_22) to (%c32_23) step (%c1_24) {
      %c0_31 = arith.constant 0 : index
      %1 = memref.load %alloca[%c0_31] : memref<1xf64>
      %c0_32 = arith.constant 0 : index
      %2 = memref.load %alloca[%c0_32] : memref<1xf64>
      %c0_33 = arith.constant 0 : index
      %3 = memref.load %alloca[%c0_33] : memref<1xf64>
      %c0_34 = arith.constant 0 : index
      %4 = memref.load %alloca[%c0_34] : memref<1xf64>
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
            %9 = memref.load %arg3[%6, %8] : memref<?x28xf64>
            %10 = memref.load %arg6[%8] : memref<?xf64>
            %11 = arith.mulf %1, %10 : f64
            %12 = arith.divf %9, %11 : f64
            memref.store %12, %arg3[%6, %8] : memref<?x28xf64>
            %c1_45 = arith.constant 1 : index
            %13 = arith.addi %8, %c1_45 : index
            %14 = memref.load %arg3[%6, %13] : memref<?x28xf64>
            %15 = memref.load %arg6[%13] : memref<?xf64>
            %16 = arith.mulf %2, %15 : f64
            %17 = arith.divf %14, %16 : f64
            memref.store %17, %arg3[%6, %13] : memref<?x28xf64>
            %c2 = arith.constant 2 : index
            %18 = arith.addi %8, %c2 : index
            %19 = memref.load %arg3[%6, %18] : memref<?x28xf64>
            %20 = memref.load %arg6[%18] : memref<?xf64>
            %21 = arith.mulf %3, %20 : f64
            %22 = arith.divf %19, %21 : f64
            memref.store %22, %arg3[%6, %18] : memref<?x28xf64>
            %c3_46 = arith.constant 3 : index
            %23 = arith.addi %8, %c3_46 : index
            %24 = memref.load %arg3[%6, %23] : memref<?x28xf64>
            %25 = memref.load %arg6[%23] : memref<?xf64>
            %26 = arith.mulf %4, %25 : f64
            %27 = arith.divf %24, %26 : f64
            memref.store %27, %arg3[%6, %23] : memref<?x28xf64>
          }
        }
      }
      scf.reduce 
    }
    %c0_25 = arith.constant 0 : index
    %c27_26 = arith.constant 27 : index
    %c1_27 = arith.constant 1 : index
    scf.parallel (%arg7) = (%c0_25) to (%c27_26) step (%c1_27) {
      %c0_31 = arith.constant 0 : index
      %c32_32 = arith.constant 32 : index
      %c1_33 = arith.constant 1 : index
      scf.for %arg8 = %c0_31 to %c32_32 step %c1_33 {
        %c0_34 = arith.constant 0 : index
        %c1_35 = arith.constant 1 : index
        %c1_36 = arith.constant 1 : index
        scf.for %arg9 = %c0_34 to %c1_35 step %c1_36 {
          %1 = arith.addi %arg7, %arg9 : index
          %c0_37 = arith.constant 0 : index
          %c1_38 = arith.constant 1 : index
          %c1_39 = arith.constant 1 : index
          scf.for %arg10 = %c0_37 to %c1_38 step %c1_39 {
            %2 = arith.addi %arg8, %arg10 : index
            %3 = memref.load %arg3[%2, %1] : memref<?x28xf64>
            %4 = memref.load %arg3[%2, %1] : memref<?x28xf64>
            %5 = memref.load %arg3[%2, %1] : memref<?x28xf64>
            %6 = memref.load %arg3[%2, %1] : memref<?x28xf64>
            %c0_40 = arith.constant 0 : index
            %c-1 = arith.constant -1 : index
            %7 = arith.muli %arg7, %c-1 : index
            %c-1_41 = arith.constant -1 : index
            %8 = arith.muli %arg9, %c-1_41 : index
            %9 = arith.addi %7, %8 : index
            %c27_42 = arith.constant 27 : index
            %10 = arith.addi %9, %c27_42 : index
            %c4 = arith.constant 4 : index
            %c0_43 = arith.constant 0 : index
            %c-1_44 = arith.constant -1 : index
            %11 = arith.cmpi slt, %10, %c0_43 : index
            %12 = arith.subi %c-1_44, %10 : index
            %13 = arith.select %11, %12, %10 : index
            %14 = arith.divsi %13, %c4 : index
            %15 = arith.subi %c-1_44, %14 : index
            %16 = arith.select %11, %15, %14 : index
            %c1_45 = arith.constant 1 : index
            scf.for %arg11 = %c0_40 to %16 step %c1_45 {
              %c4_57 = arith.constant 4 : index
              %34 = arith.muli %arg11, %c4_57 : index
              %35 = arith.addi %1, %34 : index
              %c1_58 = arith.constant 1 : index
              %36 = arith.addi %35, %c1_58 : index
              %37 = memref.load %arg4[%1, %36] : memref<?x28xf64>
              %38 = memref.load %arg3[%2, %36] : memref<?x28xf64>
              %39 = arith.mulf %3, %38 : f64
              %40 = arith.addf %37, %39 : f64
              memref.store %40, %arg4[%1, %36] : memref<?x28xf64>
              %c1_59 = arith.constant 1 : index
              %41 = arith.addi %36, %c1_59 : index
              %42 = memref.load %arg4[%1, %41] : memref<?x28xf64>
              %43 = memref.load %arg3[%2, %41] : memref<?x28xf64>
              %44 = arith.mulf %4, %43 : f64
              %45 = arith.addf %42, %44 : f64
              memref.store %45, %arg4[%1, %41] : memref<?x28xf64>
              %c2 = arith.constant 2 : index
              %46 = arith.addi %36, %c2 : index
              %47 = memref.load %arg4[%1, %46] : memref<?x28xf64>
              %48 = memref.load %arg3[%2, %46] : memref<?x28xf64>
              %49 = arith.mulf %5, %48 : f64
              %50 = arith.addf %47, %49 : f64
              memref.store %50, %arg4[%1, %46] : memref<?x28xf64>
              %c3_60 = arith.constant 3 : index
              %51 = arith.addi %36, %c3_60 : index
              %52 = memref.load %arg4[%1, %51] : memref<?x28xf64>
              %53 = memref.load %arg3[%2, %51] : memref<?x28xf64>
              %54 = arith.mulf %6, %53 : f64
              %55 = arith.addf %52, %54 : f64
              memref.store %55, %arg4[%1, %51] : memref<?x28xf64>
            }
            %17 = memref.load %arg3[%2, %1] : memref<?x28xf64>
            %c0_46 = arith.constant 0 : index
            %c-1_47 = arith.constant -1 : index
            %18 = arith.muli %arg7, %c-1_47 : index
            %c-1_48 = arith.constant -1 : index
            %19 = arith.muli %arg9, %c-1_48 : index
            %20 = arith.addi %18, %19 : index
            %c-1_49 = arith.constant -1 : index
            %21 = arith.muli %arg7, %c-1_49 : index
            %c-1_50 = arith.constant -1 : index
            %22 = arith.muli %arg9, %c-1_50 : index
            %23 = arith.addi %21, %22 : index
            %c27_51 = arith.constant 27 : index
            %24 = arith.addi %23, %c27_51 : index
            %c4_52 = arith.constant 4 : index
            %c0_53 = arith.constant 0 : index
            %c-1_54 = arith.constant -1 : index
            %25 = arith.cmpi slt, %24, %c0_53 : index
            %26 = arith.subi %c-1_54, %24 : index
            %27 = arith.select %25, %26, %24 : index
            %28 = arith.divsi %27, %c4_52 : index
            %29 = arith.subi %c-1_54, %28 : index
            %30 = arith.select %25, %29, %28 : index
            %c-4 = arith.constant -4 : index
            %31 = arith.muli %30, %c-4 : index
            %32 = arith.addi %20, %31 : index
            %c27_55 = arith.constant 27 : index
            %33 = arith.addi %32, %c27_55 : index
            %c1_56 = arith.constant 1 : index
            scf.for %arg11 = %c0_46 to %33 step %c1_56 {
              %34 = arith.addi %1, %arg11 : index
              %c-1_57 = arith.constant -1 : index
              %35 = arith.muli %1, %c-1_57 : index
              %c27_58 = arith.constant 27 : index
              %36 = arith.addi %35, %c27_58 : index
              %c4_59 = arith.constant 4 : index
              %c0_60 = arith.constant 0 : index
              %c-1_61 = arith.constant -1 : index
              %37 = arith.cmpi slt, %36, %c0_60 : index
              %38 = arith.subi %c-1_61, %36 : index
              %39 = arith.select %37, %38, %36 : index
              %40 = arith.divsi %39, %c4_59 : index
              %41 = arith.subi %c-1_61, %40 : index
              %42 = arith.select %37, %41, %40 : index
              %c4_62 = arith.constant 4 : index
              %43 = arith.muli %42, %c4_62 : index
              %44 = arith.addi %34, %43 : index
              %c1_63 = arith.constant 1 : index
              %45 = arith.addi %44, %c1_63 : index
              %46 = memref.load %arg4[%1, %45] : memref<?x28xf64>
              %47 = memref.load %arg3[%2, %45] : memref<?x28xf64>
              %48 = arith.mulf %17, %47 : f64
              %49 = arith.addf %46, %48 : f64
              memref.store %49, %arg4[%1, %45] : memref<?x28xf64>
            }
          }
        }
      }
      scf.reduce 
    }
    %c0_28 = arith.constant 0 : index
    %c27_29 = arith.constant 27 : index
    %c1_30 = arith.constant 1 : index
    scf.for %arg7 = %c0_28 to %c27_29 step %c1_30 {
      %c0_31 = arith.constant 0 : index
      %c1_32 = arith.constant 1 : index
      %c1_33 = arith.constant 1 : index
      scf.parallel (%arg8) = (%c0_31) to (%c1_32) step (%c1_33) {
        %1 = arith.addi %arg7, %arg8 : index
        %c0_34 = arith.constant 0 : index
        %c-1 = arith.constant -1 : index
        %2 = arith.muli %arg7, %c-1 : index
        %c-1_35 = arith.constant -1 : index
        %3 = arith.muli %arg8, %c-1_35 : index
        %4 = arith.addi %2, %3 : index
        %c27_36 = arith.constant 27 : index
        %5 = arith.addi %4, %c27_36 : index
        %c4 = arith.constant 4 : index
        %c0_37 = arith.constant 0 : index
        %c-1_38 = arith.constant -1 : index
        %6 = arith.cmpi slt, %5, %c0_37 : index
        %7 = arith.subi %c-1_38, %5 : index
        %8 = arith.select %6, %7, %5 : index
        %9 = arith.divsi %8, %c4 : index
        %10 = arith.subi %c-1_38, %9 : index
        %11 = arith.select %6, %10, %9 : index
        %c1_39 = arith.constant 1 : index
        scf.for %arg9 = %c0_34 to %11 step %c1_39 {
          %c4_51 = arith.constant 4 : index
          %28 = arith.muli %arg9, %c4_51 : index
          %29 = arith.addi %1, %28 : index
          %c1_52 = arith.constant 1 : index
          %30 = arith.addi %29, %c1_52 : index
          %31 = memref.load %arg4[%1, %30] : memref<?x28xf64>
          memref.store %31, %arg4[%30, %1] : memref<?x28xf64>
          %c1_53 = arith.constant 1 : index
          %32 = arith.addi %30, %c1_53 : index
          %33 = memref.load %arg4[%1, %32] : memref<?x28xf64>
          memref.store %33, %arg4[%32, %1] : memref<?x28xf64>
          %c2 = arith.constant 2 : index
          %34 = arith.addi %30, %c2 : index
          %35 = memref.load %arg4[%1, %34] : memref<?x28xf64>
          memref.store %35, %arg4[%34, %1] : memref<?x28xf64>
          %c3_54 = arith.constant 3 : index
          %36 = arith.addi %30, %c3_54 : index
          %37 = memref.load %arg4[%1, %36] : memref<?x28xf64>
          memref.store %37, %arg4[%36, %1] : memref<?x28xf64>
        }
        %c0_40 = arith.constant 0 : index
        %c-1_41 = arith.constant -1 : index
        %12 = arith.muli %arg7, %c-1_41 : index
        %c-1_42 = arith.constant -1 : index
        %13 = arith.muli %arg8, %c-1_42 : index
        %14 = arith.addi %12, %13 : index
        %c-1_43 = arith.constant -1 : index
        %15 = arith.muli %arg7, %c-1_43 : index
        %c-1_44 = arith.constant -1 : index
        %16 = arith.muli %arg8, %c-1_44 : index
        %17 = arith.addi %15, %16 : index
        %c27_45 = arith.constant 27 : index
        %18 = arith.addi %17, %c27_45 : index
        %c4_46 = arith.constant 4 : index
        %c0_47 = arith.constant 0 : index
        %c-1_48 = arith.constant -1 : index
        %19 = arith.cmpi slt, %18, %c0_47 : index
        %20 = arith.subi %c-1_48, %18 : index
        %21 = arith.select %19, %20, %18 : index
        %22 = arith.divsi %21, %c4_46 : index
        %23 = arith.subi %c-1_48, %22 : index
        %24 = arith.select %19, %23, %22 : index
        %c-4 = arith.constant -4 : index
        %25 = arith.muli %24, %c-4 : index
        %26 = arith.addi %14, %25 : index
        %c27_49 = arith.constant 27 : index
        %27 = arith.addi %26, %c27_49 : index
        %c1_50 = arith.constant 1 : index
        scf.for %arg9 = %c0_40 to %27 step %c1_50 {
          %28 = arith.addi %1, %arg9 : index
          %c-1_51 = arith.constant -1 : index
          %29 = arith.muli %1, %c-1_51 : index
          %c27_52 = arith.constant 27 : index
          %30 = arith.addi %29, %c27_52 : index
          %c4_53 = arith.constant 4 : index
          %c0_54 = arith.constant 0 : index
          %c-1_55 = arith.constant -1 : index
          %31 = arith.cmpi slt, %30, %c0_54 : index
          %32 = arith.subi %c-1_55, %30 : index
          %33 = arith.select %31, %32, %30 : index
          %34 = arith.divsi %33, %c4_53 : index
          %35 = arith.subi %c-1_55, %34 : index
          %36 = arith.select %31, %35, %34 : index
          %c4_56 = arith.constant 4 : index
          %37 = arith.muli %36, %c4_56 : index
          %38 = arith.addi %28, %37 : index
          %c1_57 = arith.constant 1 : index
          %39 = arith.addi %38, %c1_57 : index
          %40 = memref.load %arg4[%1, %39] : memref<?x28xf64>
          memref.store %40, %arg4[%39, %1] : memref<?x28xf64>
        }
        scf.reduce 
      }
    }
    return
  }
}

