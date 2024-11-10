module {
  func.func @kernel_trmm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x20xf64>, %arg4: memref<?x30xf64>) {
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg5 = %c0 to %c20 step %c1 {
      %c0_0 = arith.constant 0 : index
      %c30 = arith.constant 30 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg6 = %c0_0 to %c30 step %c1_1 {
        %c0_2 = arith.constant 0 : index
        %c1_3 = arith.constant 1 : index
        %c1_4 = arith.constant 1 : index
        scf.for %arg7 = %c0_2 to %c1_3 step %c1_4 {
          %0 = arith.addi %arg5, %arg7 : index
          %c0_5 = arith.constant 0 : index
          %c1_6 = arith.constant 1 : index
          %c1_7 = arith.constant 1 : index
          scf.for %arg8 = %c0_5 to %c1_6 step %c1_7 {
            %1 = arith.addi %arg6, %arg8 : index
            %c0_8 = arith.constant 0 : index
            %c-1 = arith.constant -1 : index
            %2 = arith.muli %arg5, %c-1 : index
            %c-1_9 = arith.constant -1 : index
            %3 = arith.muli %arg7, %c-1_9 : index
            %4 = arith.addi %2, %3 : index
            %c19 = arith.constant 19 : index
            %5 = arith.addi %4, %c19 : index
            %c4 = arith.constant 4 : index
            %c0_10 = arith.constant 0 : index
            %c-1_11 = arith.constant -1 : index
            %6 = arith.cmpi slt, %5, %c0_10 : index
            %7 = arith.subi %c-1_11, %5 : index
            %8 = arith.select %6, %7, %5 : index
            %9 = arith.divsi %8, %c4 : index
            %10 = arith.subi %c-1_11, %9 : index
            %11 = arith.select %6, %10, %9 : index
            %c1_12 = arith.constant 1 : index
            scf.for %arg9 = %c0_8 to %11 step %c1_12 {
              %c4_24 = arith.constant 4 : index
              %30 = arith.muli %arg9, %c4_24 : index
              %31 = arith.addi %0, %30 : index
              %c1_25 = arith.constant 1 : index
              %32 = arith.addi %31, %c1_25 : index
              %33 = memref.load %arg3[%32, %0] : memref<?x20xf64>
              %34 = memref.load %arg4[%32, %1] : memref<?x30xf64>
              %35 = arith.mulf %33, %34 : f64
              %36 = memref.load %arg4[%0, %1] : memref<?x30xf64>
              %37 = arith.addf %36, %35 : f64
              memref.store %37, %arg4[%0, %1] : memref<?x30xf64>
              %c1_26 = arith.constant 1 : index
              %38 = arith.addi %32, %c1_26 : index
              %39 = memref.load %arg3[%38, %0] : memref<?x20xf64>
              %40 = memref.load %arg4[%38, %1] : memref<?x30xf64>
              %41 = arith.mulf %39, %40 : f64
              %42 = memref.load %arg4[%0, %1] : memref<?x30xf64>
              %43 = arith.addf %42, %41 : f64
              memref.store %43, %arg4[%0, %1] : memref<?x30xf64>
              %c2 = arith.constant 2 : index
              %44 = arith.addi %32, %c2 : index
              %45 = memref.load %arg3[%44, %0] : memref<?x20xf64>
              %46 = memref.load %arg4[%44, %1] : memref<?x30xf64>
              %47 = arith.mulf %45, %46 : f64
              %48 = memref.load %arg4[%0, %1] : memref<?x30xf64>
              %49 = arith.addf %48, %47 : f64
              memref.store %49, %arg4[%0, %1] : memref<?x30xf64>
              %c3 = arith.constant 3 : index
              %50 = arith.addi %32, %c3 : index
              %51 = memref.load %arg3[%50, %0] : memref<?x20xf64>
              %52 = memref.load %arg4[%50, %1] : memref<?x30xf64>
              %53 = arith.mulf %51, %52 : f64
              %54 = memref.load %arg4[%0, %1] : memref<?x30xf64>
              %55 = arith.addf %54, %53 : f64
              memref.store %55, %arg4[%0, %1] : memref<?x30xf64>
            }
            %c0_13 = arith.constant 0 : index
            %c-1_14 = arith.constant -1 : index
            %12 = arith.muli %arg5, %c-1_14 : index
            %c-1_15 = arith.constant -1 : index
            %13 = arith.muli %arg7, %c-1_15 : index
            %14 = arith.addi %12, %13 : index
            %c-1_16 = arith.constant -1 : index
            %15 = arith.muli %arg5, %c-1_16 : index
            %c-1_17 = arith.constant -1 : index
            %16 = arith.muli %arg7, %c-1_17 : index
            %17 = arith.addi %15, %16 : index
            %c19_18 = arith.constant 19 : index
            %18 = arith.addi %17, %c19_18 : index
            %c4_19 = arith.constant 4 : index
            %c0_20 = arith.constant 0 : index
            %c-1_21 = arith.constant -1 : index
            %19 = arith.cmpi slt, %18, %c0_20 : index
            %20 = arith.subi %c-1_21, %18 : index
            %21 = arith.select %19, %20, %18 : index
            %22 = arith.divsi %21, %c4_19 : index
            %23 = arith.subi %c-1_21, %22 : index
            %24 = arith.select %19, %23, %22 : index
            %c-4 = arith.constant -4 : index
            %25 = arith.muli %24, %c-4 : index
            %26 = arith.addi %14, %25 : index
            %c19_22 = arith.constant 19 : index
            %27 = arith.addi %26, %c19_22 : index
            %c1_23 = arith.constant 1 : index
            scf.for %arg9 = %c0_13 to %27 step %c1_23 {
              %30 = arith.addi %0, %arg9 : index
              %c-1_24 = arith.constant -1 : index
              %31 = arith.muli %0, %c-1_24 : index
              %c19_25 = arith.constant 19 : index
              %32 = arith.addi %31, %c19_25 : index
              %c4_26 = arith.constant 4 : index
              %c0_27 = arith.constant 0 : index
              %c-1_28 = arith.constant -1 : index
              %33 = arith.cmpi slt, %32, %c0_27 : index
              %34 = arith.subi %c-1_28, %32 : index
              %35 = arith.select %33, %34, %32 : index
              %36 = arith.divsi %35, %c4_26 : index
              %37 = arith.subi %c-1_28, %36 : index
              %38 = arith.select %33, %37, %36 : index
              %c4_29 = arith.constant 4 : index
              %39 = arith.muli %38, %c4_29 : index
              %40 = arith.addi %30, %39 : index
              %c1_30 = arith.constant 1 : index
              %41 = arith.addi %40, %c1_30 : index
              %42 = memref.load %arg3[%41, %0] : memref<?x20xf64>
              %43 = memref.load %arg4[%41, %1] : memref<?x30xf64>
              %44 = arith.mulf %42, %43 : f64
              %45 = memref.load %arg4[%0, %1] : memref<?x30xf64>
              %46 = arith.addf %45, %44 : f64
              memref.store %46, %arg4[%0, %1] : memref<?x30xf64>
            }
            %28 = memref.load %arg4[%0, %1] : memref<?x30xf64>
            %29 = arith.mulf %arg2, %28 : f64
            memref.store %29, %arg4[%0, %1] : memref<?x30xf64>
          }
        }
      }
    }
    return
  }
}

