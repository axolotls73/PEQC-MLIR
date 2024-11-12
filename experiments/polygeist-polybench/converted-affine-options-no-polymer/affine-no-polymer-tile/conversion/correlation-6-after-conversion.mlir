module {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %c27 = arith.constant 27 : index
    %c1 = arith.constant 1 : index
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %cst_1 = arith.constant 1.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c28 = arith.constant 28 : index
    %c32 = arith.constant 32 : index
    scf.for %arg7 = %c0 to %c28 step %c32 {
      %1 = arith.addi %arg7, %c28 : index
      scf.for %arg8 = %arg7 to %1 step %c1 {
        memref.store %cst_0, %arg5[%arg8] : memref<?xf64>
        scf.for %arg9 = %c0 to %c32 step %c1 {
          %4 = memref.load %arg3[%arg9, %arg8] : memref<?x28xf64>
          %5 = memref.load %arg5[%arg8] : memref<?xf64>
          %6 = arith.addf %5, %4 : f64
          memref.store %6, %arg5[%arg8] : memref<?xf64>
        }
        %2 = memref.load %arg5[%arg8] : memref<?xf64>
        %3 = arith.divf %2, %arg2 : f64
        memref.store %3, %arg5[%arg8] : memref<?xf64>
      }
    }
    scf.for %arg7 = %c0 to %c28 step %c32 {
      %1 = arith.addi %arg7, %c28 : index
      scf.for %arg8 = %arg7 to %1 step %c1 {
        memref.store %cst_0, %arg6[%arg8] : memref<?xf64>
        scf.for %arg9 = %c0 to %c32 step %c1 {
          %7 = memref.load %arg3[%arg9, %arg8] : memref<?x28xf64>
          %8 = memref.load %arg5[%arg8] : memref<?xf64>
          %9 = arith.subf %7, %8 : f64
          %10 = arith.mulf %9, %9 : f64
          %11 = memref.load %arg6[%arg8] : memref<?xf64>
          %12 = arith.addf %11, %10 : f64
          memref.store %12, %arg6[%arg8] : memref<?xf64>
        }
        %2 = memref.load %arg6[%arg8] : memref<?xf64>
        %3 = arith.divf %2, %arg2 : f64
        %4 = math.sqrt %3 : f64
        %5 = arith.cmpf ole, %4, %cst_1 : f64
        %6 = arith.select %5, %cst, %4 : f64
        memref.store %6, %arg6[%arg8] : memref<?xf64>
      }
    }
    %0 = math.sqrt %arg2 : f64
    scf.for %arg7 = %c0 to %c32 step %c32 {
      scf.for %arg8 = %c0 to %c28 step %c32 {
        %1 = arith.addi %arg7, %c32 : index
        scf.for %arg9 = %arg7 to %1 step %c1 {
          %2 = arith.addi %arg8, %c28 : index
          scf.for %arg10 = %arg8 to %2 step %c1 {
            %3 = memref.load %arg5[%arg10] : memref<?xf64>
            %4 = memref.load %arg3[%arg9, %arg10] : memref<?x28xf64>
            %5 = arith.subf %4, %3 : f64
            memref.store %5, %arg3[%arg9, %arg10] : memref<?x28xf64>
            %6 = memref.load %arg6[%arg10] : memref<?xf64>
            %7 = arith.mulf %0, %6 : f64
            %8 = arith.divf %5, %7 : f64
            memref.store %8, %arg3[%arg9, %arg10] : memref<?x28xf64>
          }
        }
      }
    }
    scf.for %arg7 = %c0 to %c27 step %c32 {
      %1 = arith.addi %arg7, %c27 : index
      scf.for %arg8 = %arg7 to %1 step %c1 {
        memref.store %cst, %arg4[%arg8, %arg8] : memref<?x28xf64>
        %2 = arith.addi %arg8, %c1 : index
        scf.for %arg9 = %2 to %c28 step %c1 {
          memref.store %cst_0, %arg4[%arg8, %arg9] : memref<?x28xf64>
          scf.for %arg10 = %c0 to %c32 step %c1 {
            %4 = memref.load %arg3[%arg10, %arg8] : memref<?x28xf64>
            %5 = memref.load %arg3[%arg10, %arg9] : memref<?x28xf64>
            %6 = arith.mulf %4, %5 : f64
            %7 = memref.load %arg4[%arg8, %arg9] : memref<?x28xf64>
            %8 = arith.addf %7, %6 : f64
            memref.store %8, %arg4[%arg8, %arg9] : memref<?x28xf64>
          }
          %3 = memref.load %arg4[%arg8, %arg9] : memref<?x28xf64>
          memref.store %3, %arg4[%arg9, %arg8] : memref<?x28xf64>
        }
      }
    }
    memref.store %cst, %arg4[%c27, %c27] : memref<?x28xf64>
    return
  }
}

