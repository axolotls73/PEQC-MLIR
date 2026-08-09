module {
  func.func @kernel_deriche(%arg0: i32, %arg1: i32, %arg2: f32, %arg3: memref<?x64xf32>, %arg4: memref<?x64xf32>, %arg5: memref<?x64xf32>, %arg6: memref<?x64xf32>) {
    %cst = arith.constant 1.000000e+00 : f32
    %cst_0 = arith.constant 2.000000e+00 : f32
    %cst_1 = arith.constant -2.000000e+00 : f32
    %cst_2 = arith.constant 0.000000e+00 : f32
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.index_cast %arg0 : i32 to index
    %2 = llvm.mlir.undef : f32
    %alloca = memref.alloca() : memref<f32>
    affine.store %2, %alloca[] : memref<f32>
    %alloca_3 = memref.alloca() : memref<f32>
    affine.store %2, %alloca_3[] : memref<f32>
    %alloca_4 = memref.alloca() : memref<f32>
    affine.store %2, %alloca_4[] : memref<f32>
    %alloca_5 = memref.alloca() : memref<f32>
    affine.store %2, %alloca_5[] : memref<f32>
    %alloca_6 = memref.alloca() : memref<f32>
    affine.store %2, %alloca_6[] : memref<f32>
    %alloca_7 = memref.alloca() : memref<f32>
    affine.store %2, %alloca_7[] : memref<f32>
    %alloca_8 = memref.alloca() : memref<f32>
    affine.store %2, %alloca_8[] : memref<f32>
    %alloca_9 = memref.alloca() : memref<f32>
    affine.store %2, %alloca_9[] : memref<f32>
    %alloca_10 = memref.alloca() : memref<f32>
    affine.store %2, %alloca_10[] : memref<f32>
    %alloca_11 = memref.alloca() : memref<f32>
    affine.store %2, %alloca_11[] : memref<f32>
    %3 = arith.negf %arg2 : f32
    %4 = math.exp %3 : f32
    %5 = arith.subf %cst, %4 : f32
    %6 = arith.mulf %5, %5 : f32
    %7 = arith.mulf %arg2, %4 : f32
    %8 = arith.mulf %7, %cst_0 : f32
    %9 = arith.addf %8, %cst : f32
    %10 = arith.mulf %arg2, %cst_0 : f32
    %11 = math.exp %10 : f32
    %12 = arith.subf %9, %11 : f32
    %13 = arith.divf %6, %12 : f32
    %14 = arith.mulf %13, %4 : f32
    %15 = arith.subf %arg2, %cst : f32
    %16 = arith.mulf %14, %15 : f32
    %17 = arith.addf %arg2, %cst : f32
    %18 = arith.mulf %14, %17 : f32
    %19 = arith.negf %13 : f32
    %20 = arith.mulf %arg2, %cst_1 : f32
    %21 = math.exp %20 : f32
    %22 = arith.mulf %19, %21 : f32
    %23 = math.powf %cst_0, %3 : f32
    %24 = arith.negf %21 : f32
    affine.for %arg7 = 0 to %1 {
      affine.store %cst_2, %alloca_9[] : memref<f32>
      affine.store %cst_2, %alloca_8[] : memref<f32>
      affine.store %cst_2, %alloca_11[] : memref<f32>
      affine.for %arg8 = 0 to %0 {
        %25 = affine.load %arg3[%arg7, %arg8] : memref<?x64xf32>
        %26 = arith.mulf %13, %25 : f32
        %27 = affine.load %alloca_11[] : memref<f32>
        %28 = arith.mulf %16, %27 : f32
        %29 = arith.addf %26, %28 : f32
        %30 = affine.load %alloca_9[] : memref<f32>
        %31 = arith.mulf %23, %30 : f32
        %32 = arith.addf %29, %31 : f32
        %33 = affine.load %alloca_8[] : memref<f32>
        %34 = arith.mulf %24, %33 : f32
        %35 = arith.addf %32, %34 : f32
        affine.store %35, %arg5[%arg7, %arg8] : memref<?x64xf32>
        %36 = affine.load %arg3[%arg7, %arg8] : memref<?x64xf32>
        affine.store %36, %alloca_11[] : memref<f32>
        affine.store %30, %alloca_8[] : memref<f32>
        %37 = affine.load %arg5[%arg7, %arg8] : memref<?x64xf32>
        affine.store %37, %alloca_9[] : memref<f32>
      }
    }
    affine.for %arg7 = 0 to %1 {
      affine.store %cst_2, %alloca_3[] : memref<f32>
      affine.store %cst_2, %alloca[] : memref<f32>
      affine.store %cst_2, %alloca_7[] : memref<f32>
      affine.store %cst_2, %alloca_6[] : memref<f32>
      affine.for %arg8 = 0 to %0 {
        %25 = affine.load %alloca_7[] : memref<f32>
        %26 = arith.mulf %18, %25 : f32
        %27 = affine.load %alloca_6[] : memref<f32>
        %28 = arith.mulf %22, %27 : f32
        %29 = arith.addf %26, %28 : f32
        %30 = affine.load %alloca_3[] : memref<f32>
        %31 = arith.mulf %23, %30 : f32
        %32 = arith.addf %29, %31 : f32
        %33 = affine.load %alloca[] : memref<f32>
        %34 = arith.mulf %24, %33 : f32
        %35 = arith.addf %32, %34 : f32
        affine.store %35, %arg6[%arg7, -%arg8 + symbol(%0) - 1] : memref<?x64xf32>
        affine.store %25, %alloca_6[] : memref<f32>
        %36 = affine.load %arg3[%arg7, -%arg8 + symbol(%0) - 1] : memref<?x64xf32>
        affine.store %36, %alloca_7[] : memref<f32>
        affine.store %30, %alloca[] : memref<f32>
        %37 = affine.load %arg6[%arg7, -%arg8 + symbol(%0) - 1] : memref<?x64xf32>
        affine.store %37, %alloca_3[] : memref<f32>
      }
    }
    affine.for %arg7 = 0 to %1 {
      affine.for %arg8 = 0 to %0 {
        %25 = affine.load %arg5[%arg7, %arg8] : memref<?x64xf32>
        %26 = affine.load %arg6[%arg7, %arg8] : memref<?x64xf32>
        %27 = arith.addf %25, %26 : f32
        affine.store %27, %arg4[%arg7, %arg8] : memref<?x64xf32>
      }
    }
    affine.for %arg7 = 0 to %0 {
      affine.store %cst_2, %alloca_10[] : memref<f32>
      affine.store %cst_2, %alloca_9[] : memref<f32>
      affine.store %cst_2, %alloca_8[] : memref<f32>
      affine.for %arg8 = 0 to %1 {
        %25 = affine.load %arg4[%arg8, %arg7] : memref<?x64xf32>
        %26 = arith.mulf %13, %25 : f32
        %27 = affine.load %alloca_10[] : memref<f32>
        %28 = arith.mulf %16, %27 : f32
        %29 = arith.addf %26, %28 : f32
        %30 = affine.load %alloca_9[] : memref<f32>
        %31 = arith.mulf %23, %30 : f32
        %32 = arith.addf %29, %31 : f32
        %33 = affine.load %alloca_8[] : memref<f32>
        %34 = arith.mulf %24, %33 : f32
        %35 = arith.addf %32, %34 : f32
        affine.store %35, %arg5[%arg8, %arg7] : memref<?x64xf32>
        %36 = affine.load %arg4[%arg8, %arg7] : memref<?x64xf32>
        affine.store %36, %alloca_10[] : memref<f32>
        affine.store %30, %alloca_8[] : memref<f32>
        %37 = affine.load %arg5[%arg8, %arg7] : memref<?x64xf32>
        affine.store %37, %alloca_9[] : memref<f32>
      }
    }
    affine.for %arg7 = 0 to %0 {
      affine.store %cst_2, %alloca_5[] : memref<f32>
      affine.store %cst_2, %alloca_4[] : memref<f32>
      affine.store %cst_2, %alloca_3[] : memref<f32>
      affine.store %cst_2, %alloca[] : memref<f32>
      affine.for %arg8 = 0 to %1 {
        %25 = affine.load %alloca_5[] : memref<f32>
        %26 = arith.mulf %18, %25 : f32
        %27 = affine.load %alloca_4[] : memref<f32>
        %28 = arith.mulf %22, %27 : f32
        %29 = arith.addf %26, %28 : f32
        %30 = affine.load %alloca_3[] : memref<f32>
        %31 = arith.mulf %23, %30 : f32
        %32 = arith.addf %29, %31 : f32
        %33 = affine.load %alloca[] : memref<f32>
        %34 = arith.mulf %24, %33 : f32
        %35 = arith.addf %32, %34 : f32
        affine.store %35, %arg6[-%arg8 + symbol(%1) - 1, %arg7] : memref<?x64xf32>
        affine.store %25, %alloca_4[] : memref<f32>
        %36 = affine.load %arg4[-%arg8 + symbol(%1) - 1, %arg7] : memref<?x64xf32>
        affine.store %36, %alloca_5[] : memref<f32>
        affine.store %30, %alloca[] : memref<f32>
        %37 = affine.load %arg6[-%arg8 + symbol(%1) - 1, %arg7] : memref<?x64xf32>
        affine.store %37, %alloca_3[] : memref<f32>
      }
    }
    affine.for %arg7 = 0 to %1 {
      affine.for %arg8 = 0 to %0 {
        %25 = affine.load %arg5[%arg7, %arg8] : memref<?x64xf32>
        %26 = affine.load %arg6[%arg7, %arg8] : memref<?x64xf32>
        %27 = arith.addf %25, %26 : f32
        affine.store %27, %arg4[%arg7, %arg8] : memref<?x64xf32>
      }
    }
    return
  }
}
