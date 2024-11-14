module {
  func.func @kernel_ludcmp(%arg0: i32, %arg1: memref<?x40xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>) {
    %alloca = memref.alloca() : memref<f64>
    %0 = llvm.mlir.undef : f64
    memref.store %0, %alloca[] : memref<f64>
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.for %arg5 = %c0 to %c2 step %c1 {
      %c32 = arith.constant 32 : index
      %1 = arith.muli %arg5, %c32 : index
      %c0_6 = arith.constant 0 : index
      %c32_7 = arith.constant 32 : index
      %c-32 = arith.constant -32 : index
      %2 = arith.muli %arg5, %c-32 : index
      %c40 = arith.constant 40 : index
      %3 = arith.addi %2, %c40 : index
      %4 = arith.minsi %c32_7, %3 : index
      %c1_8 = arith.constant 1 : index
      scf.for %arg6 = %c0_6 to %4 step %c1_8 {
        %5 = arith.addi %1, %arg6 : index
        %c0_9 = arith.constant 0 : index
        %c32_10 = arith.constant 32 : index
        %6 = arith.muli %arg5, %c32_10 : index
        %7 = arith.addi %arg6, %6 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg7 = %c0_9 to %7 step %c1_11 {
          %12 = memref.load %arg1[%5, %arg7] : memref<?x40xf64>
          memref.store %12, %alloca[] : memref<f64>
          %c0_16 = arith.constant 0 : index
          %c4 = arith.constant 4 : index
          %c0_17 = arith.constant 0 : index
          %c-1_18 = arith.constant -1 : index
          %13 = arith.cmpi slt, %arg7, %c0_17 : index
          %14 = arith.subi %c-1_18, %arg7 : index
          %15 = arith.select %13, %14, %arg7 : index
          %16 = arith.divsi %15, %c4 : index
          %17 = arith.subi %c-1_18, %16 : index
          %18 = arith.select %13, %17, %16 : index
          %c1_19 = arith.constant 1 : index
          scf.for %arg8 = %c0_16 to %18 step %c1_19 {
            %c4_24 = arith.constant 4 : index
            %26 = arith.muli %arg8, %c4_24 : index
            %27 = memref.load %arg1[%5, %26] : memref<?x40xf64>
            %28 = memref.load %arg1[%26, %arg7] : memref<?x40xf64>
            %29 = arith.mulf %27, %28 : f64
            %30 = memref.load %alloca[] : memref<f64>
            %31 = arith.subf %30, %29 : f64
            memref.store %31, %alloca[] : memref<f64>
            %c1_25 = arith.constant 1 : index
            %32 = arith.addi %26, %c1_25 : index
            %33 = memref.load %arg1[%5, %32] : memref<?x40xf64>
            %34 = memref.load %arg1[%32, %arg7] : memref<?x40xf64>
            %35 = arith.mulf %33, %34 : f64
            %36 = memref.load %alloca[] : memref<f64>
            %37 = arith.subf %36, %35 : f64
            memref.store %37, %alloca[] : memref<f64>
            %c2_26 = arith.constant 2 : index
            %38 = arith.addi %26, %c2_26 : index
            %39 = memref.load %arg1[%5, %38] : memref<?x40xf64>
            %40 = memref.load %arg1[%38, %arg7] : memref<?x40xf64>
            %41 = arith.mulf %39, %40 : f64
            %42 = memref.load %alloca[] : memref<f64>
            %43 = arith.subf %42, %41 : f64
            memref.store %43, %alloca[] : memref<f64>
            %c3 = arith.constant 3 : index
            %44 = arith.addi %26, %c3 : index
            %45 = memref.load %arg1[%5, %44] : memref<?x40xf64>
            %46 = memref.load %arg1[%44, %arg7] : memref<?x40xf64>
            %47 = arith.mulf %45, %46 : f64
            %48 = memref.load %alloca[] : memref<f64>
            %49 = arith.subf %48, %47 : f64
            memref.store %49, %alloca[] : memref<f64>
          }
          %c0_20 = arith.constant 0 : index
          %c4_21 = arith.constant 4 : index
          %19 = arith.remsi %arg7, %c4_21 : index
          %c0_22 = arith.constant 0 : index
          %20 = arith.cmpi slt, %19, %c0_22 : index
          %21 = arith.addi %19, %c4_21 : index
          %22 = arith.select %20, %21, %19 : index
          %c1_23 = arith.constant 1 : index
          scf.for %arg8 = %c0_20 to %22 step %c1_23 {
            %c4_24 = arith.constant 4 : index
            %c0_25 = arith.constant 0 : index
            %c-1_26 = arith.constant -1 : index
            %26 = arith.cmpi slt, %arg7, %c0_25 : index
            %27 = arith.subi %c-1_26, %arg7 : index
            %28 = arith.select %26, %27, %arg7 : index
            %29 = arith.divsi %28, %c4_24 : index
            %30 = arith.subi %c-1_26, %29 : index
            %31 = arith.select %26, %30, %29 : index
            %c4_27 = arith.constant 4 : index
            %32 = arith.muli %31, %c4_27 : index
            %33 = arith.addi %arg8, %32 : index
            %34 = memref.load %arg1[%5, %33] : memref<?x40xf64>
            %35 = memref.load %arg1[%33, %arg7] : memref<?x40xf64>
            %36 = arith.mulf %34, %35 : f64
            %37 = memref.load %alloca[] : memref<f64>
            %38 = arith.subf %37, %36 : f64
            memref.store %38, %alloca[] : memref<f64>
          }
          %23 = memref.load %alloca[] : memref<f64>
          %24 = memref.load %arg1[%arg7, %arg7] : memref<?x40xf64>
          %25 = arith.divf %23, %24 : f64
          memref.store %25, %arg1[%5, %arg7] : memref<?x40xf64>
        }
        %c0_12 = arith.constant 0 : index
        %c-1 = arith.constant -1 : index
        %8 = arith.muli %arg6, %c-1 : index
        %c-32_13 = arith.constant -32 : index
        %9 = arith.muli %arg5, %c-32_13 : index
        %10 = arith.addi %8, %9 : index
        %c40_14 = arith.constant 40 : index
        %11 = arith.addi %10, %c40_14 : index
        %c1_15 = arith.constant 1 : index
        scf.for %arg7 = %c0_12 to %11 step %c1_15 {
          %12 = arith.addi %5, %arg7 : index
          %13 = memref.load %arg1[%5, %12] : memref<?x40xf64>
          memref.store %13, %alloca[] : memref<f64>
          %c0_16 = arith.constant 0 : index
          %c8 = arith.constant 8 : index
          %14 = arith.muli %arg5, %c8 : index
          %c4 = arith.constant 4 : index
          %c0_17 = arith.constant 0 : index
          %c-1_18 = arith.constant -1 : index
          %15 = arith.cmpi slt, %arg6, %c0_17 : index
          %16 = arith.subi %c-1_18, %arg6 : index
          %17 = arith.select %15, %16, %arg6 : index
          %18 = arith.divsi %17, %c4 : index
          %19 = arith.subi %c-1_18, %18 : index
          %20 = arith.select %15, %19, %18 : index
          %21 = arith.addi %14, %20 : index
          %c1_19 = arith.constant 1 : index
          scf.for %arg8 = %c0_16 to %21 step %c1_19 {
            %c4_24 = arith.constant 4 : index
            %27 = arith.muli %arg8, %c4_24 : index
            %28 = memref.load %arg1[%5, %27] : memref<?x40xf64>
            %29 = memref.load %arg1[%27, %12] : memref<?x40xf64>
            %30 = arith.mulf %28, %29 : f64
            %31 = memref.load %alloca[] : memref<f64>
            %32 = arith.subf %31, %30 : f64
            memref.store %32, %alloca[] : memref<f64>
            %c1_25 = arith.constant 1 : index
            %33 = arith.addi %27, %c1_25 : index
            %34 = memref.load %arg1[%5, %33] : memref<?x40xf64>
            %35 = memref.load %arg1[%33, %12] : memref<?x40xf64>
            %36 = arith.mulf %34, %35 : f64
            %37 = memref.load %alloca[] : memref<f64>
            %38 = arith.subf %37, %36 : f64
            memref.store %38, %alloca[] : memref<f64>
            %c2_26 = arith.constant 2 : index
            %39 = arith.addi %27, %c2_26 : index
            %40 = memref.load %arg1[%5, %39] : memref<?x40xf64>
            %41 = memref.load %arg1[%39, %12] : memref<?x40xf64>
            %42 = arith.mulf %40, %41 : f64
            %43 = memref.load %alloca[] : memref<f64>
            %44 = arith.subf %43, %42 : f64
            memref.store %44, %alloca[] : memref<f64>
            %c3 = arith.constant 3 : index
            %45 = arith.addi %27, %c3 : index
            %46 = memref.load %arg1[%5, %45] : memref<?x40xf64>
            %47 = memref.load %arg1[%45, %12] : memref<?x40xf64>
            %48 = arith.mulf %46, %47 : f64
            %49 = memref.load %alloca[] : memref<f64>
            %50 = arith.subf %49, %48 : f64
            memref.store %50, %alloca[] : memref<f64>
          }
          %c0_20 = arith.constant 0 : index
          %c4_21 = arith.constant 4 : index
          %22 = arith.remsi %5, %c4_21 : index
          %c0_22 = arith.constant 0 : index
          %23 = arith.cmpi slt, %22, %c0_22 : index
          %24 = arith.addi %22, %c4_21 : index
          %25 = arith.select %23, %24, %22 : index
          %c1_23 = arith.constant 1 : index
          scf.for %arg8 = %c0_20 to %25 step %c1_23 {
            %c4_24 = arith.constant 4 : index
            %c0_25 = arith.constant 0 : index
            %c-1_26 = arith.constant -1 : index
            %27 = arith.cmpi slt, %5, %c0_25 : index
            %28 = arith.subi %c-1_26, %5 : index
            %29 = arith.select %27, %28, %5 : index
            %30 = arith.divsi %29, %c4_24 : index
            %31 = arith.subi %c-1_26, %30 : index
            %32 = arith.select %27, %31, %30 : index
            %c4_27 = arith.constant 4 : index
            %33 = arith.muli %32, %c4_27 : index
            %34 = arith.addi %arg8, %33 : index
            %35 = memref.load %arg1[%5, %34] : memref<?x40xf64>
            %36 = memref.load %arg1[%34, %12] : memref<?x40xf64>
            %37 = arith.mulf %35, %36 : f64
            %38 = memref.load %alloca[] : memref<f64>
            %39 = arith.subf %38, %37 : f64
            memref.store %39, %alloca[] : memref<f64>
          }
          %26 = memref.load %alloca[] : memref<f64>
          memref.store %26, %arg1[%5, %12] : memref<?x40xf64>
        }
      }
    }
    %c0_0 = arith.constant 0 : index
    %c2_1 = arith.constant 2 : index
    %c1_2 = arith.constant 1 : index
    scf.for %arg5 = %c0_0 to %c2_1 step %c1_2 {
      %c32 = arith.constant 32 : index
      %1 = arith.muli %arg5, %c32 : index
      %c0_6 = arith.constant 0 : index
      %c32_7 = arith.constant 32 : index
      %c-32 = arith.constant -32 : index
      %2 = arith.muli %arg5, %c-32 : index
      %c40 = arith.constant 40 : index
      %3 = arith.addi %2, %c40 : index
      %4 = arith.minsi %c32_7, %3 : index
      %c1_8 = arith.constant 1 : index
      scf.for %arg6 = %c0_6 to %4 step %c1_8 {
        %5 = arith.addi %1, %arg6 : index
        %6 = memref.load %arg2[%5] : memref<?xf64>
        memref.store %6, %alloca[] : memref<f64>
        %c0_9 = arith.constant 0 : index
        %c8 = arith.constant 8 : index
        %7 = arith.muli %arg5, %c8 : index
        %c4 = arith.constant 4 : index
        %c0_10 = arith.constant 0 : index
        %c-1 = arith.constant -1 : index
        %8 = arith.cmpi slt, %arg6, %c0_10 : index
        %9 = arith.subi %c-1, %arg6 : index
        %10 = arith.select %8, %9, %arg6 : index
        %11 = arith.divsi %10, %c4 : index
        %12 = arith.subi %c-1, %11 : index
        %13 = arith.select %8, %12, %11 : index
        %14 = arith.addi %7, %13 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg7 = %c0_9 to %14 step %c1_11 {
          %c4_16 = arith.constant 4 : index
          %20 = arith.muli %arg7, %c4_16 : index
          %21 = memref.load %arg1[%5, %20] : memref<?x40xf64>
          %22 = memref.load %arg4[%20] : memref<?xf64>
          %23 = arith.mulf %21, %22 : f64
          %24 = memref.load %alloca[] : memref<f64>
          %25 = arith.subf %24, %23 : f64
          memref.store %25, %alloca[] : memref<f64>
          %c1_17 = arith.constant 1 : index
          %26 = arith.addi %20, %c1_17 : index
          %27 = memref.load %arg1[%5, %26] : memref<?x40xf64>
          %28 = memref.load %arg4[%26] : memref<?xf64>
          %29 = arith.mulf %27, %28 : f64
          %30 = memref.load %alloca[] : memref<f64>
          %31 = arith.subf %30, %29 : f64
          memref.store %31, %alloca[] : memref<f64>
          %c2_18 = arith.constant 2 : index
          %32 = arith.addi %20, %c2_18 : index
          %33 = memref.load %arg1[%5, %32] : memref<?x40xf64>
          %34 = memref.load %arg4[%32] : memref<?xf64>
          %35 = arith.mulf %33, %34 : f64
          %36 = memref.load %alloca[] : memref<f64>
          %37 = arith.subf %36, %35 : f64
          memref.store %37, %alloca[] : memref<f64>
          %c3 = arith.constant 3 : index
          %38 = arith.addi %20, %c3 : index
          %39 = memref.load %arg1[%5, %38] : memref<?x40xf64>
          %40 = memref.load %arg4[%38] : memref<?xf64>
          %41 = arith.mulf %39, %40 : f64
          %42 = memref.load %alloca[] : memref<f64>
          %43 = arith.subf %42, %41 : f64
          memref.store %43, %alloca[] : memref<f64>
        }
        %c0_12 = arith.constant 0 : index
        %c4_13 = arith.constant 4 : index
        %15 = arith.remsi %5, %c4_13 : index
        %c0_14 = arith.constant 0 : index
        %16 = arith.cmpi slt, %15, %c0_14 : index
        %17 = arith.addi %15, %c4_13 : index
        %18 = arith.select %16, %17, %15 : index
        %c1_15 = arith.constant 1 : index
        scf.for %arg7 = %c0_12 to %18 step %c1_15 {
          %c4_16 = arith.constant 4 : index
          %c0_17 = arith.constant 0 : index
          %c-1_18 = arith.constant -1 : index
          %20 = arith.cmpi slt, %5, %c0_17 : index
          %21 = arith.subi %c-1_18, %5 : index
          %22 = arith.select %20, %21, %5 : index
          %23 = arith.divsi %22, %c4_16 : index
          %24 = arith.subi %c-1_18, %23 : index
          %25 = arith.select %20, %24, %23 : index
          %c4_19 = arith.constant 4 : index
          %26 = arith.muli %25, %c4_19 : index
          %27 = arith.addi %arg7, %26 : index
          %28 = memref.load %arg1[%5, %27] : memref<?x40xf64>
          %29 = memref.load %arg4[%27] : memref<?xf64>
          %30 = arith.mulf %28, %29 : f64
          %31 = memref.load %alloca[] : memref<f64>
          %32 = arith.subf %31, %30 : f64
          memref.store %32, %alloca[] : memref<f64>
        }
        %19 = memref.load %alloca[] : memref<f64>
        memref.store %19, %arg4[%5] : memref<?xf64>
      }
    }
    %c0_3 = arith.constant 0 : index
    %c2_4 = arith.constant 2 : index
    %c1_5 = arith.constant 1 : index
    scf.for %arg5 = %c0_3 to %c2_4 step %c1_5 {
      %c32 = arith.constant 32 : index
      %1 = arith.muli %arg5, %c32 : index
      %c0_6 = arith.constant 0 : index
      %c32_7 = arith.constant 32 : index
      %c-32 = arith.constant -32 : index
      %2 = arith.muli %arg5, %c-32 : index
      %c40 = arith.constant 40 : index
      %3 = arith.addi %2, %c40 : index
      %4 = arith.minsi %c32_7, %3 : index
      %c1_8 = arith.constant 1 : index
      scf.for %arg6 = %c0_6 to %4 step %c1_8 {
        %5 = arith.addi %1, %arg6 : index
        %c-1 = arith.constant -1 : index
        %6 = arith.muli %5, %c-1 : index
        %c39 = arith.constant 39 : index
        %7 = arith.addi %6, %c39 : index
        %8 = memref.load %arg4[%7] : memref<?xf64>
        memref.store %8, %alloca[] : memref<f64>
        %c0_9 = arith.constant 0 : index
        %c8 = arith.constant 8 : index
        %9 = arith.muli %arg5, %c8 : index
        %c4 = arith.constant 4 : index
        %c0_10 = arith.constant 0 : index
        %c-1_11 = arith.constant -1 : index
        %10 = arith.cmpi slt, %arg6, %c0_10 : index
        %11 = arith.subi %c-1_11, %arg6 : index
        %12 = arith.select %10, %11, %arg6 : index
        %13 = arith.divsi %12, %c4 : index
        %14 = arith.subi %c-1_11, %13 : index
        %15 = arith.select %10, %14, %13 : index
        %16 = arith.addi %9, %15 : index
        %c1_12 = arith.constant 1 : index
        scf.for %arg7 = %c0_9 to %16 step %c1_12 {
          %c-1_23 = arith.constant -1 : index
          %30 = arith.muli %5, %c-1_23 : index
          %c4_24 = arith.constant 4 : index
          %31 = arith.muli %arg7, %c4_24 : index
          %32 = arith.addi %30, %31 : index
          %c40_25 = arith.constant 40 : index
          %33 = arith.addi %32, %c40_25 : index
          %c-1_26 = arith.constant -1 : index
          %34 = arith.muli %5, %c-1_26 : index
          %c39_27 = arith.constant 39 : index
          %35 = arith.addi %34, %c39_27 : index
          %36 = memref.load %arg1[%35, %33] : memref<?x40xf64>
          %37 = memref.load %arg3[%33] : memref<?xf64>
          %38 = arith.mulf %36, %37 : f64
          %39 = memref.load %alloca[] : memref<f64>
          %40 = arith.subf %39, %38 : f64
          memref.store %40, %alloca[] : memref<f64>
          %c1_28 = arith.constant 1 : index
          %41 = arith.addi %33, %c1_28 : index
          %c-1_29 = arith.constant -1 : index
          %42 = arith.muli %5, %c-1_29 : index
          %c39_30 = arith.constant 39 : index
          %43 = arith.addi %42, %c39_30 : index
          %44 = memref.load %arg1[%43, %41] : memref<?x40xf64>
          %45 = memref.load %arg3[%41] : memref<?xf64>
          %46 = arith.mulf %44, %45 : f64
          %47 = memref.load %alloca[] : memref<f64>
          %48 = arith.subf %47, %46 : f64
          memref.store %48, %alloca[] : memref<f64>
          %c2_31 = arith.constant 2 : index
          %49 = arith.addi %33, %c2_31 : index
          %c-1_32 = arith.constant -1 : index
          %50 = arith.muli %5, %c-1_32 : index
          %c39_33 = arith.constant 39 : index
          %51 = arith.addi %50, %c39_33 : index
          %52 = memref.load %arg1[%51, %49] : memref<?x40xf64>
          %53 = memref.load %arg3[%49] : memref<?xf64>
          %54 = arith.mulf %52, %53 : f64
          %55 = memref.load %alloca[] : memref<f64>
          %56 = arith.subf %55, %54 : f64
          memref.store %56, %alloca[] : memref<f64>
          %c3 = arith.constant 3 : index
          %57 = arith.addi %33, %c3 : index
          %c-1_34 = arith.constant -1 : index
          %58 = arith.muli %5, %c-1_34 : index
          %c39_35 = arith.constant 39 : index
          %59 = arith.addi %58, %c39_35 : index
          %60 = memref.load %arg1[%59, %57] : memref<?x40xf64>
          %61 = memref.load %arg3[%57] : memref<?xf64>
          %62 = arith.mulf %60, %61 : f64
          %63 = memref.load %alloca[] : memref<f64>
          %64 = arith.subf %63, %62 : f64
          memref.store %64, %alloca[] : memref<f64>
        }
        %c0_13 = arith.constant 0 : index
        %c4_14 = arith.constant 4 : index
        %17 = arith.remsi %5, %c4_14 : index
        %c0_15 = arith.constant 0 : index
        %18 = arith.cmpi slt, %17, %c0_15 : index
        %19 = arith.addi %17, %c4_14 : index
        %20 = arith.select %18, %19, %17 : index
        %c1_16 = arith.constant 1 : index
        scf.for %arg7 = %c0_13 to %20 step %c1_16 {
          %c-1_23 = arith.constant -1 : index
          %30 = arith.muli %5, %c-1_23 : index
          %31 = arith.addi %30, %arg7 : index
          %c4_24 = arith.constant 4 : index
          %c0_25 = arith.constant 0 : index
          %c-1_26 = arith.constant -1 : index
          %32 = arith.cmpi slt, %5, %c0_25 : index
          %33 = arith.subi %c-1_26, %5 : index
          %34 = arith.select %32, %33, %5 : index
          %35 = arith.divsi %34, %c4_24 : index
          %36 = arith.subi %c-1_26, %35 : index
          %37 = arith.select %32, %36, %35 : index
          %c4_27 = arith.constant 4 : index
          %38 = arith.muli %37, %c4_27 : index
          %39 = arith.addi %31, %38 : index
          %c40_28 = arith.constant 40 : index
          %40 = arith.addi %39, %c40_28 : index
          %c-1_29 = arith.constant -1 : index
          %41 = arith.muli %5, %c-1_29 : index
          %c39_30 = arith.constant 39 : index
          %42 = arith.addi %41, %c39_30 : index
          %43 = memref.load %arg1[%42, %40] : memref<?x40xf64>
          %44 = memref.load %arg3[%40] : memref<?xf64>
          %45 = arith.mulf %43, %44 : f64
          %46 = memref.load %alloca[] : memref<f64>
          %47 = arith.subf %46, %45 : f64
          memref.store %47, %alloca[] : memref<f64>
        }
        %21 = memref.load %alloca[] : memref<f64>
        %c-1_17 = arith.constant -1 : index
        %22 = arith.muli %5, %c-1_17 : index
        %c39_18 = arith.constant 39 : index
        %23 = arith.addi %22, %c39_18 : index
        %c-1_19 = arith.constant -1 : index
        %24 = arith.muli %5, %c-1_19 : index
        %c39_20 = arith.constant 39 : index
        %25 = arith.addi %24, %c39_20 : index
        %26 = memref.load %arg1[%23, %25] : memref<?x40xf64>
        %27 = arith.divf %21, %26 : f64
        %c-1_21 = arith.constant -1 : index
        %28 = arith.muli %5, %c-1_21 : index
        %c39_22 = arith.constant 39 : index
        %29 = arith.addi %28, %c39_22 : index
        memref.store %27, %arg3[%29] : memref<?xf64>
      }
    }
    return
  }
}

