module {
  func.func @kernel_covariance(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>) {
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %c32 = arith.constant 32 : index
    %c28 = arith.constant 28 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 1.000000e+00 : f64
    %alloc = memref.alloc() : memref<1xf64>
    scf.for %arg6 = %c0 to %c28 step %c32 {
      %1 = arith.addi %arg6, %c28 : index
      scf.for %arg7 = %arg6 to %1 step %c1 {
        memref.store %cst, %arg5[%arg7] : memref<?xf64>
        scf.for %arg8 = %c0 to %c32 step %c1 {
          %4 = memref.load %arg3[%arg8, %arg7] : memref<?x28xf64>
          %5 = memref.load %arg5[%arg7] : memref<?xf64>
          %6 = arith.addf %5, %4 : f64
          memref.store %6, %arg5[%arg7] : memref<?xf64>
        }
        %2 = memref.load %arg5[%arg7] : memref<?xf64>
        %3 = arith.divf %2, %arg2 : f64
        memref.store %3, %arg5[%arg7] : memref<?xf64>
      }
    }
    scf.for %arg6 = %c0 to %c32 step %c32 {
      scf.for %arg7 = %c0 to %c28 step %c32 {
        %1 = arith.addi %arg6, %c32 : index
        scf.for %arg8 = %arg6 to %1 step %c1 {
          %2 = arith.addi %arg7, %c28 : index
          scf.for %arg9 = %arg7 to %2 step %c1 {
            memref.store %cst, %alloc[%c0] : memref<1xf64>
            scf.for %arg10 = %c0 to %c32 step %c1 {
              %8 = memref.load %arg3[%arg10, %arg9] : memref<?x28xf64>
              %9 = memref.load %alloc[%c0] : memref<1xf64>
              %10 = arith.addf %9, %8 : f64
              memref.store %10, %alloc[%c0] : memref<1xf64>
            }
            %3 = memref.load %alloc[%c0] : memref<1xf64>
            %4 = arith.divf %3, %arg2 : f64
            memref.store %4, %alloc[%c0] : memref<1xf64>
            %5 = memref.load %alloc[%c0] : memref<1xf64>
            %6 = memref.load %arg3[%arg8, %arg9] : memref<?x28xf64>
            %7 = arith.subf %6, %5 : f64
            memref.store %7, %arg3[%arg8, %arg9] : memref<?x28xf64>
          }
        }
      }
    }
    %0 = arith.subf %arg2, %cst_0 : f64
    scf.for %arg6 = %c0 to %c28 step %c1 {
      %1 = arith.muli %arg6, %c-1 : index
      %2 = arith.addi %1, %c28 : index
      scf.for %arg7 = %c0 to %2 step %c1 {
        %3 = arith.addi %arg6, %arg7 : index
        memref.store %cst, %arg4[%arg6, %3] : memref<?x28xf64>
        scf.for %arg8 = %c0 to %c32 step %c1 {
          %9 = memref.load %arg3[%arg8, %arg6] : memref<?x28xf64>
          %10 = arith.addi %arg6, %arg7 : index
          %11 = memref.load %arg3[%arg8, %10] : memref<?x28xf64>
          %12 = arith.mulf %9, %11 : f64
          %13 = arith.addi %arg6, %arg7 : index
          %14 = memref.load %arg4[%arg6, %13] : memref<?x28xf64>
          %15 = arith.addf %14, %12 : f64
          %16 = arith.addi %arg6, %arg7 : index
          memref.store %15, %arg4[%arg6, %16] : memref<?x28xf64>
        }
        %4 = arith.addi %arg6, %arg7 : index
        %5 = memref.load %arg4[%arg6, %4] : memref<?x28xf64>
        %6 = arith.divf %5, %0 : f64
        %7 = arith.addi %arg6, %arg7 : index
        memref.store %6, %arg4[%arg6, %7] : memref<?x28xf64>
        %8 = arith.addi %arg6, %arg7 : index
        memref.store %6, %arg4[%8, %arg6] : memref<?x28xf64>
      }
    }
    return
  }
}

