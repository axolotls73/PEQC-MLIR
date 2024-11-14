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
    %cst_0 = arith.constant 1.000000e+00 : f32
    %cst_1 = arith.constant 2.000000e+00 : f32
    %cst_2 = arith.constant -2.000000e+00 : f32
    %alloca = memref.alloca() : memref<f32>
    %alloca_3 = memref.alloca() : memref<f32>
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
    %alloca_25 = memref.alloca() : memref<1xf32>
    %0 = arith.mulf %arg2, %cst_2 : f32
    %1 = math.exp %0 : f32
    %2 = arith.negf %1 : f32
    memref.store %2, %alloca_5[%c0] : memref<1xf32>
    %3 = arith.negf %arg2 : f32
    %4 = math.powf %cst_1, %3 : f32
    memref.store %4, %alloca_14[%c0] : memref<1xf32>
    %5 = arith.negf %arg2 : f32
    %6 = math.exp %5 : f32
    %7 = arith.mulf %arg2, %6 : f32
    %8 = arith.subf %cst_0, %6 : f32
    %9 = arith.mulf %8, %8 : f32
    %10 = arith.mulf %7, %cst_1 : f32
    %11 = arith.addf %10, %cst_0 : f32
    %12 = arith.mulf %arg2, %cst_1 : f32
    %13 = math.exp %12 : f32
    %14 = arith.subf %11, %13 : f32
    %15 = arith.divf %9, %14 : f32
    memref.store %15, %alloca_8[%c0] : memref<1xf32>
    %16 = memref.load %alloca_8[%c0] : memref<1xf32>
    memref.store %16, %alloca_25[%c0] : memref<1xf32>
    %17 = arith.negf %arg2 : f32
    %18 = math.exp %17 : f32
    %19 = arith.mulf %16, %18 : f32
    memref.store %19, %alloca_6[%c0] : memref<1xf32>
    %20 = arith.subf %arg2, %cst_0 : f32
    %21 = arith.mulf %19, %20 : f32
    memref.store %21, %alloca_15[%c0] : memref<1xf32>
    %22 = memref.load %alloca_25[%c0] : memref<1xf32>
    %23 = arith.negf %22 : f32
    %24 = arith.mulf %arg2, %cst_2 : f32
    %25 = math.exp %24 : f32
    %26 = arith.mulf %23, %25 : f32
    memref.store %26, %alloca_10[%c0] : memref<1xf32>
    %27 = memref.load %alloca_6[%c0] : memref<1xf32>
    %28 = arith.addf %arg2, %cst_0 : f32
    %29 = arith.mulf %27, %28 : f32
    memref.store %29, %alloca_11[%c0] : memref<1xf32>
    %30 = llvm.mlir.undef : f32
    memref.store %30, %alloca_4[] : memref<f32>
    %31 = llvm.mlir.undef : f32
    memref.store %31, %alloca_13[] : memref<f32>
    %32 = llvm.mlir.undef : f32
    memref.store %32, %alloca_23[] : memref<f32>
    %33 = llvm.mlir.undef : f32
    memref.store %33, %alloca_24[] : memref<f32>
    %34 = memref.load %alloca_8[%c0] : memref<1xf32>
    %35 = memref.load %alloca_15[%c0] : memref<1xf32>
    %36 = memref.load %alloca_14[%c0] : memref<1xf32>
    %37 = memref.load %alloca_5[%c0] : memref<1xf32>
    scf.for %arg7 = %c0 to %c64 step %c1 {
      memref.store %cst, %alloca_4[] : memref<f32>
      memref.store %cst, %alloca_24[] : memref<f32>
      memref.store %cst, %alloca_23[] : memref<f32>
      scf.for %arg8 = %c0 to %c64 step %c1 {
        %56 = memref.load %arg3[%arg7, %arg8] : memref<?x64xf32>
        %57 = arith.mulf %34, %56 : f32
        %58 = memref.load %alloca_4[] : memref<f32>
        %59 = arith.mulf %35, %58 : f32
        %60 = arith.addf %57, %59 : f32
        %61 = memref.load %alloca_23[] : memref<f32>
        memref.store %61, %alloca_7[%c0] : memref<1xf32>
        %62 = arith.mulf %36, %61 : f32
        %63 = arith.addf %60, %62 : f32
        %64 = memref.load %alloca_24[] : memref<f32>
        %65 = arith.mulf %37, %64 : f32
        %66 = arith.addf %63, %65 : f32
        memref.store %66, %arg5[%arg7, %arg8] : memref<?x64xf32>
        %67 = memref.load %arg5[%arg7, %arg8] : memref<?x64xf32>
        memref.store %67, %alloca_23[] : memref<f32>
        %68 = memref.load %alloca_7[%c0] : memref<1xf32>
        memref.store %68, %alloca_24[] : memref<f32>
        %69 = memref.load %arg3[%arg7, %arg8] : memref<?x64xf32>
        memref.store %69, %alloca_4[] : memref<f32>
      }
    }
    %38 = llvm.mlir.undef : f32
    memref.store %38, %alloca_3[] : memref<f32>
    %39 = llvm.mlir.undef : f32
    memref.store %39, %alloca_20[] : memref<f32>
    %40 = llvm.mlir.undef : f32
    memref.store %40, %alloca_9[] : memref<f32>
    %41 = llvm.mlir.undef : f32
    memref.store %41, %alloca_22[] : memref<f32>
    %42 = llvm.mlir.undef : f32
    memref.store %42, %alloca_21[] : memref<f32>
    %43 = llvm.mlir.undef : f32
    memref.store %43, %alloca[] : memref<f32>
    %44 = memref.load %alloca_11[%c0] : memref<1xf32>
    %45 = memref.load %alloca_10[%c0] : memref<1xf32>
    %46 = memref.load %alloca_14[%c0] : memref<1xf32>
    %47 = memref.load %alloca_5[%c0] : memref<1xf32>
    scf.for %arg7 = %c0 to %c64 step %c1 {
      memref.store %cst, %alloca_20[] : memref<f32>
      memref.store %cst, %alloca_3[] : memref<f32>
      memref.store %cst, %alloca[] : memref<f32>
      memref.store %cst, %alloca_21[] : memref<f32>
      scf.for %arg8 = %c0 to %c64 step %c1 {
        %56 = memref.load %alloca_3[] : memref<f32>
        memref.store %56, %alloca_12[%c0] : memref<1xf32>
        %57 = arith.mulf %44, %56 : f32
        %58 = memref.load %alloca_20[] : memref<f32>
        %59 = arith.mulf %45, %58 : f32
        %60 = arith.addf %57, %59 : f32
        %61 = memref.load %alloca_21[] : memref<f32>
        memref.store %61, %alloca_17[%c0] : memref<1xf32>
        %62 = arith.mulf %46, %61 : f32
        %63 = arith.addf %60, %62 : f32
        %64 = memref.load %alloca[] : memref<f32>
        %65 = arith.mulf %47, %64 : f32
        %66 = arith.addf %63, %65 : f32
        %67 = arith.muli %arg8, %c-1 : index
        %68 = arith.addi %67, %c63 : index
        memref.store %66, %arg6[%arg7, %68] : memref<?x64xf32>
        %69 = arith.muli %arg8, %c-1 : index
        %70 = arith.addi %69, %c63 : index
        %71 = memref.load %arg6[%arg7, %70] : memref<?x64xf32>
        memref.store %71, %alloca_21[] : memref<f32>
        %72 = memref.load %alloca_17[%c0] : memref<1xf32>
        memref.store %72, %alloca[] : memref<f32>
        %73 = arith.muli %arg8, %c-1 : index
        %74 = arith.addi %73, %c63 : index
        %75 = memref.load %arg3[%arg7, %74] : memref<?x64xf32>
        memref.store %75, %alloca_3[] : memref<f32>
        %76 = memref.load %alloca_12[%c0] : memref<1xf32>
        memref.store %76, %alloca_20[] : memref<f32>
      }
    }
    scf.for %arg7 = %c0 to %c2 step %c1 {
      scf.for %arg8 = %c0 to %c2 step %c1 {
        %56 = arith.muli %arg7, %c32 : index
        %57 = arith.muli %arg7, %c32 : index
        %58 = arith.addi %57, %c32 : index
        scf.for %arg9 = %56 to %58 step %c1 {
          %59 = arith.muli %arg8, %c32 : index
          %60 = arith.muli %arg8, %c32 : index
          %61 = arith.addi %60, %c32 : index
          scf.for %arg10 = %59 to %61 step %c1 {
            %62 = memref.load %arg5[%arg9, %arg10] : memref<?x64xf32>
            %63 = memref.load %arg6[%arg9, %arg10] : memref<?x64xf32>
            %64 = arith.addf %62, %63 : f32
            memref.store %64, %arg4[%arg9, %arg10] : memref<?x64xf32>
          }
        }
      }
    }
    %48 = memref.load %alloca_8[%c0] : memref<1xf32>
    %49 = memref.load %alloca_15[%c0] : memref<1xf32>
    %50 = memref.load %alloca_14[%c0] : memref<1xf32>
    %51 = memref.load %alloca_5[%c0] : memref<1xf32>
    scf.for %arg7 = %c0 to %c64 step %c1 {
      memref.store %cst, %alloca_24[] : memref<f32>
      memref.store %cst, %alloca_23[] : memref<f32>
      memref.store %cst, %alloca_13[] : memref<f32>
      scf.for %arg8 = %c0 to %c64 step %c1 {
        %56 = memref.load %arg4[%arg8, %arg7] : memref<?x64xf32>
        %57 = arith.mulf %48, %56 : f32
        %58 = memref.load %alloca_13[] : memref<f32>
        %59 = arith.mulf %49, %58 : f32
        %60 = arith.addf %57, %59 : f32
        %61 = memref.load %alloca_23[] : memref<f32>
        memref.store %61, %alloca_18[%c0] : memref<1xf32>
        %62 = arith.mulf %50, %61 : f32
        %63 = arith.addf %60, %62 : f32
        %64 = memref.load %alloca_24[] : memref<f32>
        %65 = arith.mulf %51, %64 : f32
        %66 = arith.addf %63, %65 : f32
        memref.store %66, %arg5[%arg8, %arg7] : memref<?x64xf32>
        %67 = memref.load %arg5[%arg8, %arg7] : memref<?x64xf32>
        memref.store %67, %alloca_23[] : memref<f32>
        %68 = memref.load %alloca_18[%c0] : memref<1xf32>
        memref.store %68, %alloca_24[] : memref<f32>
        %69 = memref.load %arg4[%arg8, %arg7] : memref<?x64xf32>
        memref.store %69, %alloca_13[] : memref<f32>
      }
    }
    %52 = memref.load %alloca_11[%c0] : memref<1xf32>
    %53 = memref.load %alloca_10[%c0] : memref<1xf32>
    %54 = memref.load %alloca_14[%c0] : memref<1xf32>
    %55 = memref.load %alloca_5[%c0] : memref<1xf32>
    scf.for %arg7 = %c0 to %c64 step %c1 {
      memref.store %cst, %alloca[] : memref<f32>
      memref.store %cst, %alloca_21[] : memref<f32>
      memref.store %cst, %alloca_22[] : memref<f32>
      memref.store %cst, %alloca_9[] : memref<f32>
      scf.for %arg8 = %c0 to %c64 step %c1 {
        %56 = memref.load %alloca_9[] : memref<f32>
        memref.store %56, %alloca_16[%c0] : memref<1xf32>
        %57 = arith.mulf %52, %56 : f32
        %58 = memref.load %alloca_22[] : memref<f32>
        %59 = arith.mulf %53, %58 : f32
        %60 = arith.addf %57, %59 : f32
        %61 = memref.load %alloca_21[] : memref<f32>
        memref.store %61, %alloca_19[%c0] : memref<1xf32>
        %62 = arith.mulf %54, %61 : f32
        %63 = arith.addf %60, %62 : f32
        %64 = memref.load %alloca[] : memref<f32>
        %65 = arith.mulf %55, %64 : f32
        %66 = arith.addf %63, %65 : f32
        %67 = arith.muli %arg8, %c-1 : index
        %68 = arith.addi %67, %c63 : index
        memref.store %66, %arg6[%68, %arg7] : memref<?x64xf32>
        %69 = arith.muli %arg8, %c-1 : index
        %70 = arith.addi %69, %c63 : index
        %71 = memref.load %arg6[%70, %arg7] : memref<?x64xf32>
        memref.store %71, %alloca_21[] : memref<f32>
        %72 = memref.load %alloca_19[%c0] : memref<1xf32>
        memref.store %72, %alloca[] : memref<f32>
        %73 = arith.muli %arg8, %c-1 : index
        %74 = arith.addi %73, %c63 : index
        %75 = memref.load %arg4[%74, %arg7] : memref<?x64xf32>
        memref.store %75, %alloca_9[] : memref<f32>
        %76 = memref.load %alloca_16[%c0] : memref<1xf32>
        memref.store %76, %alloca_22[] : memref<f32>
      }
    }
    scf.for %arg7 = %c0 to %c2 step %c1 {
      scf.for %arg8 = %c0 to %c2 step %c1 {
        %56 = arith.muli %arg7, %c32 : index
        %57 = arith.muli %arg7, %c32 : index
        %58 = arith.addi %57, %c32 : index
        scf.for %arg9 = %56 to %58 step %c1 {
          %59 = arith.muli %arg8, %c32 : index
          %60 = arith.muli %arg8, %c32 : index
          %61 = arith.addi %60, %c32 : index
          scf.for %arg10 = %59 to %61 step %c1 {
            %62 = memref.load %arg5[%arg9, %arg10] : memref<?x64xf32>
            %63 = memref.load %arg6[%arg9, %arg10] : memref<?x64xf32>
            %64 = arith.addf %62, %63 : f32
            memref.store %64, %arg4[%arg9, %arg10] : memref<?x64xf32>
          }
        }
      }
    }
    return
  }
}

