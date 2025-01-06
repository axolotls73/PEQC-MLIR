module {
  func.func @kernel_deriche(%arg0: i32, %arg1: i32, %arg2: f32, %arg3: memref<?x64xf32>, %arg4: memref<?x64xf32>, %arg5: memref<?x64xf32>, %arg6: memref<?x64xf32>) {
    %c32 = arith.constant 32 : index
    %c2 = arith.constant 2 : index
    %c63 = arith.constant 63 : index
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %c64 = arith.constant 64 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f32
    %0 = llvm.mlir.undef : f32
    %cst_0 = arith.constant 1.000000e+00 : f32
    %cst_1 = arith.constant 2.000000e+00 : f32
    %cst_2 = arith.constant -2.000000e+00 : f32
    %alloca = memref.alloca() : memref<f32>
    %alloca_3 = memref.alloca() : memref<1xf32>
    %alloca_4 = memref.alloca() : memref<f32>
    %alloca_5 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_6 = memref.alloca() : memref<1xf32>
    %alloca_7 = memref.alloca() : memref<1xf32>
    %alloca_8 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_9 = memref.alloca() : memref<f32>
    %alloca_10 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_11 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_12 = memref.alloca() : memref<1xf32>
    %alloca_13 = memref.alloca() : memref<f32>
    %alloca_14 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_15 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_16 = memref.alloca() : memref<1xf32>
    %alloca_17 = memref.alloca() : memref<1xf32>
    %alloca_18 = memref.alloca() : memref<1xf32>
    %alloca_19 = memref.alloca() : memref<1xf32>
    %alloca_20 = memref.alloca() : memref<f32>
    %alloca_21 = memref.alloca() : memref<f32>
    %alloca_22 = memref.alloca() : memref<f32>
    %alloca_23 = memref.alloca() : memref<f32>
    %alloca_24 = memref.alloca() : memref<f32>
    %alloca_25 = memref.alloca() : memref<f32>
    %1 = arith.mulf %arg2, %cst_2 : f32
    %2 = math.exp %1 : f32
    %3 = arith.negf %2 : f32
    memref.store %3, %alloca_5[%c0] : memref<1xf32>
    %4 = arith.negf %arg2 : f32
    %5 = math.powf %cst_1, %4 : f32
    memref.store %5, %alloca_14[%c0] : memref<1xf32>
    %6 = arith.negf %arg2 : f32
    %7 = math.exp %6 : f32
    %8 = arith.mulf %arg2, %7 : f32
    %9 = arith.subf %cst_0, %7 : f32
    %10 = arith.mulf %9, %9 : f32
    %11 = arith.mulf %8, %cst_1 : f32
    %12 = arith.addf %11, %cst_0 : f32
    %13 = arith.mulf %arg2, %cst_1 : f32
    %14 = math.exp %13 : f32
    %15 = arith.subf %12, %14 : f32
    %16 = arith.divf %10, %15 : f32
    memref.store %16, %alloca_10[%c0] : memref<1xf32>
    %17 = memref.load %alloca_10[%c0] : memref<1xf32>
    memref.store %17, %alloca_3[%c0] : memref<1xf32>
    %18 = arith.negf %arg2 : f32
    %19 = math.exp %18 : f32
    %20 = arith.mulf %17, %19 : f32
    memref.store %20, %alloca_7[%c0] : memref<1xf32>
    %21 = arith.subf %arg2, %cst_0 : f32
    %22 = arith.mulf %20, %21 : f32
    memref.store %22, %alloca_15[%c0] : memref<1xf32>
    %23 = memref.load %alloca_3[%c0] : memref<1xf32>
    %24 = arith.negf %23 : f32
    %25 = arith.mulf %arg2, %cst_2 : f32
    %26 = math.exp %25 : f32
    %27 = arith.mulf %24, %26 : f32
    memref.store %27, %alloca_8[%c0] : memref<1xf32>
    %28 = memref.load %alloca_7[%c0] : memref<1xf32>
    %29 = arith.addf %arg2, %cst_0 : f32
    %30 = arith.mulf %28, %29 : f32
    memref.store %30, %alloca_11[%c0] : memref<1xf32>
    memref.store %0, %alloca_4[] : memref<f32>
    memref.store %0, %alloca_13[] : memref<f32>
    memref.store %0, %alloca_25[] : memref<f32>
    memref.store %0, %alloca_23[] : memref<f32>
    scf.for %arg7 = %c0 to %c64 step %c1 {
      memref.store %cst, %alloca_4[] : memref<f32>
      memref.store %cst, %alloca_23[] : memref<f32>
      memref.store %cst, %alloca_25[] : memref<f32>
      scf.for %arg8 = %c0 to %c64 step %c1 {
        %31 = memref.load %alloca_10[%c0] : memref<1xf32>
        %32 = memref.load %arg3[%arg7, %arg8] : memref<?x64xf32>
        %33 = arith.mulf %31, %32 : f32
        %34 = memref.load %alloca_15[%c0] : memref<1xf32>
        %35 = memref.load %alloca_4[] : memref<f32>
        %36 = arith.mulf %34, %35 : f32
        %37 = arith.addf %33, %36 : f32
        %38 = memref.load %alloca_14[%c0] : memref<1xf32>
        %39 = memref.load %alloca_25[] : memref<f32>
        memref.store %39, %alloca_6[%c0] : memref<1xf32>
        %40 = arith.mulf %38, %39 : f32
        %41 = arith.addf %37, %40 : f32
        %42 = memref.load %alloca_5[%c0] : memref<1xf32>
        %43 = memref.load %alloca_23[] : memref<f32>
        %44 = arith.mulf %42, %43 : f32
        %45 = arith.addf %41, %44 : f32
        memref.store %45, %arg5[%arg7, %arg8] : memref<?x64xf32>
        %46 = memref.load %arg5[%arg7, %arg8] : memref<?x64xf32>
        memref.store %46, %alloca_25[] : memref<f32>
        %47 = memref.load %alloca_6[%c0] : memref<1xf32>
        memref.store %47, %alloca_23[] : memref<f32>
        %48 = memref.load %arg3[%arg7, %arg8] : memref<?x64xf32>
        memref.store %48, %alloca_4[] : memref<f32>
      }
    }
    memref.store %0, %alloca[] : memref<f32>
    memref.store %0, %alloca_20[] : memref<f32>
    memref.store %0, %alloca_9[] : memref<f32>
    memref.store %0, %alloca_21[] : memref<f32>
    memref.store %0, %alloca_22[] : memref<f32>
    memref.store %0, %alloca_24[] : memref<f32>
    scf.for %arg7 = %c0 to %c64 step %c1 {
      memref.store %cst, %alloca_20[] : memref<f32>
      memref.store %cst, %alloca[] : memref<f32>
      memref.store %cst, %alloca_24[] : memref<f32>
      memref.store %cst, %alloca_22[] : memref<f32>
      scf.for %arg8 = %c0 to %c64 step %c1 {
        %31 = memref.load %alloca_11[%c0] : memref<1xf32>
        %32 = memref.load %alloca[] : memref<f32>
        memref.store %32, %alloca_12[%c0] : memref<1xf32>
        %33 = arith.mulf %31, %32 : f32
        %34 = memref.load %alloca_8[%c0] : memref<1xf32>
        %35 = memref.load %alloca_20[] : memref<f32>
        %36 = arith.mulf %34, %35 : f32
        %37 = arith.addf %33, %36 : f32
        %38 = memref.load %alloca_14[%c0] : memref<1xf32>
        %39 = memref.load %alloca_22[] : memref<f32>
        memref.store %39, %alloca_17[%c0] : memref<1xf32>
        %40 = arith.mulf %38, %39 : f32
        %41 = arith.addf %37, %40 : f32
        %42 = memref.load %alloca_5[%c0] : memref<1xf32>
        %43 = memref.load %alloca_24[] : memref<f32>
        %44 = arith.mulf %42, %43 : f32
        %45 = arith.addf %41, %44 : f32
        %46 = arith.muli %arg8, %c-1 : index
        %47 = arith.addi %46, %c63 : index
        memref.store %45, %arg6[%arg7, %47] : memref<?x64xf32>
        %48 = arith.muli %arg8, %c-1 : index
        %49 = arith.addi %48, %c63 : index
        %50 = memref.load %arg6[%arg7, %49] : memref<?x64xf32>
        memref.store %50, %alloca_22[] : memref<f32>
        %51 = memref.load %alloca_17[%c0] : memref<1xf32>
        memref.store %51, %alloca_24[] : memref<f32>
        %52 = arith.muli %arg8, %c-1 : index
        %53 = arith.addi %52, %c63 : index
        %54 = memref.load %arg3[%arg7, %53] : memref<?x64xf32>
        memref.store %54, %alloca[] : memref<f32>
        %55 = memref.load %alloca_12[%c0] : memref<1xf32>
        memref.store %55, %alloca_20[] : memref<f32>
      }
    }
    scf.for %arg7 = %c0 to %c2 step %c1 {
      scf.for %arg8 = %c0 to %c2 step %c1 {
        scf.for %arg9 = %c0 to %c32 step %c1 {
          %31 = arith.muli %arg7, %c32 : index
          %32 = arith.addi %31, %arg9 : index
          scf.for %arg10 = %c0 to %c32 step %c1 {
            %33 = arith.muli %arg8, %c32 : index
            %34 = arith.addi %33, %arg10 : index
            %35 = memref.load %arg5[%32, %34] : memref<?x64xf32>
            %36 = memref.load %arg6[%32, %34] : memref<?x64xf32>
            %37 = arith.addf %35, %36 : f32
            memref.store %37, %arg4[%32, %34] : memref<?x64xf32>
          }
        }
      }
    }
    scf.for %arg7 = %c0 to %c64 step %c1 {
      memref.store %cst, %alloca_23[] : memref<f32>
      memref.store %cst, %alloca_25[] : memref<f32>
      memref.store %cst, %alloca_13[] : memref<f32>
      scf.for %arg8 = %c0 to %c64 step %c1 {
        %31 = memref.load %alloca_10[%c0] : memref<1xf32>
        %32 = memref.load %arg4[%arg8, %arg7] : memref<?x64xf32>
        %33 = arith.mulf %31, %32 : f32
        %34 = memref.load %alloca_15[%c0] : memref<1xf32>
        %35 = memref.load %alloca_13[] : memref<f32>
        %36 = arith.mulf %34, %35 : f32
        %37 = arith.addf %33, %36 : f32
        %38 = memref.load %alloca_14[%c0] : memref<1xf32>
        %39 = memref.load %alloca_25[] : memref<f32>
        memref.store %39, %alloca_18[%c0] : memref<1xf32>
        %40 = arith.mulf %38, %39 : f32
        %41 = arith.addf %37, %40 : f32
        %42 = memref.load %alloca_5[%c0] : memref<1xf32>
        %43 = memref.load %alloca_23[] : memref<f32>
        %44 = arith.mulf %42, %43 : f32
        %45 = arith.addf %41, %44 : f32
        memref.store %45, %arg5[%arg8, %arg7] : memref<?x64xf32>
        %46 = memref.load %arg5[%arg8, %arg7] : memref<?x64xf32>
        memref.store %46, %alloca_25[] : memref<f32>
        %47 = memref.load %alloca_18[%c0] : memref<1xf32>
        memref.store %47, %alloca_23[] : memref<f32>
        %48 = memref.load %arg4[%arg8, %arg7] : memref<?x64xf32>
        memref.store %48, %alloca_13[] : memref<f32>
      }
    }
    scf.for %arg7 = %c0 to %c64 step %c1 {
      memref.store %cst, %alloca_24[] : memref<f32>
      memref.store %cst, %alloca_22[] : memref<f32>
      memref.store %cst, %alloca_21[] : memref<f32>
      memref.store %cst, %alloca_9[] : memref<f32>
      scf.for %arg8 = %c0 to %c64 step %c1 {
        %31 = memref.load %alloca_11[%c0] : memref<1xf32>
        %32 = memref.load %alloca_9[] : memref<f32>
        memref.store %32, %alloca_16[%c0] : memref<1xf32>
        %33 = arith.mulf %31, %32 : f32
        %34 = memref.load %alloca_8[%c0] : memref<1xf32>
        %35 = memref.load %alloca_21[] : memref<f32>
        %36 = arith.mulf %34, %35 : f32
        %37 = arith.addf %33, %36 : f32
        %38 = memref.load %alloca_14[%c0] : memref<1xf32>
        %39 = memref.load %alloca_22[] : memref<f32>
        memref.store %39, %alloca_19[%c0] : memref<1xf32>
        %40 = arith.mulf %38, %39 : f32
        %41 = arith.addf %37, %40 : f32
        %42 = memref.load %alloca_5[%c0] : memref<1xf32>
        %43 = memref.load %alloca_24[] : memref<f32>
        %44 = arith.mulf %42, %43 : f32
        %45 = arith.addf %41, %44 : f32
        %46 = arith.muli %arg8, %c-1 : index
        %47 = arith.addi %46, %c63 : index
        memref.store %45, %arg6[%47, %arg7] : memref<?x64xf32>
        %48 = arith.muli %arg8, %c-1 : index
        %49 = arith.addi %48, %c63 : index
        %50 = memref.load %arg6[%49, %arg7] : memref<?x64xf32>
        memref.store %50, %alloca_22[] : memref<f32>
        %51 = memref.load %alloca_19[%c0] : memref<1xf32>
        memref.store %51, %alloca_24[] : memref<f32>
        %52 = arith.muli %arg8, %c-1 : index
        %53 = arith.addi %52, %c63 : index
        %54 = memref.load %arg4[%53, %arg7] : memref<?x64xf32>
        memref.store %54, %alloca_9[] : memref<f32>
        %55 = memref.load %alloca_16[%c0] : memref<1xf32>
        memref.store %55, %alloca_21[] : memref<f32>
      }
    }
    scf.for %arg7 = %c0 to %c2 step %c1 {
      scf.for %arg8 = %c0 to %c2 step %c1 {
        scf.for %arg9 = %c0 to %c32 step %c1 {
          %31 = arith.muli %arg7, %c32 : index
          %32 = arith.addi %31, %arg9 : index
          scf.for %arg10 = %c0 to %c32 step %c1 {
            %33 = arith.muli %arg8, %c32 : index
            %34 = arith.addi %33, %arg10 : index
            %35 = memref.load %arg5[%32, %34] : memref<?x64xf32>
            %36 = memref.load %arg6[%32, %34] : memref<?x64xf32>
            %37 = arith.addf %35, %36 : f32
            memref.store %37, %arg4[%32, %34] : memref<?x64xf32>
          }
        }
      }
    }
    return
  }
}

