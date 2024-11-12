module {
  func.func @kernel_gramschmidt(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>) {
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    %c32 = arith.constant 32 : index
    %c30 = arith.constant 30 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
    %0 = llvm.mlir.undef : f64
    memref.store %0, %alloca[] : memref<f64>
    scf.for %arg5 = %c0 to %c30 step %c32 {
      %1 = arith.addi %arg5, %c30 : index
      scf.for %arg6 = %arg5 to %1 step %c1 {
        memref.store %cst, %alloca[] : memref<f64>
        scf.for %arg7 = %c0 to %c20 step %c1 {
          %5 = memref.load %arg2[%arg7, %arg6] : memref<?x30xf64>
          %6 = arith.mulf %5, %5 : f64
          %7 = memref.load %alloca[] : memref<f64>
          %8 = arith.addf %7, %6 : f64
          memref.store %8, %alloca[] : memref<f64>
        }
        %2 = memref.load %alloca[] : memref<f64>
        %3 = math.sqrt %2 : f64
        memref.store %3, %arg3[%arg6, %arg6] : memref<?x30xf64>
        scf.for %arg7 = %c0 to %c20 step %c1 {
          %5 = memref.load %arg2[%arg7, %arg6] : memref<?x30xf64>
          %6 = memref.load %arg3[%arg6, %arg6] : memref<?x30xf64>
          %7 = arith.divf %5, %6 : f64
          memref.store %7, %arg4[%arg7, %arg6] : memref<?x30xf64>
        }
        %4 = arith.addi %arg6, %c1 : index
        scf.for %arg7 = %4 to %c30 step %c1 {
          memref.store %cst, %arg3[%arg6, %arg7] : memref<?x30xf64>
          scf.for %arg8 = %c0 to %c20 step %c1 {
            %5 = memref.load %arg4[%arg8, %arg6] : memref<?x30xf64>
            %6 = memref.load %arg2[%arg8, %arg7] : memref<?x30xf64>
            %7 = arith.mulf %5, %6 : f64
            %8 = memref.load %arg3[%arg6, %arg7] : memref<?x30xf64>
            %9 = arith.addf %8, %7 : f64
            memref.store %9, %arg3[%arg6, %arg7] : memref<?x30xf64>
          }
          scf.for %arg8 = %c0 to %c20 step %c1 {
            %5 = memref.load %arg2[%arg8, %arg7] : memref<?x30xf64>
            %6 = memref.load %arg4[%arg8, %arg6] : memref<?x30xf64>
            %7 = memref.load %arg3[%arg6, %arg7] : memref<?x30xf64>
            %8 = arith.mulf %6, %7 : f64
            %9 = arith.subf %5, %8 : f64
            memref.store %9, %arg2[%arg8, %arg7] : memref<?x30xf64>
          }
        }
      }
    }
    return
  }
}

