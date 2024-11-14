module {
  func.func @kernel_trmm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x20xf64>, %arg4: memref<?x30xf64>) {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_0 = arith.constant 1 : index
    scf.parallel (%arg5) = (%c0) to (%c1) step (%c1_0) {
      %c32 = arith.constant 32 : index
      %0 = arith.muli %arg5, %c32 : index
      %c0_1 = arith.constant 0 : index
      %c1_2 = arith.constant 1 : index
      %c1_3 = arith.constant 1 : index
      scf.for %arg6 = %c0_1 to %c1_2 step %c1_3 {
        %c32_4 = arith.constant 32 : index
        %1 = arith.muli %arg6, %c32_4 : index
        %c0_5 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_6 = arith.constant 1 : index
        scf.for %arg7 = %c0_5 to %c20 step %c1_6 {
          %2 = arith.addi %0, %arg7 : index
          %c0_7 = arith.constant 0 : index
          %c30 = arith.constant 30 : index
          %c1_8 = arith.constant 1 : index
          scf.for %arg8 = %c0_7 to %c30 step %c1_8 {
            %3 = arith.addi %1, %arg8 : index
            %c0_9 = arith.constant 0 : index
            %c-1 = arith.constant -1 : index
            %4 = arith.muli %arg7, %c-1 : index
            %c-32 = arith.constant -32 : index
            %5 = arith.muli %arg5, %c-32 : index
            %6 = arith.addi %4, %5 : index
            %c19 = arith.constant 19 : index
            %7 = arith.addi %6, %c19 : index
            %c4 = arith.constant 4 : index
            %c0_10 = arith.constant 0 : index
            %c-1_11 = arith.constant -1 : index
            %8 = arith.cmpi slt, %7, %c0_10 : index
            %9 = arith.subi %c-1_11, %7 : index
            %10 = arith.select %8, %9, %7 : index
            %11 = arith.divsi %10, %c4 : index
            %12 = arith.subi %c-1_11, %11 : index
            %13 = arith.select %8, %12, %11 : index
            %c1_12 = arith.constant 1 : index
            scf.for %arg9 = %c0_9 to %13 step %c1_12 {
              %c4_24 = arith.constant 4 : index
              %32 = arith.muli %arg9, %c4_24 : index
              %33 = arith.addi %2, %32 : index
              %c1_25 = arith.constant 1 : index
              %34 = arith.addi %33, %c1_25 : index
              %35 = memref.load %arg3[%34, %2] : memref<?x20xf64>
              %36 = memref.load %arg4[%34, %3] : memref<?x30xf64>
              %37 = arith.mulf %35, %36 : f64
              %38 = memref.load %arg4[%2, %3] : memref<?x30xf64>
              %39 = arith.addf %38, %37 : f64
              memref.store %39, %arg4[%2, %3] : memref<?x30xf64>
              %c1_26 = arith.constant 1 : index
              %40 = arith.addi %34, %c1_26 : index
              %41 = memref.load %arg3[%40, %2] : memref<?x20xf64>
              %42 = memref.load %arg4[%40, %3] : memref<?x30xf64>
              %43 = arith.mulf %41, %42 : f64
              %44 = memref.load %arg4[%2, %3] : memref<?x30xf64>
              %45 = arith.addf %44, %43 : f64
              memref.store %45, %arg4[%2, %3] : memref<?x30xf64>
              %c2 = arith.constant 2 : index
              %46 = arith.addi %34, %c2 : index
              %47 = memref.load %arg3[%46, %2] : memref<?x20xf64>
              %48 = memref.load %arg4[%46, %3] : memref<?x30xf64>
              %49 = arith.mulf %47, %48 : f64
              %50 = memref.load %arg4[%2, %3] : memref<?x30xf64>
              %51 = arith.addf %50, %49 : f64
              memref.store %51, %arg4[%2, %3] : memref<?x30xf64>
              %c3 = arith.constant 3 : index
              %52 = arith.addi %34, %c3 : index
              %53 = memref.load %arg3[%52, %2] : memref<?x20xf64>
              %54 = memref.load %arg4[%52, %3] : memref<?x30xf64>
              %55 = arith.mulf %53, %54 : f64
              %56 = memref.load %arg4[%2, %3] : memref<?x30xf64>
              %57 = arith.addf %56, %55 : f64
              memref.store %57, %arg4[%2, %3] : memref<?x30xf64>
            }
            %c0_13 = arith.constant 0 : index
            %c-1_14 = arith.constant -1 : index
            %14 = arith.muli %arg7, %c-1_14 : index
            %c-32_15 = arith.constant -32 : index
            %15 = arith.muli %arg5, %c-32_15 : index
            %16 = arith.addi %14, %15 : index
            %c-1_16 = arith.constant -1 : index
            %17 = arith.muli %arg7, %c-1_16 : index
            %c-32_17 = arith.constant -32 : index
            %18 = arith.muli %arg5, %c-32_17 : index
            %19 = arith.addi %17, %18 : index
            %c19_18 = arith.constant 19 : index
            %20 = arith.addi %19, %c19_18 : index
            %c4_19 = arith.constant 4 : index
            %c0_20 = arith.constant 0 : index
            %c-1_21 = arith.constant -1 : index
            %21 = arith.cmpi slt, %20, %c0_20 : index
            %22 = arith.subi %c-1_21, %20 : index
            %23 = arith.select %21, %22, %20 : index
            %24 = arith.divsi %23, %c4_19 : index
            %25 = arith.subi %c-1_21, %24 : index
            %26 = arith.select %21, %25, %24 : index
            %c-4 = arith.constant -4 : index
            %27 = arith.muli %26, %c-4 : index
            %28 = arith.addi %16, %27 : index
            %c19_22 = arith.constant 19 : index
            %29 = arith.addi %28, %c19_22 : index
            %c1_23 = arith.constant 1 : index
            scf.for %arg9 = %c0_13 to %29 step %c1_23 {
              %32 = arith.addi %2, %arg9 : index
              %c-1_24 = arith.constant -1 : index
              %33 = arith.muli %2, %c-1_24 : index
              %c19_25 = arith.constant 19 : index
              %34 = arith.addi %33, %c19_25 : index
              %c4_26 = arith.constant 4 : index
              %c0_27 = arith.constant 0 : index
              %c-1_28 = arith.constant -1 : index
              %35 = arith.cmpi slt, %34, %c0_27 : index
              %36 = arith.subi %c-1_28, %34 : index
              %37 = arith.select %35, %36, %34 : index
              %38 = arith.divsi %37, %c4_26 : index
              %39 = arith.subi %c-1_28, %38 : index
              %40 = arith.select %35, %39, %38 : index
              %c4_29 = arith.constant 4 : index
              %41 = arith.muli %40, %c4_29 : index
              %42 = arith.addi %32, %41 : index
              %c1_30 = arith.constant 1 : index
              %43 = arith.addi %42, %c1_30 : index
              %44 = memref.load %arg3[%43, %2] : memref<?x20xf64>
              %45 = memref.load %arg4[%43, %3] : memref<?x30xf64>
              %46 = arith.mulf %44, %45 : f64
              %47 = memref.load %arg4[%2, %3] : memref<?x30xf64>
              %48 = arith.addf %47, %46 : f64
              memref.store %48, %arg4[%2, %3] : memref<?x30xf64>
            }
            %30 = memref.load %arg4[%2, %3] : memref<?x30xf64>
            %31 = arith.mulf %arg2, %30 : f64
            memref.store %31, %arg4[%2, %3] : memref<?x30xf64>
          }
        }
      }
      scf.reduce 
    }
    return
  }
}

