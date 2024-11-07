module {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %c32 = arith.constant 32 : index
    %c28 = arith.constant 28 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c27 = arith.constant 27 : index
    %cst = arith.constant 1.000000e-01 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %cst_1 = arith.constant 1.000000e+00 : f64
    %alloca = memref.alloca() {scop.scratchpad} : memref<1xf64>
    memref.store %cst_1, %arg4[%c27, %c27] : memref<?x28xf64>
    scf.for %arg7 = %c0 to %c27 step %c1 {
      %1 = arith.addi %arg7, %c1 : index
      scf.for %arg8 = %1 to %c28 step %c1 {
        memref.store %cst_0, %arg4[%arg7, %arg8] : memref<?x28xf64>
      }
    }
    scf.for %arg7 = %c0 to %c27 step %c1 {
      %1 = arith.addi %arg7, %c1 : index
      scf.for %arg8 = %arg7 to %1 step %c1 {
        memref.store %cst_1, %arg4[%arg8, %arg8] : memref<?x28xf64>
      }
    }
    %0 = math.sqrt %arg2 : f64
    memref.store %0, %alloca[%c0] : memref<1xf64>
    scf.for %arg7 = %c0 to %c28 step %c1 {
      %1 = arith.addi %arg7, %c1 : index
      scf.for %arg8 = %arg7 to %1 step %c1 {
        memref.store %cst_0, %arg6[%arg8] : memref<?xf64>
        memref.store %cst_0, %arg5[%arg8] : memref<?xf64>
      }
    }
    scf.for %arg7 = %c0 to %c32 step %c1 {
      scf.for %arg8 = %c0 to %c28 step %c1 {
        %1 = arith.addi %arg7, %c1 : index
        scf.for %arg9 = %arg7 to %1 step %c1 {
          %2 = arith.addi %arg8, %c1 : index
          scf.for %arg10 = %arg8 to %2 step %c1 {
            %3 = memref.load %arg5[%arg10] : memref<?xf64>
            %4 = memref.load %arg3[%arg9, %arg10] : memref<?x28xf64>
            %5 = arith.addf %3, %4 : f64
            memref.store %5, %arg5[%arg10] : memref<?xf64>
          }
        }
      }
    }
    scf.for %arg7 = %c0 to %c28 step %c1 {
      %1 = arith.addi %arg7, %c1 : index
      scf.for %arg8 = %arg7 to %1 step %c1 {
        %2 = memref.load %arg5[%arg8] : memref<?xf64>
        %3 = arith.divf %2, %arg2 : f64
        memref.store %3, %arg5[%arg8] : memref<?xf64>
      }
    }
    scf.for %arg7 = %c0 to %c32 step %c1 {
      scf.for %arg8 = %c0 to %c28 step %c1 {
        %1 = arith.addi %arg7, %c1 : index
        scf.for %arg9 = %arg7 to %1 step %c1 {
          %2 = arith.addi %arg8, %c1 : index
          scf.for %arg10 = %arg8 to %2 step %c1 {
            %3 = memref.load %arg6[%arg10] : memref<?xf64>
            %4 = memref.load %arg3[%arg9, %arg10] : memref<?x28xf64>
            %5 = memref.load %arg5[%arg10] : memref<?xf64>
            %6 = arith.subf %4, %5 : f64
            %7 = arith.mulf %6, %6 : f64
            %8 = arith.addf %3, %7 : f64
            memref.store %8, %arg6[%arg10] : memref<?xf64>
            %9 = memref.load %arg3[%arg9, %arg10] : memref<?x28xf64>
            %10 = memref.load %arg5[%arg10] : memref<?xf64>
            %11 = arith.subf %9, %10 : f64
            memref.store %11, %arg3[%arg9, %arg10] : memref<?x28xf64>
          }
        }
      }
    }
    scf.for %arg7 = %c0 to %c28 step %c1 {
      %1 = arith.addi %arg7, %c1 : index
      scf.for %arg8 = %arg7 to %1 step %c1 {
        %2 = memref.load %arg6[%arg8] : memref<?xf64>
        %3 = arith.divf %2, %arg2 : f64
        %4 = math.sqrt %3 : f64
        %5 = arith.cmpf ole, %4, %cst : f64
        %6 = arith.select %5, %cst_1, %4 : f64
        memref.store %6, %arg6[%arg8] : memref<?xf64>
      }
    }
    scf.for %arg7 = %c0 to %c32 step %c1 {
      scf.for %arg8 = %c0 to %c28 step %c1 {
        %1 = arith.addi %arg7, %c1 : index
        scf.for %arg9 = %arg7 to %1 step %c1 {
          %2 = arith.addi %arg8, %c1 : index
          scf.for %arg10 = %arg8 to %2 step %c1 {
            %3 = memref.load %arg3[%arg9, %arg10] : memref<?x28xf64>
            %4 = memref.load %alloca[%c0] : memref<1xf64>
            %5 = memref.load %arg6[%arg10] : memref<?xf64>
            %6 = arith.mulf %4, %5 : f64
            %7 = arith.divf %3, %6 : f64
            memref.store %7, %arg3[%arg9, %arg10] : memref<?x28xf64>
          }
        }
      }
    }
    scf.for %arg7 = %c0 to %c27 step %c1 {
      scf.for %arg8 = %c0 to %c32 step %c1 {
        %1 = arith.addi %arg7, %c1 : index
        scf.for %arg9 = %1 to %c28 step %c1 {
          %2 = memref.load %arg4[%arg7, %arg9] : memref<?x28xf64>
          %3 = memref.load %arg3[%arg8, %arg7] : memref<?x28xf64>
          %4 = memref.load %arg3[%arg8, %arg9] : memref<?x28xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = arith.addf %2, %5 : f64
          memref.store %6, %arg4[%arg7, %arg9] : memref<?x28xf64>
        }
      }
    }
    scf.for %arg7 = %c0 to %c27 step %c1 {
      %1 = arith.addi %arg7, %c1 : index
      scf.for %arg8 = %1 to %c28 step %c1 {
        %2 = memref.load %arg4[%arg7, %arg8] : memref<?x28xf64>
        memref.store %2, %arg4[%arg8, %arg7] : memref<?x28xf64>
      }
    }
    return
  }
}

