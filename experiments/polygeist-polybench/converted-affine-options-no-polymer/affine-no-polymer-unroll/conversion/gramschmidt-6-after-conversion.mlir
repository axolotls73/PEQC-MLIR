module {
  func.func @kernel_gramschmidt(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>) {
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    %c30 = arith.constant 30 : index
    %c0 = arith.constant 0 : index
    %0 = llvm.mlir.undef : f64
    %cst = arith.constant 0.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
    memref.store %0, %alloca[] : memref<f64>
    scf.for %arg5 = %c0 to %c30 step %c1 {
      memref.store %cst, %alloca[] : memref<f64>
      scf.for %arg6 = %c0 to %c20 step %c4 {
        %4 = memref.load %arg2[%arg6, %arg5] : memref<?x30xf64>
        %5 = arith.mulf %4, %4 : f64
        %6 = memref.load %alloca[] : memref<f64>
        %7 = arith.addf %6, %5 : f64
        memref.store %7, %alloca[] : memref<f64>
        %8 = arith.addi %arg6, %c1 : index
        %9 = memref.load %arg2[%8, %arg5] : memref<?x30xf64>
        %10 = arith.mulf %9, %9 : f64
        %11 = memref.load %alloca[] : memref<f64>
        %12 = arith.addf %11, %10 : f64
        memref.store %12, %alloca[] : memref<f64>
        %13 = arith.addi %arg6, %c2 : index
        %14 = memref.load %arg2[%13, %arg5] : memref<?x30xf64>
        %15 = arith.mulf %14, %14 : f64
        %16 = memref.load %alloca[] : memref<f64>
        %17 = arith.addf %16, %15 : f64
        memref.store %17, %alloca[] : memref<f64>
        %18 = arith.addi %arg6, %c3 : index
        %19 = memref.load %arg2[%18, %arg5] : memref<?x30xf64>
        %20 = arith.mulf %19, %19 : f64
        %21 = memref.load %alloca[] : memref<f64>
        %22 = arith.addf %21, %20 : f64
        memref.store %22, %alloca[] : memref<f64>
      }
      %1 = memref.load %alloca[] : memref<f64>
      %2 = math.sqrt %1 : f64
      memref.store %2, %arg3[%arg5, %arg5] : memref<?x30xf64>
      scf.for %arg6 = %c0 to %c20 step %c4 {
        %4 = memref.load %arg2[%arg6, %arg5] : memref<?x30xf64>
        %5 = memref.load %arg3[%arg5, %arg5] : memref<?x30xf64>
        %6 = arith.divf %4, %5 : f64
        memref.store %6, %arg4[%arg6, %arg5] : memref<?x30xf64>
        %7 = arith.addi %arg6, %c1 : index
        %8 = memref.load %arg2[%7, %arg5] : memref<?x30xf64>
        %9 = memref.load %arg3[%arg5, %arg5] : memref<?x30xf64>
        %10 = arith.divf %8, %9 : f64
        memref.store %10, %arg4[%7, %arg5] : memref<?x30xf64>
        %11 = arith.addi %arg6, %c2 : index
        %12 = memref.load %arg2[%11, %arg5] : memref<?x30xf64>
        %13 = memref.load %arg3[%arg5, %arg5] : memref<?x30xf64>
        %14 = arith.divf %12, %13 : f64
        memref.store %14, %arg4[%11, %arg5] : memref<?x30xf64>
        %15 = arith.addi %arg6, %c3 : index
        %16 = memref.load %arg2[%15, %arg5] : memref<?x30xf64>
        %17 = memref.load %arg3[%arg5, %arg5] : memref<?x30xf64>
        %18 = arith.divf %16, %17 : f64
        memref.store %18, %arg4[%15, %arg5] : memref<?x30xf64>
      }
      %3 = arith.addi %arg5, %c1 : index
      scf.for %arg6 = %3 to %c30 step %c1 {
        memref.store %cst, %arg3[%arg5, %arg6] : memref<?x30xf64>
        scf.for %arg7 = %c0 to %c20 step %c4 {
          %4 = memref.load %arg4[%arg7, %arg5] : memref<?x30xf64>
          %5 = memref.load %arg2[%arg7, %arg6] : memref<?x30xf64>
          %6 = arith.mulf %4, %5 : f64
          %7 = memref.load %arg3[%arg5, %arg6] : memref<?x30xf64>
          %8 = arith.addf %7, %6 : f64
          memref.store %8, %arg3[%arg5, %arg6] : memref<?x30xf64>
          %9 = arith.addi %arg7, %c1 : index
          %10 = memref.load %arg4[%9, %arg5] : memref<?x30xf64>
          %11 = memref.load %arg2[%9, %arg6] : memref<?x30xf64>
          %12 = arith.mulf %10, %11 : f64
          %13 = memref.load %arg3[%arg5, %arg6] : memref<?x30xf64>
          %14 = arith.addf %13, %12 : f64
          memref.store %14, %arg3[%arg5, %arg6] : memref<?x30xf64>
          %15 = arith.addi %arg7, %c2 : index
          %16 = memref.load %arg4[%15, %arg5] : memref<?x30xf64>
          %17 = memref.load %arg2[%15, %arg6] : memref<?x30xf64>
          %18 = arith.mulf %16, %17 : f64
          %19 = memref.load %arg3[%arg5, %arg6] : memref<?x30xf64>
          %20 = arith.addf %19, %18 : f64
          memref.store %20, %arg3[%arg5, %arg6] : memref<?x30xf64>
          %21 = arith.addi %arg7, %c3 : index
          %22 = memref.load %arg4[%21, %arg5] : memref<?x30xf64>
          %23 = memref.load %arg2[%21, %arg6] : memref<?x30xf64>
          %24 = arith.mulf %22, %23 : f64
          %25 = memref.load %arg3[%arg5, %arg6] : memref<?x30xf64>
          %26 = arith.addf %25, %24 : f64
          memref.store %26, %arg3[%arg5, %arg6] : memref<?x30xf64>
        }
        scf.for %arg7 = %c0 to %c20 step %c4 {
          %4 = memref.load %arg2[%arg7, %arg6] : memref<?x30xf64>
          %5 = memref.load %arg4[%arg7, %arg5] : memref<?x30xf64>
          %6 = memref.load %arg3[%arg5, %arg6] : memref<?x30xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = arith.subf %4, %7 : f64
          memref.store %8, %arg2[%arg7, %arg6] : memref<?x30xf64>
          %9 = arith.addi %arg7, %c1 : index
          %10 = memref.load %arg2[%9, %arg6] : memref<?x30xf64>
          %11 = memref.load %arg4[%9, %arg5] : memref<?x30xf64>
          %12 = memref.load %arg3[%arg5, %arg6] : memref<?x30xf64>
          %13 = arith.mulf %11, %12 : f64
          %14 = arith.subf %10, %13 : f64
          memref.store %14, %arg2[%9, %arg6] : memref<?x30xf64>
          %15 = arith.addi %arg7, %c2 : index
          %16 = memref.load %arg2[%15, %arg6] : memref<?x30xf64>
          %17 = memref.load %arg4[%15, %arg5] : memref<?x30xf64>
          %18 = memref.load %arg3[%arg5, %arg6] : memref<?x30xf64>
          %19 = arith.mulf %17, %18 : f64
          %20 = arith.subf %16, %19 : f64
          memref.store %20, %arg2[%15, %arg6] : memref<?x30xf64>
          %21 = arith.addi %arg7, %c3 : index
          %22 = memref.load %arg2[%21, %arg6] : memref<?x30xf64>
          %23 = memref.load %arg4[%21, %arg5] : memref<?x30xf64>
          %24 = memref.load %arg3[%arg5, %arg6] : memref<?x30xf64>
          %25 = arith.mulf %23, %24 : f64
          %26 = arith.subf %22, %25 : f64
          memref.store %26, %arg2[%21, %arg6] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

