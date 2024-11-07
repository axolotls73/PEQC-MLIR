module {
  func.func @kernel_jacobi_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>) {
    %c2 = arith.constant 2 : index
    %c28 = arith.constant 28 : index
    %c1 = arith.constant 1 : index
    %cst = arith.constant 2.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c32 = arith.constant 32 : index
    scf.for %arg4 = %c0 to %c20 step %c32 {
      %0 = arith.addi %arg4, %c20 : index
      scf.for %arg5 = %arg4 to %0 step %c1 {
        scf.for %arg6 = %c0 to %c28 step %c1 {
          scf.for %arg7 = %c0 to %c28 step %c1 {
            %1 = arith.addi %arg6, %c1 : index
            %2 = arith.addi %arg7, %c1 : index
            %3 = memref.load %arg2[%1, %2] : memref<?x30xf64>
            %4 = arith.addi %arg6, %c1 : index
            %5 = memref.load %arg2[%4, %arg7] : memref<?x30xf64>
            %6 = arith.addf %3, %5 : f64
            %7 = arith.addi %arg6, %c1 : index
            %8 = arith.addi %arg7, %c2 : index
            %9 = memref.load %arg2[%7, %8] : memref<?x30xf64>
            %10 = arith.addf %6, %9 : f64
            %11 = arith.addi %arg6, %c2 : index
            %12 = arith.addi %arg7, %c1 : index
            %13 = memref.load %arg2[%11, %12] : memref<?x30xf64>
            %14 = arith.addf %10, %13 : f64
            %15 = arith.addi %arg7, %c1 : index
            %16 = memref.load %arg2[%arg6, %15] : memref<?x30xf64>
            %17 = arith.addf %14, %16 : f64
            %18 = arith.mulf %17, %cst : f64
            %19 = arith.addi %arg6, %c1 : index
            %20 = arith.addi %arg7, %c1 : index
            memref.store %18, %arg3[%19, %20] : memref<?x30xf64>
          }
        }
        scf.for %arg6 = %c0 to %c28 step %c1 {
          scf.for %arg7 = %c0 to %c28 step %c1 {
            %1 = arith.addi %arg6, %c1 : index
            %2 = arith.addi %arg7, %c1 : index
            %3 = memref.load %arg3[%1, %2] : memref<?x30xf64>
            %4 = arith.addi %arg6, %c1 : index
            %5 = memref.load %arg3[%4, %arg7] : memref<?x30xf64>
            %6 = arith.addf %3, %5 : f64
            %7 = arith.addi %arg6, %c1 : index
            %8 = arith.addi %arg7, %c2 : index
            %9 = memref.load %arg3[%7, %8] : memref<?x30xf64>
            %10 = arith.addf %6, %9 : f64
            %11 = arith.addi %arg6, %c2 : index
            %12 = arith.addi %arg7, %c1 : index
            %13 = memref.load %arg3[%11, %12] : memref<?x30xf64>
            %14 = arith.addf %10, %13 : f64
            %15 = arith.addi %arg7, %c1 : index
            %16 = memref.load %arg3[%arg6, %15] : memref<?x30xf64>
            %17 = arith.addf %14, %16 : f64
            %18 = arith.mulf %17, %cst : f64
            %19 = arith.addi %arg6, %c1 : index
            %20 = arith.addi %arg7, %c1 : index
            memref.store %18, %arg2[%19, %20] : memref<?x30xf64>
          }
        }
      }
    }
    return
  }
}

