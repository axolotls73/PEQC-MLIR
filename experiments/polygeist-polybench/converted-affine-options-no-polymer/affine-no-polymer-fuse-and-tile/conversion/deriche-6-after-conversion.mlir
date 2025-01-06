module {
  func.func @kernel_deriche(%arg0: i32, %arg1: i32, %arg2: f32, %arg3: memref<?x64xf32>, %arg4: memref<?x64xf32>, %arg5: memref<?x64xf32>, %arg6: memref<?x64xf32>) {
    %c63 = arith.constant 63 : index
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %c32 = arith.constant 32 : index
    %c64 = arith.constant 64 : index
    %c0 = arith.constant 0 : index
    %0 = llvm.mlir.undef : f32
    %cst = arith.constant 1.000000e+00 : f32
    %cst_0 = arith.constant 2.000000e+00 : f32
    %cst_1 = arith.constant -2.000000e+00 : f32
    %cst_2 = arith.constant 0.000000e+00 : f32
    %alloc = memref.alloc() : memref<1x1xf32>
    %alloca = memref.alloca() : memref<f32>
    memref.store %0, %alloca[] : memref<f32>
    %alloca_3 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_3[] : memref<f32>
    %alloca_4 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_4[] : memref<f32>
    %alloca_5 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_5[] : memref<f32>
    %alloca_6 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_6[] : memref<f32>
    %alloca_7 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_7[] : memref<f32>
    %alloca_8 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_8[] : memref<f32>
    %alloca_9 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_9[] : memref<f32>
    %alloca_10 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_10[] : memref<f32>
    %alloca_11 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_11[] : memref<f32>
    %1 = arith.negf %arg2 : f32
    %2 = math.exp %1 : f32
    %3 = arith.subf %cst, %2 : f32
    %4 = arith.mulf %3, %3 : f32
    %5 = arith.mulf %arg2, %2 : f32
    %6 = arith.mulf %5, %cst_0 : f32
    %7 = arith.addf %6, %cst : f32
    %8 = arith.mulf %arg2, %cst_0 : f32
    %9 = math.exp %8 : f32
    %10 = arith.subf %7, %9 : f32
    %11 = arith.divf %4, %10 : f32
    %12 = arith.mulf %11, %2 : f32
    %13 = arith.subf %arg2, %cst : f32
    %14 = arith.mulf %12, %13 : f32
    %15 = arith.addf %arg2, %cst : f32
    %16 = arith.mulf %12, %15 : f32
    %17 = arith.negf %11 : f32
    %18 = arith.mulf %arg2, %cst_1 : f32
    %19 = math.exp %18 : f32
    %20 = arith.mulf %17, %19 : f32
    %21 = math.powf %cst_0, %1 : f32
    %22 = arith.negf %19 : f32
    scf.for %arg7 = %c0 to %c64 step %c32 {
      %23 = arith.addi %arg7, %c32 : index
      scf.for %arg8 = %arg7 to %23 step %c1 {
        memref.store %cst_2, %alloca_3[] : memref<f32>
        memref.store %cst_2, %alloca[] : memref<f32>
        memref.store %cst_2, %alloca_7[] : memref<f32>
        memref.store %cst_2, %alloca_6[] : memref<f32>
        scf.for %arg9 = %c0 to %c64 step %c1 {
          %24 = memref.load %alloca_7[] : memref<f32>
          %25 = arith.mulf %16, %24 : f32
          %26 = memref.load %alloca_6[] : memref<f32>
          %27 = arith.mulf %20, %26 : f32
          %28 = arith.addf %25, %27 : f32
          %29 = memref.load %alloca_3[] : memref<f32>
          %30 = arith.mulf %21, %29 : f32
          %31 = arith.addf %28, %30 : f32
          %32 = memref.load %alloca[] : memref<f32>
          %33 = arith.mulf %22, %32 : f32
          %34 = arith.addf %31, %33 : f32
          %35 = arith.muli %arg9, %c-1 : index
          %36 = arith.addi %35, %c63 : index
          memref.store %34, %arg6[%arg8, %36] : memref<?x64xf32>
          memref.store %24, %alloca_6[] : memref<f32>
          %37 = arith.muli %arg9, %c-1 : index
          %38 = arith.addi %37, %c63 : index
          %39 = memref.load %arg3[%arg8, %38] : memref<?x64xf32>
          memref.store %39, %alloca_7[] : memref<f32>
          memref.store %29, %alloca[] : memref<f32>
          %40 = arith.muli %arg9, %c-1 : index
          %41 = arith.addi %40, %c63 : index
          %42 = memref.load %arg6[%arg8, %41] : memref<?x64xf32>
          memref.store %42, %alloca_3[] : memref<f32>
        }
      }
    }
    scf.for %arg7 = %c0 to %c64 step %c32 {
      scf.for %arg8 = %c0 to %c64 step %c32 {
        %23 = arith.addi %arg7, %c32 : index
        scf.for %arg9 = %arg7 to %23 step %c1 {
          %24 = arith.addi %arg8, %c32 : index
          scf.for %arg10 = %arg8 to %24 step %c1 {
            memref.store %cst_2, %alloca_9[] : memref<f32>
            memref.store %cst_2, %alloca_8[] : memref<f32>
            memref.store %cst_2, %alloca_11[] : memref<f32>
            %25 = memref.load %arg3[%arg9, %arg10] : memref<?x64xf32>
            %26 = arith.mulf %11, %25 : f32
            %27 = memref.load %alloca_11[] : memref<f32>
            %28 = arith.mulf %14, %27 : f32
            %29 = arith.addf %26, %28 : f32
            %30 = memref.load %alloca_9[] : memref<f32>
            %31 = arith.mulf %21, %30 : f32
            %32 = arith.addf %29, %31 : f32
            %33 = memref.load %alloca_8[] : memref<f32>
            %34 = arith.mulf %22, %33 : f32
            %35 = arith.addf %32, %34 : f32
            memref.store %35, %arg5[%arg9, %arg10] : memref<?x64xf32>
            %36 = memref.load %arg3[%arg9, %arg10] : memref<?x64xf32>
            memref.store %36, %alloca_11[] : memref<f32>
            memref.store %30, %alloca_8[] : memref<f32>
            %37 = memref.load %arg5[%arg9, %arg10] : memref<?x64xf32>
            memref.store %37, %alloca_9[] : memref<f32>
            memref.store %cst_2, %alloca_3[] : memref<f32>
            memref.store %cst_2, %alloca[] : memref<f32>
            memref.store %cst_2, %alloca_7[] : memref<f32>
            memref.store %cst_2, %alloca_6[] : memref<f32>
            %38 = arith.muli %arg10, %c-1 : index
            %39 = arith.addi %38, %c63 : index
            %40 = memref.load %alloca_7[] : memref<f32>
            %41 = arith.mulf %16, %40 : f32
            %42 = memref.load %alloca_6[] : memref<f32>
            %43 = arith.mulf %20, %42 : f32
            %44 = arith.addf %41, %43 : f32
            %45 = memref.load %alloca_3[] : memref<f32>
            %46 = arith.mulf %21, %45 : f32
            %47 = arith.addf %44, %46 : f32
            %48 = memref.load %alloca[] : memref<f32>
            %49 = arith.mulf %22, %48 : f32
            %50 = arith.addf %47, %49 : f32
            %51 = arith.muli %39, %c-1 : index
            %52 = arith.addi %51, %c63 : index
            memref.store %50, %arg6[%arg9, %52] : memref<?x64xf32>
            memref.store %40, %alloca_6[] : memref<f32>
            %53 = arith.muli %39, %c-1 : index
            %54 = arith.addi %53, %c63 : index
            %55 = memref.load %arg3[%arg9, %54] : memref<?x64xf32>
            memref.store %55, %alloca_7[] : memref<f32>
            memref.store %45, %alloca[] : memref<f32>
            %56 = arith.muli %39, %c-1 : index
            %57 = arith.addi %56, %c63 : index
            %58 = memref.load %arg6[%arg9, %57] : memref<?x64xf32>
            memref.store %58, %alloca_3[] : memref<f32>
            %59 = memref.load %arg5[%arg9, %arg10] : memref<?x64xf32>
            %60 = memref.load %arg6[%arg9, %arg10] : memref<?x64xf32>
            %61 = arith.addf %59, %60 : f32
            memref.store %61, %arg4[%arg9, %arg10] : memref<?x64xf32>
          }
        }
      }
    }
    scf.for %arg7 = %c0 to %c64 step %c32 {
      %23 = arith.addi %arg7, %c32 : index
      scf.for %arg8 = %arg7 to %23 step %c1 {
        memref.store %cst_2, %alloca_5[] : memref<f32>
        memref.store %cst_2, %alloca_4[] : memref<f32>
        memref.store %cst_2, %alloca_3[] : memref<f32>
        memref.store %cst_2, %alloca[] : memref<f32>
        scf.for %arg9 = %c0 to %c64 step %c1 {
          %24 = arith.muli %arg9, %c-1 : index
          %25 = arith.addi %24, %c63 : index
          %26 = memref.load %arg5[%25, %arg8] : memref<?x64xf32>
          %27 = memref.load %arg6[%25, %arg8] : memref<?x64xf32>
          %28 = arith.addf %26, %27 : f32
          memref.store %28, %alloc[%c0, %c0] : memref<1x1xf32>
          %29 = memref.load %alloca_5[] : memref<f32>
          %30 = arith.mulf %16, %29 : f32
          %31 = memref.load %alloca_4[] : memref<f32>
          %32 = arith.mulf %20, %31 : f32
          %33 = arith.addf %30, %32 : f32
          %34 = memref.load %alloca_3[] : memref<f32>
          %35 = arith.mulf %21, %34 : f32
          %36 = arith.addf %33, %35 : f32
          %37 = memref.load %alloca[] : memref<f32>
          %38 = arith.mulf %22, %37 : f32
          %39 = arith.addf %36, %38 : f32
          %40 = arith.muli %arg9, %c-1 : index
          %41 = arith.addi %40, %c63 : index
          memref.store %39, %arg6[%41, %arg8] : memref<?x64xf32>
          memref.store %29, %alloca_4[] : memref<f32>
          %42 = memref.load %alloc[%c0, %c0] : memref<1x1xf32>
          memref.store %42, %alloca_5[] : memref<f32>
          memref.store %34, %alloca[] : memref<f32>
          %43 = arith.muli %arg9, %c-1 : index
          %44 = arith.addi %43, %c63 : index
          %45 = memref.load %arg6[%44, %arg8] : memref<?x64xf32>
          memref.store %45, %alloca_3[] : memref<f32>
        }
      }
    }
    scf.for %arg7 = %c0 to %c64 step %c32 {
      scf.for %arg8 = %c0 to %c64 step %c32 {
        %23 = arith.addi %arg7, %c32 : index
        scf.for %arg9 = %arg7 to %23 step %c1 {
          %24 = arith.addi %arg8, %c32 : index
          scf.for %arg10 = %arg8 to %24 step %c1 {
            memref.store %cst_2, %alloca_10[] : memref<f32>
            memref.store %cst_2, %alloca_9[] : memref<f32>
            memref.store %cst_2, %alloca_8[] : memref<f32>
            %25 = memref.load %arg4[%arg9, %arg10] : memref<?x64xf32>
            %26 = arith.mulf %11, %25 : f32
            %27 = memref.load %alloca_10[] : memref<f32>
            %28 = arith.mulf %14, %27 : f32
            %29 = arith.addf %26, %28 : f32
            %30 = memref.load %alloca_9[] : memref<f32>
            %31 = arith.mulf %21, %30 : f32
            %32 = arith.addf %29, %31 : f32
            %33 = memref.load %alloca_8[] : memref<f32>
            %34 = arith.mulf %22, %33 : f32
            %35 = arith.addf %32, %34 : f32
            memref.store %35, %arg5[%arg9, %arg10] : memref<?x64xf32>
            %36 = memref.load %arg4[%arg9, %arg10] : memref<?x64xf32>
            memref.store %36, %alloca_10[] : memref<f32>
            memref.store %30, %alloca_8[] : memref<f32>
            %37 = memref.load %arg5[%arg9, %arg10] : memref<?x64xf32>
            memref.store %37, %alloca_9[] : memref<f32>
            memref.store %cst_2, %alloca_5[] : memref<f32>
            memref.store %cst_2, %alloca_4[] : memref<f32>
            memref.store %cst_2, %alloca_3[] : memref<f32>
            memref.store %cst_2, %alloca[] : memref<f32>
            %38 = arith.muli %arg9, %c-1 : index
            %39 = arith.addi %38, %c63 : index
            %40 = memref.load %alloca_5[] : memref<f32>
            %41 = arith.mulf %16, %40 : f32
            %42 = memref.load %alloca_4[] : memref<f32>
            %43 = arith.mulf %20, %42 : f32
            %44 = arith.addf %41, %43 : f32
            %45 = memref.load %alloca_3[] : memref<f32>
            %46 = arith.mulf %21, %45 : f32
            %47 = arith.addf %44, %46 : f32
            %48 = memref.load %alloca[] : memref<f32>
            %49 = arith.mulf %22, %48 : f32
            %50 = arith.addf %47, %49 : f32
            %51 = arith.muli %39, %c-1 : index
            %52 = arith.addi %51, %c63 : index
            memref.store %50, %arg6[%52, %arg10] : memref<?x64xf32>
            memref.store %40, %alloca_4[] : memref<f32>
            %53 = arith.muli %39, %c-1 : index
            %54 = arith.addi %53, %c63 : index
            %55 = memref.load %arg4[%54, %arg10] : memref<?x64xf32>
            memref.store %55, %alloca_5[] : memref<f32>
            memref.store %45, %alloca[] : memref<f32>
            %56 = arith.muli %39, %c-1 : index
            %57 = arith.addi %56, %c63 : index
            %58 = memref.load %arg6[%57, %arg10] : memref<?x64xf32>
            memref.store %58, %alloca_3[] : memref<f32>
            %59 = memref.load %arg5[%arg9, %arg10] : memref<?x64xf32>
            %60 = memref.load %arg6[%arg9, %arg10] : memref<?x64xf32>
            %61 = arith.addf %59, %60 : f32
            memref.store %61, %arg4[%arg9, %arg10] : memref<?x64xf32>
          }
        }
      }
    }
    return
  }
}

