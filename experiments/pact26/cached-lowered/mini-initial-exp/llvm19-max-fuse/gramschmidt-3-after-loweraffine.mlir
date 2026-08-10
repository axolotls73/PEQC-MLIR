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
      %alloc = memref.alloc() : memref<20x1xf64>
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
      %c1_2 = arith.constant 1 : index
      %3 = arith.addi %arg5, %c1_2 : index
      %c30_3 = arith.constant 30 : index
      %c1_4 = arith.constant 1 : index
      scf.for %arg6 = %3 to %c30_3 step %c1_4 {
        %c0_5 = arith.constant 0 : index
        %c20_6 = arith.constant 20 : index
        %c1_7 = arith.constant 1 : index
        scf.for %arg7 = %c0_5 to %c20_6 step %c1_7 {
          %4 = memref.load %arg2[%arg7, %arg5] : memref<?x30xf64>
          %5 = memref.load %arg3[%arg5, %arg5] : memref<?x30xf64>
          %6 = arith.divf %4, %5 : f64
          memref.store %6, %arg4[%arg7, %arg5] : memref<?x30xf64>
        }
        memref.store %cst, %arg3[%arg5, %arg6] : memref<?x30xf64>
        %c0_8 = arith.constant 0 : index
        %c20_9 = arith.constant 20 : index
        %c1_10 = arith.constant 1 : index
        scf.for %arg7 = %c0_8 to %c20_9 step %c1_10 {
          %c0_11 = arith.constant 0 : index
          %c20_12 = arith.constant 20 : index
          %c1_13 = arith.constant 1 : index
          scf.for %arg8 = %c0_11 to %c20_12 step %c1_13 {
            %9 = memref.load %arg2[%arg8, %arg5] : memref<?x30xf64>
            %10 = memref.load %arg3[%arg5, %arg5] : memref<?x30xf64>
            %11 = arith.divf %9, %10 : f64
            %c0_18 = arith.constant 0 : index
            memref.store %11, %alloc[%arg8, %c0_18] : memref<20x1xf64>
          }
          %c0_14 = arith.constant 0 : index
          %c20_15 = arith.constant 20 : index
          %c1_16 = arith.constant 1 : index
          scf.for %arg8 = %c0_14 to %c20_15 step %c1_16 {
            %c0_18 = arith.constant 0 : index
            %9 = memref.load %alloc[%arg8, %c0_18] : memref<20x1xf64>
            %10 = memref.load %arg2[%arg8, %arg6] : memref<?x30xf64>
            %11 = arith.mulf %9, %10 : f64
            %12 = memref.load %arg3[%arg5, %arg6] : memref<?x30xf64>
            %13 = arith.addf %12, %11 : f64
            memref.store %13, %arg3[%arg5, %arg6] : memref<?x30xf64>
          }
          %4 = memref.load %arg2[%arg7, %arg6] : memref<?x30xf64>
          %c0_17 = arith.constant 0 : index
          %5 = memref.load %alloc[%arg7, %c0_17] : memref<20x1xf64>
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

