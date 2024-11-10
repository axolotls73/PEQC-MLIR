module {
  func.func @kernel_covariance(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %alloca = memref.alloca() : memref<1xf64>
    %alloca_1 = memref.alloca() {scop.scratchpad} : memref<1xf64>
    %c0 = arith.constant 0 : index
    %c28 = arith.constant 28 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c28 step %c1 {
      %c0_19 = arith.constant 0 : index
      %c1_20 = arith.constant 1 : index
      %c1_21 = arith.constant 1 : index
      scf.for %arg7 = %c0_19 to %c1_20 step %c1_21 {
        %2 = arith.addi %arg6, %arg7 : index
        %c0_22 = arith.constant 0 : index
        %c-1 = arith.constant -1 : index
        %3 = arith.muli %arg6, %c-1 : index
        %c-1_23 = arith.constant -1 : index
        %4 = arith.muli %arg7, %c-1_23 : index
        %5 = arith.addi %3, %4 : index
        %c4 = arith.constant 4 : index
        %c0_24 = arith.constant 0 : index
        %c-1_25 = arith.constant -1 : index
        %6 = arith.cmpi slt, %5, %c0_24 : index
        %7 = arith.subi %c-1_25, %5 : index
        %8 = arith.select %6, %7, %5 : index
        %9 = arith.divsi %8, %c4 : index
        %10 = arith.subi %c-1_25, %9 : index
        %11 = arith.select %6, %10, %9 : index
        %c7_26 = arith.constant 7 : index
        %12 = arith.addi %11, %c7_26 : index
        %c1_27 = arith.constant 1 : index
        scf.for %arg8 = %c0_22 to %12 step %c1_27 {
          %c4_34 = arith.constant 4 : index
          %20 = arith.muli %arg8, %c4_34 : index
          %21 = arith.addi %2, %20 : index
          memref.store %cst_0, %arg4[%2, %21] : memref<?x28xf64>
          %c1_35 = arith.constant 1 : index
          %22 = arith.addi %21, %c1_35 : index
          memref.store %cst_0, %arg4[%2, %22] : memref<?x28xf64>
          %c2 = arith.constant 2 : index
          %23 = arith.addi %21, %c2 : index
          memref.store %cst_0, %arg4[%2, %23] : memref<?x28xf64>
          %c3 = arith.constant 3 : index
          %24 = arith.addi %21, %c3 : index
          memref.store %cst_0, %arg4[%2, %24] : memref<?x28xf64>
        }
        %c0_28 = arith.constant 0 : index
        %c-1_29 = arith.constant -1 : index
        %13 = arith.muli %arg6, %c-1_29 : index
        %c-1_30 = arith.constant -1 : index
        %14 = arith.muli %arg7, %c-1_30 : index
        %15 = arith.addi %13, %14 : index
        %c4_31 = arith.constant 4 : index
        %16 = arith.remsi %15, %c4_31 : index
        %c0_32 = arith.constant 0 : index
        %17 = arith.cmpi slt, %16, %c0_32 : index
        %18 = arith.addi %16, %c4_31 : index
        %19 = arith.select %17, %18, %16 : index
        %c1_33 = arith.constant 1 : index
        scf.for %arg8 = %c0_28 to %19 step %c1_33 {
          %20 = arith.addi %2, %arg8 : index
          %c-1_34 = arith.constant -1 : index
          %21 = arith.muli %2, %c-1_34 : index
          %c4_35 = arith.constant 4 : index
          %c0_36 = arith.constant 0 : index
          %c-1_37 = arith.constant -1 : index
          %22 = arith.cmpi slt, %21, %c0_36 : index
          %23 = arith.subi %c-1_37, %21 : index
          %24 = arith.select %22, %23, %21 : index
          %25 = arith.divsi %24, %c4_35 : index
          %26 = arith.subi %c-1_37, %25 : index
          %27 = arith.select %22, %26, %25 : index
          %c4_38 = arith.constant 4 : index
          %28 = arith.muli %27, %c4_38 : index
          %29 = arith.addi %20, %28 : index
          %c28_39 = arith.constant 28 : index
          %30 = arith.addi %29, %c28_39 : index
          memref.store %cst_0, %arg4[%2, %30] : memref<?x28xf64>
        }
      }
    }
    %0 = arith.subf %arg2, %cst : f64
    %c0_2 = arith.constant 0 : index
    memref.store %0, %alloca_1[%c0_2] : memref<1xf64>
    %c0_3 = arith.constant 0 : index
    %c7 = arith.constant 7 : index
    %c1_4 = arith.constant 1 : index
    scf.for %arg6 = %c0_3 to %c7 step %c1_4 {
      %c4 = arith.constant 4 : index
      %2 = arith.muli %arg6, %c4 : index
      %c0_19 = arith.constant 0 : index
      %c1_20 = arith.constant 1 : index
      %c1_21 = arith.constant 1 : index
      scf.for %arg7 = %c0_19 to %c1_20 step %c1_21 {
        %c4_22 = arith.constant 4 : index
        %3 = arith.muli %arg7, %c4_22 : index
        %4 = arith.addi %2, %3 : index
        memref.store %cst_0, %arg5[%4] : memref<?xf64>
        %c1_23 = arith.constant 1 : index
        %5 = arith.addi %4, %c1_23 : index
        memref.store %cst_0, %arg5[%5] : memref<?xf64>
        %c2 = arith.constant 2 : index
        %6 = arith.addi %4, %c2 : index
        memref.store %cst_0, %arg5[%6] : memref<?xf64>
        %c3 = arith.constant 3 : index
        %7 = arith.addi %4, %c3 : index
        memref.store %cst_0, %arg5[%7] : memref<?xf64>
      }
    }
    %c0_5 = arith.constant 0 : index
    %c32 = arith.constant 32 : index
    %c1_6 = arith.constant 1 : index
    scf.for %arg6 = %c0_5 to %c32 step %c1_6 {
      %c0_19 = arith.constant 0 : index
      %c7_20 = arith.constant 7 : index
      %c1_21 = arith.constant 1 : index
      scf.for %arg7 = %c0_19 to %c7_20 step %c1_21 {
        %c4 = arith.constant 4 : index
        %2 = arith.muli %arg7, %c4 : index
        %c0_22 = arith.constant 0 : index
        %c1_23 = arith.constant 1 : index
        %c1_24 = arith.constant 1 : index
        scf.for %arg8 = %c0_22 to %c1_23 step %c1_24 {
          %3 = arith.addi %arg6, %arg8 : index
          %c0_25 = arith.constant 0 : index
          %c1_26 = arith.constant 1 : index
          %c1_27 = arith.constant 1 : index
          scf.for %arg9 = %c0_25 to %c1_26 step %c1_27 {
            %c4_28 = arith.constant 4 : index
            %4 = arith.muli %arg9, %c4_28 : index
            %5 = arith.addi %2, %4 : index
            %6 = memref.load %arg5[%5] : memref<?xf64>
            %7 = memref.load %arg3[%3, %5] : memref<?x28xf64>
            %8 = arith.addf %6, %7 : f64
            memref.store %8, %arg5[%5] : memref<?xf64>
            %c1_29 = arith.constant 1 : index
            %9 = arith.addi %5, %c1_29 : index
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
    }
    %c0_7 = arith.constant 0 : index
    %c7_8 = arith.constant 7 : index
    %c1_9 = arith.constant 1 : index
    scf.for %arg6 = %c0_7 to %c7_8 step %c1_9 {
      %c4 = arith.constant 4 : index
      %2 = arith.muli %arg6, %c4 : index
      %c0_19 = arith.constant 0 : index
      %c1_20 = arith.constant 1 : index
      %c1_21 = arith.constant 1 : index
      scf.for %arg7 = %c0_19 to %c1_20 step %c1_21 {
        %c4_22 = arith.constant 4 : index
        %3 = arith.muli %arg7, %c4_22 : index
        %4 = arith.addi %2, %3 : index
        %5 = memref.load %arg5[%4] : memref<?xf64>
        %6 = arith.divf %5, %arg2 : f64
        memref.store %6, %arg5[%4] : memref<?xf64>
        %c1_23 = arith.constant 1 : index
        %7 = arith.addi %4, %c1_23 : index
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
    }
    %c0_10 = arith.constant 0 : index
    %c32_11 = arith.constant 32 : index
    %c1_12 = arith.constant 1 : index
    scf.for %arg6 = %c0_10 to %c32_11 step %c1_12 {
      %c0_19 = arith.constant 0 : index
      %c1_20 = arith.constant 1 : index
      %c1_21 = arith.constant 1 : index
      scf.for %arg7 = %c0_19 to %c1_20 step %c1_21 {
        %2 = arith.addi %arg6, %arg7 : index
        %c0_22 = arith.constant 0 : index
        %c7_23 = arith.constant 7 : index
        %c1_24 = arith.constant 1 : index
        scf.for %arg8 = %c0_22 to %c7_23 step %c1_24 {
          %c4 = arith.constant 4 : index
          %3 = arith.muli %arg8, %c4 : index
          %c0_25 = arith.constant 0 : index
          %c1_26 = arith.constant 1 : index
          %c1_27 = arith.constant 1 : index
          scf.for %arg9 = %c0_25 to %c1_26 step %c1_27 {
            %c4_28 = arith.constant 4 : index
            %4 = arith.muli %arg9, %c4_28 : index
            %5 = arith.addi %3, %4 : index
            %6 = memref.load %arg3[%2, %5] : memref<?x28xf64>
            %7 = memref.load %arg5[%5] : memref<?xf64>
            %8 = arith.subf %6, %7 : f64
            memref.store %8, %arg3[%2, %5] : memref<?x28xf64>
            %c1_29 = arith.constant 1 : index
            %9 = arith.addi %5, %c1_29 : index
            %10 = memref.load %arg3[%2, %9] : memref<?x28xf64>
            %11 = memref.load %arg5[%9] : memref<?xf64>
            %12 = arith.subf %10, %11 : f64
            memref.store %12, %arg3[%2, %9] : memref<?x28xf64>
            %c2 = arith.constant 2 : index
            %13 = arith.addi %5, %c2 : index
            %14 = memref.load %arg3[%2, %13] : memref<?x28xf64>
            %15 = memref.load %arg5[%13] : memref<?xf64>
            %16 = arith.subf %14, %15 : f64
            memref.store %16, %arg3[%2, %13] : memref<?x28xf64>
            %c3 = arith.constant 3 : index
            %17 = arith.addi %5, %c3 : index
            %18 = memref.load %arg3[%2, %17] : memref<?x28xf64>
            %19 = memref.load %arg5[%17] : memref<?xf64>
            %20 = arith.subf %18, %19 : f64
            memref.store %20, %arg3[%2, %17] : memref<?x28xf64>
          }
        }
      }
    }
    %c0_13 = arith.constant 0 : index
    %c28_14 = arith.constant 28 : index
    %c1_15 = arith.constant 1 : index
    scf.for %arg6 = %c0_13 to %c28_14 step %c1_15 {
      %c0_19 = arith.constant 0 : index
      %c1_20 = arith.constant 1 : index
      %c1_21 = arith.constant 1 : index
      scf.for %arg7 = %c0_19 to %c1_20 step %c1_21 {
        %2 = arith.addi %arg6, %arg7 : index
        %c0_22 = arith.constant 0 : index
        %c32_23 = arith.constant 32 : index
        %c1_24 = arith.constant 1 : index
        scf.for %arg8 = %c0_22 to %c32_23 step %c1_24 {
          %c0_25 = arith.constant 0 : index
          %c1_26 = arith.constant 1 : index
          %c1_27 = arith.constant 1 : index
          scf.for %arg9 = %c0_25 to %c1_26 step %c1_27 {
            %3 = arith.addi %arg8, %arg9 : index
            %4 = memref.load %arg3[%3, %2] : memref<?x28xf64>
            %5 = memref.load %arg3[%3, %2] : memref<?x28xf64>
            %6 = memref.load %arg3[%3, %2] : memref<?x28xf64>
            %7 = memref.load %arg3[%3, %2] : memref<?x28xf64>
            %c0_28 = arith.constant 0 : index
            %c-1 = arith.constant -1 : index
            %8 = arith.muli %arg6, %c-1 : index
            %c-1_29 = arith.constant -1 : index
            %9 = arith.muli %arg7, %c-1_29 : index
            %10 = arith.addi %8, %9 : index
            %c4 = arith.constant 4 : index
            %c0_30 = arith.constant 0 : index
            %c-1_31 = arith.constant -1 : index
            %11 = arith.cmpi slt, %10, %c0_30 : index
            %12 = arith.subi %c-1_31, %10 : index
            %13 = arith.select %11, %12, %10 : index
            %14 = arith.divsi %13, %c4 : index
            %15 = arith.subi %c-1_31, %14 : index
            %16 = arith.select %11, %15, %14 : index
            %c7_32 = arith.constant 7 : index
            %17 = arith.addi %16, %c7_32 : index
            %c1_33 = arith.constant 1 : index
            scf.for %arg10 = %c0_28 to %17 step %c1_33 {
              %c4_40 = arith.constant 4 : index
              %26 = arith.muli %arg10, %c4_40 : index
              %27 = arith.addi %2, %26 : index
              %28 = memref.load %arg4[%2, %27] : memref<?x28xf64>
              %29 = memref.load %arg3[%3, %27] : memref<?x28xf64>
              %30 = arith.mulf %4, %29 : f64
              %31 = arith.addf %28, %30 : f64
              memref.store %31, %arg4[%2, %27] : memref<?x28xf64>
              %c1_41 = arith.constant 1 : index
              %32 = arith.addi %27, %c1_41 : index
              %33 = memref.load %arg4[%2, %32] : memref<?x28xf64>
              %34 = memref.load %arg3[%3, %32] : memref<?x28xf64>
              %35 = arith.mulf %5, %34 : f64
              %36 = arith.addf %33, %35 : f64
              memref.store %36, %arg4[%2, %32] : memref<?x28xf64>
              %c2 = arith.constant 2 : index
              %37 = arith.addi %27, %c2 : index
              %38 = memref.load %arg4[%2, %37] : memref<?x28xf64>
              %39 = memref.load %arg3[%3, %37] : memref<?x28xf64>
              %40 = arith.mulf %6, %39 : f64
              %41 = arith.addf %38, %40 : f64
              memref.store %41, %arg4[%2, %37] : memref<?x28xf64>
              %c3 = arith.constant 3 : index
              %42 = arith.addi %27, %c3 : index
              %43 = memref.load %arg4[%2, %42] : memref<?x28xf64>
              %44 = memref.load %arg3[%3, %42] : memref<?x28xf64>
              %45 = arith.mulf %7, %44 : f64
              %46 = arith.addf %43, %45 : f64
              memref.store %46, %arg4[%2, %42] : memref<?x28xf64>
            }
            %18 = memref.load %arg3[%3, %2] : memref<?x28xf64>
            %c0_34 = arith.constant 0 : index
            %c-1_35 = arith.constant -1 : index
            %19 = arith.muli %arg6, %c-1_35 : index
            %c-1_36 = arith.constant -1 : index
            %20 = arith.muli %arg7, %c-1_36 : index
            %21 = arith.addi %19, %20 : index
            %c4_37 = arith.constant 4 : index
            %22 = arith.remsi %21, %c4_37 : index
            %c0_38 = arith.constant 0 : index
            %23 = arith.cmpi slt, %22, %c0_38 : index
            %24 = arith.addi %22, %c4_37 : index
            %25 = arith.select %23, %24, %22 : index
            %c1_39 = arith.constant 1 : index
            scf.for %arg10 = %c0_34 to %25 step %c1_39 {
              %26 = arith.addi %2, %arg10 : index
              %c-1_40 = arith.constant -1 : index
              %27 = arith.muli %2, %c-1_40 : index
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
              %37 = memref.load %arg4[%2, %36] : memref<?x28xf64>
              %38 = memref.load %arg3[%3, %36] : memref<?x28xf64>
              %39 = arith.mulf %18, %38 : f64
              %40 = arith.addf %37, %39 : f64
              memref.store %40, %arg4[%2, %36] : memref<?x28xf64>
            }
          }
        }
      }
    }
    %c0_16 = arith.constant 0 : index
    %1 = memref.load %alloca_1[%c0_16] : memref<1xf64>
    %c0_17 = arith.constant 0 : index
    %c23 = arith.constant 23 : index
    %c1_18 = arith.constant 1 : index
    scf.for %arg6 = %c0_17 to %c23 step %c1_18 {
      %c0_19 = arith.constant 0 : index
      %c16 = arith.constant 16 : index
      %2 = arith.muli %arg6, %c16 : index
      %c-13 = arith.constant -13 : index
      %3 = arith.addi %2, %c-13 : index
      %c13 = arith.constant 13 : index
      %c0_20 = arith.constant 0 : index
      %c1_21 = arith.constant 1 : index
      %4 = arith.cmpi sle, %3, %c0_20 : index
      %5 = arith.subi %c0_20, %3 : index
      %6 = arith.subi %3, %c1_21 : index
      %7 = arith.select %4, %5, %6 : index
      %8 = arith.divsi %7, %c13 : index
      %9 = arith.subi %c0_20, %8 : index
      %10 = arith.addi %8, %c1_21 : index
      %11 = arith.select %4, %9, %10 : index
      %12 = arith.maxsi %c0_19, %11 : index
      %c32_22 = arith.constant 32 : index
      %13 = arith.muli %arg6, %c32_22 : index
      %c31 = arith.constant 31 : index
      %14 = arith.addi %13, %c31 : index
      %c27 = arith.constant 27 : index
      %c0_23 = arith.constant 0 : index
      %c-1 = arith.constant -1 : index
      %15 = arith.cmpi slt, %14, %c0_23 : index
      %16 = arith.subi %c-1, %14 : index
      %17 = arith.select %15, %16, %14 : index
      %18 = arith.divsi %17, %c27 : index
      %19 = arith.subi %c-1, %18 : index
      %20 = arith.select %15, %19, %18 : index
      %c1_24 = arith.constant 1 : index
      %21 = arith.addi %20, %c1_24 : index
      %c1_25 = arith.constant 1 : index
      scf.for %arg7 = %12 to %21 step %c1_25 {
        %c32_26 = arith.constant 32 : index
        %22 = arith.muli %arg6, %c32_26 : index
        %c27_27 = arith.constant 27 : index
        %23 = arith.muli %arg7, %c27_27 : index
        %24 = arith.maxsi %22, %23 : index
        %c32_28 = arith.constant 32 : index
        %25 = arith.muli %arg6, %c32_28 : index
        %c32_29 = arith.constant 32 : index
        %26 = arith.addi %25, %c32_29 : index
        %c26 = arith.constant 26 : index
        %27 = arith.muli %arg7, %c26 : index
        %c28_30 = arith.constant 28 : index
        %28 = arith.addi %27, %c28_30 : index
        %29 = arith.minsi %26, %28 : index
        %c1_31 = arith.constant 1 : index
        scf.for %arg8 = %24 to %29 step %c1_31 {
          %c-26 = arith.constant -26 : index
          %30 = arith.muli %arg8, %c-26 : index
          %31 = arith.addi %30, %arg7 : index
          %32 = memref.load %arg4[%arg7, %31] : memref<?x28xf64>
          %33 = arith.divf %32, %1 : f64
          %c0_32 = arith.constant 0 : index
          memref.store %33, %alloca[%c0_32] : memref<1xf64>
          %c-26_33 = arith.constant -26 : index
          %34 = arith.muli %arg8, %c-26_33 : index
          %35 = arith.addi %34, %arg7 : index
          memref.store %33, %arg4[%arg7, %35] : memref<?x28xf64>
          %c0_34 = arith.constant 0 : index
          %36 = memref.load %alloca[%c0_34] : memref<1xf64>
          %c-26_35 = arith.constant -26 : index
          %37 = arith.muli %arg8, %c-26_35 : index
          %38 = arith.addi %37, %arg7 : index
          memref.store %36, %arg4[%38, %arg7] : memref<?x28xf64>
        }
      }
    }
    return
  }
}

