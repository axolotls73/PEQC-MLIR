module {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %c28 = arith.constant 28 : index
    %c32 = arith.constant 32 : index
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c27 = arith.constant 27 : index
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %cst_1 = arith.constant 1.000000e-01 : f64
    %alloc = memref.alloc() : memref<1xf64>
    %alloca = memref.alloca() {scop.scratchpad} : memref<1xf64>
    memref.store %cst, %arg4[%c27, %c27] : memref<?x28xf64>
    scf.for %arg7 = %c0 to %c27 step %c1 {
      %1 = arith.muli %arg7, %c-1 : index
      %2 = arith.addi %1, %c27 : index
      scf.for %arg8 = %c0 to %2 step %c1 {
        %3 = arith.addi %arg7, %arg8 : index
        %4 = arith.addi %3, %c1 : index
        memref.store %cst_0, %arg4[%arg7, %4] : memref<?x28xf64>
      }
    }
    scf.for %arg7 = %c0 to %c27 step %c32 {
      %1 = arith.addi %arg7, %c27 : index
      scf.for %arg8 = %arg7 to %1 step %c1 {
        memref.store %cst, %arg4[%arg8, %arg8] : memref<?x28xf64>
      }
    }
    %0 = math.sqrt %arg2 : f64
    memref.store %0, %alloca[%c0] : memref<1xf64>
    scf.for %arg7 = %c0 to %c28 step %c32 {
      %1 = arith.addi %arg7, %c28 : index
      scf.for %arg8 = %arg7 to %1 step %c1 {
        memref.store %cst_0, %arg6[%arg8] : memref<?xf64>
        memref.store %cst_0, %arg5[%arg8] : memref<?xf64>
        scf.for %arg9 = %c0 to %c32 step %c1 {
          %7 = memref.load %arg5[%arg8] : memref<?xf64>
          %8 = memref.load %arg3[%arg9, %arg8] : memref<?x28xf64>
          %9 = arith.addf %7, %8 : f64
          memref.store %9, %arg5[%arg8] : memref<?xf64>
        }
        scf.for %arg9 = %c0 to %c32 step %c1 {
          %7 = memref.load %arg5[%arg8] : memref<?xf64>
          %8 = memref.load %arg3[%arg9, %arg8] : memref<?x28xf64>
          %9 = arith.addf %7, %8 : f64
          memref.store %9, %arg5[%arg8] : memref<?xf64>
        }
        scf.for %arg9 = %c0 to %c32 step %c1 {
          %7 = memref.load %arg5[%arg8] : memref<?xf64>
          %8 = arith.divf %7, %arg2 : f64
          memref.store %8, %arg5[%arg8] : memref<?xf64>
          %9 = memref.load %arg6[%arg8] : memref<?xf64>
          %10 = memref.load %arg3[%arg9, %arg8] : memref<?x28xf64>
          %11 = memref.load %arg5[%arg8] : memref<?xf64>
          %12 = arith.subf %10, %11 : f64
          %13 = arith.mulf %12, %12 : f64
          %14 = arith.addf %9, %13 : f64
          memref.store %14, %arg6[%arg8] : memref<?xf64>
          %15 = memref.load %arg3[%arg9, %arg8] : memref<?x28xf64>
          %16 = memref.load %arg5[%arg8] : memref<?xf64>
          %17 = arith.subf %15, %16 : f64
          memref.store %17, %arg3[%arg9, %arg8] : memref<?x28xf64>
        }
        %2 = memref.load %arg6[%arg8] : memref<?xf64>
        %3 = arith.divf %2, %arg2 : f64
        %4 = math.sqrt %3 : f64
        %5 = arith.cmpf ole, %4, %cst_1 : f64
        %6 = arith.select %5, %cst, %4 : f64
        memref.store %6, %arg6[%arg8] : memref<?xf64>
      }
    }
    scf.for %arg7 = %c0 to %c32 step %c32 {
      scf.for %arg8 = %c0 to %c28 step %c32 {
        %1 = arith.addi %arg7, %c32 : index
        scf.for %arg9 = %arg7 to %1 step %c1 {
          %2 = arith.addi %arg8, %c28 : index
          scf.for %arg10 = %arg8 to %2 step %c1 {
            memref.store %cst_0, %alloc[%c0] : memref<1xf64>
            memref.store %cst_0, %arg5[%arg10] : memref<?xf64>
            scf.for %arg11 = %c0 to %c32 step %c1 {
              %13 = memref.load %arg5[%arg10] : memref<?xf64>
              %14 = memref.load %arg3[%arg11, %arg10] : memref<?x28xf64>
              %15 = arith.addf %13, %14 : f64
              memref.store %15, %arg5[%arg10] : memref<?xf64>
            }
            scf.for %arg11 = %c0 to %c32 step %c1 {
              %13 = memref.load %arg5[%arg10] : memref<?xf64>
              %14 = memref.load %arg3[%arg11, %arg10] : memref<?x28xf64>
              %15 = arith.addf %13, %14 : f64
              memref.store %15, %arg5[%arg10] : memref<?xf64>
            }
            scf.for %arg11 = %c0 to %c32 step %c1 {
              %13 = memref.load %arg5[%arg10] : memref<?xf64>
              %14 = arith.divf %13, %arg2 : f64
              memref.store %14, %arg5[%arg10] : memref<?xf64>
              %15 = memref.load %alloc[%c0] : memref<1xf64>
              %16 = memref.load %arg3[%arg11, %arg10] : memref<?x28xf64>
              %17 = memref.load %arg5[%arg10] : memref<?xf64>
              %18 = arith.subf %16, %17 : f64
              %19 = arith.mulf %18, %18 : f64
              %20 = arith.addf %15, %19 : f64
              memref.store %20, %alloc[%c0] : memref<1xf64>
              %21 = memref.load %arg3[%arg11, %arg10] : memref<?x28xf64>
              %22 = memref.load %arg5[%arg10] : memref<?xf64>
              %23 = arith.subf %21, %22 : f64
              memref.store %23, %arg3[%arg11, %arg10] : memref<?x28xf64>
            }
            %3 = memref.load %alloc[%c0] : memref<1xf64>
            %4 = arith.divf %3, %arg2 : f64
            %5 = math.sqrt %4 : f64
            %6 = arith.cmpf ole, %5, %cst_1 : f64
            %7 = arith.select %6, %cst, %5 : f64
            memref.store %7, %alloc[%c0] : memref<1xf64>
            %8 = memref.load %arg3[%arg9, %arg10] : memref<?x28xf64>
            %9 = memref.load %alloca[%c0] : memref<1xf64>
            %10 = memref.load %alloc[%c0] : memref<1xf64>
            %11 = arith.mulf %9, %10 : f64
            %12 = arith.divf %8, %11 : f64
            memref.store %12, %arg3[%arg9, %arg10] : memref<?x28xf64>
          }
        }
      }
    }
    scf.for %arg7 = %c0 to %c27 step %c1 {
      %1 = arith.muli %arg7, %c-1 : index
      %2 = arith.addi %1, %c27 : index
      scf.for %arg8 = %c0 to %2 step %c1 {
        scf.for %arg9 = %c0 to %c32 step %c1 {
          %3 = arith.addi %arg7, %arg8 : index
          %4 = arith.addi %3, %c1 : index
          %5 = memref.load %arg4[%arg7, %4] : memref<?x28xf64>
          %6 = memref.load %arg3[%arg9, %arg7] : memref<?x28xf64>
          %7 = arith.addi %arg7, %arg8 : index
          %8 = arith.addi %7, %c1 : index
          %9 = memref.load %arg3[%arg9, %8] : memref<?x28xf64>
          %10 = arith.mulf %6, %9 : f64
          %11 = arith.addf %5, %10 : f64
          %12 = arith.addi %arg7, %arg8 : index
          %13 = arith.addi %12, %c1 : index
          memref.store %11, %arg4[%arg7, %13] : memref<?x28xf64>
        }
      }
    }
    scf.for %arg7 = %c0 to %c27 step %c1 {
      %1 = arith.muli %arg7, %c-1 : index
      %2 = arith.addi %1, %c27 : index
      scf.for %arg8 = %c0 to %2 step %c1 {
        %3 = arith.addi %arg7, %arg8 : index
        %4 = arith.addi %3, %c1 : index
        %5 = memref.load %arg4[%arg7, %4] : memref<?x28xf64>
        %6 = arith.addi %arg7, %arg8 : index
        %7 = arith.addi %6, %c1 : index
        memref.store %5, %arg4[%7, %arg7] : memref<?x28xf64>
      }
    }
    return
  }
}

