module {
  func.func @kernel_symm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>, %arg6: memref<?x30xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
    memref.store %cst, %alloca[] : memref<f64>
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %c20 step %c1 {
      %c0_0 = arith.constant 0 : index
      %c30 = arith.constant 30 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg8 = %c0_0 to %c30 step %c1_1 {
        %c0_2 = arith.constant 0 : index
        %c1_3 = arith.constant 1 : index
        %c1_4 = arith.constant 1 : index
        scf.for %arg9 = %c0_2 to %c1_3 step %c1_4 {
          %0 = arith.addi %arg7, %arg9 : index
          %1 = memref.load %arg5[%0, %0] : memref<?x20xf64>
          %c0_5 = arith.constant 0 : index
          %c1_6 = arith.constant 1 : index
          %c1_7 = arith.constant 1 : index
          scf.for %arg10 = %c0_5 to %c1_6 step %c1_7 {
            %2 = arith.addi %arg8, %arg10 : index
            memref.store %cst, %alloca[] : memref<f64>
            %3 = memref.load %arg6[%0, %2] : memref<?x30xf64>
            %4 = arith.mulf %arg2, %3 : f64
            %5 = memref.load %arg6[%0, %2] : memref<?x30xf64>
            %6 = arith.mulf %arg2, %5 : f64
            %7 = memref.load %arg6[%0, %2] : memref<?x30xf64>
            %8 = arith.mulf %arg2, %7 : f64
            %9 = memref.load %arg6[%0, %2] : memref<?x30xf64>
            %10 = arith.mulf %arg2, %9 : f64
            %c0_8 = arith.constant 0 : index
            %11 = arith.addi %arg7, %arg9 : index
            %c4 = arith.constant 4 : index
            %c0_9 = arith.constant 0 : index
            %c-1 = arith.constant -1 : index
            %12 = arith.cmpi slt, %11, %c0_9 : index
            %13 = arith.subi %c-1, %11 : index
            %14 = arith.select %12, %13, %11 : index
            %15 = arith.divsi %14, %c4 : index
            %16 = arith.subi %c-1, %15 : index
            %17 = arith.select %12, %16, %15 : index
            %c1_10 = arith.constant 1 : index
            scf.for %arg11 = %c0_8 to %17 step %c1_10 {
              %c4_15 = arith.constant 4 : index
              %34 = arith.muli %arg11, %c4_15 : index
              %35 = memref.load %arg5[%0, %34] : memref<?x20xf64>
              %36 = arith.mulf %4, %35 : f64
              %37 = memref.load %arg4[%34, %2] : memref<?x30xf64>
              %38 = arith.addf %37, %36 : f64
              memref.store %38, %arg4[%34, %2] : memref<?x30xf64>
              %39 = memref.load %arg6[%34, %2] : memref<?x30xf64>
              %40 = memref.load %arg5[%0, %34] : memref<?x20xf64>
              %41 = arith.mulf %39, %40 : f64
              %42 = memref.load %alloca[] : memref<f64>
              %43 = arith.addf %42, %41 : f64
              memref.store %43, %alloca[] : memref<f64>
              %c1_16 = arith.constant 1 : index
              %44 = arith.addi %34, %c1_16 : index
              %45 = memref.load %arg5[%0, %44] : memref<?x20xf64>
              %46 = arith.mulf %6, %45 : f64
              %47 = memref.load %arg4[%44, %2] : memref<?x30xf64>
              %48 = arith.addf %47, %46 : f64
              memref.store %48, %arg4[%44, %2] : memref<?x30xf64>
              %49 = memref.load %arg6[%44, %2] : memref<?x30xf64>
              %50 = memref.load %arg5[%0, %44] : memref<?x20xf64>
              %51 = arith.mulf %49, %50 : f64
              %52 = memref.load %alloca[] : memref<f64>
              %53 = arith.addf %52, %51 : f64
              memref.store %53, %alloca[] : memref<f64>
              %c2 = arith.constant 2 : index
              %54 = arith.addi %34, %c2 : index
              %55 = memref.load %arg5[%0, %54] : memref<?x20xf64>
              %56 = arith.mulf %8, %55 : f64
              %57 = memref.load %arg4[%54, %2] : memref<?x30xf64>
              %58 = arith.addf %57, %56 : f64
              memref.store %58, %arg4[%54, %2] : memref<?x30xf64>
              %59 = memref.load %arg6[%54, %2] : memref<?x30xf64>
              %60 = memref.load %arg5[%0, %54] : memref<?x20xf64>
              %61 = arith.mulf %59, %60 : f64
              %62 = memref.load %alloca[] : memref<f64>
              %63 = arith.addf %62, %61 : f64
              memref.store %63, %alloca[] : memref<f64>
              %c3 = arith.constant 3 : index
              %64 = arith.addi %34, %c3 : index
              %65 = memref.load %arg5[%0, %64] : memref<?x20xf64>
              %66 = arith.mulf %10, %65 : f64
              %67 = memref.load %arg4[%64, %2] : memref<?x30xf64>
              %68 = arith.addf %67, %66 : f64
              memref.store %68, %arg4[%64, %2] : memref<?x30xf64>
              %69 = memref.load %arg6[%64, %2] : memref<?x30xf64>
              %70 = memref.load %arg5[%0, %64] : memref<?x20xf64>
              %71 = arith.mulf %69, %70 : f64
              %72 = memref.load %alloca[] : memref<f64>
              %73 = arith.addf %72, %71 : f64
              memref.store %73, %alloca[] : memref<f64>
            }
            %18 = memref.load %arg6[%0, %2] : memref<?x30xf64>
            %19 = arith.mulf %arg2, %18 : f64
            %c0_11 = arith.constant 0 : index
            %20 = arith.addi %arg7, %arg9 : index
            %c4_12 = arith.constant 4 : index
            %21 = arith.remsi %20, %c4_12 : index
            %c0_13 = arith.constant 0 : index
            %22 = arith.cmpi slt, %21, %c0_13 : index
            %23 = arith.addi %21, %c4_12 : index
            %24 = arith.select %22, %23, %21 : index
            %c1_14 = arith.constant 1 : index
            scf.for %arg11 = %c0_11 to %24 step %c1_14 {
              %c4_15 = arith.constant 4 : index
              %c0_16 = arith.constant 0 : index
              %c-1_17 = arith.constant -1 : index
              %34 = arith.cmpi slt, %0, %c0_16 : index
              %35 = arith.subi %c-1_17, %0 : index
              %36 = arith.select %34, %35, %0 : index
              %37 = arith.divsi %36, %c4_15 : index
              %38 = arith.subi %c-1_17, %37 : index
              %39 = arith.select %34, %38, %37 : index
              %c4_18 = arith.constant 4 : index
              %40 = arith.muli %39, %c4_18 : index
              %41 = arith.addi %arg11, %40 : index
              %42 = memref.load %arg5[%0, %41] : memref<?x20xf64>
              %43 = arith.mulf %19, %42 : f64
              %44 = memref.load %arg4[%41, %2] : memref<?x30xf64>
              %45 = arith.addf %44, %43 : f64
              memref.store %45, %arg4[%41, %2] : memref<?x30xf64>
              %46 = memref.load %arg6[%41, %2] : memref<?x30xf64>
              %47 = memref.load %arg5[%0, %41] : memref<?x20xf64>
              %48 = arith.mulf %46, %47 : f64
              %49 = memref.load %alloca[] : memref<f64>
              %50 = arith.addf %49, %48 : f64
              memref.store %50, %alloca[] : memref<f64>
            }
            %25 = memref.load %arg4[%0, %2] : memref<?x30xf64>
            %26 = arith.mulf %arg3, %25 : f64
            %27 = memref.load %arg6[%0, %2] : memref<?x30xf64>
            %28 = arith.mulf %arg2, %27 : f64
            %29 = arith.mulf %28, %1 : f64
            %30 = arith.addf %26, %29 : f64
            %31 = memref.load %alloca[] : memref<f64>
            %32 = arith.mulf %arg2, %31 : f64
            %33 = arith.addf %30, %32 : f64
            memref.store %33, %arg4[%0, %2] : memref<?x30xf64>
          }
        }
      }
    }
    return
  }
}

