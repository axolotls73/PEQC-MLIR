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
    %alloca_4 = memref.alloca() : memref<1xf32>
    %alloca_5 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_6 = memref.alloca() : memref<1xf32>
    %alloca_7 = memref.alloca() : memref<1xf32>
    %alloca_8 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_9 = memref.alloca() : memref<f32>
    %alloca_10 = memref.alloca() : memref<f32>
    %alloca_11 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_12 = memref.alloca() : memref<1xf32>
    %alloca_13 = memref.alloca() {scop.scratchpad} : memref<1xf32>
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
    memref.store %16, %alloca_4[%c0] : memref<1xf32>
    %17 = arith.negf %arg2 : f32
    %18 = math.exp %17 : f32
    %19 = arith.mulf %16, %18 : f32
    memref.store %19, %alloca_6[%c0] : memref<1xf32>
    %20 = arith.subf %arg2, %cst_0 : f32
    %21 = arith.mulf %19, %20 : f32
    memref.store %21, %alloca_15[%c0] : memref<1xf32>
    %22 = memref.load %alloca_4[%c0] : memref<1xf32>
    %23 = arith.negf %22 : f32
    %24 = arith.mulf %arg2, %cst_2 : f32
    %25 = math.exp %24 : f32
    %26 = arith.mulf %23, %25 : f32
    memref.store %26, %alloca_13[%c0] : memref<1xf32>
    %27 = memref.load %alloca_6[%c0] : memref<1xf32>
    %28 = arith.addf %arg2, %cst_0 : f32
    %29 = arith.mulf %27, %28 : f32
    memref.store %29, %alloca_11[%c0] : memref<1xf32>
    %30 = llvm.mlir.undef : f32
    memref.store %30, %alloca_23[] : memref<f32>
    %31 = llvm.mlir.undef : f32
    memref.store %31, %alloca_10[] : memref<f32>
    %32 = llvm.mlir.undef : f32
    memref.store %32, %alloca_3[] : memref<f32>
    %33 = llvm.mlir.undef : f32
    memref.store %33, %alloca_24[] : memref<f32>
    scf.for %arg7 = %c0 to %c64 step %c1 {
      memref.store %cst, %alloca_23[] : memref<f32>
      memref.store %cst, %alloca_24[] : memref<f32>
      memref.store %cst, %alloca_3[] : memref<f32>
      scf.for %arg8 = %c0 to %c64 step %c1 {
        %44 = memref.load %alloca_8[%c0] : memref<1xf32>
        %45 = memref.load %arg3[%arg7, %arg8] : memref<?x64xf32>
        %46 = arith.mulf %44, %45 : f32
        %47 = memref.load %alloca_15[%c0] : memref<1xf32>
        %48 = memref.load %alloca_23[] : memref<f32>
        %49 = arith.mulf %47, %48 : f32
        %50 = arith.addf %46, %49 : f32
        %51 = memref.load %alloca_14[%c0] : memref<1xf32>
        %52 = memref.load %alloca_3[] : memref<f32>
        memref.store %52, %alloca_7[%c0] : memref<1xf32>
        %53 = arith.mulf %51, %52 : f32
        %54 = arith.addf %50, %53 : f32
        %55 = memref.load %alloca_5[%c0] : memref<1xf32>
        %56 = memref.load %alloca_24[] : memref<f32>
        %57 = arith.mulf %55, %56 : f32
        %58 = arith.addf %54, %57 : f32
        memref.store %58, %arg5[%arg7, %arg8] : memref<?x64xf32>
        %59 = memref.load %arg5[%arg7, %arg8] : memref<?x64xf32>
        memref.store %59, %alloca_3[] : memref<f32>
        %60 = memref.load %alloca_7[%c0] : memref<1xf32>
        memref.store %60, %alloca_24[] : memref<f32>
        %61 = memref.load %arg3[%arg7, %arg8] : memref<?x64xf32>
        memref.store %61, %alloca_23[] : memref<f32>
      }
    }
    %34 = llvm.mlir.undef : f32
    memref.store %34, %alloca[] : memref<f32>
    %35 = llvm.mlir.undef : f32
    memref.store %35, %alloca_20[] : memref<f32>
    %36 = llvm.mlir.undef : f32
    memref.store %36, %alloca_9[] : memref<f32>
    %37 = llvm.mlir.undef : f32
    memref.store %37, %alloca_22[] : memref<f32>
    %38 = llvm.mlir.undef : f32
    memref.store %38, %alloca_21[] : memref<f32>
    %39 = llvm.mlir.undef : f32
    memref.store %39, %alloca_25[] : memref<f32>
    scf.for %arg7 = %c0 to %c64 step %c1 {
      memref.store %cst, %alloca_20[] : memref<f32>
      memref.store %cst, %alloca[] : memref<f32>
      memref.store %cst, %alloca_25[] : memref<f32>
      memref.store %cst, %alloca_21[] : memref<f32>
      scf.for %arg8 = %c0 to %c64 step %c1 {
        %44 = memref.load %alloca_11[%c0] : memref<1xf32>
        %45 = memref.load %alloca[] : memref<f32>
        memref.store %45, %alloca_12[%c0] : memref<1xf32>
        %46 = arith.mulf %44, %45 : f32
        %47 = memref.load %alloca_13[%c0] : memref<1xf32>
        %48 = memref.load %alloca_20[] : memref<f32>
        %49 = arith.mulf %47, %48 : f32
        %50 = arith.addf %46, %49 : f32
        %51 = memref.load %alloca_14[%c0] : memref<1xf32>
        %52 = memref.load %alloca_21[] : memref<f32>
        memref.store %52, %alloca_17[%c0] : memref<1xf32>
        %53 = arith.mulf %51, %52 : f32
        %54 = arith.addf %50, %53 : f32
        %55 = memref.load %alloca_5[%c0] : memref<1xf32>
        %56 = memref.load %alloca_25[] : memref<f32>
        %57 = arith.mulf %55, %56 : f32
        %58 = arith.addf %54, %57 : f32
        %59 = arith.muli %arg8, %c-1 : index
        %60 = arith.addi %59, %c63 : index
        memref.store %58, %arg6[%arg7, %60] : memref<?x64xf32>
        %61 = arith.muli %arg8, %c-1 : index
        %62 = arith.addi %61, %c63 : index
        %63 = memref.load %arg6[%arg7, %62] : memref<?x64xf32>
        memref.store %63, %alloca_21[] : memref<f32>
        %64 = memref.load %alloca_17[%c0] : memref<1xf32>
        memref.store %64, %alloca_25[] : memref<f32>
        %65 = arith.muli %arg8, %c-1 : index
        %66 = arith.addi %65, %c63 : index
        %67 = memref.load %arg3[%arg7, %66] : memref<?x64xf32>
        memref.store %67, %alloca[] : memref<f32>
        %68 = memref.load %alloca_12[%c0] : memref<1xf32>
        memref.store %68, %alloca_20[] : memref<f32>
      }
    }
    %40 = async.create_group %c2 : !async.group
    %41 = scf.for %arg7 = %c0 to %c2 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg9 = %c0 to %c2 step %c1 {
          %46 = arith.muli %arg7, %c32 : index
          %47 = arith.muli %arg7, %c32 : index
          %48 = arith.addi %47, %c32 : index
          scf.for %arg10 = %46 to %48 step %c1 {
            %49 = arith.muli %arg9, %c32 : index
            %50 = arith.muli %arg9, %c32 : index
            %51 = arith.addi %50, %c32 : index
            scf.for %arg11 = %49 to %51 step %c1 {
              %52 = memref.load %arg5[%arg10, %arg11] : memref<?x64xf32>
              %53 = memref.load %arg6[%arg10, %arg11] : memref<?x64xf32>
              %54 = arith.addf %52, %53 : f32
              memref.store %54, %arg4[%arg10, %arg11] : memref<?x64xf32>
            }
          }
        }
        async.yield
      }
      %44 = async.add_to_group %token, %40 : !async.token
      %45 = arith.addi %arg8, %c1 : index
      scf.yield %45 : index
    }
    async.await_all %40
    scf.for %arg7 = %c0 to %c64 step %c1 {
      memref.store %cst, %alloca_24[] : memref<f32>
      memref.store %cst, %alloca_3[] : memref<f32>
      memref.store %cst, %alloca_10[] : memref<f32>
      scf.for %arg8 = %c0 to %c64 step %c1 {
        %44 = memref.load %alloca_8[%c0] : memref<1xf32>
        %45 = memref.load %arg4[%arg8, %arg7] : memref<?x64xf32>
        %46 = arith.mulf %44, %45 : f32
        %47 = memref.load %alloca_15[%c0] : memref<1xf32>
        %48 = memref.load %alloca_10[] : memref<f32>
        %49 = arith.mulf %47, %48 : f32
        %50 = arith.addf %46, %49 : f32
        %51 = memref.load %alloca_14[%c0] : memref<1xf32>
        %52 = memref.load %alloca_3[] : memref<f32>
        memref.store %52, %alloca_18[%c0] : memref<1xf32>
        %53 = arith.mulf %51, %52 : f32
        %54 = arith.addf %50, %53 : f32
        %55 = memref.load %alloca_5[%c0] : memref<1xf32>
        %56 = memref.load %alloca_24[] : memref<f32>
        %57 = arith.mulf %55, %56 : f32
        %58 = arith.addf %54, %57 : f32
        memref.store %58, %arg5[%arg8, %arg7] : memref<?x64xf32>
        %59 = memref.load %arg5[%arg8, %arg7] : memref<?x64xf32>
        memref.store %59, %alloca_3[] : memref<f32>
        %60 = memref.load %alloca_18[%c0] : memref<1xf32>
        memref.store %60, %alloca_24[] : memref<f32>
        %61 = memref.load %arg4[%arg8, %arg7] : memref<?x64xf32>
        memref.store %61, %alloca_10[] : memref<f32>
      }
    }
    scf.for %arg7 = %c0 to %c64 step %c1 {
      memref.store %cst, %alloca_25[] : memref<f32>
      memref.store %cst, %alloca_21[] : memref<f32>
      memref.store %cst, %alloca_22[] : memref<f32>
      memref.store %cst, %alloca_9[] : memref<f32>
      scf.for %arg8 = %c0 to %c64 step %c1 {
        %44 = memref.load %alloca_11[%c0] : memref<1xf32>
        %45 = memref.load %alloca_9[] : memref<f32>
        memref.store %45, %alloca_16[%c0] : memref<1xf32>
        %46 = arith.mulf %44, %45 : f32
        %47 = memref.load %alloca_13[%c0] : memref<1xf32>
        %48 = memref.load %alloca_22[] : memref<f32>
        %49 = arith.mulf %47, %48 : f32
        %50 = arith.addf %46, %49 : f32
        %51 = memref.load %alloca_14[%c0] : memref<1xf32>
        %52 = memref.load %alloca_21[] : memref<f32>
        memref.store %52, %alloca_19[%c0] : memref<1xf32>
        %53 = arith.mulf %51, %52 : f32
        %54 = arith.addf %50, %53 : f32
        %55 = memref.load %alloca_5[%c0] : memref<1xf32>
        %56 = memref.load %alloca_25[] : memref<f32>
        %57 = arith.mulf %55, %56 : f32
        %58 = arith.addf %54, %57 : f32
        %59 = arith.muli %arg8, %c-1 : index
        %60 = arith.addi %59, %c63 : index
        memref.store %58, %arg6[%60, %arg7] : memref<?x64xf32>
        %61 = arith.muli %arg8, %c-1 : index
        %62 = arith.addi %61, %c63 : index
        %63 = memref.load %arg6[%62, %arg7] : memref<?x64xf32>
        memref.store %63, %alloca_21[] : memref<f32>
        %64 = memref.load %alloca_19[%c0] : memref<1xf32>
        memref.store %64, %alloca_25[] : memref<f32>
        %65 = arith.muli %arg8, %c-1 : index
        %66 = arith.addi %65, %c63 : index
        %67 = memref.load %arg4[%66, %arg7] : memref<?x64xf32>
        memref.store %67, %alloca_9[] : memref<f32>
        %68 = memref.load %alloca_16[%c0] : memref<1xf32>
        memref.store %68, %alloca_22[] : memref<f32>
      }
    }
    %42 = async.create_group %c2 : !async.group
    %43 = scf.for %arg7 = %c0 to %c2 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg9 = %c0 to %c2 step %c1 {
          %46 = arith.muli %arg7, %c32 : index
          %47 = arith.muli %arg7, %c32 : index
          %48 = arith.addi %47, %c32 : index
          scf.for %arg10 = %46 to %48 step %c1 {
            %49 = arith.muli %arg9, %c32 : index
            %50 = arith.muli %arg9, %c32 : index
            %51 = arith.addi %50, %c32 : index
            scf.for %arg11 = %49 to %51 step %c1 {
              %52 = memref.load %arg5[%arg10, %arg11] : memref<?x64xf32>
              %53 = memref.load %arg6[%arg10, %arg11] : memref<?x64xf32>
              %54 = arith.addf %52, %53 : f32
              memref.store %54, %arg4[%arg10, %arg11] : memref<?x64xf32>
            }
          }
        }
        async.yield
      }
      %44 = async.add_to_group %token, %42 : !async.token
      %45 = arith.addi %arg8, %c1 : index
      scf.yield %45 : index
    }
    async.await_all %42
    return
  }
}

