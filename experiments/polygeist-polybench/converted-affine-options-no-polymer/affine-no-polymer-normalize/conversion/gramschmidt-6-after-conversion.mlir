module {
  func.func @kernel_gramschmidt(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>) {
    %c29 = arith.constant 29 : index
    %c-1 = arith.constant -1 : index
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
      scf.for %arg6 = %c0 to %c20 step %c1 {
        %5 = memref.load %arg2[%arg6, %arg5] : memref<?x30xf64>
        %6 = arith.mulf %5, %5 : f64
        %7 = memref.load %alloca[] : memref<f64>
        %8 = arith.addf %7, %6 : f64
        memref.store %8, %alloca[] : memref<f64>
      }
      %1 = memref.load %alloca[] : memref<f64>
      %2 = math.sqrt %1 : f64
      memref.store %2, %arg3[%arg5, %arg5] : memref<?x30xf64>
      scf.for %arg6 = %c0 to %c20 step %c1 {
        %5 = memref.load %arg2[%arg6, %arg5] : memref<?x30xf64>
        %6 = memref.load %arg3[%arg5, %arg5] : memref<?x30xf64>
        %7 = arith.divf %5, %6 : f64
        memref.store %7, %arg4[%arg6, %arg5] : memref<?x30xf64>
      }
      %3 = arith.muli %arg5, %c-1 : index
      %4 = arith.addi %3, %c29 : index
      scf.for %arg6 = %c0 to %4 step %c1 {
        %5 = arith.addi %arg5, %arg6 : index
        %6 = arith.addi %5, %c1 : index
        memref.store %cst, %arg3[%arg5, %6] : memref<?x30xf64>
        scf.for %arg7 = %c0 to %c20 step %c1 {
          %7 = memref.load %arg4[%arg7, %arg5] : memref<?x30xf64>
          %8 = memref.load %arg2[%arg7, %6] : memref<?x30xf64>
          %9 = arith.mulf %7, %8 : f64
          %10 = memref.load %arg3[%arg5, %6] : memref<?x30xf64>
          %11 = arith.addf %10, %9 : f64
          memref.store %11, %arg3[%arg5, %6] : memref<?x30xf64>
        }
        scf.for %arg7 = %c0 to %c20 step %c1 {
          %7 = memref.load %arg2[%arg7, %6] : memref<?x30xf64>
          %8 = memref.load %arg4[%arg7, %arg5] : memref<?x30xf64>
          %9 = memref.load %arg3[%arg5, %6] : memref<?x30xf64>
          %10 = arith.mulf %8, %9 : f64
          %11 = arith.subf %7, %10 : f64
          memref.store %11, %arg2[%arg7, %6] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

