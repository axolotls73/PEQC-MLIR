module {
  func.func @kernel_gramschmidt(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
    %0 = llvm.mlir.undef : f64
    memref.store %0, %alloca[] : memref<f64>
    %c0 = arith.constant 0 : index
    %c30 = arith.constant 30 : index
    %c1 = arith.constant 1 : index
    scf.for %arg5 = %c0 to %c30 step %c1 {
      memref.store %cst, %alloca[] : memref<f64>
      %c0_0 = arith.constant 0 : index
      %c20 = arith.constant 20 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg6 = %c0_0 to %c20 step %c1_1 {
        %4 = memref.load %arg2[%arg6, %arg5] : memref<?x30xf64>
        %5 = arith.mulf %4, %4 : f64
        %6 = memref.load %alloca[] : memref<f64>
        %7 = arith.addf %6, %5 : f64
        memref.store %7, %alloca[] : memref<f64>
      }
      %1 = memref.load %alloca[] : memref<f64>
      %2 = math.sqrt %1 : f64
      memref.store %2, %arg3[%arg5, %arg5] : memref<?x30xf64>
      %c0_2 = arith.constant 0 : index
      %c20_3 = arith.constant 20 : index
      %c1_4 = arith.constant 1 : index
      scf.for %arg6 = %c0_2 to %c20_3 step %c1_4 {
        %4 = memref.load %arg2[%arg6, %arg5] : memref<?x30xf64>
        %5 = memref.load %arg3[%arg5, %arg5] : memref<?x30xf64>
        %6 = arith.divf %4, %5 : f64
        memref.store %6, %arg4[%arg6, %arg5] : memref<?x30xf64>
      }
      %c1_5 = arith.constant 1 : index
      %3 = arith.addi %arg5, %c1_5 : index
      %c30_6 = arith.constant 30 : index
      %c1_7 = arith.constant 1 : index
      scf.for %arg6 = %3 to %c30_6 step %c1_7 {
        memref.store %cst, %arg3[%arg5, %arg6] : memref<?x30xf64>
        %c0_8 = arith.constant 0 : index
        %c20_9 = arith.constant 20 : index
        %c1_10 = arith.constant 1 : index
        scf.for %arg7 = %c0_8 to %c20_9 step %c1_10 {
          %4 = memref.load %arg4[%arg7, %arg5] : memref<?x30xf64>
          %5 = memref.load %arg2[%arg7, %arg6] : memref<?x30xf64>
          %6 = arith.mulf %4, %5 : f64
          %7 = memref.load %arg3[%arg5, %arg6] : memref<?x30xf64>
          %8 = arith.addf %7, %6 : f64
          memref.store %8, %arg3[%arg5, %arg6] : memref<?x30xf64>
        }
        %c0_11 = arith.constant 0 : index
        %c20_12 = arith.constant 20 : index
        %c1_13 = arith.constant 1 : index
        scf.for %arg7 = %c0_11 to %c20_12 step %c1_13 {
          %4 = memref.load %arg2[%arg7, %arg6] : memref<?x30xf64>
          %5 = memref.load %arg4[%arg7, %arg5] : memref<?x30xf64>
          %6 = memref.load %arg3[%arg5, %arg6] : memref<?x30xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = arith.subf %4, %7 : f64
          memref.store %8, %arg2[%arg7, %arg6] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

