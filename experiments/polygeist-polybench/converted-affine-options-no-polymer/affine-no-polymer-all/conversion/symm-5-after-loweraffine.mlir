module {
  func.func @kernel_symm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>, %arg6: memref<?x30xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
    memref.store %cst, %alloca[] : memref<f64>
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_0 = arith.constant 1 : index
    scf.parallel (%arg7) = (%c0) to (%c1) step (%c1_0) {
      %c32 = arith.constant 32 : index
      %0 = arith.muli %arg7, %c32 : index
      %c0_1 = arith.constant 0 : index
      %c1_2 = arith.constant 1 : index
      %c1_3 = arith.constant 1 : index
      scf.for %arg8 = %c0_1 to %c1_2 step %c1_3 {
        %c32_4 = arith.constant 32 : index
        %1 = arith.muli %arg8, %c32_4 : index
        %c0_5 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_6 = arith.constant 1 : index
        scf.for %arg9 = %c0_5 to %c20 step %c1_6 {
          %2 = arith.addi %0, %arg9 : index
          %3 = memref.load %arg5[%2, %2] : memref<?x20xf64>
          %c0_7 = arith.constant 0 : index
          %c30 = arith.constant 30 : index
          %c1_8 = arith.constant 1 : index
          scf.for %arg10 = %c0_7 to %c30 step %c1_8 {
            %4 = arith.addi %1, %arg10 : index
            memref.store %cst, %alloca[] : memref<f64>
            %5 = memref.load %arg6[%2, %4] : memref<?x30xf64>
            %6 = arith.mulf %arg2, %5 : f64
            %7 = memref.load %arg6[%2, %4] : memref<?x30xf64>
            %8 = arith.mulf %arg2, %7 : f64
            %9 = memref.load %arg6[%2, %4] : memref<?x30xf64>
            %10 = arith.mulf %arg2, %9 : f64
            %11 = memref.load %arg6[%2, %4] : memref<?x30xf64>
            %12 = arith.mulf %arg2, %11 : f64
            %c0_9 = arith.constant 0 : index
            %c8 = arith.constant 8 : index
            %13 = arith.muli %arg7, %c8 : index
            %c4 = arith.constant 4 : index
            %c0_10 = arith.constant 0 : index
            %c-1 = arith.constant -1 : index
            %14 = arith.cmpi slt, %arg9, %c0_10 : index
            %15 = arith.subi %c-1, %arg9 : index
            %16 = arith.select %14, %15, %arg9 : index
            %17 = arith.divsi %16, %c4 : index
            %18 = arith.subi %c-1, %17 : index
            %19 = arith.select %14, %18, %17 : index
            %20 = arith.addi %13, %19 : index
            %c1_11 = arith.constant 1 : index
            scf.for %arg11 = %c0_9 to %20 step %c1_11 {
              %c4_16 = arith.constant 4 : index
              %36 = arith.muli %arg11, %c4_16 : index
              %37 = memref.load %arg5[%2, %36] : memref<?x20xf64>
              %38 = arith.mulf %6, %37 : f64
              %39 = memref.load %arg4[%36, %4] : memref<?x30xf64>
              %40 = arith.addf %39, %38 : f64
              memref.store %40, %arg4[%36, %4] : memref<?x30xf64>
              %41 = memref.load %arg6[%36, %4] : memref<?x30xf64>
              %42 = memref.load %arg5[%2, %36] : memref<?x20xf64>
              %43 = arith.mulf %41, %42 : f64
              %44 = memref.load %alloca[] : memref<f64>
              %45 = arith.addf %44, %43 : f64
              memref.store %45, %alloca[] : memref<f64>
              %c1_17 = arith.constant 1 : index
              %46 = arith.addi %36, %c1_17 : index
              %47 = memref.load %arg5[%2, %46] : memref<?x20xf64>
              %48 = arith.mulf %8, %47 : f64
              %49 = memref.load %arg4[%46, %4] : memref<?x30xf64>
              %50 = arith.addf %49, %48 : f64
              memref.store %50, %arg4[%46, %4] : memref<?x30xf64>
              %51 = memref.load %arg6[%46, %4] : memref<?x30xf64>
              %52 = memref.load %arg5[%2, %46] : memref<?x20xf64>
              %53 = arith.mulf %51, %52 : f64
              %54 = memref.load %alloca[] : memref<f64>
              %55 = arith.addf %54, %53 : f64
              memref.store %55, %alloca[] : memref<f64>
              %c2 = arith.constant 2 : index
              %56 = arith.addi %36, %c2 : index
              %57 = memref.load %arg5[%2, %56] : memref<?x20xf64>
              %58 = arith.mulf %10, %57 : f64
              %59 = memref.load %arg4[%56, %4] : memref<?x30xf64>
              %60 = arith.addf %59, %58 : f64
              memref.store %60, %arg4[%56, %4] : memref<?x30xf64>
              %61 = memref.load %arg6[%56, %4] : memref<?x30xf64>
              %62 = memref.load %arg5[%2, %56] : memref<?x20xf64>
              %63 = arith.mulf %61, %62 : f64
              %64 = memref.load %alloca[] : memref<f64>
              %65 = arith.addf %64, %63 : f64
              memref.store %65, %alloca[] : memref<f64>
              %c3 = arith.constant 3 : index
              %66 = arith.addi %36, %c3 : index
              %67 = memref.load %arg5[%2, %66] : memref<?x20xf64>
              %68 = arith.mulf %12, %67 : f64
              %69 = memref.load %arg4[%66, %4] : memref<?x30xf64>
              %70 = arith.addf %69, %68 : f64
              memref.store %70, %arg4[%66, %4] : memref<?x30xf64>
              %71 = memref.load %arg6[%66, %4] : memref<?x30xf64>
              %72 = memref.load %arg5[%2, %66] : memref<?x20xf64>
              %73 = arith.mulf %71, %72 : f64
              %74 = memref.load %alloca[] : memref<f64>
              %75 = arith.addf %74, %73 : f64
              memref.store %75, %alloca[] : memref<f64>
            }
            %21 = memref.load %arg6[%2, %4] : memref<?x30xf64>
            %22 = arith.mulf %arg2, %21 : f64
            %c0_12 = arith.constant 0 : index
            %c4_13 = arith.constant 4 : index
            %23 = arith.remsi %2, %c4_13 : index
            %c0_14 = arith.constant 0 : index
            %24 = arith.cmpi slt, %23, %c0_14 : index
            %25 = arith.addi %23, %c4_13 : index
            %26 = arith.select %24, %25, %23 : index
            %c1_15 = arith.constant 1 : index
            scf.for %arg11 = %c0_12 to %26 step %c1_15 {
              %c4_16 = arith.constant 4 : index
              %c0_17 = arith.constant 0 : index
              %c-1_18 = arith.constant -1 : index
              %36 = arith.cmpi slt, %2, %c0_17 : index
              %37 = arith.subi %c-1_18, %2 : index
              %38 = arith.select %36, %37, %2 : index
              %39 = arith.divsi %38, %c4_16 : index
              %40 = arith.subi %c-1_18, %39 : index
              %41 = arith.select %36, %40, %39 : index
              %c4_19 = arith.constant 4 : index
              %42 = arith.muli %41, %c4_19 : index
              %43 = arith.addi %arg11, %42 : index
              %44 = memref.load %arg5[%2, %43] : memref<?x20xf64>
              %45 = arith.mulf %22, %44 : f64
              %46 = memref.load %arg4[%43, %4] : memref<?x30xf64>
              %47 = arith.addf %46, %45 : f64
              memref.store %47, %arg4[%43, %4] : memref<?x30xf64>
              %48 = memref.load %arg6[%43, %4] : memref<?x30xf64>
              %49 = memref.load %arg5[%2, %43] : memref<?x20xf64>
              %50 = arith.mulf %48, %49 : f64
              %51 = memref.load %alloca[] : memref<f64>
              %52 = arith.addf %51, %50 : f64
              memref.store %52, %alloca[] : memref<f64>
            }
            %27 = memref.load %arg4[%2, %4] : memref<?x30xf64>
            %28 = arith.mulf %arg3, %27 : f64
            %29 = memref.load %arg6[%2, %4] : memref<?x30xf64>
            %30 = arith.mulf %arg2, %29 : f64
            %31 = arith.mulf %30, %3 : f64
            %32 = arith.addf %28, %31 : f64
            %33 = memref.load %alloca[] : memref<f64>
            %34 = arith.mulf %arg2, %33 : f64
            %35 = arith.addf %32, %34 : f64
            memref.store %35, %arg4[%2, %4] : memref<?x30xf64>
          }
        }
      }
      scf.reduce 
    }
    return
  }
}

