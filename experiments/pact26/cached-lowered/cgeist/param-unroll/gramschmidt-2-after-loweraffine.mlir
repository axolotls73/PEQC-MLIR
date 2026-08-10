module {
  func.func @kernel_gramschmidt(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %0 = arith.index_cast %arg0 : i32 to index
    %alloca = memref.alloca() : memref<f64>
    %1 = llvm.mlir.undef : f64
    memref.store %1, %alloca[] : memref<f64>
    %2 = arith.index_cast %arg1 : i32 to index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg5 = %c0 to %2 step %c1 {
      memref.store %cst, %alloca[] : memref<f64>
      %c0_0 = arith.constant 0 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg6 = %c0_0 to %0 step %c1_1 {
        %6 = memref.load %arg2[%arg6, %arg5] : memref<?x30xf64>
        %7 = arith.mulf %6, %6 : f64
        %8 = memref.load %alloca[] : memref<f64>
        %9 = arith.addf %8, %7 : f64
        memref.store %9, %alloca[] : memref<f64>
      }
      %3 = memref.load %alloca[] : memref<f64>
      %4 = math.sqrt %3 : f64
      memref.store %4, %arg3[%arg5, %arg5] : memref<?x30xf64>
      %c0_2 = arith.constant 0 : index
      %c1_3 = arith.constant 1 : index
      scf.for %arg6 = %c0_2 to %0 step %c1_3 {
        %6 = memref.load %arg2[%arg6, %arg5] : memref<?x30xf64>
        %7 = memref.load %arg3[%arg5, %arg5] : memref<?x30xf64>
        %8 = arith.divf %6, %7 : f64
        memref.store %8, %arg4[%arg6, %arg5] : memref<?x30xf64>
      }
      %c1_4 = arith.constant 1 : index
      %5 = arith.addi %arg5, %c1_4 : index
      %c1_5 = arith.constant 1 : index
      scf.for %arg6 = %5 to %2 step %c1_5 {
        memref.store %cst, %arg3[%arg5, %arg6] : memref<?x30xf64>
        %c0_6 = arith.constant 0 : index
        %c1_7 = arith.constant 1 : index
        scf.for %arg7 = %c0_6 to %0 step %c1_7 {
          %6 = memref.load %arg4[%arg7, %arg5] : memref<?x30xf64>
          %7 = memref.load %arg2[%arg7, %arg6] : memref<?x30xf64>
          %8 = arith.mulf %6, %7 : f64
          %9 = memref.load %arg3[%arg5, %arg6] : memref<?x30xf64>
          %10 = arith.addf %9, %8 : f64
          memref.store %10, %arg3[%arg5, %arg6] : memref<?x30xf64>
        }
        %c0_8 = arith.constant 0 : index
        %c1_9 = arith.constant 1 : index
        scf.for %arg7 = %c0_8 to %0 step %c1_9 {
          %6 = memref.load %arg2[%arg7, %arg6] : memref<?x30xf64>
          %7 = memref.load %arg4[%arg7, %arg5] : memref<?x30xf64>
          %8 = memref.load %arg3[%arg5, %arg6] : memref<?x30xf64>
          %9 = arith.mulf %7, %8 : f64
          %10 = arith.subf %6, %9 : f64
          memref.store %10, %arg2[%arg7, %arg6] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

