module {
  func.func @kernel_deriche(%arg0: i32, %arg1: i32, %arg2: f32, %arg3: memref<?x64xf32>, %arg4: memref<?x64xf32>, %arg5: memref<?x64xf32>, %arg6: memref<?x64xf32>) {
    %c63 = arith.constant 63 : index
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %c32 = arith.constant 32 : index
    %c64 = arith.constant 64 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant -2.000000e+00 : f32
    %cst_1 = arith.constant 2.000000e+00 : f32
    %cst_2 = arith.constant 1.000000e+00 : f32
    %0 = llvm.mlir.undef : f32
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
    %3 = arith.subf %cst_2, %2 : f32
    %4 = arith.mulf %3, %3 : f32
    %5 = arith.mulf %arg2, %2 : f32
    %6 = arith.mulf %5, %cst_1 : f32
    %7 = arith.addf %6, %cst_2 : f32
    %8 = arith.mulf %arg2, %cst_1 : f32
    %9 = math.exp %8 : f32
    %10 = arith.subf %7, %9 : f32
    %11 = arith.divf %4, %10 : f32
    %12 = arith.mulf %11, %2 : f32
    %13 = arith.subf %arg2, %cst_2 : f32
    %14 = arith.mulf %12, %13 : f32
    %15 = arith.addf %arg2, %cst_2 : f32
    %16 = arith.mulf %12, %15 : f32
    %17 = arith.negf %11 : f32
    %18 = arith.mulf %arg2, %cst_0 : f32
    %19 = math.exp %18 : f32
    %20 = arith.mulf %17, %19 : f32
    %21 = math.powf %cst_1, %1 : f32
    %22 = arith.negf %19 : f32
    scf.for %arg7 = %c0 to %c64 step %c32 {
      %23 = arith.addi %arg7, %c32 : index
      scf.for %arg8 = %arg7 to %23 step %c1 {
        memref.store %cst, %alloca_9[] : memref<f32>
        memref.store %cst, %alloca_8[] : memref<f32>
        memref.store %cst, %alloca_11[] : memref<f32>
        scf.for %arg9 = %c0 to %c64 step %c1 {
          %24 = memref.load %arg3[%arg8, %arg9] : memref<?x64xf32>
          %25 = arith.mulf %11, %24 : f32
          %26 = memref.load %alloca_11[] : memref<f32>
          %27 = arith.mulf %14, %26 : f32
          %28 = arith.addf %25, %27 : f32
          %29 = memref.load %alloca_9[] : memref<f32>
          %30 = arith.mulf %21, %29 : f32
          %31 = arith.addf %28, %30 : f32
          %32 = memref.load %alloca_8[] : memref<f32>
          %33 = arith.mulf %22, %32 : f32
          %34 = arith.addf %31, %33 : f32
          memref.store %34, %arg5[%arg8, %arg9] : memref<?x64xf32>
          %35 = memref.load %arg3[%arg8, %arg9] : memref<?x64xf32>
          memref.store %35, %alloca_11[] : memref<f32>
          memref.store %29, %alloca_8[] : memref<f32>
          %36 = memref.load %arg5[%arg8, %arg9] : memref<?x64xf32>
          memref.store %36, %alloca_9[] : memref<f32>
        }
      }
    }
    scf.for %arg7 = %c0 to %c64 step %c32 {
      %23 = arith.addi %arg7, %c32 : index
      scf.for %arg8 = %arg7 to %23 step %c1 {
        memref.store %cst, %alloca_3[] : memref<f32>
        memref.store %cst, %alloca[] : memref<f32>
        memref.store %cst, %alloca_7[] : memref<f32>
        memref.store %cst, %alloca_6[] : memref<f32>
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
            %25 = memref.load %arg5[%arg9, %arg10] : memref<?x64xf32>
            %26 = memref.load %arg6[%arg9, %arg10] : memref<?x64xf32>
            %27 = arith.addf %25, %26 : f32
            memref.store %27, %arg4[%arg9, %arg10] : memref<?x64xf32>
          }
        }
      }
    }
    scf.for %arg7 = %c0 to %c64 step %c32 {
      %23 = arith.addi %arg7, %c32 : index
      scf.for %arg8 = %arg7 to %23 step %c1 {
        memref.store %cst, %alloca_10[] : memref<f32>
        memref.store %cst, %alloca_9[] : memref<f32>
        memref.store %cst, %alloca_8[] : memref<f32>
        scf.for %arg9 = %c0 to %c64 step %c1 {
          %24 = memref.load %arg4[%arg9, %arg8] : memref<?x64xf32>
          %25 = arith.mulf %11, %24 : f32
          %26 = memref.load %alloca_10[] : memref<f32>
          %27 = arith.mulf %14, %26 : f32
          %28 = arith.addf %25, %27 : f32
          %29 = memref.load %alloca_9[] : memref<f32>
          %30 = arith.mulf %21, %29 : f32
          %31 = arith.addf %28, %30 : f32
          %32 = memref.load %alloca_8[] : memref<f32>
          %33 = arith.mulf %22, %32 : f32
          %34 = arith.addf %31, %33 : f32
          memref.store %34, %arg5[%arg9, %arg8] : memref<?x64xf32>
          %35 = memref.load %arg4[%arg9, %arg8] : memref<?x64xf32>
          memref.store %35, %alloca_10[] : memref<f32>
          memref.store %29, %alloca_8[] : memref<f32>
          %36 = memref.load %arg5[%arg9, %arg8] : memref<?x64xf32>
          memref.store %36, %alloca_9[] : memref<f32>
        }
      }
    }
    scf.for %arg7 = %c0 to %c64 step %c32 {
      %23 = arith.addi %arg7, %c32 : index
      scf.for %arg8 = %arg7 to %23 step %c1 {
        memref.store %cst, %alloca_5[] : memref<f32>
        memref.store %cst, %alloca_4[] : memref<f32>
        memref.store %cst, %alloca_3[] : memref<f32>
        memref.store %cst, %alloca[] : memref<f32>
        scf.for %arg9 = %c0 to %c64 step %c1 {
          %24 = memref.load %alloca_5[] : memref<f32>
          %25 = arith.mulf %16, %24 : f32
          %26 = memref.load %alloca_4[] : memref<f32>
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
          memref.store %34, %arg6[%36, %arg8] : memref<?x64xf32>
          memref.store %24, %alloca_4[] : memref<f32>
          %37 = arith.muli %arg9, %c-1 : index
          %38 = arith.addi %37, %c63 : index
          %39 = memref.load %arg4[%38, %arg8] : memref<?x64xf32>
          memref.store %39, %alloca_5[] : memref<f32>
          memref.store %29, %alloca[] : memref<f32>
          %40 = arith.muli %arg9, %c-1 : index
          %41 = arith.addi %40, %c63 : index
          %42 = memref.load %arg6[%41, %arg8] : memref<?x64xf32>
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
            %25 = memref.load %arg5[%arg9, %arg10] : memref<?x64xf32>
            %26 = memref.load %arg6[%arg9, %arg10] : memref<?x64xf32>
            %27 = arith.addf %25, %26 : f32
            memref.store %27, %arg4[%arg9, %arg10] : memref<?x64xf32>
          }
        }
      }
    }
    return
  }
}

