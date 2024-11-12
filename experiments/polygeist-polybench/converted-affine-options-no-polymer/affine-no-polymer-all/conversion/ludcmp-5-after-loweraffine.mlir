module {
  func.func @kernel_ludcmp(%arg0: i32, %arg1: memref<?x40xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>) {
    %alloca = memref.alloca() : memref<f64>
    %0 = llvm.mlir.undef : f64
    memref.store %0, %alloca[] : memref<f64>
    %c0 = arith.constant 0 : index
    %c10 = arith.constant 10 : index
    %c1 = arith.constant 1 : index
    scf.for %arg5 = %c0 to %c10 step %c1 {
      %c4 = arith.constant 4 : index
      %1 = arith.muli %arg5, %c4 : index
      %c0_5 = arith.constant 0 : index
      %c4_6 = arith.constant 4 : index
      %c1_7 = arith.constant 1 : index
      scf.for %arg6 = %c0_5 to %c4_6 step %c1_7 {
        %2 = arith.addi %1, %arg6 : index
        %c0_8 = arith.constant 0 : index
        %c4_9 = arith.constant 4 : index
        %3 = arith.muli %arg5, %c4_9 : index
        %4 = arith.addi %arg6, %3 : index
        %c1_10 = arith.constant 1 : index
        scf.for %arg7 = %c0_8 to %4 step %c1_10 {
          %9 = memref.load %arg1[%2, %arg7] : memref<?x40xf64>
          memref.store %9, %alloca[] : memref<f64>
          %c0_14 = arith.constant 0 : index
          %c4_15 = arith.constant 4 : index
          %c0_16 = arith.constant 0 : index
          %c-1_17 = arith.constant -1 : index
          %10 = arith.cmpi slt, %arg7, %c0_16 : index
          %11 = arith.subi %c-1_17, %arg7 : index
          %12 = arith.select %10, %11, %arg7 : index
          %13 = arith.divsi %12, %c4_15 : index
          %14 = arith.subi %c-1_17, %13 : index
          %15 = arith.select %10, %14, %13 : index
          %c1_18 = arith.constant 1 : index
          scf.for %arg8 = %c0_14 to %15 step %c1_18 {
            %c4_23 = arith.constant 4 : index
            %23 = arith.muli %arg8, %c4_23 : index
            %24 = memref.load %arg1[%2, %23] : memref<?x40xf64>
            %25 = memref.load %arg1[%23, %arg7] : memref<?x40xf64>
            %26 = arith.mulf %24, %25 : f64
            %27 = memref.load %alloca[] : memref<f64>
            %28 = arith.subf %27, %26 : f64
            memref.store %28, %alloca[] : memref<f64>
            %c1_24 = arith.constant 1 : index
            %29 = arith.addi %23, %c1_24 : index
            %30 = memref.load %arg1[%2, %29] : memref<?x40xf64>
            %31 = memref.load %arg1[%29, %arg7] : memref<?x40xf64>
            %32 = arith.mulf %30, %31 : f64
            %33 = memref.load %alloca[] : memref<f64>
            %34 = arith.subf %33, %32 : f64
            memref.store %34, %alloca[] : memref<f64>
            %c2 = arith.constant 2 : index
            %35 = arith.addi %23, %c2 : index
            %36 = memref.load %arg1[%2, %35] : memref<?x40xf64>
            %37 = memref.load %arg1[%35, %arg7] : memref<?x40xf64>
            %38 = arith.mulf %36, %37 : f64
            %39 = memref.load %alloca[] : memref<f64>
            %40 = arith.subf %39, %38 : f64
            memref.store %40, %alloca[] : memref<f64>
            %c3 = arith.constant 3 : index
            %41 = arith.addi %23, %c3 : index
            %42 = memref.load %arg1[%2, %41] : memref<?x40xf64>
            %43 = memref.load %arg1[%41, %arg7] : memref<?x40xf64>
            %44 = arith.mulf %42, %43 : f64
            %45 = memref.load %alloca[] : memref<f64>
            %46 = arith.subf %45, %44 : f64
            memref.store %46, %alloca[] : memref<f64>
          }
          %c0_19 = arith.constant 0 : index
          %c4_20 = arith.constant 4 : index
          %16 = arith.remsi %arg7, %c4_20 : index
          %c0_21 = arith.constant 0 : index
          %17 = arith.cmpi slt, %16, %c0_21 : index
          %18 = arith.addi %16, %c4_20 : index
          %19 = arith.select %17, %18, %16 : index
          %c1_22 = arith.constant 1 : index
          scf.for %arg8 = %c0_19 to %19 step %c1_22 {
            %c4_23 = arith.constant 4 : index
            %c0_24 = arith.constant 0 : index
            %c-1_25 = arith.constant -1 : index
            %23 = arith.cmpi slt, %arg7, %c0_24 : index
            %24 = arith.subi %c-1_25, %arg7 : index
            %25 = arith.select %23, %24, %arg7 : index
            %26 = arith.divsi %25, %c4_23 : index
            %27 = arith.subi %c-1_25, %26 : index
            %28 = arith.select %23, %27, %26 : index
            %c4_26 = arith.constant 4 : index
            %29 = arith.muli %28, %c4_26 : index
            %30 = arith.addi %arg8, %29 : index
            %31 = memref.load %arg1[%2, %30] : memref<?x40xf64>
            %32 = memref.load %arg1[%30, %arg7] : memref<?x40xf64>
            %33 = arith.mulf %31, %32 : f64
            %34 = memref.load %alloca[] : memref<f64>
            %35 = arith.subf %34, %33 : f64
            memref.store %35, %alloca[] : memref<f64>
          }
          %20 = memref.load %alloca[] : memref<f64>
          %21 = memref.load %arg1[%arg7, %arg7] : memref<?x40xf64>
          %22 = arith.divf %20, %21 : f64
          memref.store %22, %arg1[%2, %arg7] : memref<?x40xf64>
        }
        %c0_11 = arith.constant 0 : index
        %c-1 = arith.constant -1 : index
        %5 = arith.muli %arg6, %c-1 : index
        %c-4 = arith.constant -4 : index
        %6 = arith.muli %arg5, %c-4 : index
        %7 = arith.addi %5, %6 : index
        %c40_12 = arith.constant 40 : index
        %8 = arith.addi %7, %c40_12 : index
        %c1_13 = arith.constant 1 : index
        scf.for %arg7 = %c0_11 to %8 step %c1_13 {
          %9 = arith.addi %2, %arg7 : index
          %10 = memref.load %arg1[%2, %9] : memref<?x40xf64>
          memref.store %10, %alloca[] : memref<f64>
          %c0_14 = arith.constant 0 : index
          %c4_15 = arith.constant 4 : index
          %c0_16 = arith.constant 0 : index
          %c-1_17 = arith.constant -1 : index
          %11 = arith.cmpi slt, %arg6, %c0_16 : index
          %12 = arith.subi %c-1_17, %arg6 : index
          %13 = arith.select %11, %12, %arg6 : index
          %14 = arith.divsi %13, %c4_15 : index
          %15 = arith.subi %c-1_17, %14 : index
          %16 = arith.select %11, %15, %14 : index
          %17 = arith.addi %arg5, %16 : index
          %c1_18 = arith.constant 1 : index
          scf.for %arg8 = %c0_14 to %17 step %c1_18 {
            %c4_23 = arith.constant 4 : index
            %23 = arith.muli %arg8, %c4_23 : index
            %24 = memref.load %arg1[%2, %23] : memref<?x40xf64>
            %25 = memref.load %arg1[%23, %9] : memref<?x40xf64>
            %26 = arith.mulf %24, %25 : f64
            %27 = memref.load %alloca[] : memref<f64>
            %28 = arith.subf %27, %26 : f64
            memref.store %28, %alloca[] : memref<f64>
            %c1_24 = arith.constant 1 : index
            %29 = arith.addi %23, %c1_24 : index
            %30 = memref.load %arg1[%2, %29] : memref<?x40xf64>
            %31 = memref.load %arg1[%29, %9] : memref<?x40xf64>
            %32 = arith.mulf %30, %31 : f64
            %33 = memref.load %alloca[] : memref<f64>
            %34 = arith.subf %33, %32 : f64
            memref.store %34, %alloca[] : memref<f64>
            %c2 = arith.constant 2 : index
            %35 = arith.addi %23, %c2 : index
            %36 = memref.load %arg1[%2, %35] : memref<?x40xf64>
            %37 = memref.load %arg1[%35, %9] : memref<?x40xf64>
            %38 = arith.mulf %36, %37 : f64
            %39 = memref.load %alloca[] : memref<f64>
            %40 = arith.subf %39, %38 : f64
            memref.store %40, %alloca[] : memref<f64>
            %c3 = arith.constant 3 : index
            %41 = arith.addi %23, %c3 : index
            %42 = memref.load %arg1[%2, %41] : memref<?x40xf64>
            %43 = memref.load %arg1[%41, %9] : memref<?x40xf64>
            %44 = arith.mulf %42, %43 : f64
            %45 = memref.load %alloca[] : memref<f64>
            %46 = arith.subf %45, %44 : f64
            memref.store %46, %alloca[] : memref<f64>
          }
          %c0_19 = arith.constant 0 : index
          %c4_20 = arith.constant 4 : index
          %18 = arith.remsi %2, %c4_20 : index
          %c0_21 = arith.constant 0 : index
          %19 = arith.cmpi slt, %18, %c0_21 : index
          %20 = arith.addi %18, %c4_20 : index
          %21 = arith.select %19, %20, %18 : index
          %c1_22 = arith.constant 1 : index
          scf.for %arg8 = %c0_19 to %21 step %c1_22 {
            %c4_23 = arith.constant 4 : index
            %c0_24 = arith.constant 0 : index
            %c-1_25 = arith.constant -1 : index
            %23 = arith.cmpi slt, %2, %c0_24 : index
            %24 = arith.subi %c-1_25, %2 : index
            %25 = arith.select %23, %24, %2 : index
            %26 = arith.divsi %25, %c4_23 : index
            %27 = arith.subi %c-1_25, %26 : index
            %28 = arith.select %23, %27, %26 : index
            %c4_26 = arith.constant 4 : index
            %29 = arith.muli %28, %c4_26 : index
            %30 = arith.addi %arg8, %29 : index
            %31 = memref.load %arg1[%2, %30] : memref<?x40xf64>
            %32 = memref.load %arg1[%30, %9] : memref<?x40xf64>
            %33 = arith.mulf %31, %32 : f64
            %34 = memref.load %alloca[] : memref<f64>
            %35 = arith.subf %34, %33 : f64
            memref.store %35, %alloca[] : memref<f64>
          }
          %22 = memref.load %alloca[] : memref<f64>
          memref.store %22, %arg1[%2, %9] : memref<?x40xf64>
        }
      }
    }
    %c0_0 = arith.constant 0 : index
    %c40 = arith.constant 40 : index
    %c1_1 = arith.constant 1 : index
    scf.for %arg5 = %c0_0 to %c40 step %c1_1 {
      %c0_5 = arith.constant 0 : index
      %c1_6 = arith.constant 1 : index
      %c1_7 = arith.constant 1 : index
      scf.parallel (%arg6) = (%c0_5) to (%c1_6) step (%c1_7) {
        %1 = arith.addi %arg5, %arg6 : index
        %2 = memref.load %arg2[%1] : memref<?xf64>
        memref.store %2, %alloca[] : memref<f64>
        %c0_8 = arith.constant 0 : index
        %3 = arith.addi %arg5, %arg6 : index
        %c4 = arith.constant 4 : index
        %c0_9 = arith.constant 0 : index
        %c-1 = arith.constant -1 : index
        %4 = arith.cmpi slt, %3, %c0_9 : index
        %5 = arith.subi %c-1, %3 : index
        %6 = arith.select %4, %5, %3 : index
        %7 = arith.divsi %6, %c4 : index
        %8 = arith.subi %c-1, %7 : index
        %9 = arith.select %4, %8, %7 : index
        %c1_10 = arith.constant 1 : index
        scf.for %arg7 = %c0_8 to %9 step %c1_10 {
          %c4_15 = arith.constant 4 : index
          %16 = arith.muli %arg7, %c4_15 : index
          %17 = memref.load %arg1[%1, %16] : memref<?x40xf64>
          %18 = memref.load %arg4[%16] : memref<?xf64>
          %19 = arith.mulf %17, %18 : f64
          %20 = memref.load %alloca[] : memref<f64>
          %21 = arith.subf %20, %19 : f64
          memref.store %21, %alloca[] : memref<f64>
          %c1_16 = arith.constant 1 : index
          %22 = arith.addi %16, %c1_16 : index
          %23 = memref.load %arg1[%1, %22] : memref<?x40xf64>
          %24 = memref.load %arg4[%22] : memref<?xf64>
          %25 = arith.mulf %23, %24 : f64
          %26 = memref.load %alloca[] : memref<f64>
          %27 = arith.subf %26, %25 : f64
          memref.store %27, %alloca[] : memref<f64>
          %c2 = arith.constant 2 : index
          %28 = arith.addi %16, %c2 : index
          %29 = memref.load %arg1[%1, %28] : memref<?x40xf64>
          %30 = memref.load %arg4[%28] : memref<?xf64>
          %31 = arith.mulf %29, %30 : f64
          %32 = memref.load %alloca[] : memref<f64>
          %33 = arith.subf %32, %31 : f64
          memref.store %33, %alloca[] : memref<f64>
          %c3 = arith.constant 3 : index
          %34 = arith.addi %16, %c3 : index
          %35 = memref.load %arg1[%1, %34] : memref<?x40xf64>
          %36 = memref.load %arg4[%34] : memref<?xf64>
          %37 = arith.mulf %35, %36 : f64
          %38 = memref.load %alloca[] : memref<f64>
          %39 = arith.subf %38, %37 : f64
          memref.store %39, %alloca[] : memref<f64>
        }
        %c0_11 = arith.constant 0 : index
        %10 = arith.addi %arg5, %arg6 : index
        %c4_12 = arith.constant 4 : index
        %11 = arith.remsi %10, %c4_12 : index
        %c0_13 = arith.constant 0 : index
        %12 = arith.cmpi slt, %11, %c0_13 : index
        %13 = arith.addi %11, %c4_12 : index
        %14 = arith.select %12, %13, %11 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg7 = %c0_11 to %14 step %c1_14 {
          %c4_15 = arith.constant 4 : index
          %c0_16 = arith.constant 0 : index
          %c-1_17 = arith.constant -1 : index
          %16 = arith.cmpi slt, %1, %c0_16 : index
          %17 = arith.subi %c-1_17, %1 : index
          %18 = arith.select %16, %17, %1 : index
          %19 = arith.divsi %18, %c4_15 : index
          %20 = arith.subi %c-1_17, %19 : index
          %21 = arith.select %16, %20, %19 : index
          %c4_18 = arith.constant 4 : index
          %22 = arith.muli %21, %c4_18 : index
          %23 = arith.addi %arg7, %22 : index
          %24 = memref.load %arg1[%1, %23] : memref<?x40xf64>
          %25 = memref.load %arg4[%23] : memref<?xf64>
          %26 = arith.mulf %24, %25 : f64
          %27 = memref.load %alloca[] : memref<f64>
          %28 = arith.subf %27, %26 : f64
          memref.store %28, %alloca[] : memref<f64>
        }
        %15 = memref.load %alloca[] : memref<f64>
        memref.store %15, %arg4[%1] : memref<?xf64>
        scf.reduce 
      }
    }
    %c0_2 = arith.constant 0 : index
    %c40_3 = arith.constant 40 : index
    %c1_4 = arith.constant 1 : index
    scf.for %arg5 = %c0_2 to %c40_3 step %c1_4 {
      %c0_5 = arith.constant 0 : index
      %c1_6 = arith.constant 1 : index
      %c1_7 = arith.constant 1 : index
      scf.parallel (%arg6) = (%c0_5) to (%c1_6) step (%c1_7) {
        %1 = arith.addi %arg5, %arg6 : index
        %c-1 = arith.constant -1 : index
        %2 = arith.muli %1, %c-1 : index
        %c39 = arith.constant 39 : index
        %3 = arith.addi %2, %c39 : index
        %4 = memref.load %arg4[%3] : memref<?xf64>
        memref.store %4, %alloca[] : memref<f64>
        %c0_8 = arith.constant 0 : index
        %5 = arith.addi %arg5, %arg6 : index
        %c4 = arith.constant 4 : index
        %c0_9 = arith.constant 0 : index
        %c-1_10 = arith.constant -1 : index
        %6 = arith.cmpi slt, %5, %c0_9 : index
        %7 = arith.subi %c-1_10, %5 : index
        %8 = arith.select %6, %7, %5 : index
        %9 = arith.divsi %8, %c4 : index
        %10 = arith.subi %c-1_10, %9 : index
        %11 = arith.select %6, %10, %9 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg7 = %c0_8 to %11 step %c1_11 {
          %c-1_22 = arith.constant -1 : index
          %26 = arith.muli %1, %c-1_22 : index
          %c4_23 = arith.constant 4 : index
          %27 = arith.muli %arg7, %c4_23 : index
          %28 = arith.addi %26, %27 : index
          %c40_24 = arith.constant 40 : index
          %29 = arith.addi %28, %c40_24 : index
          %c-1_25 = arith.constant -1 : index
          %30 = arith.muli %1, %c-1_25 : index
          %c39_26 = arith.constant 39 : index
          %31 = arith.addi %30, %c39_26 : index
          %32 = memref.load %arg1[%31, %29] : memref<?x40xf64>
          %33 = memref.load %arg3[%29] : memref<?xf64>
          %34 = arith.mulf %32, %33 : f64
          %35 = memref.load %alloca[] : memref<f64>
          %36 = arith.subf %35, %34 : f64
          memref.store %36, %alloca[] : memref<f64>
          %c1_27 = arith.constant 1 : index
          %37 = arith.addi %29, %c1_27 : index
          %c-1_28 = arith.constant -1 : index
          %38 = arith.muli %1, %c-1_28 : index
          %c39_29 = arith.constant 39 : index
          %39 = arith.addi %38, %c39_29 : index
          %40 = memref.load %arg1[%39, %37] : memref<?x40xf64>
          %41 = memref.load %arg3[%37] : memref<?xf64>
          %42 = arith.mulf %40, %41 : f64
          %43 = memref.load %alloca[] : memref<f64>
          %44 = arith.subf %43, %42 : f64
          memref.store %44, %alloca[] : memref<f64>
          %c2 = arith.constant 2 : index
          %45 = arith.addi %29, %c2 : index
          %c-1_30 = arith.constant -1 : index
          %46 = arith.muli %1, %c-1_30 : index
          %c39_31 = arith.constant 39 : index
          %47 = arith.addi %46, %c39_31 : index
          %48 = memref.load %arg1[%47, %45] : memref<?x40xf64>
          %49 = memref.load %arg3[%45] : memref<?xf64>
          %50 = arith.mulf %48, %49 : f64
          %51 = memref.load %alloca[] : memref<f64>
          %52 = arith.subf %51, %50 : f64
          memref.store %52, %alloca[] : memref<f64>
          %c3 = arith.constant 3 : index
          %53 = arith.addi %29, %c3 : index
          %c-1_32 = arith.constant -1 : index
          %54 = arith.muli %1, %c-1_32 : index
          %c39_33 = arith.constant 39 : index
          %55 = arith.addi %54, %c39_33 : index
          %56 = memref.load %arg1[%55, %53] : memref<?x40xf64>
          %57 = memref.load %arg3[%53] : memref<?xf64>
          %58 = arith.mulf %56, %57 : f64
          %59 = memref.load %alloca[] : memref<f64>
          %60 = arith.subf %59, %58 : f64
          memref.store %60, %alloca[] : memref<f64>
        }
        %c0_12 = arith.constant 0 : index
        %12 = arith.addi %arg5, %arg6 : index
        %c4_13 = arith.constant 4 : index
        %13 = arith.remsi %12, %c4_13 : index
        %c0_14 = arith.constant 0 : index
        %14 = arith.cmpi slt, %13, %c0_14 : index
        %15 = arith.addi %13, %c4_13 : index
        %16 = arith.select %14, %15, %13 : index
        %c1_15 = arith.constant 1 : index
        scf.for %arg7 = %c0_12 to %16 step %c1_15 {
          %c-1_22 = arith.constant -1 : index
          %26 = arith.muli %1, %c-1_22 : index
          %27 = arith.addi %26, %arg7 : index
          %c4_23 = arith.constant 4 : index
          %c0_24 = arith.constant 0 : index
          %c-1_25 = arith.constant -1 : index
          %28 = arith.cmpi slt, %1, %c0_24 : index
          %29 = arith.subi %c-1_25, %1 : index
          %30 = arith.select %28, %29, %1 : index
          %31 = arith.divsi %30, %c4_23 : index
          %32 = arith.subi %c-1_25, %31 : index
          %33 = arith.select %28, %32, %31 : index
          %c4_26 = arith.constant 4 : index
          %34 = arith.muli %33, %c4_26 : index
          %35 = arith.addi %27, %34 : index
          %c40_27 = arith.constant 40 : index
          %36 = arith.addi %35, %c40_27 : index
          %c-1_28 = arith.constant -1 : index
          %37 = arith.muli %1, %c-1_28 : index
          %c39_29 = arith.constant 39 : index
          %38 = arith.addi %37, %c39_29 : index
          %39 = memref.load %arg1[%38, %36] : memref<?x40xf64>
          %40 = memref.load %arg3[%36] : memref<?xf64>
          %41 = arith.mulf %39, %40 : f64
          %42 = memref.load %alloca[] : memref<f64>
          %43 = arith.subf %42, %41 : f64
          memref.store %43, %alloca[] : memref<f64>
        }
        %17 = memref.load %alloca[] : memref<f64>
        %c-1_16 = arith.constant -1 : index
        %18 = arith.muli %1, %c-1_16 : index
        %c39_17 = arith.constant 39 : index
        %19 = arith.addi %18, %c39_17 : index
        %c-1_18 = arith.constant -1 : index
        %20 = arith.muli %1, %c-1_18 : index
        %c39_19 = arith.constant 39 : index
        %21 = arith.addi %20, %c39_19 : index
        %22 = memref.load %arg1[%19, %21] : memref<?x40xf64>
        %23 = arith.divf %17, %22 : f64
        %c-1_20 = arith.constant -1 : index
        %24 = arith.muli %1, %c-1_20 : index
        %c39_21 = arith.constant 39 : index
        %25 = arith.addi %24, %c39_21 : index
        memref.store %23, %arg3[%25] : memref<?xf64>
        scf.reduce 
      }
    }
    return
  }
}

