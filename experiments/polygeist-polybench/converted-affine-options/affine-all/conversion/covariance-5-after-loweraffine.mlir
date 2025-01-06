module {
  func.func @kernel_covariance(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %alloca = memref.alloca() : memref<1xf64>
    %alloca_1 = memref.alloca() {scop.scratchpad} : memref<1xf64>
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_2 = arith.constant 1 : index
    scf.parallel (%arg6) = (%c0) to (%c1) step (%c1_2) {
      %c32 = arith.constant 32 : index
      %2 = arith.muli %arg6, %c32 : index
      %c0_22 = arith.constant 0 : index
      %c28 = arith.constant 28 : index
      %c1_23 = arith.constant 1 : index
      scf.for %arg7 = %c0_22 to %c28 step %c1_23 {
        %3 = arith.addi %2, %arg7 : index
        %c0_24 = arith.constant 0 : index
        %c-8 = arith.constant -8 : index
        %4 = arith.muli %arg6, %c-8 : index
        %c-1 = arith.constant -1 : index
        %5 = arith.muli %arg7, %c-1 : index
        %c4 = arith.constant 4 : index
        %c0_25 = arith.constant 0 : index
        %c-1_26 = arith.constant -1 : index
        %6 = arith.cmpi slt, %5, %c0_25 : index
        %7 = arith.subi %c-1_26, %5 : index
        %8 = arith.select %6, %7, %5 : index
        %9 = arith.divsi %8, %c4 : index
        %10 = arith.subi %c-1_26, %9 : index
        %11 = arith.select %6, %10, %9 : index
        %12 = arith.addi %4, %11 : index
        %c7 = arith.constant 7 : index
        %13 = arith.addi %12, %c7 : index
        %c1_27 = arith.constant 1 : index
        scf.for %arg8 = %c0_24 to %13 step %c1_27 {
          %c4_33 = arith.constant 4 : index
          %19 = arith.muli %arg8, %c4_33 : index
          %20 = arith.addi %3, %19 : index
          memref.store %cst_0, %arg4[%3, %20] : memref<?x28xf64>
          %c1_34 = arith.constant 1 : index
          %21 = arith.addi %20, %c1_34 : index
          memref.store %cst_0, %arg4[%3, %21] : memref<?x28xf64>
          %c2 = arith.constant 2 : index
          %22 = arith.addi %20, %c2 : index
          memref.store %cst_0, %arg4[%3, %22] : memref<?x28xf64>
          %c3 = arith.constant 3 : index
          %23 = arith.addi %20, %c3 : index
          memref.store %cst_0, %arg4[%3, %23] : memref<?x28xf64>
        }
        %c0_28 = arith.constant 0 : index
        %c-1_29 = arith.constant -1 : index
        %14 = arith.muli %arg7, %c-1_29 : index
        %c4_30 = arith.constant 4 : index
        %15 = arith.remsi %14, %c4_30 : index
        %c0_31 = arith.constant 0 : index
        %16 = arith.cmpi slt, %15, %c0_31 : index
        %17 = arith.addi %15, %c4_30 : index
        %18 = arith.select %16, %17, %15 : index
        %c1_32 = arith.constant 1 : index
        scf.for %arg8 = %c0_28 to %18 step %c1_32 {
          %19 = arith.addi %3, %arg8 : index
          %c-1_33 = arith.constant -1 : index
          %20 = arith.muli %3, %c-1_33 : index
          %c4_34 = arith.constant 4 : index
          %c0_35 = arith.constant 0 : index
          %c-1_36 = arith.constant -1 : index
          %21 = arith.cmpi slt, %20, %c0_35 : index
          %22 = arith.subi %c-1_36, %20 : index
          %23 = arith.select %21, %22, %20 : index
          %24 = arith.divsi %23, %c4_34 : index
          %25 = arith.subi %c-1_36, %24 : index
          %26 = arith.select %21, %25, %24 : index
          %c4_37 = arith.constant 4 : index
          %27 = arith.muli %26, %c4_37 : index
          %28 = arith.addi %19, %27 : index
          %c28_38 = arith.constant 28 : index
          %29 = arith.addi %28, %c28_38 : index
          memref.store %cst_0, %arg4[%3, %29] : memref<?x28xf64>
        }
      }
      scf.reduce 
    }
    %0 = arith.subf %arg2, %cst : f64
    %c0_3 = arith.constant 0 : index
    memref.store %0, %alloca_1[%c0_3] : memref<1xf64>
    %c0_4 = arith.constant 0 : index
    %c1_5 = arith.constant 1 : index
    %c1_6 = arith.constant 1 : index
    scf.parallel (%arg6) = (%c0_4) to (%c1_5) step (%c1_6) {
      %c128 = arith.constant 128 : index
      %2 = arith.muli %arg6, %c128 : index
      %c0_22 = arith.constant 0 : index
      %c7 = arith.constant 7 : index
      %c1_23 = arith.constant 1 : index
      scf.for %arg7 = %c0_22 to %c7 step %c1_23 {
        %c4 = arith.constant 4 : index
        %3 = arith.muli %arg7, %c4 : index
        %4 = arith.addi %2, %3 : index
        memref.store %cst_0, %arg5[%4] : memref<?xf64>
        %c1_24 = arith.constant 1 : index
        %5 = arith.addi %4, %c1_24 : index
        memref.store %cst_0, %arg5[%5] : memref<?xf64>
        %c2 = arith.constant 2 : index
        %6 = arith.addi %4, %c2 : index
        memref.store %cst_0, %arg5[%6] : memref<?xf64>
        %c3 = arith.constant 3 : index
        %7 = arith.addi %4, %c3 : index
        memref.store %cst_0, %arg5[%7] : memref<?xf64>
      }
      scf.reduce 
    }
    %c0_7 = arith.constant 0 : index
    %c1_8 = arith.constant 1 : index
    %c1_9 = arith.constant 1 : index
    scf.parallel (%arg6) = (%c0_7) to (%c1_8) step (%c1_9) {
      %c32 = arith.constant 32 : index
      %2 = arith.muli %arg6, %c32 : index
      %c0_22 = arith.constant 0 : index
      %c1_23 = arith.constant 1 : index
      %c1_24 = arith.constant 1 : index
      scf.for %arg7 = %c0_22 to %c1_23 step %c1_24 {
        %c128 = arith.constant 128 : index
        %3 = arith.muli %arg7, %c128 : index
        %c0_25 = arith.constant 0 : index
        %c32_26 = arith.constant 32 : index
        %c1_27 = arith.constant 1 : index
        scf.for %arg8 = %c0_25 to %c32_26 step %c1_27 {
          %4 = arith.addi %2, %arg8 : index
          %c0_28 = arith.constant 0 : index
          %c7 = arith.constant 7 : index
          %c1_29 = arith.constant 1 : index
          scf.for %arg9 = %c0_28 to %c7 step %c1_29 {
            %c4 = arith.constant 4 : index
            %5 = arith.muli %arg9, %c4 : index
            %6 = arith.addi %3, %5 : index
            %7 = memref.load %arg5[%6] : memref<?xf64>
            %8 = memref.load %arg3[%4, %6] : memref<?x28xf64>
            %9 = arith.addf %7, %8 : f64
            memref.store %9, %arg5[%6] : memref<?xf64>
            %c1_30 = arith.constant 1 : index
            %10 = arith.addi %6, %c1_30 : index
            %11 = memref.load %arg5[%10] : memref<?xf64>
            %12 = memref.load %arg3[%4, %10] : memref<?x28xf64>
            %13 = arith.addf %11, %12 : f64
            memref.store %13, %arg5[%10] : memref<?xf64>
            %c2 = arith.constant 2 : index
            %14 = arith.addi %6, %c2 : index
            %15 = memref.load %arg5[%14] : memref<?xf64>
            %16 = memref.load %arg3[%4, %14] : memref<?x28xf64>
            %17 = arith.addf %15, %16 : f64
            memref.store %17, %arg5[%14] : memref<?xf64>
            %c3 = arith.constant 3 : index
            %18 = arith.addi %6, %c3 : index
            %19 = memref.load %arg5[%18] : memref<?xf64>
            %20 = memref.load %arg3[%4, %18] : memref<?x28xf64>
            %21 = arith.addf %19, %20 : f64
            memref.store %21, %arg5[%18] : memref<?xf64>
          }
        }
      }
      scf.reduce 
    }
    %c0_10 = arith.constant 0 : index
    %c1_11 = arith.constant 1 : index
    %c1_12 = arith.constant 1 : index
    scf.parallel (%arg6) = (%c0_10) to (%c1_11) step (%c1_12) {
      %c128 = arith.constant 128 : index
      %2 = arith.muli %arg6, %c128 : index
      %c0_22 = arith.constant 0 : index
      %c7 = arith.constant 7 : index
      %c1_23 = arith.constant 1 : index
      scf.for %arg7 = %c0_22 to %c7 step %c1_23 {
        %c4 = arith.constant 4 : index
        %3 = arith.muli %arg7, %c4 : index
        %4 = arith.addi %2, %3 : index
        %5 = memref.load %arg5[%4] : memref<?xf64>
        %6 = arith.divf %5, %arg2 : f64
        memref.store %6, %arg5[%4] : memref<?xf64>
        %c1_24 = arith.constant 1 : index
        %7 = arith.addi %4, %c1_24 : index
        %8 = memref.load %arg5[%7] : memref<?xf64>
        %9 = arith.divf %8, %arg2 : f64
        memref.store %9, %arg5[%7] : memref<?xf64>
        %c2 = arith.constant 2 : index
        %10 = arith.addi %4, %c2 : index
        %11 = memref.load %arg5[%10] : memref<?xf64>
        %12 = arith.divf %11, %arg2 : f64
        memref.store %12, %arg5[%10] : memref<?xf64>
        %c3 = arith.constant 3 : index
        %13 = arith.addi %4, %c3 : index
        %14 = memref.load %arg5[%13] : memref<?xf64>
        %15 = arith.divf %14, %arg2 : f64
        memref.store %15, %arg5[%13] : memref<?xf64>
      }
      scf.reduce 
    }
    %c0_13 = arith.constant 0 : index
    %c1_14 = arith.constant 1 : index
    %c1_15 = arith.constant 1 : index
    scf.parallel (%arg6) = (%c0_13) to (%c1_14) step (%c1_15) {
      %c32 = arith.constant 32 : index
      %2 = arith.muli %arg6, %c32 : index
      %c0_22 = arith.constant 0 : index
      %c1_23 = arith.constant 1 : index
      %c1_24 = arith.constant 1 : index
      scf.for %arg7 = %c0_22 to %c1_23 step %c1_24 {
        %c128 = arith.constant 128 : index
        %3 = arith.muli %arg7, %c128 : index
        %c0_25 = arith.constant 0 : index
        %c32_26 = arith.constant 32 : index
        %c1_27 = arith.constant 1 : index
        scf.for %arg8 = %c0_25 to %c32_26 step %c1_27 {
          %4 = arith.addi %2, %arg8 : index
          %c0_28 = arith.constant 0 : index
          %c7 = arith.constant 7 : index
          %c1_29 = arith.constant 1 : index
          scf.for %arg9 = %c0_28 to %c7 step %c1_29 {
            %c4 = arith.constant 4 : index
            %5 = arith.muli %arg9, %c4 : index
            %6 = arith.addi %3, %5 : index
            %7 = memref.load %arg3[%4, %6] : memref<?x28xf64>
            %8 = memref.load %arg5[%6] : memref<?xf64>
            %9 = arith.subf %7, %8 : f64
            memref.store %9, %arg3[%4, %6] : memref<?x28xf64>
            %c1_30 = arith.constant 1 : index
            %10 = arith.addi %6, %c1_30 : index
            %11 = memref.load %arg3[%4, %10] : memref<?x28xf64>
            %12 = memref.load %arg5[%10] : memref<?xf64>
            %13 = arith.subf %11, %12 : f64
            memref.store %13, %arg3[%4, %10] : memref<?x28xf64>
            %c2 = arith.constant 2 : index
            %14 = arith.addi %6, %c2 : index
            %15 = memref.load %arg3[%4, %14] : memref<?x28xf64>
            %16 = memref.load %arg5[%14] : memref<?xf64>
            %17 = arith.subf %15, %16 : f64
            memref.store %17, %arg3[%4, %14] : memref<?x28xf64>
            %c3 = arith.constant 3 : index
            %18 = arith.addi %6, %c3 : index
            %19 = memref.load %arg3[%4, %18] : memref<?x28xf64>
            %20 = memref.load %arg5[%18] : memref<?xf64>
            %21 = arith.subf %19, %20 : f64
            memref.store %21, %arg3[%4, %18] : memref<?x28xf64>
          }
        }
      }
      scf.reduce 
    }
    %c0_16 = arith.constant 0 : index
    %c1_17 = arith.constant 1 : index
    %c1_18 = arith.constant 1 : index
    scf.parallel (%arg6) = (%c0_16) to (%c1_17) step (%c1_18) {
      %c32 = arith.constant 32 : index
      %2 = arith.muli %arg6, %c32 : index
      %c0_22 = arith.constant 0 : index
      %c1_23 = arith.constant 1 : index
      %c1_24 = arith.constant 1 : index
      scf.for %arg7 = %c0_22 to %c1_23 step %c1_24 {
        %c32_25 = arith.constant 32 : index
        %3 = arith.muli %arg7, %c32_25 : index
        %c0_26 = arith.constant 0 : index
        %c28 = arith.constant 28 : index
        %c1_27 = arith.constant 1 : index
        scf.for %arg8 = %c0_26 to %c28 step %c1_27 {
          %4 = arith.addi %2, %arg8 : index
          %c0_28 = arith.constant 0 : index
          %c32_29 = arith.constant 32 : index
          %c1_30 = arith.constant 1 : index
          scf.for %arg9 = %c0_28 to %c32_29 step %c1_30 {
            %5 = arith.addi %3, %arg9 : index
            %6 = memref.load %arg3[%5, %4] : memref<?x28xf64>
            %7 = memref.load %arg3[%5, %4] : memref<?x28xf64>
            %8 = memref.load %arg3[%5, %4] : memref<?x28xf64>
            %9 = memref.load %arg3[%5, %4] : memref<?x28xf64>
            %c0_31 = arith.constant 0 : index
            %c-8 = arith.constant -8 : index
            %10 = arith.muli %arg6, %c-8 : index
            %c-1 = arith.constant -1 : index
            %11 = arith.muli %arg8, %c-1 : index
            %c4 = arith.constant 4 : index
            %c0_32 = arith.constant 0 : index
            %c-1_33 = arith.constant -1 : index
            %12 = arith.cmpi slt, %11, %c0_32 : index
            %13 = arith.subi %c-1_33, %11 : index
            %14 = arith.select %12, %13, %11 : index
            %15 = arith.divsi %14, %c4 : index
            %16 = arith.subi %c-1_33, %15 : index
            %17 = arith.select %12, %16, %15 : index
            %18 = arith.addi %10, %17 : index
            %c7 = arith.constant 7 : index
            %19 = arith.addi %18, %c7 : index
            %c1_34 = arith.constant 1 : index
            scf.for %arg10 = %c0_31 to %19 step %c1_34 {
              %c4_40 = arith.constant 4 : index
              %26 = arith.muli %arg10, %c4_40 : index
              %27 = arith.addi %4, %26 : index
              %28 = memref.load %arg4[%4, %27] : memref<?x28xf64>
              %29 = memref.load %arg3[%5, %27] : memref<?x28xf64>
              %30 = arith.mulf %6, %29 : f64
              %31 = arith.addf %28, %30 : f64
              memref.store %31, %arg4[%4, %27] : memref<?x28xf64>
              %c1_41 = arith.constant 1 : index
              %32 = arith.addi %27, %c1_41 : index
              %33 = memref.load %arg4[%4, %32] : memref<?x28xf64>
              %34 = memref.load %arg3[%5, %32] : memref<?x28xf64>
              %35 = arith.mulf %7, %34 : f64
              %36 = arith.addf %33, %35 : f64
              memref.store %36, %arg4[%4, %32] : memref<?x28xf64>
              %c2 = arith.constant 2 : index
              %37 = arith.addi %27, %c2 : index
              %38 = memref.load %arg4[%4, %37] : memref<?x28xf64>
              %39 = memref.load %arg3[%5, %37] : memref<?x28xf64>
              %40 = arith.mulf %8, %39 : f64
              %41 = arith.addf %38, %40 : f64
              memref.store %41, %arg4[%4, %37] : memref<?x28xf64>
              %c3 = arith.constant 3 : index
              %42 = arith.addi %27, %c3 : index
              %43 = memref.load %arg4[%4, %42] : memref<?x28xf64>
              %44 = memref.load %arg3[%5, %42] : memref<?x28xf64>
              %45 = arith.mulf %9, %44 : f64
              %46 = arith.addf %43, %45 : f64
              memref.store %46, %arg4[%4, %42] : memref<?x28xf64>
            }
            %20 = memref.load %arg3[%5, %4] : memref<?x28xf64>
            %c0_35 = arith.constant 0 : index
            %c-1_36 = arith.constant -1 : index
            %21 = arith.muli %arg8, %c-1_36 : index
            %c4_37 = arith.constant 4 : index
            %22 = arith.remsi %21, %c4_37 : index
            %c0_38 = arith.constant 0 : index
            %23 = arith.cmpi slt, %22, %c0_38 : index
            %24 = arith.addi %22, %c4_37 : index
            %25 = arith.select %23, %24, %22 : index
            %c1_39 = arith.constant 1 : index
            scf.for %arg10 = %c0_35 to %25 step %c1_39 {
              %26 = arith.addi %4, %arg10 : index
              %c-1_40 = arith.constant -1 : index
              %27 = arith.muli %4, %c-1_40 : index
              %c4_41 = arith.constant 4 : index
              %c0_42 = arith.constant 0 : index
              %c-1_43 = arith.constant -1 : index
              %28 = arith.cmpi slt, %27, %c0_42 : index
              %29 = arith.subi %c-1_43, %27 : index
              %30 = arith.select %28, %29, %27 : index
              %31 = arith.divsi %30, %c4_41 : index
              %32 = arith.subi %c-1_43, %31 : index
              %33 = arith.select %28, %32, %31 : index
              %c4_44 = arith.constant 4 : index
              %34 = arith.muli %33, %c4_44 : index
              %35 = arith.addi %26, %34 : index
              %c28_45 = arith.constant 28 : index
              %36 = arith.addi %35, %c28_45 : index
              %37 = memref.load %arg4[%4, %36] : memref<?x28xf64>
              %38 = memref.load %arg3[%5, %36] : memref<?x28xf64>
              %39 = arith.mulf %20, %38 : f64
              %40 = arith.addf %37, %39 : f64
              memref.store %40, %arg4[%4, %36] : memref<?x28xf64>
            }
          }
        }
      }
      scf.reduce 
    }
    %c0_19 = arith.constant 0 : index
    %1 = memref.load %alloca_1[%c0_19] : memref<1xf64>
    %c0_20 = arith.constant 0 : index
    %c23 = arith.constant 23 : index
    %c1_21 = arith.constant 1 : index
    scf.for %arg6 = %c0_20 to %c23 step %c1_21 {
      %c0_22 = arith.constant 0 : index
      %c16 = arith.constant 16 : index
      %2 = arith.muli %arg6, %c16 : index
      %c-13 = arith.constant -13 : index
      %3 = arith.addi %2, %c-13 : index
      %c13 = arith.constant 13 : index
      %c0_23 = arith.constant 0 : index
      %c1_24 = arith.constant 1 : index
      %4 = arith.cmpi sle, %3, %c0_23 : index
      %5 = arith.subi %c0_23, %3 : index
      %6 = arith.subi %3, %c1_24 : index
      %7 = arith.select %4, %5, %6 : index
      %8 = arith.divsi %7, %c13 : index
      %9 = arith.subi %c0_23, %8 : index
      %10 = arith.addi %8, %c1_24 : index
      %11 = arith.select %4, %9, %10 : index
      %12 = arith.maxsi %c0_22, %11 : index
      %c32 = arith.constant 32 : index
      %13 = arith.muli %arg6, %c32 : index
      %c31 = arith.constant 31 : index
      %14 = arith.addi %13, %c31 : index
      %c27 = arith.constant 27 : index
      %c0_25 = arith.constant 0 : index
      %c-1 = arith.constant -1 : index
      %15 = arith.cmpi slt, %14, %c0_25 : index
      %16 = arith.subi %c-1, %14 : index
      %17 = arith.select %15, %16, %14 : index
      %18 = arith.divsi %17, %c27 : index
      %19 = arith.subi %c-1, %18 : index
      %20 = arith.select %15, %19, %18 : index
      %c1_26 = arith.constant 1 : index
      %21 = arith.addi %20, %c1_26 : index
      %c1_27 = arith.constant 1 : index
      scf.for %arg7 = %12 to %21 step %c1_27 {
        %c32_28 = arith.constant 32 : index
        %22 = arith.muli %arg6, %c32_28 : index
        %c27_29 = arith.constant 27 : index
        %23 = arith.muli %arg7, %c27_29 : index
        %24 = arith.maxsi %22, %23 : index
        %c32_30 = arith.constant 32 : index
        %25 = arith.muli %arg6, %c32_30 : index
        %c32_31 = arith.constant 32 : index
        %26 = arith.addi %25, %c32_31 : index
        %c26 = arith.constant 26 : index
        %27 = arith.muli %arg7, %c26 : index
        %c28 = arith.constant 28 : index
        %28 = arith.addi %27, %c28 : index
        %29 = arith.minsi %26, %28 : index
        %c1_32 = arith.constant 1 : index
        scf.for %arg8 = %24 to %29 step %c1_32 {
          %c-26 = arith.constant -26 : index
          %30 = arith.muli %arg8, %c-26 : index
          %31 = arith.addi %30, %arg7 : index
          %32 = memref.load %arg4[%arg7, %31] : memref<?x28xf64>
          %33 = arith.divf %32, %1 : f64
          %c0_33 = arith.constant 0 : index
          memref.store %33, %alloca[%c0_33] : memref<1xf64>
          %c-26_34 = arith.constant -26 : index
          %34 = arith.muli %arg8, %c-26_34 : index
          %35 = arith.addi %34, %arg7 : index
          memref.store %33, %arg4[%arg7, %35] : memref<?x28xf64>
          %c0_35 = arith.constant 0 : index
          %36 = memref.load %alloca[%c0_35] : memref<1xf64>
          %c-26_36 = arith.constant -26 : index
          %37 = arith.muli %arg8, %c-26_36 : index
          %38 = arith.addi %37, %arg7 : index
          memref.store %36, %arg4[%38, %arg7] : memref<?x28xf64>
        }
      }
    }
    return
  }
}

