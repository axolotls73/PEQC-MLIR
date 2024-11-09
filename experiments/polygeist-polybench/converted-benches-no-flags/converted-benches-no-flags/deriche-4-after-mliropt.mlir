module {
  func.func @kernel_deriche(%arg0: i32, %arg1: i32, %arg2: f32, %arg3: memref<?x64xf32>, %arg4: memref<?x64xf32>, %arg5: memref<?x64xf32>, %arg6: memref<?x64xf32>) {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant -2.000000e+00 : f32
    %cst_1 = arith.constant 2.000000e+00 : f32
    %cst_2 = arith.constant 1.000000e+00 : f32
    %0 = llvm.mlir.undef : f32
    %alloca = memref.alloca() : memref<f32>
    affine.store %0, %alloca[] : memref<f32>
    %alloca_3 = memref.alloca() : memref<f32>
    affine.store %0, %alloca_3[] : memref<f32>
    %alloca_4 = memref.alloca() : memref<f32>
    affine.store %0, %alloca_4[] : memref<f32>
    %alloca_5 = memref.alloca() : memref<f32>
    affine.store %0, %alloca_5[] : memref<f32>
    %alloca_6 = memref.alloca() : memref<f32>
    affine.store %0, %alloca_6[] : memref<f32>
    %alloca_7 = memref.alloca() : memref<f32>
    affine.store %0, %alloca_7[] : memref<f32>
    %alloca_8 = memref.alloca() : memref<f32>
    affine.store %0, %alloca_8[] : memref<f32>
    %alloca_9 = memref.alloca() : memref<f32>
    affine.store %0, %alloca_9[] : memref<f32>
    %alloca_10 = memref.alloca() : memref<f32>
    affine.store %0, %alloca_10[] : memref<f32>
    %alloca_11 = memref.alloca() : memref<f32>
    affine.store %0, %alloca_11[] : memref<f32>
    %1 = arith.negf %arg2 : f32
    %2 = math.exp %1 : f32
    %3 = arith.subf %cst_2, %2 : f32
    %4 = arith.mulf %3, %3 : f32
    %5 = arith.mulf %arg2, %cst_1 : f32
    %6 = arith.mulf %5, %2 : f32
    %7 = arith.addf %6, %cst_2 : f32
    %8 = math.exp %5 : f32
    %9 = arith.subf %7, %8 : f32
    %10 = arith.divf %4, %9 : f32
    %11 = arith.mulf %10, %2 : f32
    %12 = arith.subf %arg2, %cst_2 : f32
    %13 = arith.mulf %11, %12 : f32
    %14 = arith.addf %arg2, %cst_2 : f32
    %15 = arith.mulf %11, %14 : f32
    %16 = arith.negf %10 : f32
    %17 = arith.mulf %arg2, %cst_0 : f32
    %18 = math.exp %17 : f32
    %19 = arith.mulf %16, %18 : f32
    %20 = math.powf %cst_1, %1 : f32
    %21 = arith.negf %18 : f32
    affine.for %arg7 = 0 to 64 {
      affine.store %cst, %alloca_9[] : memref<f32>
      affine.store %cst, %alloca_8[] : memref<f32>
      affine.store %cst, %alloca_11[] : memref<f32>
      affine.for %arg8 = 0 to 64 {
        %22 = affine.load %arg3[%arg7, %arg8] : memref<?x64xf32>
        %23 = arith.mulf %10, %22 : f32
        %24 = affine.load %alloca_11[] : memref<f32>
        %25 = arith.mulf %13, %24 : f32
        %26 = arith.addf %23, %25 : f32
        %27 = affine.load %alloca_9[] : memref<f32>
        %28 = arith.mulf %20, %27 : f32
        %29 = arith.addf %26, %28 : f32
        %30 = affine.load %alloca_8[] : memref<f32>
        %31 = arith.mulf %21, %30 : f32
        %32 = arith.addf %29, %31 : f32
        affine.store %32, %arg5[%arg7, %arg8] : memref<?x64xf32>
        %33 = affine.load %arg3[%arg7, %arg8] : memref<?x64xf32>
        affine.store %33, %alloca_11[] : memref<f32>
        affine.store %27, %alloca_8[] : memref<f32>
        %34 = affine.load %arg5[%arg7, %arg8] : memref<?x64xf32>
        affine.store %34, %alloca_9[] : memref<f32>
      }
    }
    affine.for %arg7 = 0 to 64 {
      affine.store %cst, %alloca_3[] : memref<f32>
      affine.store %cst, %alloca[] : memref<f32>
      affine.store %cst, %alloca_7[] : memref<f32>
      affine.store %cst, %alloca_6[] : memref<f32>
      affine.for %arg8 = 0 to 64 {
        %22 = affine.load %alloca_7[] : memref<f32>
        %23 = arith.mulf %15, %22 : f32
        %24 = affine.load %alloca_6[] : memref<f32>
        %25 = arith.mulf %19, %24 : f32
        %26 = arith.addf %23, %25 : f32
        %27 = affine.load %alloca_3[] : memref<f32>
        %28 = arith.mulf %20, %27 : f32
        %29 = arith.addf %26, %28 : f32
        %30 = affine.load %alloca[] : memref<f32>
        %31 = arith.mulf %21, %30 : f32
        %32 = arith.addf %29, %31 : f32
        affine.store %32, %arg6[%arg7, -%arg8 + 63] : memref<?x64xf32>
        affine.store %22, %alloca_6[] : memref<f32>
        %33 = affine.load %arg3[%arg7, -%arg8 + 63] : memref<?x64xf32>
        affine.store %33, %alloca_7[] : memref<f32>
        affine.store %27, %alloca[] : memref<f32>
        %34 = affine.load %arg6[%arg7, -%arg8 + 63] : memref<?x64xf32>
        affine.store %34, %alloca_3[] : memref<f32>
      }
    }
    affine.for %arg7 = 0 to 64 {
      affine.for %arg8 = 0 to 64 {
        %22 = affine.load %arg5[%arg7, %arg8] : memref<?x64xf32>
        %23 = affine.load %arg6[%arg7, %arg8] : memref<?x64xf32>
        %24 = arith.addf %22, %23 : f32
        affine.store %24, %arg4[%arg7, %arg8] : memref<?x64xf32>
      }
    }
    affine.for %arg7 = 0 to 64 {
      affine.store %cst, %alloca_10[] : memref<f32>
      affine.store %cst, %alloca_9[] : memref<f32>
      affine.store %cst, %alloca_8[] : memref<f32>
      affine.for %arg8 = 0 to 64 {
        %22 = affine.load %arg4[%arg8, %arg7] : memref<?x64xf32>
        %23 = arith.mulf %10, %22 : f32
        %24 = affine.load %alloca_10[] : memref<f32>
        %25 = arith.mulf %13, %24 : f32
        %26 = arith.addf %23, %25 : f32
        %27 = affine.load %alloca_9[] : memref<f32>
        %28 = arith.mulf %20, %27 : f32
        %29 = arith.addf %26, %28 : f32
        %30 = affine.load %alloca_8[] : memref<f32>
        %31 = arith.mulf %21, %30 : f32
        %32 = arith.addf %29, %31 : f32
        affine.store %32, %arg5[%arg8, %arg7] : memref<?x64xf32>
        %33 = affine.load %arg4[%arg8, %arg7] : memref<?x64xf32>
        affine.store %33, %alloca_10[] : memref<f32>
        affine.store %27, %alloca_8[] : memref<f32>
        %34 = affine.load %arg5[%arg8, %arg7] : memref<?x64xf32>
        affine.store %34, %alloca_9[] : memref<f32>
      }
    }
    affine.for %arg7 = 0 to 64 {
      affine.store %cst, %alloca_5[] : memref<f32>
      affine.store %cst, %alloca_4[] : memref<f32>
      affine.store %cst, %alloca_3[] : memref<f32>
      affine.store %cst, %alloca[] : memref<f32>
      affine.for %arg8 = 0 to 64 {
        %22 = affine.load %alloca_5[] : memref<f32>
        %23 = arith.mulf %15, %22 : f32
        %24 = affine.load %alloca_4[] : memref<f32>
        %25 = arith.mulf %19, %24 : f32
        %26 = arith.addf %23, %25 : f32
        %27 = affine.load %alloca_3[] : memref<f32>
        %28 = arith.mulf %20, %27 : f32
        %29 = arith.addf %26, %28 : f32
        %30 = affine.load %alloca[] : memref<f32>
        %31 = arith.mulf %21, %30 : f32
        %32 = arith.addf %29, %31 : f32
        affine.store %32, %arg6[-%arg8 + 63, %arg7] : memref<?x64xf32>
        affine.store %22, %alloca_4[] : memref<f32>
        %33 = affine.load %arg4[-%arg8 + 63, %arg7] : memref<?x64xf32>
        affine.store %33, %alloca_5[] : memref<f32>
        affine.store %27, %alloca[] : memref<f32>
        %34 = affine.load %arg6[-%arg8 + 63, %arg7] : memref<?x64xf32>
        affine.store %34, %alloca_3[] : memref<f32>
      }
    }
    affine.for %arg7 = 0 to 64 {
      affine.for %arg8 = 0 to 64 {
        %22 = affine.load %arg5[%arg7, %arg8] : memref<?x64xf32>
        %23 = affine.load %arg6[%arg7, %arg8] : memref<?x64xf32>
        %24 = arith.addf %22, %23 : f32
        affine.store %24, %arg4[%arg7, %arg8] : memref<?x64xf32>
      }
    }
    return
  }
}

